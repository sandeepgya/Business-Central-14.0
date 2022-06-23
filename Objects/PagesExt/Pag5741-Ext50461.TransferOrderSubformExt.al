pageextension 50461 "TransferOrderSubformExt" extends "Transfer Order Subform"//5741
{
    // PMT1.00 16-May18
    //   Added field Inventory
    layout
    {
        addafter("Item No.")
        {
            field("Item Category Code"; Rec."Item Category Code")
            {
                Editable = false;
                ApplicationArea = All;
            }
            // field("Product Group Code"; Rec."Product Group Code")
            // {
            //     Editable = false;
            //     ApplicationArea = All;
            // } //OA.AS Commented
        }
        // addafter("Claim Deferred Excise")
        // {
        addafter("Transfer-To Bin Code")
        {
            field(Inventory; Rec.Inventory)
            {
                ApplicationArea = All;
            }
        }
        modify("Appl.-to Item Entry")
        {
            trigger OnLookup(var Text: Text): Boolean
            var
                myInt: Integer;
            begin
                Rec.PMTSelectItemEntry(Rec.FIELDNO("Appl.-to Item Entry")); //OA.AS Re-engineering
            end;
        }
    }
}

