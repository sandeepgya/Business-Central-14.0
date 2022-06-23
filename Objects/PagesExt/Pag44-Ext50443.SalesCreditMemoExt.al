pageextension 50443 "SalesCreditMemoExt" extends "Sales Credit Memo"//44
{
    layout
    {
        // addafter(Control1500008)
        // {
        //     field("Location Code-Gen"; "Location Code")
        //     {
        //         ApplicationArea = All;
        //     }
        //     field("Secondary Customer No."; "Secondary Customer No.")
        //     {
        //         ApplicationArea = All;
        //     }
        // }
        addafter("Sell-to Contact")
        {
            field("Location Code-Gen"; Rec."Location Code")
            {
                ApplicationArea = All;
            }
            field("Secondary Customer No."; Rec."Secondary Customer No.")
            {
                ApplicationArea = All;
            }
        }
        addafter("Document Date")
        {
            field("Service/Installation Date"; Rec."Service/Installation Date")
            {
                ApplicationArea = All;
            }
        }
    }
}

