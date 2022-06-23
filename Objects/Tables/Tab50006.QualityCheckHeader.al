table 50006 "Quality Check Header"
{
    LookupPageID = "Quality Check";
    Permissions = TableData "Item Ledger Entry" = rm;

    fields
    {
        field(1; "QC No."; Code[20])
        {
            Editable = false;
        }
        field(2; "Vendor No."; Code[20])
        {
            Editable = false;
        }
        field(3; "Vendor Name"; Text[50])
        {
            Editable = false;
        }
        field(4; "GRN No."; Code[20])
        {
            Editable = false;
        }
        field(5; "GRN Line No."; Integer)
        {
            Editable = false;
        }
        field(6; "Order No."; Code[20])
        {
            Editable = false;
        }
        field(7; "Quality Checked"; Boolean)
        {

            trigger OnValidate()
            var
                QualityComments: Record "Quality Comments";
                ItemLedgerEntry: Record "Item Ledger Entry";
            begin
                TESTFIELD("Quality Date");
                TESTFIELD("Quality User");

                QualityComments.RESET;
                QualityComments.SETRANGE("QC No.", "QC No.");
                QualityComments.SETFILTER(Comments, '<>%1', '');
                IF NOT QualityComments.FINDFIRST THEN
                    ERROR(Text001);

                ItemLedgerEntry.RESET;
                ItemLedgerEntry.SETRANGE("Entry No.", "Item Ledger Entry No");
                IF ItemLedgerEntry.FINDFIRST THEN BEGIN
                    ItemLedgerEntry."Quality Checked" := TRUE;
                    ItemLedgerEntry.MODIFY;
                END;
            end;
        }
        field(8; "Quality User"; Code[50])
        {
            TableRelation = "User Setup";
        }
        field(9; "Quality Date"; Date)
        {
        }
        field(10; "User ID"; Code[50])
        {
            Editable = false;
        }
        field(11; "Item Ledger Entry No"; Integer)
        {
            Editable = false;
        }
        field(12; "Item No."; Code[20])
        {
            Editable = false;
        }
        field(13; "Item Description"; Text[100])
        {
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "QC No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    var
        Text001: Label 'Quality Comment(s) must be filled in.';
}

