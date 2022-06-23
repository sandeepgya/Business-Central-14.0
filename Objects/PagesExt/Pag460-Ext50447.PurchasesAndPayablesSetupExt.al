pageextension 50447 "PurchasesAndPayablesSetupExt" extends "Purchases & Payables Setup"//460
{
    layout
    {
        modify("GST Liability Adj. Jnl Nos.")
        {
            Visible = false;
        }
        // addafter("Default Posting Date")
        // {
        // field("RCM Exempt Start Date (Unreg)"; "RCM Exempt Start Date (Unreg)")
        // {
        //     ApplicationArea = All;
        // }
        // field("RCM Exempt End Date (Unreg)"; "RCM Exempt End Date (Unreg)")
        // {
        //     ApplicationArea = All;
        // }
        // field("GST Liability Adj. Jnl Nos."; "GST Liability Adj. Jnl Nos.")
        // {
        //     ApplicationArea = All;
        // }Already defined in India GST application
        // }
    }
}

