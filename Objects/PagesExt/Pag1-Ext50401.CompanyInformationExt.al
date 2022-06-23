pageextension 50401 "CompanyInformationExt" extends "Company Information"//1
{
    layout
    {
        addafter("Bank Account No.")
        {
            field("IFSC Code"; Rec."IFSC Code")
            {
                ApplicationArea = All;
            }
        }
    }
}

