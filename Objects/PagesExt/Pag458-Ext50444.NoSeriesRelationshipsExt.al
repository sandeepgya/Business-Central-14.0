pageextension 50444 "NoSeriesRelationshipsExt" extends "No. Series Relationships"//458
{
    // PMT.00.02
    //  Added No. Series for Transfer Shipment Nos.
    layout
    {
        addafter("Series Description")
        {
            field("BOS Series"; Rec."BOS Series")
            {
                ApplicationArea = All;
            }
            field("Tax Invoice Series"; Rec."Tax Invoice Series")
            {
                ApplicationArea = All;
            }
            field("Delivery Challan Series"; Rec."Delivery Challan Series")
            {
                ApplicationArea = All;
            }
        }
    }
}

