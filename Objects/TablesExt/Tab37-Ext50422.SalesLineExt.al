tableextension 50422 "SalesLineExt" extends "Sales Line"//37
{
    fields
    {

        //Unsupported feature: Code Modification on ""No."(Field 6).OnValidate".

        //trigger "(Field 6)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;
        CheckItemAvailable(FIELDNO("No."));
        #4..102
              GetUnitCost;
              "Allow Invoice Disc." := Item."Allow Invoice Disc.";
              "Units per Parcel" := Item."Units per Parcel";
              "Gen. Prod. Posting Group" := Item."Gen. Prod. Posting Group";
              "VAT Prod. Posting Group" := Item."VAT Prod. Posting Group";
              "Tax Group Code" := Item."Tax Group Code";
              "Item Category Code" := Item."Item Category Code";
        #110..217
        GetStandardDeduction(SalesHeader);
        "Assessable Value" := Item."Assessable Value" * "Qty. per Unit of Measure" ;
        "Invoice Type" := SalesHeader."Invoice Type";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..105
               //>>PMT.00.21
               IF SalesHeader."Sales Invoice Type"=SalesHeader."Sales Invoice Type"::"Sales Invoice" THEN BEGIN
                "Gen. Prod. Posting Group" := Item."Gen. Prod. Posting Group"
                END ELSE IF SalesHeader."Sales Invoice Type"=SalesHeader."Sales Invoice Type"::"Service Invoice" THEN BEGIN // PMT.230218 >>
                 Item.TESTFIELD("Service  Prod. Posting Group");
                 "Gen. Prod. Posting Group" := Item."Service  Prod. Posting Group";
                END; //<<PMT.00.21
        #107..220
        */
        //end;
        field(60000; "Secondary Customer No."; Code[20])
        {
            Caption = 'Secondary Customer No.';
            Description = 'PMT';
            Editable = false;
            TableRelation = "Secondary Customer";
        }
        field(61001; "Original Qty"; Decimal)
        {
            Description = 'PMT.00.10';
        }
    }
}

