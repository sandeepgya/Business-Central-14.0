page 50027 "Management Employee List"
{
    //  CAS-03484-N7V1P1 OA.AA 13112019
    //   <NEW>New Object created

    Caption = 'Management Employee List';
    DelayedInsert = true;
    PageType = List;
    SourceTable = "Management Employee";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                }
                field("Show Cost"; Rec."Show Cost")
                {
                    ApplicationArea = All;
                }
                field("Show Sales Value"; Rec."Show Sales Value")
                {
                    ApplicationArea = All;
                }
                field("Show Purchase Value"; Rec."Show Purchase Value")
                {
                    ApplicationArea = All;
                }
                field("Show Profit Value"; Rec."Show Profit Value")
                {
                    ApplicationArea = All;
                }
                field("Show Item Unit Price"; Rec."Show Item Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Show OverHeadRate"; Rec."Show OverHeadRate")
                {
                    ApplicationArea = All;
                }
                field("Show Whole Item Led. Page"; Rec."Show Whole Item Led. Page")
                {
                    ApplicationArea = All;
                }
                field("Show Amount in COA"; Rec."Show Amount in COA")
                {
                    ApplicationArea = All;
                }
                field("Show Amount in G/L"; Rec."Show Amount in G/L")
                {
                    ApplicationArea = All;
                }
                field("Show Amount in Bank"; Rec."Show Amount in Bank")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            systempart(Control1900383207; Links)
            {
                Visible = false;
                ApplicationArea = All;
            }
            systempart(Control1905767507; Notes)
            {
                Visible = false;
                ApplicationArea = All;
            }
        }
    }

    actions
    {
    }
}

