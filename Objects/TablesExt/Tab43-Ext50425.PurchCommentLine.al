tableextension 50425 "PurchCommentLine" extends "Purch. Comment Line"//43
{
    // PMT.REP.01
    //   - Added field Comment Type for Report.
    // PMT.00.01
    //   - Added new field "Include in T&C" for PO report.
    fields
    {
        field(61000; "Include in T&C"; Boolean)
        {
            Description = 'PMT.00.01';
        }
        field(61001; "Comment Type"; Option)
        {
            Description = 'PMT.REP.01';
            OptionMembers = "Guarantee/Warranty",Packing,Taxes,ExciseDuty,Frieght,Insurance,SpecialInstructions;
        }
        field(61002; Bold; Boolean)
        {
            Description = 'PMT.00.01';
        }
    }
}

