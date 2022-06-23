tableextension 50428 "PurchaseHeaderArhiveExt" extends "Purchase Header Archive"//5109
{
    // PMT.00.07
    //   Added Field " Purchase Archived Release" for Purchase Archive Functionality
    fields
    {
        field(61001; "Purchase Archived Release"; Boolean)
        {
            Description = 'PMT.00.07';
        }
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

