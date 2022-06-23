tableextension 50431 "TransferHeaderExt" extends "Transfer Header"//5740
{
    // PMT.00.01 - Added GST Transfer Shipment No Series field.
    // PMT.00.14- Added field "Party Type" & "Party No." for Transfer Order changes
    // OA.TG CAS-03638-Q2X2T9 20191217 - Added "Pending Approval" option in Status field
    fields
    {
        modify(Status)
        {
            OptionCaption = 'Open,Released,Pending Approval';

            //Unsupported feature: Property Modification (OptionString) on "Status(Field 23)".


            //Unsupported feature: Property Modification (Editable) on "Status(Field 23)".

        }
        modify("Transfer-from Code")
        {
            trigger OnAfterValidate()
            begin
                DemoLocation;//PMT.00.14
            end;
        }
        modify("Transfer-to Code")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                DemoLocation;//PMT.00.14
            end;
        }

        //Unsupported feature: Code Modification on ""Transfer-from Code"(Field 2).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF ("Transfer-from Code" = "Transfer-to Code") AND
           ("Transfer-from Code" <> '')
        #4..56
            EXIT;
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        DemoLocation;//PMT.00.14
        #1..59
        */
        //end;


        //Unsupported feature: Code Modification on ""Transfer-to Code"(Field 11).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF ("Transfer-from Code" = "Transfer-to Code") AND
           ("Transfer-to Code" <> '')
        #4..53
            EXIT;
          END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        DemoLocation;//PMT.00.14
        #1..56
        */
        //end;
        field(50029; "Shipment No."; Code[20])
        {
            Caption = 'Shipment No.';
            DataClassification = ToBeClassified;
        }
        field(50030; "Receipt No."; Code[20])
        {
            Caption = 'Receipt No.';
            DataClassification = ToBeClassified;
        }
        field(61001; "GST Transfer Ship No. Series"; Code[20])
        {
            Caption = 'GST Transfer Shipment No. Series';
            Description = 'PMT.00.01';
            TableRelation = "No. Series";
        }
        field(61002; "Party Type"; Option)
        {
            Description = 'PMT.00.14';
            OptionCaption = ' ,Customer,Vendor';
            OptionMembers = " ",Customer,Vendor;

            trigger OnValidate()
            var
                SetValue: Boolean;
            begin
                IF (Rec."Party Type" = Rec."Party Type"::Customer) OR (Rec."Party Type" = "Party Type"::Vendor) THEN
                    SetValue := FALSE;
                //BlankParty;
            end;
        }
        field(61003; "Party No."; Code[30])
        {
            Description = 'PMT.00.14';

            trigger OnLookup()
            begin
                //>>PMT.00.14
                IF "Party Type" = "Party Type"::Customer THEN BEGIN
                    IF PAGE.RUNMODAL(0, Cust1) = ACTION::LookupOK THEN
                        "Party No." := Cust1."No."
                END ELSE
                    IF "Party Type" = "Party Type"::Vendor THEN
                        IF PAGE.RUNMODAL(0, Vend) = ACTION::LookupOK THEN
                            "Party No." := Vend."No."
                //<<PMT.00.14
            end;
        }
        //>>OA.AS Re-engineering
        field(61004; "GST Applicable"; Boolean)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(61005; "Order Type"; Enum "Transfer GST Order Type")
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        //<<OA.AS Re-engineering
    }

    procedure CheckGSTDetails()
    var
        TransferLine: Record "Transfer Line";
    begin
        //>>OA.AS Re-engineering
        TransferLine.Reset();
        TransferLine.SetRange("Document No.", Rec."No.");
        if TransferLine.FindFirst() then begin
            Rec."GST Applicable" := TransferLine.CheckGSTDoc(TransferLine);
        end else begin
            Rec."GST Applicable" := false;
        end;
        //<<OA.AS Re-engineering
    end;

    procedure CheckTransferLines() TransferGSTOrderType: Enum "Transfer GST Order Type"
    var
        TransferLine: Record "Transfer Line";
        BOS: Boolean;
        TaxInvoice: Boolean;
        DeliveryChallan: Boolean;
        TotalTransferLines: Integer;
        ToLocation: Record Location;
        FromLocation: Record Location;
        TotalGSTAmount: Decimal;
    begin
        //>>PMT.00.01
        ToLocation.RESET;
        FromLocation.RESET;
        ToLocation.GET("Transfer-to Code");
        FromLocation.GET("Transfer-from Code");
        TransferLine.RESET;
        TransferLine.SETRANGE("Document No.", "No.");
        TotalTransferLines := TransferLine.COUNT;

        // Check Tax Invoice Case
        //TransferLine.SETFILTER("Total GST Amount", '>%1', 0);
        TotalGSTAmount := TransferLine.CalculateGSTAmount(TransferLine);
        IF (TransferLine.FINDFIRST()) AND (TotalGSTAmount > 0) THEN
            EXIT(TransferGSTOrderType::"Tax Invoice");

        //Check Bill of Supply Case
        // TransferLine.SETRANGE("Total GST Amount");
        TransferLine.SETRANGE(Exempted, TRUE);
        IF TransferLine.COUNT = TotalTransferLines THEN
            EXIT(TransferGSTOrderType::"Bill Of Supply")
        ELSE
            IF ToLocation."State Code" <> FromLocation."State Code" THEN
                EXIT(TransferGSTOrderType::"Bill Of Supply");

        //Check Delivery Challan Case
        TransferLine.SETRANGE(Exempted);
        IF ToLocation."State Code" = FromLocation."State Code" THEN
            EXIT(TransferGSTOrderType::"Delivery Challan");
        //>>PMT.00.01
    end;

    /*procedure UpdateGSTTransferShipmentNoSeries()
    var
        NoSeriesRelationship: Record "No. Series Relationship";
        TransferCase: Text;
        FromLocation: Record Location;
    begin
        //>>PMT.00.01
        TransferCase := CheckTransferLines;
        IF FromLocation.GET("Transfer-from Code") THEN;

        CASE TransferCase OF
            'TaxInvoice':
                BEGIN
                    NoSeriesRelationship.RESET;
                    NoSeriesRelationship.SETRANGE(Code, FromLocation."GST Transfer Shipment No.");
                    NoSeriesRelationship.SETRANGE("Tax Invoice Series", TRUE);
                    IF NoSeriesRelationship.FINDFIRST THEN BEGIN
                        "GST Transfer Ship No. Series" := NoSeriesRelationship."Series Code";
                        MODIFY;
                    END;
                END;
            'BillOfSupply':
                BEGIN
                    NoSeriesRelationship.RESET;
                    NoSeriesRelationship.SETRANGE(Code, FromLocation."GST Transfer Shipment No.");
                    NoSeriesRelationship.SETRANGE("BOS Series", TRUE);
                    IF NoSeriesRelationship.FINDFIRST THEN BEGIN
                        "GST Transfer Ship No. Series" := NoSeriesRelationship."Series Code";
                        MODIFY;
                    END;
                END;
            'DeliveryChallan':
                BEGIN
                    NoSeriesRelationship.RESET;
                    NoSeriesRelationship.SETRANGE(Code, FromLocation."GST Transfer Shipment No.");
                    NoSeriesRelationship.SETRANGE("Delivery Challan Series", TRUE);
                    IF NoSeriesRelationship.FINDFIRST THEN BEGIN
                        "GST Transfer Ship No. Series" := NoSeriesRelationship."Series Code";
                        MODIFY;
                    END;
                END;
        END;
        //>>PMT.00.01
    end;*/

    local procedure DemoLocation()
    var
        Loc: Record Location;
    begin
        //>>PMT.00.14
        "Party Type" := "Party Type"::" ";
        IF Loc.GET("Transfer-from Code") THEN
            IF Loc."Demo Location" THEN
                "Party Type" := "Party Type"::Customer
            ELSE
                IF Loc."Job work location" THEN
                    "Party Type" := "Party Type"::Vendor;
        // ELSE
        //  "Party Type":= "Party Type"::"          ";
        MODIFY;

        IF Loc.GET("Transfer-to Code") THEN
            IF Loc."Demo Location" THEN
                "Party Type" := "Party Type"::Customer
            ELSE
                IF Loc."Job work location" THEN
                    "Party Type" := "Party Type"::Vendor;
        // ELSE
        //  "Party Type":= "Party Type"::"          ";
        MODIFY;
        // BlankParty;
        //<<PMT.00.14
    end;

    procedure BlankParty()
    var
        Loc: Record Location;
    begin
        //>>PMT.00.14
        Loc.RESET;
        Loc.SETRANGE(Loc.Code, "Transfer-from Code");
        Loc.SETRANGE(Loc.Code, "Transfer-to Code");
        IF Loc.FINDFIRST THEN
            IF NOT Loc."Demo Location" AND Loc."Job work location" THEN
                "Party Type" := Rec."Party Type"::" ";
        //<<PMT.00.14
    end;

    local procedure "---OA---"()
    begin
    end;

    [IntegrationEvent(TRUE, false)]
    procedure OnCheckTransferReleaseRestrictions()
    begin
    end;

    var
        CUST: Page "Customer List";
        Cust1: Record Customer;
        RecRef: RecordRef;
        Vend: Record Vendor;
}

