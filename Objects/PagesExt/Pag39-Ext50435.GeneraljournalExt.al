pageextension 50435 "GeneraljournalExt" extends "General Journal"//39
{
    layout
    {
        // addafter(Control7)
        // {
        //     field("Cheque Date"; "Cheque Date")
        //     {
        //         ApplicationArea = All;
        //     }
        //     field("Cheque No."; "Cheque No.")
        //     {
        //         ApplicationArea = All;
        //     }
        // }//Already defined by India Voucher Interface application
        addafter("Direct Debit Mandate ID")
        {
            field("Line No."; Rec."Line No.")
            {
                ApplicationArea = All;
            }
            // field("Tax Amount"; Rec."Tax Amount")
            // {
            //     ApplicationArea = All;
            // } //OA.AS Commented
            // field("Tax Type"; Rec."Tax Type")
            // {
            //     ApplicationArea = All;
            // }//Already defined by India GST application
            field("GST Jurisdiction Type"; Rec."GST Jurisdiction Type")
            {
                ApplicationArea = All;
            }
            // field("GST %"; Rec."GST %")
            // {
            //     ApplicationArea = All;
            // } //OA.AS Commented
            // field("GST Component Code"; Rec."GST Component Code")
            // {
            //     ApplicationArea = All;
            // }//Already defined by India GST application
        }
    }
}

