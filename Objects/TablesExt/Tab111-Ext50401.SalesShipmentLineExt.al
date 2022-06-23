tableextension 50401 "SalesShipmentLineExt" extends "Sales Shipment Line" //111
{
    // // PMT.00.10- Added Field for Original Qty. for Short Closed Sales Order.
    fields
    {
        field(61001; "Original Qty"; Decimal)
        {
            Description = 'PMT.00.10';
        }
    }
}

