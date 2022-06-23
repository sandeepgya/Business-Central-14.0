pageextension 50488 "PurchaseOrderListExt" extends "Purchase Order List"//9307
{
    actions
    {
        addafter(Print)
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
                    REPORT.RUNMODAL(REPORT::"Import Purchase Order_PMT", TRUE, FALSE, PurchaseHeader);
                end;
            }
        }
        addafter("Send IC Purchase Order")
        {
            action("Purchase Order Report")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    PurchaseHeader: Record "Purchase Header";
                begin
                    PurchaseHeader.RESET;
                    PurchaseHeader.SETRANGE("No.", Rec."No.");
                    REPORT.RUNMODAL(REPORT::"Purchase Order_PMT", TRUE, TRUE, PurchaseHeader); //PMT.00.01
                end;
            }
        }
    }


    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SetSecurityFilterOnRespCenter;

    JobQueueActive := PurchasesPayablesSetup.JobQueueActive;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    // >> OA :PC040118
    SETRANGE("PO Short Closed",FALSE);
    // << OA:PC 040118
    */
    //end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        // >> OA :PC040118
        Rec.
        SETRANGE("PO Short Closed", FALSE);
        // << OA:PC 040118
    end;
}

