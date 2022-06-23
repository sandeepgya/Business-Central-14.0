tableextension 50403 "SalesInvoiceLineExt" extends "Sales Invoice Line"//113
{
    // PMT.00.10-
    //   Added field Original Qty for Short Closed Sales Order.
    fields
    {
        field(60000; "Secondary Customer No."; Code[20])
        {
            Caption = 'Secondary Customer No.';
            Description = 'PMT';
            Editable = false;
            TableRelation = "Secondary Customer";
        }
        field(61001; "Original Qty"; Decimal)
        {
            Description = 'PMT.00.10';
        }
    }
}

