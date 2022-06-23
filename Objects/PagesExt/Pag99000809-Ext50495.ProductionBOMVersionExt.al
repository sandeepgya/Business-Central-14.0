pageextension 50495 "ProductionBOMVersionExt" extends "Production BOM Version"//99000809
{
    layout
    {
        addafter("Unit of Measure Code")
        {
            field("1st Level Approved"; Rec."1st Level Approved")
            {
                ApplicationArea = All;
            }
        }
    }
}

