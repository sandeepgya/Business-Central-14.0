tableextension 50429 "ProdOrderComponentExt" extends "Prod. Order Component"//5407
{
    fields
    {
        field(50001; "Available Stock"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = FIELD("Item No."), "Location Code" = FIELD("Location Code")));
            Description = 'PMT';
            FieldClass = FlowField;
        }
    }
}

