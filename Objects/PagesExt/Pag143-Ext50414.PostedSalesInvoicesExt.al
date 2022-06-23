pageextension 50414 "PostedSalesInvoicesExt" extends "Posted Sales Invoices"//143
{
    // PMT.00.01
    //   Added Report Sales Invoice
    layout
    {
        addafter("No.")
        {
            field("Ack No."; Rec."Ack No.")
            {
                ApplicationArea = All;
            }
            field("Ack./Cancel Date"; Rec."Ack./Cancel Date")
            {
                ApplicationArea = All;
            }
            field("IRN Hash"; Rec."IRN Hash")
            {
                ApplicationArea = All;
            }
            field("QR Code"; Rec."QR Code")
            {
                ApplicationArea = All;
            }
        }
        addafter("Sell-to Country/Region Code")
        {
            field("Service/Installation Date"; Rec."Service/Installation Date")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {

        //Unsupported feature: Property Modification (Name) on ""Debit Note"(Action 1500004)".

        addafter(Print)
        {
            action("Sales Invoice GST")
            {
                Image = PostedTaxInvoice;
                RunPageOnRec = true;
                ApplicationArea = All;

                trigger OnAction()
                var
                    "SalesInv-Header": Record "Sales Invoice Header";
                begin
                    // >> PMT.00.01
                    "SalesInv-Header".RESET;
                    "SalesInv-Header".SETRANGE("No.", Rec."No.");
                    REPORT.RUNMODAL(REPORT::"Sale Invoice-Taxable", TRUE, TRUE, "SalesInv-Header");
                    // << PMT.00.01
                end;
            }
            action("Debit Note")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    "SalesInv-Header": Record "Sales Invoice Header";
                begin
                    // >> PMT.00.01
                    "SalesInv-Header".RESET;
                    "SalesInv-Header".SETRANGE("No.", Rec."No.");
                    "SalesInv-Header".SETRANGE("Invoice Type", "SalesInv-Header"."Invoice Type"::"Debit Note");
                    REPORT.RUNMODAL(REPORT::"Sale Invoice-Taxable Debit", TRUE, TRUE, "SalesInv-Header");
                    // << PMT.00.01
                end;
            }
        }
        // addafter("Non GST")
        // {
        //     group("E-Invoice")
        //     {
        //         action("Generate E-Invoice")
        //         {
        //             Caption = 'Generate E-Invoice';
        //             Image = ElectronicBanking;
        //             ApplicationArea = All;

        //             trigger OnAction()
        //             var
        //                 SalesInvoiceHeader: Record "Sales Invoice Header";
        //                 APIManagement: Codeunit "API Management -Webtel";
        //                 IRNError: Label 'IRN Already Generated.';
        //             begin
        //                 CLEAR(APIManagement);
        //                 SalesInvoiceHeader.RESET;
        //                 SalesInvoiceHeader.SETRANGE("No.", Rec."No.");
        //                 IF SalesInvoiceHeader.FINDFIRST THEN BEGIN
        //                     IF SalesInvoiceHeader."IRN Hash" <> '' THEN BEGIN
        //                         ERROR(IRNError);
        //                     END ELSE BEGIN
        //                         APIManagement.SetSalesInvHeader(SalesInvoiceHeader);
        //                         APIManagement.GenerateSalesInvJSONSchema(SalesInvoiceHeader);
        //                     END;
        //                 END;
        //             end;
        //         }
        //         action("Cancel E-Invoice")
        //         {
        //             Caption = 'Cancel E-Invoice';
        //             Image = ElectronicBanking;
        //             ApplicationArea = All;

        //             trigger OnAction()
        //             var
        //                 SalesInvoiceHeader: Record "Sales Invoice Header";
        //                 APIManagement: Codeunit "API Management -Webtel";
        //             begin
        //                 SalesInvoiceHeader.RESET;
        //                 SalesInvoiceHeader.SETRANGE("No.", Rec."No.");
        //                 IF SalesInvoiceHeader.FINDFIRST THEN BEGIN
        //                     APIManagement.SetSalesInvHeader(SalesInvoiceHeader);
        //                     APIManagement.CancelSalesIRNNo(SalesInvoiceHeader);
        //                 END;
        //             end;
        //         }
        //     }
        // } //OA.AS Commented
    }
}

