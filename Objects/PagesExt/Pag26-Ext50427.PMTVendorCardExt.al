pageextension 50427 "PMTVendorCardExt" extends "Vendor Card"//26
{
    layout
    {
        modify("Tax Liable")
        {
            Visible = true;
        }
        modify("VAT Bus. Posting Group")
        {
            Visible = false;
        }
        // modify("Excise Bus. Posting Group")
        // {
        //     Visible = false;
        // } //OA.AS Commented
        modify("Prices Including VAT")
        {
            Visible = false;
        }
        // modify(Tax)
        // {
        //     Visible = false;
        // }
        // modify(Excise)
        // {
        //     Visible = false;
        // }
        // modify(VAT)
        // {
        //     Visible = false;
        // }
        // modify("Service Tax")
        // {
        //     Visible = false;
        // } //OA.AS Commented
        addafter("ARN No.")
        {
            // field(Structure; Structure)
            // {
            //     ApplicationArea = All;
            // } //OA.AS Commented
        }
    }
}

