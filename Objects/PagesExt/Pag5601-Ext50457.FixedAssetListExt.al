pageextension 50457 "FixedAssetListExt" extends "Fixed Asset List"//5601
{
    layout
    {
        addafter("Search Description")
        {
            field("FA Posting Group"; Rec."FA Posting Group")
            {
                ApplicationArea = All;
            }
        }
    }
}

