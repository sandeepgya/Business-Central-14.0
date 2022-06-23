tableextension 50420 "ItemLedgerEntryExt" extends "Item Ledger Entry"//32
{
    // OA0007 : Created new function to check the inventory till posting date incase of outward transactions (Sales)
    //   -CheckNetChangeInventoryTillPostingDate
    fields
    {
        field(61000; "Quality Checked"; Boolean)
        {
            Description = 'PMT.00.11';
        }
        field(61002; "Party Type"; Option)
        {
            Description = 'PMT.00.14';
            OptionMembers = "          ",Customer,Vendor;

            trigger OnValidate()
            var
                SetValue: Boolean;
            begin
            end;
        }
        field(61003; "Party No."; Code[30])
        {
            Description = 'PMT.00.14';
        }
        field(61004; "Costing Method"; Enum "Costing Method")
        {
            CalcFormula = Lookup(Item."Costing Method" WHERE("No." = FIELD("Item No.")));
            FieldClass = FlowField;
        }
    }

    local procedure "----OA----"()
    begin
    end;

    procedure CheckNetChangeInventoryTillPostingDate()
    var
        Item: Record Item;
        Location: Record Location;
    begin
        //>>OA0007
        IF Location.GET("Location Code") THEN
            IF Location."Use As In-Transit" THEN
                EXIT;
        IF Positive THEN
            EXIT;

        IF "Entry Type" IN
            ["Entry Type"::Sale,
            "Entry Type"::"Negative Adjmt.",
            "Entry Type"::Transfer,
            "Entry Type"::Consumption,
            "Entry Type"::"Assembly Consumption"] THEN BEGIN
            Item.GET("Item No.");
            IF Item.PreventNegativeInventory THEN BEGIN
                Item.SETFILTER("Date Filter", '..%1', "Posting Date");
                Item.SETFILTER("Location Filter", "Location Code");
                Item.CALCFIELDS("Net Change");
                IF Item."Net Change" - ABS(Quantity) < 0 THEN
                    ERROR(InsufficientInvErr, Item."No.", "Posting Date");
            END;
        END;
        //<<OA0007
    end;

    var
        // "---OA----": ;
        InsufficientInvErr: Label 'Insufficient Inventory of Item %1 till %2. ';
}

