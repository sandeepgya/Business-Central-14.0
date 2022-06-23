tableextension 50405 "SalesCrMemoLineExt" extends "Sales Cr.Memo Line"//115
{
    fields
    {
        field(60000; "Secondary Customer No."; Code[20])
        {
            Caption = 'Secondary Customer No.';
            Description = 'PMT';
            Editable = false;
            TableRelation = "Secondary Customer";
        }
    }
}

