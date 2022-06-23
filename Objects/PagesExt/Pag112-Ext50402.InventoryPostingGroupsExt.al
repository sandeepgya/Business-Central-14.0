pageextension 50402 "InventoryPostingGroupsExt" extends "Inventory Posting Groups"//112
{
    layout
    {
        addafter(Description)
        {
            field("Default Dimension Required"; Rec."Default Dimension Required")
            {
                ApplicationArea = All;
            }
        }
    }
}

