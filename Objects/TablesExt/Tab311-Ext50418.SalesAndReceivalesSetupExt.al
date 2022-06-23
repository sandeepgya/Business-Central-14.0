tableextension 50418 "SalesAndReceivalesSetupExt" extends "Sales & Receivables Setup"//311
{
    fields
    {
        field(50001; "Sales Person Dimension Code"; Code[20])
        {
            Description = 'PMT';
            TableRelation = Dimension;
        }
    }
}

