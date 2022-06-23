page 50004 "Quality Comments"
{
    AutoSplitKey = true;
    PageType = List;
    SourceTable = "Quality Comments";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("QC No."; Rec."QC No.")
                {
                    Visible = false;
                    ApplicationArea = All;
                }
                field("QC Date"; Rec."QC Date")
                {
                    ApplicationArea = All;
                }
                field(Comments; Rec.Comments)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

