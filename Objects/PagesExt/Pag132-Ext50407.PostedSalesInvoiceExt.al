pageextension 50407 "PostedSalesInvoiceExt" extends "Posted Sales Invoice"//132
{
    // PMT.00.23
    //  Added field "Service Installation Date" for Due Date calculation
    layout
    {
        // modify("IRN Hash")
        // {
        //     Visible = false;
        // }
        // modify("QR Code")
        // {
        //     Visible = false;
        // } //OA.AS Commented
        addafter("Document Date")
        {
            field("Service/Installation Date"; Rec."Service/Installation Date")
            {
                ApplicationArea = All;
            }
            field("Secondary Customer No."; Rec."Secondary Customer No.")
            {
                ApplicationArea = All;
            }
        }
        // addafter("Free Supply")
        // {
        addafter("No. Printed")
        {
            field("Ack No."; Rec."Ack No.")
            {
                ApplicationArea = All;
            }
            field("Ack./Cancel Date"; Rec."Ack./Cancel Date")
            {
                ApplicationArea = All;
            }
            // field("IRN Hash"; Rec."IRN Hash")
            // {
            //     ApplicationArea = All;
            // }
            // field("QR Code"; Rec."QR Code")
            // {
            //     ApplicationArea = All;
            // }//Already defined by India GST
        }
    }
    actions
    {

        //Unsupported feature: Property Insertion (RunObject) on ""Print Tax Invoice"(Action 1500012)".

        // addafter("Print Tax Invoice")
        // {
        addafter(Print)
        {
            action("Print eInvoice")
            {
                Caption = 'Print eInvoice';
                Image = PrintVAT;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    SalesInvHeader.RESET;
                    SalesInvHeader.SETRANGE("No.", Rec."No.");
                    REPORT.RUNMODAL(REPORT::"Sale Invoice-Taxable eInvoice", TRUE, TRUE, SalesInvHeader);
                end;
            }
        }
        // addafter("Print Excise Invoice")
        // {
        addafter("Print eInvoice")
        {
            action("Fill Missing Post Code")
            {
                Caption = 'Fill Missing Post Code';
                ApplicationArea = All;

                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    IF Rec."Sell-to Post Code" = '' THEN BEGIN
                        Customer.GET(Rec."Sell-to Customer No.");
                        Rec."Sell-to Post Code" := Customer."Post Code";
                        Rec.MODIFY;
                    END;
                    IF Rec."Bill-to Post Code" = '' THEN BEGIN
                        Customer.GET(Rec."Bill-to Customer No.");
                        Rec."Bill-to Post Code" := Customer."Post Code";
                        Rec.MODIFY;
                    END;
                    MESSAGE('Post Code Updated successfully.')
                end;
            }
        }
    }

    var
        "--PMT--": Integer;
        ServiceInstallationEditable: Boolean;
}

