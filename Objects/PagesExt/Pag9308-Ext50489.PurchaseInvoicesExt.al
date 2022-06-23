pageextension 50489 "PurchaseInvoicesExt" extends "Purchase Invoices"//9308
{
    actions
    {
        addafter(PostAndPrint)
        {
            action("Performa Invoice")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    PurchHeader: Record "Purchase Header";
                begin
                    //>>PMT.00.01
                    PurchHeader.RESET;
                    PurchHeader.SETRANGE("No.", Rec."No.");
                    REPORT.RUNMODAL(REPORT::"Proforma Invoice-GST", TRUE, TRUE, PurchHeader);
                    // << PMT.00.01
                end;
            }
        }
    }
}

