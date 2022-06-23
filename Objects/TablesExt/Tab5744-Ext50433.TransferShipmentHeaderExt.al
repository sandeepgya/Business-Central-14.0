tableextension 50433 "TransferShipmentHeaderExt" extends "Transfer Shipment Header"//5744
{
    // // PMT.REP.01
    //   Added Transfer Shipment
    // // PMT.00.14
    //  - Added Party Type & Party No.for Transfer Order
    fields
    {
        field(61001; "Transfer Shipment"; Code[20])
        {
            Description = 'PMT.REP.01';
        }
        field(61002; "Party Type"; Option)
        {
            Description = 'PMT.00.14';
            OptionMembers = "          ",Customer,Vendor;
        }
        field(61003; "Party No."; Code[30])
        {
            Description = 'PMT.00.14';

            trigger OnLookup()
            var
                Cust1: Record Customer;
                vend: Record Vendor;
            begin
                //>>PMT.00.14
                IF "Party Type" = "Party Type"::Customer THEN BEGIN
                    IF PAGE.RUNMODAL(0, Cust1) = ACTION::LookupOK THEN
                        "Party No." := Cust1."No."
                END ELSE
                    IF "Party Type" = "Party Type"::Vendor THEN
                        IF PAGE.RUNMODAL(0, vend) = ACTION::LookupOK THEN
                            "Party No." := vend."No."
                //<<PMT.00.14
            end;
        }
        field(80001; "Ack No."; Text[30])
        {
            Caption = 'Ack No.';
            DataClassification = ToBeClassified;
            Description = 'E-Inv';
        }
        field(80002; "Ack./Cancel Date"; Text[30])
        {
            Caption = 'Ack./Cancel Date';
            DataClassification = ToBeClassified;
            Description = 'E-Inv';
        }
    }
}

