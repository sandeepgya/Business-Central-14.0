pageextension 50494 "ProductionBOMLinesExt" extends "Production BOM Lines"//99000788
{
    // OA Added new field Tolerance%
    layout
    {
        addafter("Ending Date")
        {
            field("Tolerance%"; Rec."Tolerance%")
            {
                ApplicationArea = All;
            }
            field("Current Standard Cost"; Rec."Current Standard Cost")
            {
                ApplicationArea = All;
            }
        }
    }
}

