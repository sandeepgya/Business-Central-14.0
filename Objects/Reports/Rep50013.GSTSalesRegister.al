report 50013 "GST Sales- Register"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/GSTSalesRegister.rdlc';

    dataset
    {
        dataitem("Detailed GST Ledger Entry"; "Detailed GST Ledger Entry")
        {
            DataItemTableView = SORTING("Transaction Type", "Document No.", "Posting Date") ORDER(Ascending) WHERE("Transaction Type" = CONST(Sales));
            RequestFilterFields = "Posting Date";
            column(DocumentType_DetailedGSTLedgerEntry; "Detailed GST Ledger Entry"."Document Type")
            {
            }
            column(DocumentNo_DetailedGSTLedgerEntry; "Detailed GST Ledger Entry"."Document No.")
            {
            }
            column(PostingDate_DetailedGSTLedgerEntry; FORMAT("Detailed GST Ledger Entry"."Posting Date"))
            {
            }
            column(SourceNo_DetailedGSTLedgerEntry; "Detailed GST Ledger Entry"."Source No.")
            {
            }
            column(HSNSACCode_DetailedGSTLedgerEntry; "Detailed GST Ledger Entry"."HSN/SAC Code")
            {
            }
            column(GSTComponentCode_DetailedGSTLedgerEntry; "Detailed GST Ledger Entry"."GST Component Code")
            {
            }
            column(GSTBaseAmount_DetailedGSTLedgerEntry; "Detailed GST Ledger Entry"."GST Base Amount")
            {
            }
            column(GSTAmount_DetailedGSTLedgerEntry; "Detailed GST Ledger Entry"."GST Amount")
            {
            }
            column(ExternalDocumentNo_DetailedGSTLedgerEntry; "Detailed GST Ledger Entry"."External Document No.")
            {
            }
            column(Name; Name)
            {
            }
            column(Address; Address)
            {
            }
            column(GSTIN; GSTIN)
            {
            }
            column(SGST_; SGST_)
            {
            }
            column(CGST_; CGST_)
            {
            }
            column(IGST_; IGST_)
            {
            }

            trigger OnAfterGetRecord()
            begin
                "Detailed GST Ledger Entry".SETCURRENTKEY("Document No.", "Transaction Type");
                IF "Detailed GST Ledger Entry"."Source No." <> '' THEN BEGIN
                    IF Cust.GET("Detailed GST Ledger Entry"."Source No.") THEN BEGIN
                        Name := Cust.Name;
                        Address := Cust.Address;
                        GSTIN := Cust."GST Registration No.";
                    END;
                END;
                CLEAR(SGST_);
                CLEAR(CGST_);
                CLEAR(IGST_);
                IF ("Detailed GST Ledger Entry"."GST Component Code" = 'CGST') THEN
                    CGST_ += "Detailed GST Ledger Entry"."GST Amount";

                IF ("Detailed GST Ledger Entry"."GST Component Code" = 'SGST') THEN
                    SGST_ += "Detailed GST Ledger Entry"."GST Amount";

                IF ("Detailed GST Ledger Entry"."GST Component Code" = 'IGST') THEN
                    IGST_ += "Detailed GST Ledger Entry"."GST Amount";
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        Cust: Record Customer;
        Name: Text;
        Address: Text;
        GSTIN: Code[30];
        IGST_: Decimal;
        SGST_: Decimal;
        CGST_: Decimal;
        DetailedGST: Record "Detailed GST Ledger Entry";
}

