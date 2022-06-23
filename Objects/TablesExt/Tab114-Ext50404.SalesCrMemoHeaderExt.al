tableextension 50404 "SalesCrMemoHeaderExt" extends "Sales Cr.Memo Header"//114
{
    fields
    {
        field(61000; "Secondary Customer No."; Code[20])
        {
            Caption = 'Secondary Customer No.';
            Description = 'PMT';
            Editable = false;
            TableRelation = "Secondary Customer";
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

