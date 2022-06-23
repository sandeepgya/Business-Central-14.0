pageextension 50460 "TransferOrderExt" extends "Transfer Order"//5740
{
    // PMT.00.02 - Added code to update GST Transfer Shipment Series.
    // PMT.00.14
    //   Added fields Party Type & Party No. for Transfer Order Changes
    // 
    // OA.TG CAS-03638-Q2X2T9 20191219
    //   - Changed done for Transfer Order Workflow Process.
    //   - Added actions: Send Approval Request, Cancel Approval Request and Approvals
    PromotedActionCategories = 'New,Process,Report,Approve,Release,Posting,Prepare,Invoice,Request Approval';
    layout
    {
        modify("Assigned User ID")
        {
            Editable = false;
        }
        modify(Status)
        {
            Editable = false;
        }
        addafter("In-Transit Code")
        {
            field("Party Type"; Rec."Party Type")
            {
                Editable = NonEdit;
                ApplicationArea = All;

                trigger OnAssistEdit()
                begin
                    //>>PMT.00.14
                    CheckPartyType();//PMT.00.14
                    //<<PMT.00.14
                end;

                trigger OnValidate()
                var
                    SetValue: Boolean;
                begin
                    //>>PMT.00.14
                    CheckPartyType();//PMT.00.14
                    // ERROR('You can not change the Party Type');
                    //<<PMT.00.14
                end;
            }
            field("Party No."; Rec."Party No.")
            {
                ApplicationArea = All;

                trigger OnLookup(var Text: Text): Boolean
                begin
                    //>>PMT.00.14
                    IF Rec."Party Type" = Rec."Party Type"::Customer THEN BEGIN
                        IF PAGE.RUNMODAL(0, Cust1) = ACTION::LookupOK THEN
                            Rec."Party No." := Cust1."No."
                    END ELSE
                        IF Rec."Party Type" = Rec."Party Type"::Vendor THEN
                            IF PAGE.RUNMODAL(0, Vend) = ACTION::LookupOK THEN
                                Rec."Party No." := Vend."No.";
                    //>>PMT.00.14
                end;
            }
        }
        addafter("Load Unreal Prof Amt on Invt.")
        {
            // field("GST Transfer Ship No. Series"; Rec."GST Transfer Ship No. Series")
            // {
            //     ApplicationArea = All;
            // }
            field("Shipment No."; Rec."Shipment No.")
            {
                ApplicationArea = All;
            }
            field("Receipt No."; Rec."Receipt No.")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {


        //Unsupported feature: Code Insertion on ""Re&lease"(Action 59)".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //var
        //UserSetup: Record "Custom Setup";
        //TransHeader: Record "Transfer Header";
        //begin
        /*
          CODEUNIT.RUN(CODEUNIT::"Release Transfer Document",Rec)
        */
        //end;

        //Unsupported feature: Property Deletion (RunObject) on ""Re&lease"(Action 59)".



        //Unsupported feature: Code Modification on ""Calc&ulate Structure Values"(Action 1280006).OnAction".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TransferLine.CalculateStructures(Rec);
        TransferLine.AdjustStructureAmounts(Rec);
        TransferLine.UpdateTransLines(Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..3
        UpdateGSTTransferShipmentNoSeries //PMT.00.02
        */
        //end;

        //>>OA.AS Re-engineering
        addafter(Statistics)
        {
            action("Calculate GST")
            {
                Caption = 'Calculate GST';
                ApplicationArea = All;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    Rec.CheckGSTDetails();
                    Rec.CheckTransferLines();
                end;
            }
        }
        //<<OA.AS Re-engineering
        addafter(Dimensions)
        {
            action(Approvals)
            {
                Caption = 'Approvals';
                Image = Approvals;
                ApplicationArea = All;

                trigger OnAction()
                var
                    ApprovalEntries: Page "Approval Entries";
                    DocumentType: Enum "Approval Document Type";
                begin
                    //OA.TG CAS-03638-Q2X2T9 20191217
                    ApprovalEntries.SetRecordfilters(DATABASE::"Transfer Header", DocumentType::Quote, Rec."No.");
                    ApprovalEntries.RUN;
                end;
            }
        }
        addafter("P&osting")
        {
            group("Request Approval")
            {
                Caption = 'Request Approval';
                action(SendApprovalRequest)
                {
                    Caption = 'Send A&pproval Request';
                    Enabled = NOT OpenApprovalEntriesExist;
                    Image = SendApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category9;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                    // WorkflowTransfer: Codeunit "Single Instance CU";
                    begin
                    end;
                }
                action(CancelApprovalRequest)
                {
                    Caption = 'Cancel Approval Re&quest';
                    Enabled = OpenApprovalEntriesExist;
                    Image = Cancel;
                    Promoted = true;
                    PromotedCategory = Category9;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                    // WorkflowTransfer: Codeunit "Single Instance CU";
                    begin
                    end;
                }
            }
        }
    }

    var
        CUST: Page "Customer List";
        Cust1: Record Customer;
        RecRef: RecordRef;
        Vend: Record Vendor;
        NonEdit: Boolean;
        OpenApprovalEntriesExistForCurrUser: Boolean;
        OpenApprovalEntriesExist: Boolean;
        TransferLine: Record "Transfer Line";


    //Unsupported feature: Code Insertion on "OnAfterGetRecord".

    //trigger OnAfterGetRecord()
    //begin
    /*
    CheckPartyType();//PMT.00.14
    SetControlAppearance; //OA.TG CAS-03638-Q2X2T9 20191219
    */
    //end;


    //Unsupported feature: Code Insertion on "OnInsertRecord".

    //trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    //begin
    /*
    CheckPartyType();//PMT.00.14
    */
    //end;


    //Unsupported feature: Code Insertion on "OnModifyRecord".

    //trigger OnModifyRecord(): Boolean
    //begin
    /*
    CheckPartyType();//PMT.00.14
    */
    //end;


    //Unsupported feature: Code Insertion on "OnNewRecord".

    //trigger OnNewRecord(BelowxRec: Boolean)
    //begin
    /*
    CheckPartyType();//PMT.00.14
    */
    //end;


    //Unsupported feature: Code Insertion on "OnOpenPage".

    //trigger OnOpenPage()
    //begin
    /*
    NonEdit := TRUE;
    */
    //end;
    trigger OnAfterGetRecord()
    var
        myInt: Integer;
    begin
        CheckPartyType();//PMT.00.14
        SetControlAppearance; //OA.TG CAS-03638-Q2X2T9 20191219
        //>>OA.AS Re-engineering
        Rec.CheckGSTDetails();
        Rec.CheckTransferLines();
        //<<OA.AS Re-engineering
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        myInt: Integer;
    begin
        CheckPartyType();//PMT.00.14
    end;

    trigger OnModifyRecord(): Boolean
    var
        myInt: Integer;
    begin
        CheckPartyType();//PMT.00.14
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    var
        myInt: Integer;
    begin
        CheckPartyType();//PMT.00.14
    end;

    trigger OnOpenPage()
    begin
        NonEdit := TRUE;

        //>>OA.AS Re-engineering
        Rec.CheckGSTDetails();
        Rec.CheckTransferLines();
        //<<OA.AS Re-engineering
    end;

    local procedure SetControlAppearance()
    var
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
    begin
        //OA.TG CAS-03638-Q2X2T9 20191217
        OpenApprovalEntriesExistForCurrUser := ApprovalsMgmt.HasOpenApprovalEntriesForCurrentUser(Rec.RECORDID);
        OpenApprovalEntriesExist := ApprovalsMgmt.HasOpenApprovalEntries(Rec.RECORDID);
    end;

    local procedure CheckPartyType()
    begin
        //>>PMT.00.14
        //IF (xRec."Party Type"=xRec."Party Type"::Customer) OR (xRec."Party Type"="Party Type"::Vendor) OR (xRec."Party Type"="Party Type"::" ") THEN
        NonEdit := (Rec."Party No." = '');
        //<<PMT.00.14
    end;
}

