pageextension 50474 "PurchaseReturnOrderExt" extends "Purchase Return Order"//6640
{
    layout
    {
        // addafter(Structure)
        // {
        //     field("Location Code-Gen"; "Location Code")
        //     {
        //         ApplicationArea = All;
        //     }
        // }
        addafter("No. of Archived Versions")
        {
            field("Location Code-Gen"; Rec."Location Code")
            {
                ApplicationArea = All;
            }
        }
    }
}

