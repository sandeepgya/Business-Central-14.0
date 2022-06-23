pageextension 50426 "PaymentJournalExt" extends "Payment Journal"//256
{
    layout
    {
        addafter("External Document No.")
        {
            // field("Cheque No."; Rec."Cheque No.")
            // {
            //     ApplicationArea = All;
            // }
            // field("Cheque Date"; Rec."Cheque Date")
            // {
            //     ApplicationArea = All;
            // }Already defined by India Voucher Interface Application
        }
    }
}

