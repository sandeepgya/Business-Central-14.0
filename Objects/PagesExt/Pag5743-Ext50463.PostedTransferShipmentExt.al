pageextension 50463 "PostedTransferShipmentExt" extends "Posted Transfer Shipment"//5743
{
    layout
    {
        addafter("In-Transit Code")
        {
            field("Party Type"; Rec."Party Type")
            {
                ApplicationArea = All;
            }
            field("Party No."; Rec."Party No.")
            {
                ApplicationArea = All;
            }
        }
        // addafter("Captive Consumption")
        // {
        addafter("Shortcut Dimension 2 Code")
        {
            field("Ack No."; Rec."Ack No.")
            {
                ApplicationArea = All;
            }
            field("Ack./Cancel Date"; Rec."Ack./Cancel Date")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addafter("&Print")
        {
            action("Print E-Invoice")
            {
                Image = Print;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    //TransShipRec.SETRECFILTER;
                    //REPORT.RUN(REPORT::"Stock Trans Ship EInvoice",TRUE,TRUE,TransShipRec);
                    TransShipRec.GET(Rec."No.");
                    TransShipRec.SETRECFILTER;
                    REPORT.RUNMODAL(REPORT::"Stock Trans Ship EInvoice", TRUE, TRUE, TransShipRec);
                    CurrPage.UPDATE(FALSE);
                end;
            }
        }
    }

    var
        [SecurityFiltering(SecurityFilter::Validated)]
        TransShipRec: Record "Transfer Shipment Header";
}

