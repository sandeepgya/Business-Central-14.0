codeunit 50003 "Workflow Subscribers"
{

    trigger OnRun()
    begin
    end;

    var
        WorkflowEventHandling: Codeunit "Workflow Event Handling";
        ItemJournalLineSendForApprovalEventDescTxt: Label 'Approval of a item journal line is requested.';
        WorkflowManagement: Codeunit "Workflow Management";
        ItemJournalLineSendForCancelEventDescTxt: Label 'An approval request for a item journal line is canceled.';
        WorkflowResponseHandling: Codeunit "Workflow Response Handling";

    [EventSubscriber(ObjectType::Codeunit, 1520, 'OnAddWorkflowEventsToLibrary', '', false, false)]
    [Scope('Cloud')]
    procedure WorkflowEventAddition()
    begin
        WorkflowEventHandling.AddEventToLibrary(RunWorkFlowOnSendApprovalItemJournalLineCode, DATABASE::"Item Journal Line", ItemJournalLineSendForApprovalEventDescTxt, 0, FALSE);
        WorkflowEventHandling.AddEventToLibrary(RunWorkFlowOnCancelItemJournalLineCode, DATABASE::"Item Journal Line", ItemJournalLineSendForCancelEventDescTxt, 0, FALSE);
    end;

    [Scope('Cloud')]
    procedure RunWorkFlowOnSendApprovalItemJournalLineCode(): Code[128]
    begin
        EXIT(UPPERCASE('RunWorkFlowOnSendApprovalItemJournalLine'));
    end;

    // [EventSubscriber(ObjectType::Codeunit, 1535, 'OnSendItemJournalLineForApproval', '', false, false)]
    // [Scope('Cloud')]
    // procedure RunWorkFlowOnSendApprovalItemJournalLine(var ItemJournalLine: Record "Item Journal Line")
    // begin
    //     WorkflowManagement.HandleEvent(RunWorkFlowOnSendApprovalItemJournalLineCode, ItemJournalLine);
    // end;

    // [EventSubscriber(ObjectType::Codeunit, 1535, 'OnCancelItemlJournalLineApprovalRequest', '', false, false)]
    // [Scope('Cloud')]
    // procedure OnCancelItemJournalRequest(var Sender: Codeunit "Approvals Mgmt."; var ItemJournalLine: Record "Item Journal Line")
    // begin
    // end; //OA.AS Commented

    [Scope('Cloud')]
    procedure RunWorkFlowOnCancelItemJournalLineCode(): Code[128]
    begin
        EXIT(UPPERCASE('RunWorkFlowOnCancelItemJournalLine'));
    end;

    // [EventSubscriber(ObjectType::Codeunit, 1535, 'OnCancelItemlJournalLineApprovalRequest', '', false, false)]
    // [Scope('Cloud')]
    // procedure RunWorkFlowOnCancelItemJournalLine(var Sender: Codeunit "Approvals Mgmt."; var ItemJournalLine: Record "Item Journal Line")
    // begin
    //     WorkflowManagement.HandleEvent(RunWorkFlowOnCancelItemJournalLineCode, ItemJournalLine);
    // end; //OA.AS Commented

    [EventSubscriber(ObjectType::Codeunit, 1521, 'OnAddWorkflowResponsesToLibrary', '', false, false)]
    [Scope('Cloud')]
    procedure WorkflowResponseAddition()
    begin
        WorkflowResponseHandling.AddResponseToLibrary(BlockCustomerCode, DATABASE::Customer, 'Unblock Customer', 'GROUP 50000');
        WorkflowResponseHandling.AddResponseToLibrary(UnBlockVendorCode, DATABASE::Vendor, 'Unblock Vendor', 'GROUP 50000');
        WorkflowResponseHandling.AddResponseToLibrary(UnBlockItemCode, DATABASE::Item, 'Unblock Item', 'GROUP 50000');
    end;

    local procedure BlockCustomerCode(): Code[128]
    begin
        EXIT(UPPERCASE('BlockCustomer'));
    end;

    local procedure BlockCustomer(Variant: Variant)
    var
        RecRef: RecordRef;
        Customer: Record Customer;
        ApprovalEntry: Record "Approval Entry";
    begin
        RecRef.GETTABLE(Variant);
        CASE RecRef.NUMBER OF
            DATABASE::"Approval Entry":
                BEGIN
                    ApprovalEntry := Variant;

                    IF ApprovalEntry."Table ID" = 18 THEN BEGIN
                        IF Customer.GET(ApprovalEntry."Record ID to Approve") THEN BEGIN
                            Customer.Blocked := Customer.Blocked::" ";
                            Customer.MODIFY;
                        END;
                    END;

                    //Write for Vendor here

                END;
        END;
        // IF WorkflowStepArguement.GET("Workflow step instance".Argument) THEN BEGIN
        //  Customer.Blocked := WorkflowStepArguement.CustomerBlock;
        //  Customer.MODIFY;
        //  END;
    end;

    [EventSubscriber(ObjectType::Codeunit, 1521, 'OnExecuteWorkflowResponse', '', false, false)]
    [Scope('Cloud')]
    procedure RunResponse(var ResponseExecuted: Boolean; Variant: Variant; xVariant: Variant; ResponseWorkflowStepInstance: Record "Workflow Step Instance")
    var
        WorkflowResponse: Record "Workflow Response";
    begin
        IF WorkflowResponse.GET(ResponseWorkflowStepInstance."Function Name") THEN BEGIN
            CASE WorkflowResponse."Function Name" OF
                BlockCustomerCode:
                    BEGIN
                        BlockCustomer(Variant);
                        ResponseExecuted := TRUE;
                    END;
                UnBlockVendorCode:
                    BEGIN
                        UnblockVendor(Variant);
                        ResponseExecuted := TRUE;
                    END;
                UnBlockItemCode:
                    BEGIN
                        UnblockItem(Variant);
                        ResponseExecuted := TRUE;
                    END;
            END;
        END;
    end;

    local procedure UnBlockVendorCode(): Code[128]
    begin
        EXIT(UPPERCASE('UnBlockVendor'));
    end;

    local procedure UnblockVendor(Variant: Variant)
    var
        RecRef: RecordRef;
        Vendor: Record Vendor;
        ApprovalEntry: Record "Approval Entry";
    begin
        RecRef.GETTABLE(Variant);
        CASE RecRef.NUMBER OF
            DATABASE::"Approval Entry":
                BEGIN
                    ApprovalEntry := Variant;

                    IF ApprovalEntry."Table ID" = 23 THEN BEGIN
                        IF Vendor.GET(ApprovalEntry."Record ID to Approve") THEN BEGIN
                            Vendor.Blocked := Vendor.Blocked::" ";
                            Vendor.MODIFY;
                        END;
                    END;

                    //Write for Vendor here

                END;
        END;
        // IF WorkflowStepArguement.GET("Workflow step instance".Argument) THEN BEGIN
        //  Customer.Blocked := WorkflowStepArguement.CustomerBlock;
        //  Customer.MODIFY;
        //  END;
    end;

    local procedure UnBlockItemCode(): Code[128]
    begin
        EXIT(UPPERCASE('UnBlockItem'));
    end;

    local procedure UnblockItem(Variant: Variant)
    var
        RecRef: RecordRef;
        Item: Record Item;
        ApprovalEntry: Record "Approval Entry";
    begin
        RecRef.GETTABLE(Variant);
        CASE RecRef.NUMBER OF
            DATABASE::"Approval Entry":
                BEGIN
                    ApprovalEntry := Variant;

                    IF ApprovalEntry."Table ID" = 27 THEN BEGIN
                        IF Item.GET(ApprovalEntry."Record ID to Approve") THEN BEGIN
                            Item.Blocked := FALSE;
                            Item.MODIFY;
                        END;
                    END;

                    //Write for Vendor here

                END;
        END;
        // IF WorkflowStepArguement.GET("Workflow step instance".Argument) THEN BEGIN
        //  Customer.Blocked := WorkflowStepArguement.CustomerBlock;
        //  Customer.MODIFY;
        //  END;
    end;
}

