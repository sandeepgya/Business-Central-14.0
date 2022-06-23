tableextension 50434 "TransferReceiptHeaderExt" extends "Transfer Receipt Header"//5746
{
    // PMT.00.14
    //   Added field Party Type & Party No.
    fields
    {
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
                //>>PMT.00.14
            end;
        }
    }
}

