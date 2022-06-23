tableextension 50437 "ItemJournalLineExt" extends "Item Journal Line"//83
{
    // // PMT.00.22- Added Workflow event for Item Journal Line
    fields
    {


        //Unsupported feature: Code Modification on ""Run Time"(Field 5842).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF SubcontractingWorkCenterUsed AND ("Run Time" <> 0) THEN
          SubcontractedErr;

        "Run Time (Base)" := CalcBaseTime("Run Time");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..4
        UpdateRoutinglines;//PMT.00.22
        */
        //end;
        field(60001; "Approval Status"; Text[30])
        {
            Editable = false;
        }
        field(61002; "Party Type"; Option)
        {
            Description = 'PMT.00.14';
            OptionMembers = "          ",Customer,Vendor;

            trigger OnValidate()
            var
                SetValue: Boolean;
            begin
            end;
        }
        field(61003; "Party No."; Code[30])
        {
            Description = 'PMT.00.14';
        }
    }


    //Unsupported feature: Code Modification on "OnDelete".

    //trigger OnDelete()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ReserveItemJnlLine.DeleteLine(Rec);

    CALCFIELDS("Reserved Qty. (Base)");
    TESTFIELD("Reserved Qty. (Base)",0);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    ApprovalsMgmt.OnCancelItemlJournalLineApprovalRequest(Rec); //PMT.00.22

    #1..4
    */
    //end;
    trigger OnDelete()
    var
        myInt: Integer;
    begin
        // ApprovalsMgmt.OnCancelItemlJournalLineApprovalRequest(Rec); //PMT.00.22 //Move to codeunit
    end;

    local procedure "--PMT--"()
    begin
    end;

    // [IntegrationEvent(TRUE, false)]
    // procedure OnCheckItemJournalLinePostRestrictions()
    // begin
    // end; //OA.AS Commented

    procedure UpdateRoutinglines()
    begin

        LItemJnlLine.RESET;
        LItemJnlLine.SETRANGE("Journal Template Name", "Journal Template Name");
        LItemJnlLine.SETRANGE("Journal Batch Name", "Journal Batch Name");
        LItemJnlLine.SETFILTER("Line No.", '<>%1', "Line No.");
        LItemJnlLine.SETRANGE("Entry Type", LItemJnlLine."Entry Type"::Output);
        LItemJnlLine.SETRANGE("Order Type", LItemJnlLine."Order Type"::Production);
        LItemJnlLine.SETRANGE("Order No.", "Order No.");
        LItemJnlLine.SETRANGE("Document No.", "Document No.");
        LItemJnlLine.SETFILTER("Operation No.", '<>%1', '');
        LItemJnlLine.SETFILTER("Unit Cost", '<>%1', 0);
        IF LItemJnlLine.FINDFIRST THEN
            REPEAT
                LItemJnlLine."Run Time" := "Run Time";
                LItemJnlLine."Run Time (Base)" := CalcBaseTime1(LItemJnlLine."Run Time");
                LItemJnlLine.MODIFY;
            UNTIL LItemJnlLine.NEXT = 0;
    end;

    local procedure CalcBaseTime1(Qty: Decimal): Decimal
    begin
        if "Run Time" <> 0 then
            TestField("Qty. per Cap. Unit of Measure");
        exit(Round(Qty * "Qty. per Cap. Unit of Measure", UOMMgt.TimeRndPrecision));
    end;

    var
        "--PMTVariables--": Integer;
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
        LItemJnlLine: Record "Item Journal Line";
        UOMMgt: Codeunit "Unit of Measure Management";
}

