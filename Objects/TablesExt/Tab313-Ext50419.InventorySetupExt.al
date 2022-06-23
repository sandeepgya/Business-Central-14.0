tableextension 50419 "InventorySetupExt" extends "Inventory Setup"//313
{
    // OA0007 : Edit code to check the inventory till posting date incase of outward transactions (Sales)
    fields
    {
        field(50001; "Item Dimension Code"; Code[20])
        {
            Caption = 'Item Dimension Code';
            Description = 'PMT';
            NotBlank = true;
            TableRelation = Dimension.Code;
        }
        field(50002; "Prevent Neg. Inv. with Date"; Boolean)
        {
            Caption = 'Prevent Neg. Inv. with Date';
            Description = 'PMTOA0007';
        }
    }
}

