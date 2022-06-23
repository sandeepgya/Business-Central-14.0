pageextension 50465 "PostedTransferReceiptExt" extends "Posted Transfer Receipt"//5745
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
    }
}

