pageextension 50485 "SalesInvoiceListExt" extends "Sales Invoice List"//9301
{
    // PMT.00.01
    //   Added Report Performa Invoice
    actions
    {
        addafter(Post)
        {
            action("Performa Invoice")
            {
                Image = Invoice;
                ApplicationArea = All;

                trigger OnAction()
                var
                    SalesHeader: Record "Sales Header";
                begin
                    // >> PMT.00.01
                    SalesHeader.RESET;
                    SalesHeader.SETRANGE("No.", Rec."No.");
                    REPORT.RUNMODAL(REPORT::"Proforma Invoice-GST", TRUE, TRUE, SalesHeader);
                    // << PMT.00.01
                end;
            }
        }
    }
}

