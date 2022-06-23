pageextension 50458 "FixedAssetGLJournalExt" extends "Fixed Asset G/L Journal"//5628
{
    layout
    {
        addfirst(Control1)
        {
            field("Line No."; Rec."Line No.")
            {
                ApplicationArea = All;
            }
        }
    }
}

