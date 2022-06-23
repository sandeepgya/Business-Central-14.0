pageextension 50471 "PurchCommentSheetExt" extends "Purch. Comment Sheet"//66
{
    // PMT.00.01
    //   - Added new field "Include in T&C" for PO Report.
    layout
    {
        addafter("Code")
        {
            field("Include in T&C"; Rec."Include in T&C")
            {
                ApplicationArea = All;
            }
            field(Bold; Rec.Bold)
            {
                ApplicationArea = All;
            }
        }
    }
}

