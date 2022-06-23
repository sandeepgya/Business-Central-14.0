pageextension 50472 "SalesReturnOrderExt" extends "Sales Return Order"//6630
{
    layout
    {
        addafter("Sell-to Contact")
        {
            field("Secondary Customer No."; Rec."Secondary Customer No.")
            {
                ApplicationArea = All;
            }
        }
        addafter("Ship-to Contact")
        {
            field("Location Code-Gen"; Rec."Location Code")
            {
                ApplicationArea = All;
            }
        }
    }
}

