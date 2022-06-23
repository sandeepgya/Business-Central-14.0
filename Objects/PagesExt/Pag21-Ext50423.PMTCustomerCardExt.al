pageextension 50423 "PMTCustomerCardExt" extends "Customer Card"//21
{
    layout
    {
        modify("VAT Registration No.")
        {
            Visible = false;
        }
        modify("VAT Bus. Posting Group")
        {
            Visible = false;
        }
        // modify("Excise Bus. Posting Group")
        // {
        //     Visible = false;
        // }//OA.AS Commented
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
        // modify("Income Tax")
        // {
        //     Visible = true;
        // }
        // modify(VAT)
        // {
        //     Visible = false;
        // }
        // modify("Service Tax")
        // {
        //     Visible = false;
        // } //OA.AS Commented
        addafter("Service Zone Code")
        {
            field(Distributor; Rec.Distributor)
            {
                ApplicationArea = All;
            }
        }
    }
}

