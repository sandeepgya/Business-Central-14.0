xmlport 50040 "Voucher Port"
{
    // MCD0017-TG-041205:
    // //MCD0100 : Added USERID on GL Line
    // //VS code commented
    // 
    // TECCPR-CI-5081-001  27-08-14 TEC.VKG
    //  # Validate the document date that was being replaced with Posting Date While importing from excel

    FieldSeparator = '<TAB>';
    Format = VariableText;

    schema
    {
        textelement(Root)
        {
            tableelement("Gen. Journal Line"; "Gen. Journal Line")
            {
                AutoSave = false;
                RequestFilterFields = "Journal Template Name", "Journal Batch Name";
                XmlName = 'Gen.JournalLine';
                textelement(gvAccCode)
                {
                }
                textelement(gvDocumentType)
                {
                }
                textelement(gvTDSNature)
                {
                }
                textelement(gvWorkTax)
                {
                }
                textelement(gvDocYear)
                {
                }
                textelement(gvDocMonth)
                {
                }
                textelement(gvDocDate)
                {
                }
                textelement(gvAmount)
                {
                }
                textelement(gvAmountDecimal)
                {
                }
                textelement(gvDebitCredit)
                {
                }
                textelement(gvNarration1)
                {
                }
                textelement(gvExtDocNo)
                {
                }
                textelement(gvNarration2)
                {
                }
                textelement(gvPostingYear)
                {
                }
                textelement(gvPostingMonth)
                {
                }
                textelement(gvPostingDate)
                {
                }
                textelement(gvLocation)
                {
                }
                textelement(gvDepartment)
                {
                }
                textelement(gvEmployee)
                {
                }
                textelement(gvActivity)
                {
                }
                textelement(gvT6)
                {
                }
                textelement(gvT8)
                {
                }
                textelement(gvAccType)
                {
                }
                textelement(TDSBaseAmount)
                {
                    MinOccurs = Zero;
                }
                textelement(WCTBaseAmount)
                {
                    MinOccurs = Zero;
                }

                trigger OnPreXmlItem()
                begin

                    if StrLen("Gen. Journal Line".GetFilter("Gen. Journal Line"."Journal Template Name")) = 0 then
                        Error('Please select the ''Journal Template Name''')
                    else
                        gvJournalTemplateName := "Gen. Journal Line".GetFilter("Gen. Journal Line"."Journal Template Name");
                    if StrLen("Gen. Journal Line".GetFilter("Gen. Journal Line"."Journal Batch Name")) = 0 then
                        Error('Please select the ''Journal Batch Name''')
                    else
                        gvJournalBatchName := "Gen. Journal Line".GetFilter("Gen. Journal Line"."Journal Batch Name");
                end;

                trigger OnAfterInsertRecord()
                begin
                    EvaluateTextToInteger;
                    ClearDimArray;
                    //NoSeriesManagement.InitSeries(JnlBatchName."No. Series",JnlBatchName."No. Series",0D,gvNoSeries,JnlBatchName."No. Series");
                    //NoSeriesMgt.InitSeries(InvtSetup."Item Nos.",xRec."No. Series",0D,"No.","No. Series");
                    j += 1;
                    Window.Update(1, j);

                    gvCounter += 1;

                    //Get last Line No.
                    if gvCounter = 1 then begin
                        GenJnlLine.Reset;
                        GenJnlLine.SetRange(GenJnlLine."Journal Template Name", gvJournalTemplateName);
                        GenJnlLine.SetRange(GenJnlLine."Journal Batch Name", gvJournalBatchName);
                        if GenJnlLine.FindLast then
                            gvLineNo := GenJnlLine."Line No.";
                    end;

                    if gvCounter > 1 then  // To skip the first row
                    begin
                        /*
                        //MCD0016-TG-041020: Increment No. Series
                         gvBalanceAmount := gvBalanceAmount + "Gen. Journal Line".Amount;
                         IF gvBalanceAmount = 0 THEN
                         BEGIN
                           gvNoSeries := NoSeriesManagement.GetNextNo(JnlBatchName."No. Series",0D,TRUE);
                           NoSeriesManagement.InitSeries(JnlBatchName."No. Series",JnlBatchName."No. Series",0D,gvNoSeries,gvCode); //VS
                           COMMIT;
                         END;
                        */
                        gvLineNo += 10000;
                        "Gen. Journal Line"."Journal Template Name" := gvJournalTemplateName;
                        "Gen. Journal Line"."Journal Batch Name" := gvJournalBatchName;
                        "Gen. Journal Line"."Line No." := gvLineNo;
                        //  CheckAccountType(gvAccCode, gvAccType);
                        Evaluate("Gen. Journal Line"."Account Type", gvAccType);
                        "Gen. Journal Line"."Account No." := gvAccCode;
                        "Gen. Journal Line".Validate("Gen. Journal Line"."Account No.");
                        Evaluate("Gen. Journal Line"."Document Type", gvDocumentType);
                        if "Gen. Journal Line"."Account Type" = "Gen. Journal Line"."Account Type"::Vendor then begin

                            "Gen. Journal Line"."Posting Date" := DMY2Date(gvPostingDateInt, gvPostingMonthInt, gvPostingYearInt);
                            "Gen. Journal Line".Validate("Posting Date");
                            "Gen. Journal Line"."Party Type" := "Gen. Journal Line"."Party Type"::Vendor;
                            "Gen. Journal Line"."Party Code" := gvAccCode;
                            "Gen. Journal Line".Validate("Gen. Journal Line"."Party Code");
                            // "Gen. Journal Line"."TDS Nature of Deduction" := gvTDSNature;//OA.AS Commented
                            // "Gen. Journal Line".Validate("Gen. Journal Line"."TDS Nature of Deduction");//OA.AS Commented
                            "Gen. Journal Line"."Work Tax Nature Of Deduction" := gvWorkTax;
                            "Gen. Journal Line".Validate("Gen. Journal Line"."Work Tax Nature Of Deduction");
                        end;
                        if gvAmountDecimal <> '' then
                            Evaluate(gvAmountDecimalInt, gvAmountDecimal);
                        if gvAmount <> '' then
                            Evaluate(gvAmountInt, gvAmount);
                        if gvDebitCredit = 'D' then
                            "Gen. Journal Line".Amount := gvAmountInt + (gvAmountDecimalInt / 100)
                        else
                            "Gen. Journal Line".Amount := -(gvAmountInt + (gvAmountDecimalInt / 100));
                        gvBalanceAmount := gvBalanceAmount + "Gen. Journal Line".Amount;

                        if (gvCounter = 2) then begin
                            gvNoSeries := NoSeriesManagement.GetNextNo(JnlBatchName."No. Series", 0D, true);
                            Commit;
                        end else
                            if (IncNo = true) then
                                //VS IF (gvExtDocNo <> '') THEN
                                //VS IF (gvExtDocNo <> gvXExtDocNo) THEN BEGIN
                                gvNoSeries := NoSeriesManagement.GetNextNo(JnlBatchName."No. Series", 0D, true);
                        Commit;
                        //VS END;

                        //NoSeriesManagement.InitSeries(JnlBatchName."No. Series",JnlBatchName."No. Series",0D,gvNoSeries,gvCode);//VS
                        "Gen. Journal Line"."Document No." := gvNoSeries;
                        "Gen. Journal Line".Validate("Document No.");
                        "Gen. Journal Line".Validate("Gen. Journal Line".Amount);

                        "Gen. Journal Line"."Document Date" := DMY2Date(gvDocDateInt, gvDocMonthInt, gvDocYearInt);
                        // "Gen. Journal Line".Narration := gvNarration1 + ' ' + gvNarration2;
                        //MCD0016
                        "Gen. Journal Line"."External Document No." := gvExtDocNo;
                        "Gen. Journal Line"."Shortcut Dimension 1 Code" := gvLocation;
                        "Gen. Journal Line".Validate("Gen. Journal Line"."Shortcut Dimension 1 Code");
                        "Gen. Journal Line"."Shortcut Dimension 2 Code" := gvDepartment;
                        "Gen. Journal Line".Validate("Gen. Journal Line"."Shortcut Dimension 2 Code");
                        "Gen. Journal Line"."Posting Date" := DMY2Date(gvPostingDateInt, gvPostingMonthInt, gvPostingYearInt);
                        //"Gen. Journal Line"."Voucher Held By" := USERID;       //MCD0100 : Added USERID on GL Line
                        "Gen. Journal Line"."Gen. Prod. Posting Group" := ''; //tEC.MV.20120306
                        //"Gen. Journal Line".Validate("Work Tax Base Amount", -WCTBaseAmountInt); //OA.AS Commented
                        //"Gen. Journal Line".Validate("TDS/TCS Base Amount", -TDSBaseAmountInt); //OA.AS Commented
                        "Gen. Journal Line".Validate("Posting Date");
                        "Gen. Journal Line".Validate("Document Date", DMY2Date(gvDocDateInt, gvDocMonthInt, gvDocYearInt));//TEC.VKG 27-Aug-2014

                        "Gen. Journal Line".Insert;

                        // "Gen. Journal Line".Validate("Gen. Journal Line"."TDS Nature of Deduction");//OA.AS Commented
                        // "Gen. Journal Line".VALIDATE("WCT Base Amount New",-WCTBaseAmountInt);
                        // "Gen. Journal Line".VALIDATE("TDS Base Amount New",-TDSBaseAmountInt);
                        //"Gen. Journal Line".MODIFY;
                        WCTBaseAmountInt := 0;
                        TDSBaseAmountInt := 0;
                        if gvBalanceAmount = 0 then
                            IncNo := true
                        else
                            IncNo := false;
                        //MCD0016
                        gvXExtDocNo := gvExtDocNo;

                        i := 1;
                        if StrLen(gvLocation) > 0 then begin
                            DimCode[i] := 'LOCATION';
                            DimValue[i] := gvLocation;
                            i += 1;
                        end;

                        if StrLen(gvDepartment) > 0 then begin
                            DimCode[i] := 'DEPARTMENT';
                            DimValue[i] := gvDepartment;
                            i += 1;
                        end;

                        if StrLen(gvActivity) > 0 then begin
                            DimCode[i] := 'ACTIVITY';
                            DimValue[i] := gvActivity;
                            i += 1;
                        end;

                        if StrLen(gvEmployee) > 0 then begin
                            DimCode[i] := 'EMPLOYEE';
                            DimValue[i] := gvEmployee;
                            i += 1;
                        end;

                        if StrLen(gvT6) > 0 then begin
                            DimCode[i] := 'T6';
                            DimValue[i] := gvT6;
                            i += 1;
                        end;

                        if StrLen(gvT8) > 0 then begin
                            DimCode[i] := 'T8';
                            DimValue[i] := gvT8;
                            i += 1;
                        end;

                        if i > 1 then begin
                            CompressArray(DimCode);
                            CompressArray(DimValue);
                            //  "Gen. Journal Line"."Dimension Set ID" := DimMgmt.CreateAndGetDimensionSetEntry(DimCode,DimValue);
                        end;
                        "Gen. Journal Line".Modify;
                    end;

                    gvT8 := '';

                    Commit;

                end;
            }
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

    trigger OnPostXmlPort()
    begin
        Window.Close;
    end;

    trigger OnPreXmlPort()
    begin
        Window.Open(DialogText);
        j := 0;
        if StrLen("Gen. Journal Line".GetFilter("Gen. Journal Line"."Journal Template Name")) = 0 then
            Error('Please select the ''Journal Template Name''')
        else
            gvJournalTemplateName := "Gen. Journal Line".GetFilter("Gen. Journal Line"."Journal Template Name");
        if StrLen("Gen. Journal Line".GetFilter("Gen. Journal Line"."Journal Batch Name")) = 0 then
            Error('Please select the ''Journal Batch Name''')
        else
            gvJournalBatchName := "Gen. Journal Line".GetFilter("Gen. Journal Line"."Journal Batch Name");

        JnlBatchName.Get(gvJournalTemplateName, gvJournalBatchName);
    end;

    var
        gvJournalTemplateName: Code[10];
        gvJournalBatchName: Code[10];
        GenJnlManagement: Codeunit GenJnlManagement;
        JnlBatchName: Record "Gen. Journal Batch";
        gvLineNo: Integer;
        gvFileName: Text[250];
        // CommonDialogManagement: Codeunit "SMTP Test Mail";
        NoSeriesManagement: Codeunit NoSeriesManagement;
        gvNoSeries: Code[20];
        "Bank Account": Record "Bank Account";
        "G/L Account": Record "G/L Account";
        Vendor: Record Vendor;
        Customer: Record Customer;
        gvCounter: Integer;
        gvBalanceAmount: Decimal;
        gvCode: Code[10];
        GenJnlLine: Record "Gen. Journal Line";
        gvXExtDocNo: Code[20];
        IncNo: Boolean;
        gvPostingDateInt: Integer;
        gvPostingMonthInt: Integer;
        gvPostingYearInt: Integer;
        gvAmountDecimalInt: Decimal;
        gvAmountInt: Decimal;
        gvDocDateInt: Integer;
        gvDocMonthInt: Integer;
        gvDocYearInt: Integer;
        WCTBaseAmountInt: Decimal;
        TDSBaseAmountInt: Decimal;
        DimMgmt: Codeunit DimensionManagement;
        DimCode: array[8] of Code[20];
        DimValue: array[8] of Code[20];
        i: Integer;
        Window: Dialog;
        j: Integer;
        DialogText: Label 'Uploading Record No #1#############';

    local procedure EvaluateTextToInteger()
    begin
        if gvPostingDate <> '' then
            Evaluate(gvPostingDateInt, gvPostingDate);
        if gvPostingMonth <> '' then
            Evaluate(gvPostingMonthInt, gvPostingMonth);
        if gvPostingYear <> '' then
            Evaluate(gvPostingYearInt, gvPostingYear);
        if gvDocDate <> '' then
            Evaluate(gvDocDateInt, gvDocDate);
        if gvDocMonth <> '' then
            Evaluate(gvDocMonthInt, gvDocMonth);
        if gvDocYear <> '' then
            Evaluate(gvDocYearInt, gvDocYear);
        if WCTBaseAmount <> '' then
            Evaluate(WCTBaseAmountInt, WCTBaseAmount);
        if TDSBaseAmount <> '' then
            Evaluate(TDSBaseAmountInt, TDSBaseAmount);
    end;

    local procedure ClearDimArray()
    begin
        i := 0;
        Clear(DimValue);
        Clear(DimCode);
    end;
}

