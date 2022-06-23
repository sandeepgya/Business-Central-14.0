pageextension 50456 "FixedAssetCardExt" extends "Fixed Asset Card"//5600
{
    layout
    {
        // modify("Excise Prod. Posting Group")
        // {
        //     Visible = false;
        // }
        // modify("VAT Product Posting Group")
        // {
        //     Visible = false;
        // }
        // modify("Tax Group Code")
        // {
        //     Visible = false;
        // } //OA.AS Commented
        addafter("Serial No.")
        {
            field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
            {
                ApplicationArea = All;
            }
            field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
            {
                ApplicationArea = All;
            }
        }
    }
}

