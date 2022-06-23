tableextension 50440 "CommentLineExt" extends "Comment Line"//97
{
    // PMT.00.01
    //   -Added new field "Include in T&C" for PO report.
    fields
    {
        field(61000; "Include in T&C"; Boolean)
        {
            Description = 'PMT.00.01';
        }
        field(61001; Bold; Boolean)
        {
        }
    }
}

