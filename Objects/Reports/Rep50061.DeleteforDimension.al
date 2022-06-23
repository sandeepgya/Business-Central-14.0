report 50061 "DeleteforDimension"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/DeleteforDimension.rdlc';
    Permissions = TableData "Dimension Set Entry" = rimd;

    dataset
    {
        dataitem("Dimension Set Entry"; "Dimension Set Entry")
        {

            trigger OnAfterGetRecord()
            begin
                IF "Dimension Set Entry".FINDSET THEN
                    "Dimension Set Entry".DELETE;
            end;

            trigger OnPostDataItem()
            begin
                MESSAGE(FORMAT("Dimension Set Entry".COUNT));
            end;

            trigger OnPreDataItem()
            begin
                "Dimension Set Entry".SETFILTER("Dimension Set Entry"."Dimension Set ID", '%1..%2', 53, 64);
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
}

