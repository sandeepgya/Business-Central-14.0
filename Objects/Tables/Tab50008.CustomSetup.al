table 50008 "Custom Setup"
{

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
        }
        field(2; "Quality Check No. Series"; Code[20])
        {
        }
        field(3; "User Id"; Code[50])
        {
            TableRelation = "User Setup"."User ID";
        }
        field(4; "Prod. Comp. Line Permission"; Boolean)
        {
        }
        field(5; "Prod. Comp.Routing Permission"; Boolean)
        {
        }
        field(6; "Certified BOM"; Boolean)
        {
            Description = 'PMT-CertifyBOM';
        }
        field(7; "Blocked Customer"; Boolean)
        {
        }
        field(8; "Blocked Vendor"; Boolean)
        {
        }
        field(9; "Blocked Item"; Boolean)
        {
        }
        field(10; "Release PO"; Boolean)
        {
            Enabled = true;
        }
        field(11; "Release SO"; Boolean)
        {
        }
        field(12; "Release TO"; Boolean)
        {
        }
        field(13; "Allow Phy. Jnl"; Boolean)
        {
        }
        field(14; "Allow Inventory Adj."; Boolean)
        {
        }
        field(15; "Allow GL Adj."; Boolean)
        {
        }
        field(16; "Allow FA"; Boolean)
        {
        }
        field(17; "Allow Bank"; Boolean)
        {
        }
        field(18; "Allow BOM"; Boolean)
        {
        }
        field(19; "Allow Payment Journal"; Boolean)
        {
        }
        field(20; "Modify Item Standard Cost"; Boolean)
        {
            Description = 'PMT- Modify Standard Cost';
        }
        field(21; "Update Sales Warranty on Post"; Boolean)
        {
        }
        field(22; "Modify Sales Warranty"; Boolean)
        {
        }
        field(50000; "BOM 1st Level Approval"; Boolean)
        {
            Description = 'PMT-CertifyBOM';
        }
    }

    keys
    {
        key(Key1; "User Id")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

