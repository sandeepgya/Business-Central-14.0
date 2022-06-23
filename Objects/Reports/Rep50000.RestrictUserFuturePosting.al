report 50000 "Restrict User Future Posting"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem("User Setup"; "User Setup")
        {

            trigger OnAfterGetRecord()
            begin
                GenLedgSetup.GET;
                "User Setup"."Allow Posting From" := GenLedgSetup."Allow Posting From";
                "User Setup"."Allow Posting To" := TODAY;
                "User Setup".MODIFY;
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

    trigger OnPostReport()
    begin
        MESSAGE('Updated Successfully');
    end;

    var
        GenLedgSetup: Record "General Ledger Setup";
}

