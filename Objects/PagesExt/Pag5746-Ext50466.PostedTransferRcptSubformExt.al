pageextension 50466 "PostedTransferRcptSubformExt" extends "Posted Transfer Rcpt. Subform"//5746
{
    layout
    {
        addafter("Item No.")
        {
            field("Item Category Code"; Rec."Item Category Code")
            {
                Editable = false;
                ApplicationArea = All;
            }
            // field("Product Group Code"; Rec."Product Group Code")
            // {
            //     Editable = false;
            //     ApplicationArea = All;
            // } //OA.AS Commented
        }
    }
}

