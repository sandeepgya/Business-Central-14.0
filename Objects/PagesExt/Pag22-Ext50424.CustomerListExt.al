pageextension 50424 "CustomerListExt" extends "Customer List"//22
{
    layout
    {
        addafter("Responsibility Center")
        {
            field("GST Registration No."; Rec."GST Registration No.")
            {
                ApplicationArea = All;
            }
            field("GST Customer Type"; Rec."GST Customer Type")
            {
                ApplicationArea = All;
            }
        }
        addafter(Contact)
        {
            field(Distributor; Rec.Distributor)
            {
                ApplicationArea = All;
            }
        }
        addafter("Base Calendar Code")
        {
            field(City; Rec.City)
            {
                ApplicationArea = All;
            }
            field("State Code"; Rec."State Code")
            {
                ApplicationArea = All;
            }
        }
    }
}

