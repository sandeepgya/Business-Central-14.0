pageextension 50445 "SalesAndReceivablesSetupExt" extends "Sales & Receivables Setup"//459
{
    layout
    {
        addafter("Default Posting Date")
        {
            field("Sales Person Dimension Code"; Rec."Sales Person Dimension Code")
            {
                ApplicationArea = All;
            }
        }
    }
}

