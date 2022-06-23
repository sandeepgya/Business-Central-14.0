tableextension 50432 "TransferLineExt" extends "Transfer Line"//5741
{
    // PMT1.00 16-May18
    //   Added field Inventory
    // 
    // IR003
    //   GST Calculation on Release Transfer Order
    fields
    {
        field(50000; Inventory; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("Item No."), "Location Code" = FIELD("Transfer-from Code")));
            Caption = 'Inventory';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    //Unsupported feature: Variable Insertion (Variable: TransHeader) (VariableCollection) on "SelectItemEntry(PROCEDURE 11)".



    //Unsupported feature: Code Modification on "SelectItemEntry(PROCEDURE 11)".

    //procedure SelectItemEntry();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ItemLedgEntry.SETCURRENTKEY("Item No.",Positive);
    ItemLedgEntry.SETRANGE("Item No.","Item No.");
    ItemLedgEntry.SETRANGE(Correction,FALSE);
    ItemLedgEntry.SETRANGE(Open,TRUE);
    IF "Transfer-from Code" <> '' THEN
      ItemLedgEntry.SETRANGE("Location Code","Transfer-from Code");
    ItemLedgEntry.SETRANGE("Variant Code","Variant Code");
    #8..12

    IF PAGE.RUNMODAL(PAGE::"Item Ledger Entries",ItemLedgEntry) = ACTION::LookupOK THEN BEGIN
      TransferLine2 := Rec;
      IF CurrentFieldNo = FIELDNO("Applies-to Entry (Ship)") THEN
        TransferLine2.VALIDATE("Appl.-to Item Entry",ItemLedgEntry."Entry No.");
      CheckItemAvailable(CurrentFieldNo);
      Rec := TransferLine2;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //>>PMT.00.14
    TransHeader.GET("Document No.");
    TransHeader.TESTFIELD("Party No.");
    TransHeader.TESTFIELD("Party Type");
    //<<PMT.00.14
    #1..4
    ItemLedgEntry.SETRANGE("Party Type",TransHeader."Party Type"); // PMT.00.14
    ItemLedgEntry.SETRANGE("Party No.",TransHeader."Party No.");   // PMT.00.14
    #5..15
      IF CurrentFieldNo = FIELDNO("Applies-to Entry (Ship)") THEN BEGIN  // PMT.00.14 Added BEGIN
        IF ItemLedgEntry."Location Code" <> TransHeader."Transfer-from Code" THEN
          ERROR(Text500001,ItemLedgEntry.FIELDCAPTION("Location Code"),TransHeader.FIELDCAPTION("Transfer-from Code"));
        IF ItemLedgEntry."Item No." <> "Item No." THEN
          ERROR(Text500001,ItemLedgEntry.FIELDCAPTION("Item No."),FIELDCAPTION("Item No."));
        IF ItemLedgEntry."Party Type" <> TransHeader."Party Type" THEN
          ERROR(Text500001,ItemLedgEntry.FIELDCAPTION("Party Type"),TransHeader.FIELDCAPTION("Party Type"));
        IF ItemLedgEntry."Party No." <> TransHeader."Party No." THEN
          ERROR(Text500001,ItemLedgEntry.FIELDCAPTION("Party No."),TransHeader.FIELDCAPTION("Party No."));
        TransferLine2.VALIDATE("Appl.-to Item Entry",ItemLedgEntry."Entry No.");
        TransferLine2.VALIDATE("Applies-to Entry (Ship)",ItemLedgEntry."Entry No."); // PMT.00.14
      END;  // PMT.00.14 Added End
    #18..20
    */
    //end;


    //Unsupported feature: Code Modification on "UpdateGSTAmounts(PROCEDURE 1500025)".

    //procedure UpdateGSTAmounts();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetTransHeader;
    IF TransferHeader1."No."='' THEN
      TransferHeader1.COPY(TransHeader);
    IF Location.GET("Transfer-from Code") THEN;
    IF Location1.GET("Transfer-to Code") THEN;
    IF NOT Location."Bonded warehouse" THEN
    IF ("Quantity Shipped" <> 0) OR (TransferHeader1.Status <> TransferHeader1.Status::Open) THEN
      EXIT;
    GSTManagement.DeleteGSTBuffer(DocTransactionType::Transfer,0,"Document No.","Line No.");
    GSTManagement.DeleteGSTCalculationBuffer(DocTransactionType::Transfer,0,"Document No.","Line No.");
    #11..33
    "GST %" := "Total GST Amount" / GSTBaseAmount * 100;
    "GST Base Amount" := GSTBaseAmount;
    GSTManagement.DeleteGSTCalculationBuffer(DocTransactionType::Transfer,0,"Document No.","Line No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..6
    //>>IR003
    //IF ("Quantity Shipped" <> 0) OR (TransferHeader1.Status <> TransferHeader1.Status::Open) THEN
    IF ("Quantity Shipped" <> 0) THEN
    //<<IR003
    #8..36
    */
    //end;

    local procedure "---PMT---"()
    begin
    end;

    // local procedure GetTransHeaderParty()
    // begin
    //     IF "Document No." <> TransHeader."No." THEN
    //         TransHeader.GET("Document No.");
    // end;

    procedure CheckGSTDoc(TransferLine: Record "Transfer Line"): Boolean
    var
        TaxTransactionValue: Record "Tax Transaction Value";
    begin
        TaxTransactionValue.Reset();
        TaxTransactionValue.SetRange("Tax Record ID", TransferLine.RecordId);
        TaxTransactionValue.SetRange("Tax Type", 'GST');
        if not TaxTransactionValue.IsEmpty then
            exit(true);
    end;

    procedure CalculateGSTAmount(TransferLine: Record "Transfer Line"): Decimal
    var
        TaxTrnasactionValue: Record "Tax Transaction Value";
        TaxTrnasactionValue1: Record "Tax Transaction Value";
        j: Integer;
        GSTCompAmount: array[20] of Decimal;
        GSTComponentCode: array[20] of Integer;
        IsGSTApplicable: Boolean;
    begin
        if IsGSTApplicable then begin
            j := 1;
            TaxTrnasactionValue.Reset();
            TaxTrnasactionValue.SetRange("Tax Record ID", TransferLine.RecordId);
            TaxTrnasactionValue.SetRange("Value Type", TaxTrnasactionValue."Value Type"::COMPONENT);
            TaxTrnasactionValue.SetFilter(Percent, '<>%1', 0);
            if TaxTrnasactionValue.FindSet() then
                repeat
                    j := TaxTrnasactionValue."Value ID";
                    GSTComponentCode[j] := TaxTrnasactionValue."Value ID";
                    TaxTrnasactionValue1.Reset();
                    TaxTrnasactionValue1.SetRange("Tax Record ID", TransferLine.RecordId);
                    TaxTrnasactionValue1.SetRange("Tax Type", 'GST');
                    TaxTrnasactionValue1.SetRange("Value Type", TaxTrnasactionValue1."Value Type"::COMPONENT);
                    TaxTrnasactionValue1.SetRange("Value ID", GSTComponentCode[j]);
                    if TaxTrnasactionValue1.FindSet() then
                        repeat
                            GSTCompAmount[j] += TaxTrnasactionValue1.Amount;
                        until TaxTrnasactionValue1.Next() = 0;
                    j += 1;
                until TaxTrnasactionValue.Next() = 0;
        end;
    end;

    procedure PMTSelectItemEntry(CurrentFieldNo: Integer)
    var
        ItemLedgEntry: Record "Item Ledger Entry";
        TransferLine2: Record "Transfer Line";
    begin
        //>>PMT.00.14
        TransHeader.GET("Document No.");
        TransHeader.TESTFIELD("Party No.");
        TransHeader.TESTFIELD("Party Type");
        //<<PMT.00.14
        ItemLedgEntry.SETCURRENTKEY("Item No.", Positive);
        ItemLedgEntry.SETRANGE("Item No.", "Item No.");
        ItemLedgEntry.SETRANGE(Correction, FALSE);
        ItemLedgEntry.SETRANGE(Open, TRUE);
        ItemLedgEntry.SETRANGE("Party Type", TransHeader."Party Type"); // PMT.00.14
        ItemLedgEntry.SETRANGE("Party No.", TransHeader."Party No.");   // PMT.00.14
        IF "Transfer-from Code" <> '' THEN
            ItemLedgEntry.SETRANGE("Location Code", "Transfer-from Code");
        ItemLedgEntry.SETRANGE("Variant Code", "Variant Code");

        IF CurrentFieldNo = FIELDNO("Appl.-to Item Entry") THEN
            ItemLedgEntry.SETRANGE(Positive, TRUE)
        ELSE
            ItemLedgEntry.SETRANGE(Positive, FALSE);

        IF PAGE.RUNMODAL(PAGE::"Item Ledger Entries", ItemLedgEntry) = ACTION::LookupOK THEN BEGIN
            TransferLine2 := Rec;
            IF CurrentFieldNo = FIELDNO("Appl.-to Item Entry") THEN BEGIN  // PMT.00.14 Added BEGIN
                IF ItemLedgEntry."Location Code" <> TransHeader."Transfer-from Code" THEN
                    ERROR(Text500001, ItemLedgEntry.FIELDCAPTION("Location Code"), TransHeader.FIELDCAPTION("Transfer-from Code"));
                IF ItemLedgEntry."Item No." <> "Item No." THEN
                    ERROR(Text500001, ItemLedgEntry.FIELDCAPTION("Item No."), FIELDCAPTION("Item No."));
                IF ItemLedgEntry."Party Type" <> TransHeader."Party Type" THEN
                    ERROR(Text500001, ItemLedgEntry.FIELDCAPTION("Party Type"), TransHeader.FIELDCAPTION("Party Type"));
                IF ItemLedgEntry."Party No." <> TransHeader."Party No." THEN
                    ERROR(Text500001, ItemLedgEntry.FIELDCAPTION("Party No."), TransHeader.FIELDCAPTION("Party No."));
                // TransferLine2.VALIDATE("Appl.-to Item Entry", ItemLedgEntry."Entry No.");
                TransferLine2.VALIDATE("Appl.-to Item Entry", ItemLedgEntry."Entry No."); // PMT.00.14
            END;  // PMT.00.14 Added End
            CheckItemAvailable(CurrentFieldNo);
            Rec := TransferLine2;
        END;
    end;

    var
        TransHeader: Record "Transfer Header";
        Text500001: Label 'The entry selected should have same %1 as mentioned in %2.';
}

