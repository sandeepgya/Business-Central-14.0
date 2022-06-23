table 50005 "User Template Batch Access"
{

    fields
    {
        field(1; "User ID"; Code[50])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(2; "Document Type"; Code[30])
        {
            TableRelation = "Source Code".Code;
        }
        field(3; "Template Name"; Code[50])
        {
        }
        field(4; "Batch Name"; Code[50])
        {
        }
    }

    keys
    {
        key(Key1; "User ID", "Template Name", "Batch Name")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

