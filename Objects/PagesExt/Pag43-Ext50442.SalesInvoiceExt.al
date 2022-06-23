pageextension 50442 "SalesInvoiceExt" extends "Sales Invoice"//43
{
    // PMT.00.23
    //   Due Date Calculation
    layout
    {
        // addafter(Control1500022)
        // {
        //     field("Location Code-Gen"; "Location Code")
        //     {
        //         ApplicationArea = All;
        //     }
        // }
        addafter("Your Reference")
        {
            field("Location Code-Gen"; Rec."Location Code")
            {
                ApplicationArea = All;
            }
        }
        addafter("Document Date")
        {
            field("Service/Installation Date"; Rec."Service/Installation Date")
            {
                Editable = ServiceInstallationEditable;
                ApplicationArea = All;
            }
        }
        // addafter("GST Reason Type")
        // {
        //     field("Sales Invoice Type"; "Sales Invoice Type")
        //     {
        //         ApplicationArea = All;
        //     }
        //     field("Posting No. Series"; "Posting No. Series")
        //     {
        //         ApplicationArea = All;
        //     }
        // }
        addafter(Status)
        {
            field("Sales Invoice Type"; Rec."Sales Invoice Type")
            {
                ApplicationArea = All;
            }
            field("Posting No. Series"; Rec."Posting No. Series")
            {
                ApplicationArea = All;
            }
        }
    }

    var
        "---PMT---": Integer;
        ServiceInstallationEditable: Boolean;


    //Unsupported feature: Code Modification on "OnAfterGetCurrRecord".

    //trigger OnAfterGetCurrRecord()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    CurrPage.IncomingDocAttachFactBox.PAGE.LoadDataFromRecord(Rec);
    ShowWorkflowStatus := CurrPage.WorkflowStatus.PAGE.SetFilterOnWorkflowRecord(RECORDID);
    CurrPage.ApprovalFactBox.PAGE.RefreshPage(RECORDID);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3

    IF "Service/Installation Date" = 0D THEN      //PMT
      ServiceInstallationEditable := TRUE;  //PMT
    */
    //end;


    //Unsupported feature: Code Modification on "OnNewRecord".

    //trigger OnNewRecord(BelowxRec: Boolean)
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Responsibility Center" := UserMgt.GetSalesFilter;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Responsibility Center" := UserMgt.GetSalesFilter;

    IF "Service/Installation Date" = 0D THEN        //PMT
      ServiceInstallationEditable := TRUE;   //PMT
    */
    //end;


    //Unsupported feature: Code Insertion on "OnNextRecord".

    //trigger OnNextRecord()
    //Parameters and return type have not been exported.
    //begin
    /*
    IF "Service/Installation Date" = 0D THEN      //PMT
      ServiceInstallationEditable := TRUE; //PMT
    */
    //end;


    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF UserMgt.GetSalesFilter <> '' THEN BEGIN
      FILTERGROUP(2);
      SETRANGE("Responsibility Center",UserMgt.GetSalesFilter);
      FILTERGROUP(0);
    END;

    SetDocNoVisible;
    SetLocGSTRegNoEditable;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..8

    IF "Service/Installation Date" = 0D THEN //PMT
      ServiceInstallationEditable := TRUE;  //PMT
    */
    //end;

    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin
        IF Rec."Service/Installation Date" = 0D THEN      //PMT
            ServiceInstallationEditable := TRUE;  //PMT
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    var
        myInt: Integer;
    begin
        IF Rec."Service/Installation Date" = 0D THEN        //PMT
            ServiceInstallationEditable := TRUE;   //PMT
    end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        IF Rec."Service/Installation Date" = 0D THEN //PMT
            ServiceInstallationEditable := TRUE;  //PMT
    end;
}

