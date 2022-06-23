tableextension 50435 "CompanyInformationExt" extends "Company Information"//79
{
    fields
    {
        field(61001; "IFSC Code"; Code[20])
        {
            Description = 'PMT';
        }
        //>>OA.Reengineering BC Upgrade
        field(53737; "Company Registration  No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        //<<OA.Reengineering BC Upgrade
    }
}

