pageextension 50450 "PurchaseOrderExt" extends "Purchase Order"//50
{
    // PMT.00.07
    //   Added Purchase order Archive Functionality
    // PMT.00.09
    //   Added Orginal Qty for Purchase order short close
    layout
    {
        modify("Quote No.")
        {
            Visible = false;
        }
        modify("Vendor Invoice No.")
        {
            Visible = false;
        }
        // modify("Service Type (Rev. Chrg.)")
        // {
        //     Visible = false;
        // }
        // modify("Consignment Note No.")
        // {
        //     Visible = false;
        // }
        // modify("Declaration Form (GTA)")
        // {
        //     Visible = false;
        // }
        // modify("Input Service Distribution")
        // {
        //     Visible = false;
        // }
        // modify("Transit Document")
        // {
        //     Visible = false;
        // }
        // modify(Trading)
        // {
        //     Visible = false;
        // }
        // modify("C Form")
        // {
        //     Visible = false;
        // }
        // modify("Form Code")
        // {
        //     Visible = false;
        // }
        // modify("Form No.")
        // {
        //     Visible = false;
        // }
        // modify("Service Tax Rounding Precision")
        // {
        //     Visible = false;
        // }
        // modify("Service Tax Rounding Type")
        // {
        //     Visible = false;
        // }
        // modify(PoT)
        // {
        //     Visible = false;
        // }
        // addafter(Structure)
        // { //OA.AS Commented
        addafter("Buy-from Contact")
        {
            field("Location Code-Gen"; Rec."Location Code")
            {
                ApplicationArea = All;
            }
        }
        addafter(Status)
        {
            field("Receiving No."; Rec."Receiving No.")
            {
                ApplicationArea = All;
            }
        }
        addafter("Currency Code")
        {
            field("Currency Reviewed"; Rec."Currency Reviewed")
            {
                ApplicationArea = All;
            }
            field("Currency Reviewed By"; Rec."Currency Reviewed By")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {


        //Unsupported feature: Code Modification on "Release(Action 137).OnAction".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ReleasePurchDoc.PerformManualRelease(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        IF "Currency Reviewed" = FALSE THEN //PMT
          ERROR(Text60000);//PMT
        // >>PMT.00.07
         ArchivalFirst;
         // <<PMT.00.07
        ReleasePurchDoc.PerformManualRelease(Rec)
        */
        //end;


        //Unsupported feature: Code Modification on "SendApprovalRequest(Action 57).OnAction".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ApprovalsMgmt.CheckPurchaseApprovalsWorkflowEnabled(Rec) THEN
          ApprovalsMgmt.OnSendPurchaseDocForApproval(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        IF "Currency Reviewed" = FALSE THEN //PMT
          ERROR(Text60000);//PMT
        IF ApprovalsMgmt.CheckPurchaseApprovalsWorkflowEnabled(Rec) THEN
          ApprovalsMgmt.OnSendPurchaseDocForApproval(Rec);
        */
        //end;
        addafter(Reopen)
        {
            action("PO Short Closed")
            {
                Caption = 'PO Short Closed';
                Image = Cancel;
                ApplicationArea = All;

                trigger OnAction()
                var
                    RecInvMatched: Boolean;
                    "PO Short Closed": Boolean;
                    PurchaseHeader: Record "Purchase Header";
                    ok: Boolean;
                    default: Label 'Do you want to short close the purchase order.';
                begin
                    //>>PMT.00.09
                    ok := DIALOG.CONFIRM(default, FALSE, TRUE);
                    Rec.POShortClosed;
                    //<<PMT.00.09
                end;
            }
        }
        addafter("&Print")
        {
            action("Print Import PO")
            {
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                var
                    PurchaseHeader: Record "Purchase Header";
                begin
                    PurchaseHeader.RESET;
                    PurchaseHeader.SETRANGE("No.", Rec."No.");
                    REPORT.RUNMODAL(50021, TRUE, FALSE, PurchaseHeader);
                end;
            }
        }
    }

    var
        Archived: Boolean;
        PurchHeaderArchive: Record "Purchase Header Archive";

    var
        UserSetup: Record "Custom Setup";
        Subscriber: Codeunit Subscriber;
        Text60000: Label 'Kindly review currency first & mark it as reviewed. Blank value denotes INR.';

    local procedure "---PMT-----"()
    begin
    end;

    local procedure Archival()
    var
        Archive: Codeunit 5063;
        flag: Boolean;
    begin
        //>>PMT.00.07
        CLEAR(flag);
        IF NOT flag THEN BEGIN
            Archive.StorePurchDocument(Rec, FALSE);
            flag := TRUE;
        END;
        //<<PMT.00.07
    end;
}

