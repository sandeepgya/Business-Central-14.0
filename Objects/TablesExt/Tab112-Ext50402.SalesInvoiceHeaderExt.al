tableextension 50402 "SalesInvoiceHeaderExt" extends "Sales Invoice Header"//112
{
    // PMT.00.23
    //   -Added Service/Installation Date field.
    //   -Added code to change the due date calculation.

    //Unsupported feature: Property Insertion (Permissions) on ""Sales Invoice Header"(Table 112)".

    fields
    {

        //Unsupported feature: Property Insertion (Editable) on ""Location GST Reg. No."(Field 16616)".

        field(61000; "Secondary Customer No."; Code[20])
        {
            Caption = 'Secondary Customer No.';
            Description = 'PMT';
            Editable = false;
            TableRelation = "Secondary Customer";
        }
        field(61003; "Service/Installation Date"; Date)
        {
            Description = 'PMT.00.23';

            trigger OnValidate()
            begin
                ChangeDueDate;
                UpdateWarrantyDetails; // PMT
            end;
        }
        field(80001; "Ack No."; Text[30])
        {
            Caption = 'Ack No.';
            DataClassification = ToBeClassified;
            Description = 'E-Inv';
        }
        field(80002; "Ack./Cancel Date"; Text[30])
        {
            Caption = 'Ack./Cancel Date';
            DataClassification = ToBeClassified;
            Description = 'E-Inv';
        }
        field(80003; "E-Way Generated"; Boolean)
        {
            DataClassification = ToBeClassified;
            Description = 'E-Inv';
        }
    }

    local procedure ChangeDueDate()
    var
        PaymentTerms: Record "Payment Terms";
        CustLedgerEntry: Record "Cust. Ledger Entry";
    begin
        //>>PMT.00.23
        IF "Service/Installation Date" = 0D THEN
            ERROR(ErrorBlankServiceInstallationDate);
        IF CONFIRM(ConfirmDueDateChange, FALSE) THEN BEGIN
            IF "Service/Installation Date" <> 0D THEN BEGIN
                IF "Service/Installation Date" < "Posting Date" THEN
                    ERROR(ErrorLessThanPostingDate);
                PaymentTerms.GET("Payment Terms Code");
                "Due Date" := CALCDATE(PaymentTerms."Due Date Calculation", "Service/Installation Date");
                CustLedgerEntry.RESET;
                CustLedgerEntry.SETRANGE("Document Type", CustLedgerEntry."Document Type"::Invoice);
                CustLedgerEntry.SETRANGE("Document No.", "No.");
                CustLedgerEntry.SETRANGE("Customer No.", "Sell-to Customer No.");
                IF CustLedgerEntry.FINDFIRST THEN BEGIN
                    CustLedgerEntry."Due Date" := "Due Date";
                    CustLedgerEntry.MODIFY;
                END;
                EXIT;
            END;
        END ELSE
            ERROR('User cancelled Activity.');
        //<<PMT.00.23
    end;

    local procedure UpdateWarrantyDetails()
    var
        SalesInvoiceWarrantyDetails: Record "Sales Invoice Warranty Details";
    begin
        SalesInvoiceWarrantyDetails.RESET;
        SalesInvoiceWarrantyDetails.SETRANGE("Sell-to Customer No.", "Sell-to Customer No.");
        SalesInvoiceWarrantyDetails.SETRANGE("Document No.", "No.");
        IF SalesInvoiceWarrantyDetails.FINDSET THEN
            REPEAT
                SalesInvoiceWarrantyDetails."Service/Installation Date" := "Service/Installation Date";
                SalesInvoiceWarrantyDetails.MODIFY;
            UNTIL SalesInvoiceWarrantyDetails.NEXT = 0;
    end;

    var
        ConfirmDueDateChange: Label 'Due Date will be recalculated.It cannot be changed. Are you sure you want to perform this activity?';
        ErrorLessThanPostingDate: Label 'Service/Installation Date cannot be before Posting Date.';
        ErrorBlankServiceInstallationDate: Label 'Service/Installation Date cannot be empty once it is filled.';
}

