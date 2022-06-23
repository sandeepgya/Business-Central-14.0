pageextension 50487 "SalesOrderListExt" extends "Sales Order List"//9305
{
    // PMT.00.10
    //   Added code for Short Closed Sales Order.
    layout
    {
        addafter("Job Queue Status")
        {
            field("Short Closed"; Rec."Short Closed")
            {
                ApplicationArea = All;
            }
            // field(Amount; Rec.Amount)
            // {
            //     ApplicationArea = All;
            // }//Already defined in Base Application
            // field("Amount to Customer"; Rec."Amount to Customer")
            // {
            //     ApplicationArea = All;
            // }
            field("Order Date"; Rec."Order Date")
            {
                ApplicationArea = All;
            }
        }
    }

    var
        salesline: Record "Sales Line";


    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF UserMgt.GetSalesFilter <> '' THEN BEGIN
      FILTERGROUP(2);
      SETRANGE("Responsibility Center",UserMgt.GetSalesFilter);
    #4..7

    JobQueueActive := SalesSetup.JobQueueActive;
    CRMIntegrationEnabled := CRMIntegrationManagement.IsCRMIntegrationEnabled;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..10

    //>>PMT.00.10
    SETRANGE("Short Closed",FALSE);
    //<<PMT.00.10
    */
    //end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        //>>PMT.00.10
        Rec.SETRANGE("Short Closed", FALSE);
        //<<PMT.00.10
    end;
}

