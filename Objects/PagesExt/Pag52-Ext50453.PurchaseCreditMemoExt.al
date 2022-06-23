pageextension 50453 "PurchaseCreditMemoExt" extends "Purchase Credit Memo"//52
{
    layout
    {
        // modify("Service Type (Rev. Chrg.)")
        // {
        //     Visible = false;
        // }
        // modify("Consignment Note No.")
        // {
        //     Visible = false;
        // }
        // modify("Declaration Form (GTA)")
        // {
        //     Visible = false;
        // }
        // modify("Input Service Distribution")
        // {
        //     Visible = false;
        // }
        // modify(Trading)
        // {
        //     Visible = false;
        // }
        // modify(PoT)
        // {
        //     Visible = false;
        // }
        // modify("C Form")
        // {
        //     Visible = false;
        // }
        // modify("Form Code")
        // {
        //     Visible = false;
        // }
        // modify("Form No.")
        // {
        //     Visible = false;
        // }
        // modify("Service Tax Rounding Precision")
        // {
        //     Visible = false;
        // }
        // modify("Service Tax Rounding Type")
        // {
        //     Visible = false;
        // }
        // addafter(Structure)
        // { //OA.AS Commented
        addafter("Buy-from Contact")
        {
            field("Location Code-Gen"; Rec."Location Code")
            {
                ApplicationArea = All;
            }
        }
    }
}

