page 50003 "Quality Check"
{
    UsageCategory = Tasks;
    ApplicationArea = All;
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = List;
    SourceTable = "Quality Check Header";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("QC No."; Rec."QC No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                    ApplicationArea = All;
                }
                field("GRN No."; Rec."GRN No.")
                {
                    ApplicationArea = All;
                }
                field("GRN Line No."; Rec."GRN Line No.")
                {
                    ApplicationArea = All;
                }
                field("Order No."; Rec."Order No.")
                {
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field("Item Description"; Rec."Item Description")
                {
                    ApplicationArea = All;
                }
                field("Quality Checked"; Rec."Quality Checked")
                {
                    ApplicationArea = All;
                }
                field("Quality User"; Rec."Quality User")
                {
                    Caption = 'Quality By';
                    ApplicationArea = All;
                }
                field("Quality Date"; Rec."Quality Date")
                {
                    ApplicationArea = All;
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                }
                field("Item Ledger Entry No"; Rec."Item Ledger Entry No")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(creation)
        {
            action("Quality Comments")
            {
                Promoted = true;
                RunObject = Page "Quality Comments";
                RunPageLink = "QC No." = FIELD("QC No.");
                ApplicationArea = All;
            }
        }
    }

    trigger OnOpenPage()
    begin
        IF NOT Rec."Quality Checked" THEN
            CurrPage.EDITABLE := TRUE
        ELSE
            CurrPage.EDITABLE := FALSE;
    end;
}

