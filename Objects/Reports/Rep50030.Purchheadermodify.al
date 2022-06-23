report 50030 "Purch header modify"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            RequestFilterFields = "No.";

            trigger OnAfterGetRecord()
            begin
                CLEAR(Location);
                Location.GET("Purchase Header"."Location Code");
                "Purchase Header"."Location GST Reg. No." := Location."GST Registration No.";
                "Purchase Header"."Location State Code" := Location."State Code";
                "Purchase Header".MODIFY;
            end;

            trigger OnPostDataItem()
            begin
                MESSAGE('done');
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
        Location: Record Location;
}

