pageextension 50451 "PurchaseInvoiceExt" extends "Purchase Invoice"//51
{
    layout
    {
        modify("Campaign No.")
        {
            Visible = false;
        }
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
        // modify("Transit Document2")
        // {
        //     Visible = false;
        // }
        // modify(Trading)
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
        // modify("LC No.")
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
        // modify(PoT)
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
        // addafter("GST Reason Type")
        // {
        addafter(Status)
        {
            field("Posting No."; Rec."Posting No.")
            {
                ApplicationArea = All;
            }
        }
        addafter("Ship-to Name")
        {
            field("Ship-to Code"; Rec."Ship-to Code")
            {
                ApplicationArea = All;
            }
        }
    }
}

