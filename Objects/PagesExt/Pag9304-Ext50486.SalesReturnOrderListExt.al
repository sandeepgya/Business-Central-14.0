pageextension 50486 "SalesReturnOrderListExt" extends "Sales Return Order List"//9304
{
    layout
    {
        addafter("Bill-to Post Code")
        {
            field("Secondary Customer No."; Rec."Secondary Customer No.")
            {
                ApplicationArea = All;
            }
        }
    }
}

