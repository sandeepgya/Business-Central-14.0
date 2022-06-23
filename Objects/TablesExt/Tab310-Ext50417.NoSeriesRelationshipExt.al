tableextension 50417 "NoSeriesRelationshipExt" extends "No. Series Relationship"//310
{
    // PMT.00.02 - Added fields for recognising the No Series.
    fields
    {
        field(50001; "Tax Invoice Series"; Boolean)
        {
            Description = 'PMT.00.02';
        }
        field(50002; "Delivery Challan Series"; Boolean)
        {
            Description = 'PMT.00.02';
        }
        field(50003; "BOS Series"; Boolean)
        {
            Description = 'PMT.00.02';
        }
    }
}

