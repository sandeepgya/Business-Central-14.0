tableextension 50423 "PurchaseHeaderExt" extends "Purchase Header"//38
{
    // // PMT.00.07- Archive Functionality for Purchase Order
    // // PMT.00.09 - PO Short Closed Functionality
    // CAS-05925-Z8Y7X11 3112020 OA.SB
    //  <COD> Code commented
    fields
    {
        field(61001; "PO Short Closed"; Boolean)
        {
            Description = 'PMT.00.09';
        }
        field(61002; "Archived First"; Boolean)
        {
            Description = 'PMT';
        }
        field(61003; "Currency Reviewed"; Boolean)
        {
            DataClassification = ToBeClassified;
            Description = 'PMT.00.09';

            trigger OnValidate()
            begin
                "Currency Reviewed By" := USERID;//PMT.00.09
            end;
        }
        field(61004; "Currency Reviewed By"; Code[50])
        {
            DataClassification = ToBeClassified;
            Description = 'PMT.00.09';
            Editable = false;
        }
    }


    //Unsupported feature: Code Modification on "PriceMessageIfPurchLinesExist(PROCEDURE 7)".

    //procedure PriceMessageIfPurchLinesExist();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF PurchLinesExist AND NOT HideValidationDialog THEN BEGIN
      MessageText := STRSUBSTNO(LinesNotUpdatedMsg,ChangedFieldName);
      IF "Currency Code" <> '' THEN
        MessageText := STRSUBSTNO(SplitMessageTxt,MessageText,AffectExchangeRateMsg);
      MESSAGE(MessageText);
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    IF PurchLinesExist AND NOT HideValidationDialog THEN BEGIN
      //MessageText := STRSUBSTNO(LinesNotUpdatedMsg,ChangedFieldName); CAS-05925-Z8Y7X11 3112020 OA.SB
    #3..6
    */
    //end;

    var
        PurchLine: Record "Purchase Line";
        PostedGateEntryLine: Record "Posted Gate Entry Line";
        GateEntryAttachment: Record "Gate Entry Attachment";
        PurchHeader2: Record "Purchase Header";
        PostedGateEntryLineList: page "Posted Gate Entry Line List";

    local procedure "----PMT-----"()
    begin
    end;

    procedure POShortClosed()
    var
        RecInvMatched: Boolean;
        "PO Short Closed": Boolean;
        PurchaseHeader: Record "Purchase Header";
        Text0001: Label 'Purchase Order has been short closed';
    begin
        //>>PMT.00.09
        IF "Document Type" = "Document Type"::Order THEN BEGIN
            RecInvMatched := TRUE;
            PurchLine.RESET;
            PurchLine.SETRANGE(PurchLine."Document No.", "No.");
            PurchLine.SETRANGE(PurchLine.Type, PurchLine.Type::Item);
            IF PurchLine.FIND('-') THEN
                REPEAT
                    IF PurchLine."Quantity Received" <> PurchLine."Quantity Invoiced" THEN BEGIN
                        RecInvMatched := FALSE;
                        ERROR('The Order Cannot be short closed as Qty Received not matching Qty Invoiced for Line %1', PurchLine."Line No.");
                    END
                    ELSE BEGIN
                        PurchLine."Original Qty" := PurchLine.Quantity;
                        PurchLine.Quantity := PurchLine."Quantity Received";
                        PurchLine.VALIDATE(Quantity, PurchLine."Quantity Received");
                        PurchLine.MODIFY;
                        MESSAGE('%1', Text0001);
                    END;
                UNTIL PurchLine.NEXT = 0;
            IF RecInvMatched THEN BEGIN
                "PO Short Closed" := TRUE;
                MODIFY();
            END;
        END;
        IF PurchaseHeader.GET(PurchLine."Document Type", PurchLine."Document No.") THEN BEGIN
            PurchaseHeader."PO Short Closed" := "PO Short Closed";
            PurchaseHeader.MODIFY;
        END;
        //<<PMT.00.09
    end;

    procedure Archival()
    var
        Archive: Codeunit 5063;
        flag: Boolean;
        Archived: Boolean;
        PurchHeaderArchive: Record "Purchase Header Archive";
    begin
        //>>PMT.00.07
        CLEAR(flag);
        IF NOT flag THEN BEGIN
            Archive.StorePurchDocument(Rec, FALSE);
            flag := TRUE;
        END;
        //<<PMT.00.07
    end;

    procedure ArchivalFirst()
    var
        Archived: Boolean;
        PurchHeaderArchive: Record "Purchase Header Archive";
    begin
        // >>PMT.00.07
        IF NOT Archived THEN BEGIN
            Archival;
            Archived := TRUE;
        END;
        PurchHeaderArchive.RESET;
        PurchHeaderArchive.SETRANGE("No.", Rec."No.");
        IF PurchHeaderArchive.FINDFIRST THEN BEGIN
            PurchHeaderArchive."Purchase Archived Release" := Archived;
            PurchHeaderArchive.MODIFY;
        END;
        // <<PMT.00.07
    end;

    procedure GetGateEntryLines()
    var
        myInt: Integer;
    begin
        PostedGateEntryLine.MODIFYALL(Mark, FALSE);
        PurchHeader2.GET("Document Type", "No.");
        PostedGateEntryLine.RESET;
        PostedGateEntryLine.SETCURRENTKEY("Entry Type", "Source Type", "Source No.", Status);

        CASE "Document Type" OF
            "Document Type"::Order:
                BEGIN
                    PostedGateEntryLine.SETRANGE("Source Type", PostedGateEntryLine."Source Type"::"Purchase Order");
                    PostedGateEntryLine.SETRANGE("Entry Type", PostedGateEntryLine."Entry Type"::Inward);
                    PostedGateEntryLine.SETRANGE("Source No.", "No.");
                    PostedGateEntryLine.SETRANGE(Status, PostedGateEntryLine.Status::Open);
                END;
            "Document Type"::Invoice:
                BEGIN
                    PostedGateEntryLine.SETRANGE("Source Type", PostedGateEntryLine."Source Type"::" ");
                    PostedGateEntryLine.SETRANGE("Entry Type", PostedGateEntryLine."Entry Type"::Inward);
                    PostedGateEntryLine.SETRANGE(Status, PostedGateEntryLine.Status::Open);
                END;
        END;

        GateEntryAttachment.SETCURRENTKEY("Source Type", "Source No.", "Entry Type", "Gate Entry No.", "Line No.");
        IF PostedGateEntryLine.FINDSET THEN
            REPEAT
                GateEntryAttachment.SETRANGE("Source No.", PostedGateEntryLine."Source No.");
                GateEntryAttachment.SETRANGE("Gate Entry No.", PostedGateEntryLine."Gate Entry No.");
                GateEntryAttachment.SETRANGE("Line No.", PostedGateEntryLine."Line No.");
                IF NOT GateEntryAttachment.FINDFIRST THEN BEGIN
                    PostedGateEntryLine.Mark := TRUE;
                    PostedGateEntryLine.MODIFY;
                    COMMIT;
                END;
            UNTIL PostedGateEntryLine.NEXT = 0;

        PostedGateEntryLine.RESET;
        PostedGateEntryLine.SETCURRENTKEY("Entry Type", "Source Type", "Source No.", Status);
        PostedGateEntryLine.SETRANGE(Mark, TRUE);
        IF PostedGateEntryLine.FINDFIRST THEN BEGIN
            PostedGateEntryLineList.SETTABLEVIEW(PostedGateEntryLine);
            IF PAGE.RUNMODAL(PAGE::"Posted Gate Entry Line List", PostedGateEntryLine) = ACTION::LookupOK THEN BEGIN
                GateEntryAttachment.INIT;
                GateEntryAttachment."Source Type" := PostedGateEntryLine."Source Type";
                GateEntryAttachment."Source No." := PostedGateEntryLine."Source No.";
                GateEntryAttachment."Entry Type" := PostedGateEntryLine."Entry Type";
                GateEntryAttachment."Gate Entry No." := PostedGateEntryLine."Gate Entry No.";
                GateEntryAttachment."Line No." := PostedGateEntryLine."Line No.";
                GateEntryAttachment."Purchase Invoice No." := "No.";
                GateEntryAttachment.INSERT;
            END;
        END;
    end;
}

