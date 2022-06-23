report 50031 "purch rcpt line update"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem("Purch. Rcpt. Line"; "Purch. Rcpt. Line")
        {
            RequestFilterFields = "Document No.";

            trigger OnAfterGetRecord()
            begin
                CLEAR(Vendor);
                IF "Purch. Rcpt. Line"."Buy-from Vendor No." <> '' THEN BEGIN
                    Vendor.GET("Purch. Rcpt. Line"."Buy-from Vendor No.");
                    "Purch. Rcpt. Line"."Buy-From GST Registration No" := Vendor."GST Registration No.";
                    "Purch. Rcpt. Line".MODIFY;
                END
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
        Vendor: Record Vendor;
}

