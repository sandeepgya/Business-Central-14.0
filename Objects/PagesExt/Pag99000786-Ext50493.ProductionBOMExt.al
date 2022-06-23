pageextension 50493 "ProductionBOMExt" extends "Production BOM"//99000786
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

