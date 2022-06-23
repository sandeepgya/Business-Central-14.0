report 50055 "WarrantyStatus"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/WarrantyStatus.rdlc';

    dataset
    {
        dataitem("Sales Invoice Warranty Details"; "Sales Invoice Warranty Details")
        {
            DataItemTableView = WHERE("Warranty Status" = FILTER('ACTIVE'));

            trigger OnAfterGetRecord()
            begin
                IF "Sales Invoice Warranty Details"."Warranty End Date" < TODAY THEN
                    "Sales Invoice Warranty Details"."Warranty Status" := 'Expired'
                ELSE
                    "Sales Invoice Warranty Details"."Warranty Status" := 'Active';
                "Sales Invoice Warranty Details"."Last Refresh  Status Date" := TODAY;
                "Sales Invoice Warranty Details"."Status Refreshed By" := USERID;
                "Sales Invoice Warranty Details".MODIFY;
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

