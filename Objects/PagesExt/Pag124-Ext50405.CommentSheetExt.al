pageextension 50405 "CommentSheetExt" extends "Comment Sheet"//124
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

