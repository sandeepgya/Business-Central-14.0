pageextension 50477 "PostedReturnShipmentSubformExt" extends "Posted Return Shipment Subform"//6651
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

