xmlport 50001 "SecondarySales"
{
    Format = VariableText;

    schema
    {
        textelement(Root)
        {
            tableelement("Secondary Sales Details"; "Secondary Sales Details")
            {
                XmlName = 'SecondarySales';
                fieldelement(SellToCustNo; "Secondary Sales Details"."Sell-to Customer No.")
                {
                    Width = 1;
                }
                fieldelement(DocNo; "Secondary Sales Details"."Document No.")
                {
                }
                fieldelement(LineNo; "Secondary Sales Details".Type)
                {
                }
                fieldelement(Type; "Secondary Sales Details"."No.")
                {
                }
                fieldelement(Location; "Secondary Sales Details"."Location Code")
                {
                }
                fieldelement(Description; "Secondary Sales Details".Description)
                {
                }
                fieldelement(Description2; "Secondary Sales Details"."Description 2")
                {
                }
                fieldelement(UniofMeasure; "Secondary Sales Details"."Unit of Measure")
                {
                }
                fieldelement(Quantity; "Secondary Sales Details".Quantity)
                {
                }
                fieldelement(OrderDate; "Secondary Sales Details"."Order Date")
                {
                }
                fieldelement(UnitPrice; "Secondary Sales Details"."Unit Price")
                {
                }
                fieldelement(UnitCost; "Secondary Sales Details"."Unit Cost (LCY)")
                {
                }
                fieldelement(LineDiscountAmount; "Secondary Sales Details"."Line Discount Amount")
                {
                }
                fieldelement(Amount; "Secondary Sales Details".Amount)
                {
                }
            }
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
}

