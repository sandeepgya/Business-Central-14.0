pageextension 50441 "SalesOrderExt" extends "Sales Order"//42
{
    // PMT.00.08
    //   Added Sales Archival
    // PMT.00.10
    //   Sales Order Short Close
    // PMT.00.23
    //   Due Date Calculation
    layout
    {
        modify("Assigned User ID")
        {
            Editable = false;
        }
        addafter("Sell-to Contact")
        {
            field("Secondary Customer No."; Rec."Secondary Customer No.")
            {
                Editable = SecondarySalesCustEditable;
                ApplicationArea = All;

                trigger OnValidate()
                begin
                    // >> PMT.00.05
                    IF Rec.Distributor THEN
                        SecondarySalesCustEditable := TRUE
                    ELSE
                        SecondarySalesCustEditable := FALSE;
                    // << PMT.00.05
                end;
            }
        }
        // addafter(Structure)
        // {
        //     field("Location Code-Gen"; Rec."Location Code")
        //     {
        //         ApplicationArea = All;
        //     }
        // }
        addafter("No. of Archived Versions")
        {
            field("Location Code-Gen"; Rec."Location Code")
            {
                ApplicationArea = All;
            }
        }
        addafter("Posting Date")
        {
            field("Sales Invoice Type"; Rec."Sales Invoice Type")
            {
                ApplicationArea = All;
            }
        }
        addafter("Promised Delivery Date")
        {
            field("Service/Installation Date"; Rec."Service/Installation Date")
            {
                ApplicationArea = All;
            }
        }
        // addafter("GST Reason Type")
        // {
        //     field("Posting No. Series"; "Posting No. Series")
        //     {
        //         Editable = false;
        //         ApplicationArea = All;
        //     }
        // }
        addafter(Status)
        {
            field("Posting No. Series"; Rec."Posting No. Series")
            {
                Editable = false;
                ApplicationArea = All;
            }
        }
    }
    actions
    {


        //Unsupported feature: Code Modification on "Release(Action 133).OnAction".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ReleaseSalesDoc.PerformManualRelease(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //>>PMT.00.08
         ArchivalFirst;
         //<<PMT.00.08
        ReleaseSalesDoc.PerformManualRelease(Rec)
        */
        //end;
        addafter(Reopen)
        {
            action("Sales Order Short Closed")
            {
                Caption = 'Sales Order Short Closed';
                Image = CancelAllLines;
                ApplicationArea = All;

                trigger OnAction()
                var
                    SalesLine: Record "Sales Line";
                    "SO Short Closed": Boolean;
                    RecInvMatched: Boolean;
                    SalesHeader: Record "Sales Header";
                begin
                    //>>PMT.00.10
                    //ok := DIALOG.CONFIRM(default,FALSE,TRUE);
                    Rec.SalesOrderShortClosed;
                    //<<PMT.00.10
                end;
            }
        }
    }

    var
        UserSetup: Record "Custom Setup";
        Archived: Boolean;
        SalesHeaderArchive: Record "Sales Header Archive";

    var
        Subscriber: Codeunit Subscriber;
        ok: Boolean;
        default: Label 'Do You want to short close the order.';
        SecondarySalesCustEditable: Boolean;


    //Unsupported feature: Code Modification on "OnAfterGetCurrRecord".

    //trigger OnAfterGetCurrRecord()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    DynamicEditable := CurrPage.EDITABLE;
    CurrPage.IncomingDocAttachFactBox.PAGE.LoadDataFromRecord(Rec);
    CRMIsCoupledToRecord := CRMIntegrationEnabled AND CRMCouplingManagement.IsRecordCoupledToCRM(RECORDID);
    ShowWorkflowStatus := CurrPage.WorkflowStatus.PAGE.SetFilterOnWorkflowRecord(RECORDID);
    CurrPage.ApprovalFactBox.PAGE.RefreshPage(RECORDID);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5

    // >> PMT.00.05
    IF Distributor THEN
       SecondarySalesCustEditable := TRUE
    ELSE
      SecondarySalesCustEditable := FALSE;
    // << PMT.00.05
    */
    //end;


    //Unsupported feature: Code Modification on "OnAfterGetRecord".

    //trigger OnAfterGetRecord()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SetControlVisibility;
    IF "Re-Dispatch" THEN
      ReturnOrderNoVisible := TRUE
    ELSE
      ReturnOrderNoVisible := FALSE;
    SetLocGSTRegNoEditable;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..6
    // >> PMT.00.05
    IF Distributor THEN
       SecondarySalesCustEditable := TRUE
    ELSE
      SecondarySalesCustEditable := FALSE;
    // << PMT.00.05
    */
    //end;


    //Unsupported feature: Code Modification on "OnModifyRecord".

    //trigger OnModifyRecord(): Boolean
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "Re-Dispatch" THEN
      ReturnOrderNoVisible := TRUE
    ELSE
      ReturnOrderNoVisible := FALSE;
    // CurrForm.SalesLines.PAGE.UPDATECONTROLS;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5

    // >> PMT.00.05
    IF Distributor THEN
       SecondarySalesCustEditable := TRUE
    ELSE
      SecondarySalesCustEditable := FALSE;
    // << PMT.00.05
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
    #4..9

    CRMIntegrationEnabled := CRMIntegrationManagement.IsCRMIntegrationEnabled;
    SetLocGSTRegNoEditable;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..12
    SecondarySalesCustEditable := FALSE; // PMT.00.05
    */
    //end;
    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin
        // >> PMT.00.05
        IF Rec.Distributor THEN
            SecondarySalesCustEditable := TRUE
        ELSE
            SecondarySalesCustEditable := FALSE;
        // << PMT.00.05
    end;

    trigger OnAfterGetRecord()
    var
        myInt: Integer;
    begin
        // >> PMT.00.05
        IF Rec.Distributor THEN
            SecondarySalesCustEditable := TRUE
        ELSE
            SecondarySalesCustEditable := FALSE;
        // << PMT.00.05
    end;

    trigger OnModifyRecord(): Boolean
    var
        myInt: Integer;
    begin
        // >> PMT.00.05
        IF Rec.Distributor THEN
            SecondarySalesCustEditable := TRUE
        ELSE
            SecondarySalesCustEditable := FALSE;
        // << PMT.00.05  
    end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        SecondarySalesCustEditable := FALSE; // PMT.00.05 
    end;

    local procedure "---PMT-----"()
    begin
    end;

    // local procedure Archival()
    // var
    //     Archive: Codeunit ArchiveManagement;
    //     flag: Boolean;
    // begin
    //     //>>PMT.00.08
    //     CLEAR(flag);
    //     IF flag <> TRUE THEN BEGIN
    //         Archive.StoreSalesDocument(Rec, FALSE);
    //         flag := TRUE;
    //         //<<PMT.00.08
    //     END;
    // end;//Need to move to codeunit
}

