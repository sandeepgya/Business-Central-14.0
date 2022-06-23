pageextension 50478 "PostedReturnReceiptSubformExt" extends "Posted Return Receipt Subform"//6661
{
    layout
    {
        addafter("No.")
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

