pageextension 50409 "PostedSalesCreditMemoExt" extends "Posted Sales Credit Memo"//134
{
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
        // addafter("Return Order No.")
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
}

