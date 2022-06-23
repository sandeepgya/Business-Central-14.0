codeunit 50005 "Workflow-Transfer"
{
    // OA.TG CAS-03638-Q2X2T9 20191217 - Created Codeuit


    trigger OnRun()
    begin
    end;

    var
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
        WorkflowManagement: Codeunit "Workflow Management";
        WorkflowEventHandling: Codeunit "Workflow Event Handling";
        WorkflowTransfer: Codeunit "Workflow-Transfer";
        TransferHeader: Record "Transfer Header";
        ApprovalEntry: Record "Approval Entry";
        NoWorkflowEnabledErr: Label 'This record is not supported by related approval workflow.';
        ReleaseErr: Label 'This document can only be released when the approval process is complete.';

    [Scope('Cloud')]
    procedure RunWorkflowOnSendTransferForApprovalCode(): Code[128]
    begin
        EXIT(UPPERCASE('RunWorkflowOnSendTransferForApproval'));
    end;

    [EventSubscriber(ObjectType::Codeunit, 50005, 'OnSendTransferForApproval', '', false, false)]
    [Scope('Cloud')]
    procedure RunWorkflowOnSendTransferForApproval(var TransferHeader: Record "Transfer Header")
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnSendTransferForApprovalCode, TransferHeader);
    end;

    [Scope('Cloud')]
    procedure RunWorkflowOnApproveApprovalRequestForTransferCode(): Code[128]
    begin
        EXIT(UPPERCASE('RunWorkflowOnApproveApprovalRequestForTransfer'));
    end;

    local procedure RunWorkflowOnRejectApprovalRequestForTransferCode(): Code[128]
    begin
        EXIT(UPPERCASE('RunWorkflowOnRejectApprovalRequestForTransfer'));
    end;

    local procedure RunWorkflowOnDelegateApprovalRequestForTransferCode(): Code[128]
    begin
        EXIT(UPPERCASE('RunWorkflowOnDelegateApprovalRequestForTransfer'));
    end;

    [Scope('Cloud')]
    procedure RunWorkflowOnCancelApprovalRequestForTransferCode(): Code[128]
    begin
        EXIT(UPPERCASE('RunWorkflowOnCancelApprovalRequestForTransfer'));
    end;

    [EventSubscriber(ObjectType::Codeunit, 1535, 'OnRejectApprovalRequest', '', false, false)]
    [Scope('Cloud')]
    procedure RunWorkflowOnRejectApprovalRequestForTransfer(var ApprovalEntry: Record "Approval Entry")
    begin
        WorkflowManagement.HandleEventOnKnownWorkflowInstance(RunWorkflowOnRejectApprovalRequestForTransferCode, ApprovalEntry,
          ApprovalEntry."Workflow Step Instance ID");
        TransferHeader.RESET;
        TransferHeader.SETRANGE("No.", ApprovalEntry."Document No.");
        IF TransferHeader.FINDFIRST THEN BEGIN
            //  TransferHeader.Status := TransferHeader.Status::
        END;
    end;

    [EventSubscriber(ObjectType::Codeunit, 1535, 'OnDelegateApprovalRequest', '', false, false)]
    [Scope('Cloud')]
    procedure RunWorkflowOnDelegateApprovalRequestForTransfer(var ApprovalEntry: Record "Approval Entry")
    begin
        WorkflowManagement.HandleEventOnKnownWorkflowInstance(RunWorkflowOnDelegateApprovalRequestForTransferCode, ApprovalEntry,
          ApprovalEntry."Workflow Step Instance ID");
        TransferHeader.RESET;
        TransferHeader.SETRANGE("No.", ApprovalEntry."Document No.");
        IF TransferHeader.FINDFIRST THEN BEGIN
            //  TransferHeader.Status := TransferHeader.Status::
        END;
    end;

    [EventSubscriber(ObjectType::Codeunit, 1535, 'OnApproveApprovalRequest', '', false, false)]
    [Scope('Cloud')]
    procedure RunWorkflowOnApproveApprovalRequestForTransfer(var ApprovalEntry: Record "Approval Entry")
    begin
        TransferHeader.RESET;
        TransferHeader.SETRANGE("No.", ApprovalEntry."Document No.");
        IF TransferHeader.FINDFIRST THEN BEGIN
            TransferHeader.Status := TransferHeader.Status::Released;
            TransferHeader.MODIFY(TRUE);
        END;

        WorkflowManagement.HandleEventOnKnownWorkflowInstance(RunWorkflowOnApproveApprovalRequestForTransferCode,
          ApprovalEntry, ApprovalEntry."Workflow Step Instance ID");
    end;

    [Scope('Cloud')]
    procedure CheckTransferApprovalsWorkflowEnabled(var TransferHeader: Record "Transfer Header"): Boolean
    begin
        IF NOT IsTransferApprovalsWorkflowEnabled(TransferHeader) THEN
            ERROR(NoWorkflowEnabledErr);
        EXIT(TRUE);
    end;

    [EventSubscriber(ObjectType::Codeunit, 1520, 'OnAddWorkflowEventsToLibrary', '', false, false)]
    local procedure AddWorkflowEventsToLibrary()
    begin
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnSendTransferForApprovalCode, DATABASE::"Transfer Header",
          'Send Transfer for Approval', 0, FALSE);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnApproveApprovalRequestForTransferCode, DATABASE::"Transfer Header",
          'Approve Approval Request for Transfer', 0, FALSE);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnRejectApprovalRequestForTransferCode, DATABASE::"Transfer Header",
          'Reject Approval Request for Transfer', 0, FALSE);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnDelegateApprovalRequestForTransferCode, DATABASE::"Transfer Header",
          'Delegate Approval Request for Transfer', 0, FALSE);
    end;

    [EventSubscriber(ObjectType::Codeunit, 1520, 'OnAddWorkflowTableRelationsToLibrary', '', false, false)]
    local procedure AddWorkflowTableRelationsToLibrary()
    var
        WorkflowSetup: Codeunit "Workflow Setup";
    begin
        WorkflowSetup.InsertTableRelation(DATABASE::"Transfer Header", 0, DATABASE::"Approval Entry", 22);
    end;

    [IntegrationEvent(false, false)]
    [Scope('Cloud')]
    procedure OnSendTransferForApproval(var TransferHeader: Record "Transfer Header")
    begin
    end;

    [Scope('Cloud')]
    procedure IsTransferApprovalsWorkflowEnabled(TransferHeader: Record "Transfer Header"): Boolean
    begin
        EXIT(WorkflowManagement.CanExecuteWorkflow(TransferHeader, WorkflowTransfer.RunWorkflowOnSendTransferForApprovalCode));
    end;

    [EventSubscriber(ObjectType::Page, 5740, 'OnAfterActionEvent', 'SendApprovalRequest', false, false)]
    local procedure SendTransferForApprovalFunction(var Rec: Record "Transfer Header")
    begin
        IF WorkflowTransfer.CheckTransferApprovalsWorkflowEnabled(Rec) THEN
            WorkflowTransfer.OnSendTransferForApproval(Rec);
    end;

    [EventSubscriber(ObjectType::Codeunit, 50005, 'OnCancelTransferForApproval', '', false, false)]
    [Scope('Cloud')]
    procedure RunWorkflowOnCancelApprovalRequestForTransfer(var TransferHeader: Record "Transfer Header")
    begin
        WorkflowManagement.HandleEvent(WorkflowTransfer.RunWorkflowOnCancelApprovalRequestForTransferCode, TransferHeader);
    end;

    [IntegrationEvent(false, false)]
    [Scope('Cloud')]
    procedure OnCancelTransferForApproval(var TransferHeader: Record "Transfer Header")
    begin
    end;

    [EventSubscriber(ObjectType::Page, 5740, 'OnAfterActionEvent', 'CancelApprovalRequest', false, false)]
    local procedure CancelTansferForApprovalFunction(var Rec: Record "Transfer Header")
    begin
        WorkflowTransfer.OnCancelTransferForApproval(Rec);
    end;

    // [EventSubscriber(ObjectType::Page, 5740, 'OnBeforeActionEvent', 'Action59', false, false)]
    // local procedure ReleaseTransferOrder(var Rec: Record "Transfer Header")
    // begin
    //     IF WorkflowTransfer.IsTransferApprovalsWorkflowEnabled(Rec) AND (Rec.Status = Rec.Status::Open) THEN
    //         ERROR(ReleaseErr);
    // end;

    // [EventSubscriber(ObjectType::Page, 5742, 'OnBeforeActionEvent', '<Action159>', false, false)]
    // local procedure ReleaseTransferOrderFromList(var Rec: Record "Transfer Header")
    // begin
    //     IF WorkflowTransfer.IsTransferApprovalsWorkflowEnabled(Rec) AND (Rec.Status = Rec.Status::Open) THEN
    //         ERROR(ReleaseErr);
    // end; //OA.AS Commented

    [EventSubscriber(ObjectType::Page, 5742, 'OnAfterActionEvent', 'SendApprovalRequest', false, false)]
    local procedure SendTransferForApprovalFunctionFromList(var Rec: Record "Transfer Header")
    begin
        IF WorkflowTransfer.CheckTransferApprovalsWorkflowEnabled(Rec) THEN
            WorkflowTransfer.OnSendTransferForApproval(Rec);
    end;

    [EventSubscriber(ObjectType::Page, 5742, 'OnAfterActionEvent', 'CancelApprovalRequest', false, false)]
    local procedure CancelTansferForApprovalFunctionFromList(var Rec: Record "Transfer Header")
    begin
        WorkflowTransfer.OnCancelTransferForApproval(Rec);
    end;
}

