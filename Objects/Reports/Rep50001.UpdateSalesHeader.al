report 50001 "Update Sales Header"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/UpdateSalesHeader.rdlc';
    Permissions = TableData "Sales Invoice Header" = rimd,
                  TableData "Sales Invoice Line" = rimd;

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {

            trigger OnAfterGetRecord()
            begin
                IF "Sales Header"."Secondary Customer No." = 'SEC0001' THEN BEGIN
                    "Sales Header"."Secondary Customer No." := '';
                    "Sales Header".MODIFY;
                END;
            end;
        }
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {

            trigger OnAfterGetRecord()
            begin
                IF "Sales Invoice Header"."Secondary Customer No." = 'SEC0001' THEN BEGIN
                    "Sales Invoice Header"."Secondary Customer No." := '';
                    "Sales Invoice Header".MODIFY;
                END;
            end;
        }
        dataitem("Sales Invoice Warranty Details"; "Sales Invoice Warranty Details")
        {

            trigger OnAfterGetRecord()
            begin
                IF "Secondary Customer No." = 'SEC0001' THEN BEGIN
                    "Secondary Customer No." := '';
                    MODIFY;
                END;
            end;
        }
        dataitem("Sales Line"; "Sales Line")
        {

            trigger OnAfterGetRecord()
            begin
                IF "Secondary Customer No." = 'SEC0001' THEN BEGIN
                    "Secondary Customer No." := '';
                    MODIFY;
                END;
            end;
        }
        dataitem("Sales Invoice Line"; "Sales Invoice Line")
        {

            trigger OnAfterGetRecord()
            begin
                IF "Secondary Customer No." = 'SEC0001' THEN BEGIN
                    "Secondary Customer No." := '';
                    MODIFY;
                END;
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

