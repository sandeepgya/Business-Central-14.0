pageextension 50464 "PostedTransferShptSubformExt" extends "Posted Transfer Shpt. Subform"//5744
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

