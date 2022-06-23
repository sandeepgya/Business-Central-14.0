tableextension 50416 "ItemExt" extends Item//27
{
    // //PMT: to allow change of standard costing method if no inventory exists for item
    fields
    {
        field(61001; "Qty. On Transfer Order"; Decimal)
        {
            CalcFormula = Sum("Transfer Line"."Outstanding Quantity" WHERE("Transfer-from Code" = FIELD("Location Filter"), "Item No." = FIELD("No."), "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"), "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"), "Variant Code" = FIELD("Variant Filter")));
            DecimalPlaces = 0 : 5;
            Description = 'PMT.REP.01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61002; "Enable QC"; Boolean)
        {
            Description = 'PMT.00.11';
        }
        field(61003; "Service  Prod. Posting Group"; Code[10])
        {
            Caption = 'Service  Prod. Posting Group';
            Description = 'PMT.00.21';
            TableRelation = "Gen. Product Posting Group";

            trigger OnValidate()
            begin
                IF xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" THEN BEGIN
                    IF CurrFieldNo <> 0 THEN
                        IF ProdOrderExistPMT THEN
                            IF NOT CONFIRM(
                                 Text50024 +
                                 Text50022, FALSE,
                                 FIELDCAPTION("Gen. Prod. Posting Group"))
                            THEN BEGIN
                                "Gen. Prod. Posting Group" := xRec."Gen. Prod. Posting Group";
                                EXIT;
                            END;

                    IF GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp, "Gen. Prod. Posting Group") THEN
                        VALIDATE("VAT Prod. Posting Group", GenProdPostingGrp."Def. VAT Prod. Posting Group");
                END;

                VALIDATE("Price/Profit Calculation");
            end;
        }
        field(61004; "M/L"; Text[30])
        {
            Description = 'PMT.00.11';
        }
    }


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "No." = '' THEN BEGIN
      GetInvtSetup;
      InvtSetup.TESTFIELD("Item Nos.");
    #4..6
    DimMgt.UpdateDefaultDim(
      DATABASE::Item,"No.",
      "Global Dimension 1 Code","Global Dimension 2 Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..9
    //>>OA
    "Reordering Policy" := "Reordering Policy"::"Maximum Qty.";//OA
    "Include Inventory" := TRUE;//OA
    //<<OA
    */
    //end;


    //Unsupported feature: Code Modification on "TestNoEntriesExist(PROCEDURE 1006)".

    //procedure TestNoEntriesExist();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "No." = '' THEN
      EXIT;

    ItemLedgEntry.SETCURRENTKEY("Item No.");
    ItemLedgEntry.SETRANGE("Item No.","No.");
    IF NOT ItemLedgEntry.ISEMPTY THEN
      ERROR(
        Text007,
    #9..19
        Text008,
        CurrentFieldName,
        PurchaseLine."Document Type");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5
    ItemLedgEntry.SETRANGE(Open,TRUE);//PMT
    #6..22
    */
    //end;
    trigger OnInsert()
    var
        myInt: Integer;
    begin
        //>>OA
        "Reordering Policy" := "Reordering Policy"::"Maximum Qty.";//OA
        "Include Inventory" := TRUE;//OA
        //<<OA
    end;

    local procedure ProdOrderExistPMT(): Boolean
    begin
        ProdOrderLine.SetCurrentKey(Status, "Item No.");
        ProdOrderLine.SetFilter(Status, '..%1', ProdOrderLine.Status::Released);
        ProdOrderLine.SetRange("Item No.", "No.");
        if not ProdOrderLine.IsEmpty() then
            exit(true);

        exit(false);
    end;

    var
        ProdOrderLine: Record "Prod. Order Line";
        Text50024: TextConst ENU = 'If you change %1 it may affect existing production orders.\';
        Text50022: TextConst ENU = 'Do you want to change %1?';
        GenProdPostingGrp: Record "Gen. Product Posting Group";
}

