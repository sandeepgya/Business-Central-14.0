pageextension 50428 "ItemCardExt" extends "Item Card"//30
{
    // PMT.00.21
    //   Added Field Serv. Prod. Posting Group
    // PMT.00.11
    //   Added field QC Enable.
    // PMT.00.01
    //   Added field Qty. On Transfer Order for Report
    // 
    // CAS-03484-N7V1P1 OA.AA 13112019
    // <COD>Code Added After
    //  -OnOpenPage()
    layout
    {
        modify("Automatic Ext. Texts")
        {
            Visible = false;
        }
        modify("Standard Cost")
        {
            Visible = ShowCostInfo;
            Editable = EditableStandardCost;
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                //>> PMT
                IF CustomSetup.GET(USERID) THEN BEGIN
                    IF NOT CustomSetup."Modify Item Standard Cost" THEN
                        EditableStandardCost := FALSE
                    ELSE
                        EditableStandardCost := TRUE;
                END ELSE
                    EditableStandardCost := FALSE;
                // << PMT
            end;
        }
        modify("Unit Cost")
        {
            Visible = ShowCostInfo;
        }
        modify("Last Direct Cost")
        {
            Visible = false;
        }
        modify("Profit %")
        {
            Visible = ShowProfit;
        }
        modify("Unit Price")
        {
            Visible = ShowUnitPrice;
        }
        modify("Special Equipment Code")
        {
            Visible = false;
        }
        modify("Put-away Template Code")
        {
            Visible = false;
        }
        modify("Put-away Unit of Measure Code")
        {
            Visible = false;
        }
        modify("Identifier Code")
        {
            Visible = false;
        }
        modify("Use Cross-Docking")
        {
            Visible = false;
        }
        // modify("Unit Price2")
        // {
        //     Visible = ShowCostInfo;
        // }
        // modify(Excise)
        // {
        //     Visible = false;
        // }
        // modify(VAT)
        // {
        //     Visible = false;
        // }//OA.AS Commented


        //Unsupported feature: Code Insertion on ""Standard Cost"(Control 28)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*
        //>> PMT
        IF CustomSetup.GET(USERID) THEN BEGIN
          IF NOT CustomSetup."Modify Item Standard Cost" THEN
             EditableStandardCost:= FALSE
          ELSE
             EditableStandardCost := TRUE;
        END ELSE
             EditableStandardCost := FALSE;
        // << PMT
        */
        //end;
        addafter("Qty. on Service Order")
        {
            field("Qty. On Transfer Order"; Rec."Qty. On Transfer Order")
            {
                ApplicationArea = All;
            }
        }
        addafter(PreventNegInventoryDefaultNo)
        {
            field("M/L"; Rec."M/L")
            {
                ApplicationArea = All;
            }
        }
        addafter("Gen. Prod. Posting Group")
        {
            field("Service  Prod. Posting Group"; Rec."Service  Prod. Posting Group")
            {
                ShowMandatory = true;
                ApplicationArea = All;
            }
        }
    }

    var
        "---PMT---": Integer;
        EditableStandardCost: Boolean;
        Text0001: Label 'You are not authorized to modify standard cost for the Item';
        CustomSetup: Record "Custom Setup";
        ShowCostInfo: Boolean;
        ShowUnitPrice: Boolean;
        ShowProfit: Boolean;
        ManagementEmployee: Record "Management Employee";


    //Unsupported feature: Code Modification on "OnAfterGetCurrRecord".

    //trigger OnAfterGetCurrRecord()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    CRMIsCoupledToRecord := CRMIntegrationEnabled AND CRMCouplingManagement.IsRecordCoupledToCRM(RECORDID);
    OpenApprovalEntriesExistCurrUser := ApprovalsMgmt.HasOpenApprovalEntriesForCurrentUser(RECORDID);
    OpenApprovalEntriesExist := ApprovalsMgmt.HasOpenApprovalEntries(RECORDID);
    ShowWorkflowStatus := CurrPage.WorkflowStatus.PAGE.SetFilterOnWorkflowRecord(RECORDID);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..4
    //>> PMT
    IF CustomSetup.GET(USERID) THEN BEGIN
      IF NOT CustomSetup."Modify Item Standard Cost" THEN
         EditableStandardCost:= FALSE
      ELSE
         EditableStandardCost := TRUE;
    END ELSE
         EditableStandardCost := FALSE;
    // << PMT
    */
    //end;


    //Unsupported feature: Code Modification on "OnAfterGetRecord".

    //trigger OnAfterGetRecord()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    EnablePlanningControls;
    EnableCostingControls;
    SetSocialListeningFactboxVisibility;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    //>> PMT
    IF CustomSetup.GET(USERID) THEN BEGIN
      IF NOT CustomSetup."Modify Item Standard Cost" THEN
         EditableStandardCost:= FALSE
      ELSE
         EditableStandardCost := TRUE;
    END ELSE
      EditableStandardCost := FALSE;
    // << PMT
    */
    //end;


    //Unsupported feature: Code Modification on "OnNewRecord".

    //trigger OnNewRecord(BelowxRec: Boolean)
    //>>>> ORIGINAL CODE:
    //begin
    /*
    EnablePlanningControls;
    EnableCostingControls;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    EnablePlanningControls;
    EnableCostingControls;
    //>> PMT
    IF CustomSetup.GET(USERID) THEN BEGIN
      IF NOT CustomSetup."Modify Item Standard Cost" THEN
         EditableStandardCost:= FALSE
      ELSE
         EditableStandardCost := TRUE;
    END ELSE
      EditableStandardCost := FALSE;
    // << PMT
    */
    //end;


    //Unsupported feature: Code Insertion on "OnNextRecord".

    //trigger OnNextRecord()
    //Parameters and return type have not been exported.
    //begin
    /*
    //>> PMT
    IF CustomSetup.GET(USERID) THEN BEGIN
      IF NOT CustomSetup."Modify Item Standard Cost" THEN
         EditableStandardCost:= FALSE
      ELSE
         EditableStandardCost := TRUE;
    END ELSE
       EditableStandardCost := FALSE;

    // << PMT
    */
    //end;


    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    EnableShowStockOutWarning;
    EnableShowShowEnforcePositivInventory;
    CRMIntegrationEnabled := CRMIntegrationManagement.IsCRMIntegrationEnabled;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    CLEAR(EditableStandardCost); // PMT
    //>>CAS-03484-N7V1P1 OA.AA 13112019
    ShowCostInfo:=ManagementEmployee.ShowCost(USERID);
    //<<CAS-03484-N7V1P1 OA.AA 13112019
    */
    //end;

    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin
        //>> PMT
        IF CustomSetup.GET(USERID) THEN BEGIN
            IF NOT CustomSetup."Modify Item Standard Cost" THEN
                EditableStandardCost := FALSE
            ELSE
                EditableStandardCost := TRUE;
        END ELSE
            EditableStandardCost := FALSE;
        // << PMT
    end;

    trigger OnAfterGetRecord()
    var
        myInt: Integer;
    begin
        //>> PMT
        IF CustomSetup.GET(USERID) THEN BEGIN
            IF NOT CustomSetup."Modify Item Standard Cost" THEN
                EditableStandardCost := FALSE
            ELSE
                EditableStandardCost := TRUE;
        END ELSE
            EditableStandardCost := FALSE;
        // << PMT
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    var
        myInt: Integer;
    begin
        //>> PMT
        IF CustomSetup.GET(USERID) THEN BEGIN
            IF NOT CustomSetup."Modify Item Standard Cost" THEN
                EditableStandardCost := FALSE
            ELSE
                EditableStandardCost := TRUE;
        END ELSE
            EditableStandardCost := FALSE;

        // << PMT
    end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        CLEAR(EditableStandardCost); // PMT
        //>>CAS-03484-N7V1P1 OA.AA 13112019
        ShowCostInfo := ManagementEmployee.ShowCost(USERID);
        //<<CAS-03484-N7V1P1 OA.AA 13112019
    end;
}

