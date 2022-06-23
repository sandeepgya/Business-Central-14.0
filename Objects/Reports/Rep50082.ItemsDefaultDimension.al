report 50082 "Items_DefaultDimension"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/ItemsDefaultDimension.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
            column(Item_No; Item."No.")
            {
            }

            trigger OnAfterGetRecord()
            var
                InventoryPostingGroup: Record "Inventory Posting Group";
                DefaultDimension: Record "Default Dimension";
            begin
                InventoryPostingGroup.RESET;
                InventoryPostingGroup.GET(Item."Inventory Posting Group");

                IF InventoryPostingGroup."Default Dimension Required" THEN BEGIN
                    DefaultDimension.RESET;
                    IF DefaultDimension.GET(27, Item."No.", 'ITEMS') THEN
                        IF DefaultDimension."Dimension Value Code" = Item."No." THEN
                            ;
                END ELSE BEGIN
                    DefaultDimension.RESET;
                    IF DefaultDimension.GET(27, Item."No.", 'ITEMS') THEN
                        IF DefaultDimension."Dimension Value Code" = Item."No." THEN
                            ;
                END;
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }
}

