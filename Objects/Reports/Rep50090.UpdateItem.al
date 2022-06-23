report 50090 "Update Item"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/UpdateItem.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {

            trigger OnAfterGetRecord()
            begin
                "Include Inventory" := TRUE;
                MODIFY;
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

