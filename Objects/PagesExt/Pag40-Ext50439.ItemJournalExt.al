pageextension 50439 "ItemJournalExt" extends "Item Journal"//40
{
    // PMT.00.22
    //   Item Journal Approval process changes
    actions
    {
        modify(Post)
        {
            Enabled = true;
        }
        addafter("&Print")
        {
            group("Request Approval")
            {
                Caption = 'Request Approval';
                group(SendApprovalRequest)
                {
                    Caption = 'Send Approval Request';
                    Image = SendApprovalRequest;
                    action(SendApprovalRequestJournalLine)
                    {
                        Caption = 'Selected Journal Lines';
                        Enabled = NOT OpenApprovalEntriesOnItemLineExist;
                        Image = SendApprovalRequest;
                        ApplicationArea = All;

                        trigger OnAction()
                        var
                            ItemJournalLine: Record "Item Journal Line";
                            ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                        begin
                            //>>PMT.00.22
                            GetCurrentlySelectedLines(ItemJournalLine);
                            // ApprovalsMgmt.TrySendItemJournalLineApprovalRequests(ItemJournalLine);//OA.AS Commented
                            SetControlAppearance;
                            //<<PMT.00.22
                        end;
                    }
                }
                group(CancelApprovalRequest)
                {
                    Caption = 'Cancel Approval Request';
                    Image = Cancel;
                    action(CancelApprovalRequestJournalLine)
                    {
                        Caption = 'Selected Journal Lines';
                        Enabled = OpenApprovalEntriesOnItemLineExist;
                        Image = Cancel;
                        ApplicationArea = All;

                        trigger OnAction()
                        var
                            ItemJournalLine: Record "Item Journal Line";
                            ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                        begin
                            //>>PMT.00.22
                            GetCurrentlySelectedLines(ItemJournalLine);
                            // ApprovalsMgmt.TryCancelItemJournalLineApprovalRequests(ItemJournalLine); //OA.AS Commented
                            SetControlAppearance;
                            //<<PMT.00.22
                        end;
                    }
                }
            }
            group(Approval)
            {
                Caption = 'Approval';
                action(Approve)
                {
                    Caption = 'Approve';
                    Enabled = OpenApprovalEntriesExistForCurrUser;
                    Image = Approve;
                    Promoted = true;
                    PromotedCategory = Category7;
                    PromotedIsBig = true;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        GenJournalBatch: Record "Gen. Journal Batch";
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        /*
                        GenJournalBatch.GET("Journal Template Name","Journal Batch Name");
                        IF NOT ApprovalsMgmt.ApproveRecordApprovalRequest(GenJournalBatch.RECORDID) THEN
                        */
                        //PMT.00.22
                        ApprovalsMgmt.ApproveRecordApprovalRequest(Rec.RECORDID);

                    end;
                }
                action(Reject)
                {
                    Caption = 'Reject';
                    Enabled = OpenApprovalEntriesExistForCurrUser;
                    Image = Reject;
                    Promoted = true;
                    PromotedCategory = Category7;
                    PromotedIsBig = true;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ItemJournalBatch: Record "Item Journal Batch";
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        //>>PMT.00.22
                        ItemJournalBatch.GET(Rec."Journal Template Name", Rec."Journal Batch Name");
                        // IF NOT ApprovalsMgmt.RejectRecordApprovalRequest(ItemJournalBatch.RECORDID) THEN //OA.AS Commented
                        ApprovalsMgmt.RejectRecordApprovalRequest(Rec.RECORDID); //<<PMT.00.22
                    end;
                }
                action(Delegate)
                {
                    Caption = 'Delegate';
                    Enabled = OpenApprovalEntriesExistForCurrUser;
                    Image = Delegate;
                    Promoted = true;
                    PromotedCategory = Category7;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ItemJournalBatch: Record "Item Journal Batch";
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        //>>PMT.00.22
                        ItemJournalBatch.GET(Rec."Journal Template Name", Rec."Journal Batch Name");
                        // IF NOT ApprovalsMgmt.DelegateRecordApprovalRequest(ItemJournalBatch.RECORDID) THEN //OA.AS Commented
                        ApprovalsMgmt.DelegateRecordApprovalRequest(Rec.RECORDID);//>PMT.00.22
                    end;
                }
                action(Comment)
                {
                    Caption = 'Comments';
                    Enabled = OpenApprovalEntriesExistForCurrUser;
                    Image = ViewComments;
                    Promoted = true;
                    PromotedCategory = Category7;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.GetApprovalComment(Rec);//PMT.00.22
                    end;
                }
            }
        }
    }

    var
        "---PMT---": Integer;
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
        OpenApprovalEntriesOnItemLineExist: Boolean;
        OpenApprovalEntriesExistForCurrUser: Boolean;


    //Unsupported feature: Code Modification on "OnAfterGetCurrRecord".

    //trigger OnAfterGetCurrRecord()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ItemJnlMgt.GetItem("Item No.",ItemDescription);
    UpdateNatureOfDisposal;
    MakeFieldNonEditable;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3

    SetControlAppearance; //PMT.00.22
    */
    //end;


    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF IsOpenedFromBatch THEN BEGIN
      CurrentJnlBatchName := "Journal Batch Name";
      ItemJnlMgt.OpenJnl(CurrentJnlBatchName,Rec);
      EXIT;
    END;
    ItemJnlMgt.TemplateSelection(PAGE::"Item Journal",0,FALSE,Rec,JnlSelected);
    #7..9
    UpdateNatureOfDisposal;
    MakeFieldNonEditable;
    OnActivateForm;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
      SetControlAppearance; //PMT.00.22
    #4..12
    SetControlAppearance; //PMT.00.22
    */
    //end;

    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin

    end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin

    end;

    local procedure "--PMT--"()
    begin
    end;

    local procedure GetCurrentlySelectedLines(var ItemJournalLine: Record "Item Journal Line"): Boolean
    begin
        //>>PMT.00.22
        CurrPage.SETSELECTIONFILTER(ItemJournalLine);
        EXIT(ItemJournalLine.FINDSET);
        //>>PMT.00.22
    end;

    local procedure SetControlAppearance()
    var
        GenJournalBatch: Record "Gen. Journal Batch";
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
    begin
        /*
         //>>PMT.00.22
        IF GenJournalBatch.GET("Journal Template Name","Journal Batch Name") THEN BEGIN
          ShowWorkflowStatusOnBatch := CurrPage.WorkflowStatusBatch.PAGE.SetFilterOnWorkflowRecord(GenJournalBatch.RECORDID);
          OpenApprovalEntriesExistForCurrUser := ApprovalsMgmt.HasOpenApprovalEntriesForCurrentUser(GenJournalBatch.RECORDID);
          OpenApprovalEntriesOnJnlBatchExist := ApprovalsMgmt.HasOpenApprovalEntries(GenJournalBatch.RECORDID);
        END;
        */
        OpenApprovalEntriesExistForCurrUser :=
          OpenApprovalEntriesExistForCurrUser OR
          ApprovalsMgmt.HasOpenApprovalEntriesForCurrentUser(Rec.RECORDID);

        OpenApprovalEntriesOnItemLineExist := ApprovalsMgmt.HasOpenApprovalEntries(Rec.RECORDID);
        //OpenApprovalEntriesOnBatchOrCurrJnlLineExist := OpenApprovalEntriesOnJnlBatchExist OR OpenApprovalEntriesOnJnlLineExist;

        //OpenApprovalEntriesOnBatchOrAnyJnlLineExist :=
        //OpenApprovalEntriesOnJnlBatchExist OR
        //ApprovalsMgmt.HasAnyOpenJournalLineApprovalEntries("Journal Template Name","Journal Batch Name");

        //ShowWorkflowStatusOnLine := CurrPage.WorkflowStatusLine.PAGE.SetFilterOnWorkflowRecord(RECORDID);
        //<<PMT.00.22

    end;
}

