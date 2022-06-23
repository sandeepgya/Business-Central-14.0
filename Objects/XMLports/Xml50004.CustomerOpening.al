xmlport 50004 "CustomerOpening"
{
    Direction = Import;
    FieldDelimiter = '<">';
    FieldSeparator = '<TAB>';
    Format = VariableText;

    schema
    {
        textelement(Root)
        {
            tableelement("Gen. Journal Line"; "Gen. Journal Line")
            {
                XmlName = 'Genjournalline';
                fieldelement(Template; "Gen. Journal Line"."Journal Template Name")
                {
                }
                fieldelement(Batch; "Gen. Journal Line"."Journal Batch Name")
                {
                }
                fieldelement(LineNo; "Gen. Journal Line"."Line No.")
                {
                }
                fieldelement(AccountType; "Gen. Journal Line"."Account Type")
                {
                }
                fieldelement("AccountNo."; "Gen. Journal Line"."Account No.")
                {
                }
                fieldelement(PostingDate; "Gen. Journal Line"."Posting Date")
                {
                }
                fieldelement(DocumentType; "Gen. Journal Line"."Document Type")
                {
                }
                fieldelement(DocumentNo; "Gen. Journal Line"."Document No.")
                {
                }
                fieldelement(Description; "Gen. Journal Line".Description)
                {
                }
                fieldelement(Amount; "Gen. Journal Line".Amount)
                {
                }
                fieldelement(Salesper; "Gen. Journal Line"."Salespers./Purch. Code")
                {
                }
                fieldelement(DueDate; "Gen. Journal Line"."Due Date")
                {
                }
                fieldelement(Docuemntdare; "Gen. Journal Line"."Document Date")
                {
                }
                fieldelement("Externaldocno."; "Gen. Journal Line"."External Document No.")
                {
                }
                fieldelement(SD1; "Gen. Journal Line"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = yes;
                }
                fieldelement(SD2; "Gen. Journal Line"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = yes;
                }
                fieldelement(Dimetid; "Gen. Journal Line"."Dimension Set ID")
                {
                }
                fieldelement(chequeno; "Gen. Journal Line"."Cheque No.")
                {
                }
                fieldelement(chequedate; "Gen. Journal Line"."Cheque Date")
                {
                }
            }
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
}

