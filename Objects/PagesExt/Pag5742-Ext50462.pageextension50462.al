pageextension 50462 "pageextension50462" extends "Transfer Orders"//5742 "Transfer List"
{
    // OA.TG CAS-03638-Q2X2T9 20191219
    //   - Changed done for Transfer Order Workflow Process.
    //   - Added actions: Send Approval Request, Cancel Approval Request and Approvals
    actions
    {

        //Unsupported feature: Property Modification (Name) on ""Re&lease"(Action 15)".



        //Unsupported feature: Code Insertion on ""<Action159>"(Action 15)".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //var
        //UserSetup: Record "Custom Setup";
        //begin
        /*
        CODEUNIT.RUN(CODEUNIT::"Release Transfer Document",Rec)
        */
        //end;
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
                begin
                    ApprovalEntries.SetRecordfilters(DATABASE::"Transfer Header", DocumentType::Order, Rec."No.");
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
        OpenApprovalEntriesExistForCurrUser: Boolean;
        OpenApprovalEntriesExist: Boolean;

        DocumentType: Enum "Approval Document Type";


    //Unsupported feature: Code Insertion on "OnAfterGetRecord".

    //trigger OnAfterGetRecord()
    //begin
    /*
    SetControlAppearance; //OA.TG CAS-03638-Q2X2T9 20191219
    */
    //end;
    trigger OnAfterGetRecord()
    var
        myInt: Integer;
    begin
        SetControlAppearance; //OA.TG CAS-03638-Q2X2T9 20191219
    end;

    local procedure SetControlAppearance()
    var
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
    begin
        OpenApprovalEntriesExistForCurrUser := ApprovalsMgmt.HasOpenApprovalEntriesForCurrentUser(Rec.RECORDID);
        OpenApprovalEntriesExist := ApprovalsMgmt.HasOpenApprovalEntries(Rec.RECORDID);
    end;
}

