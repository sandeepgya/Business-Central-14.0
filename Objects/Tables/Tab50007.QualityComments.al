table 50007 "Quality Comments"
{

    fields
    {
        field(1; "QC No."; Code[20])
        {
        }
        field(2; "QC Date"; Date)
        {
        }
        field(3; Comments; Text[250])
        {
        }
        field(4; "Line No."; Integer)
        {
        }
    }

    keys
    {
        key(Key1; "QC No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

