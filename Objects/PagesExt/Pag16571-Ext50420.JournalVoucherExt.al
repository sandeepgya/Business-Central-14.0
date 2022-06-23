pageextension 50420 "JournalVoucherExt" extends "Journal Voucher"//16571
{
    layout
    {
        // addafter("Document Date")
        // {
        //     field(Correction; Rec.Correction)
        //     {
        //         ApplicationArea = All;
        //     }
        // }//Already defined by India GST Extension
        addafter("Document Type")
        {
            field("Order Address Code"; Rec."Order Address Code")
            {
                ApplicationArea = All;
            }
        }
    }
}

