tableextension 50427 "SalesHeaderArchiveExt" extends "Sales Header Archive"//5107
{
    // PMT.00.08
    //   Added Field "Sales Archived  Release" for Sales Archive Functionality
    fields
    {
        field(61001; "Sales Archived  Release"; Boolean)
        {
            Description = 'PMT.00.08';
        }
    }
}

