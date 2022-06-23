pageextension 50404 "UserSetupExt" extends "User Setup"//119
{
    // PMT.00.15
    //   Added Field Certifed BOM
    layout
    {
        addafter("Purchase Resp. Ctr. Filter")
        {
            field("Certified BOM"; Rec."Certified BOM")
            {
                ApplicationArea = All;
            }
        }
    }
}

