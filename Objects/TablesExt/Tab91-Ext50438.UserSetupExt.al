tableextension 50438 "UserSetupExt" extends "User Setup"//91
{
    // // PMT.00.15- Added Field Certified BOM
    fields
    {
        field(61001; "Certified BOM"; Boolean)
        {
            Description = 'PMT.00.15';
        }
    }
}

