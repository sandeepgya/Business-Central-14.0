pageextension 50448 "InventorySetupExt" extends "Inventory Setup"//461
{
    // OA0007 : Edit code to check the inventory till posting date incase of outward transactions (Sales)
    layout
    {
        addafter("Inbound Whse. Handling Time")
        {
            field("Item Dimension Code"; Rec."Item Dimension Code")
            {
                Caption = 'Item Dimension Code';
                ApplicationArea = All;
            }
        }
        addafter("Prevent Negative Inventory")
        {
            field("Prevent Neg. Inv. with Date"; Rec."Prevent Neg. Inv. with Date")
            {
                ApplicationArea = All;
            }
        }
    }
}

