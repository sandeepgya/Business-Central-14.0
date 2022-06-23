tableextension 50406 "PurchRcptHeaderExt" extends "Purch. Rcpt. Header"//120
{
    fields
    {
        field(61003; "Currency Reviewed"; Boolean)
        {
            DataClassification = ToBeClassified;
            Description = 'PMT.00.09';
        }
        field(61004; "Currency Reviewed By"; Code[50])
        {
            DataClassification = ToBeClassified;
            Description = 'PMT.00.09';
            Editable = false;
        }
    }
}

