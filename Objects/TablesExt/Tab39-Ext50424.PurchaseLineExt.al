tableextension 50424 "PurchaseLineExt" extends "Purchase Line"//39
{
    fields
    {

        //Unsupported feature: Property Modification (Editable) on ""Assessee Code"(Field 13742)".

        field(61001; "Original Qty"; Decimal)
        {
            Description = 'PMT.00.09';
        }
        field(61002; "Short Qty"; Decimal)
        {
            Description = 'PMT.00.09';
        }
        field(61003; "Excess Qty"; Decimal)
        {
            Description = 'PMT.00.09';
        }
        field(61004; "Actual Qty"; Decimal)
        {
            Description = 'PMT.00.09';
        }
    }
}

