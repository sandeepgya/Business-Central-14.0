tableextension 50444 "ProductionBOMLineExt" extends "Production BOM Line"//99000772
{
    // PMT.00.25 - Added new field Tolerance%
    fields
    {


        //Unsupported feature: Code Modification on ""No."(Field 11).OnValidate".

        //trigger "(Field 11)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Type);

        TestStatus;
        #4..20
              "Unit of Measure Code" := ProdBOMHeader."Unit of Measure Code";
            END;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..23
        CALCFIELDS("Current Standard Cost"); // PMT.00.15
        */
        //end;
        field(61001; "Tolerance%"; Decimal)
        {
            Description = 'PMT.00.25';
        }
        field(61002; "Current Standard Cost"; Decimal)
        {
            CalcFormula = Lookup(Item."Standard Cost" WHERE("No." = FIELD("No.")));
            Caption = 'Current Standard Cost';
            Description = 'PMT.00.15';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    trigger OnInsert()
    var
        myInt: Integer;
    begin
        "Tolerance%" := 100; // PMT
    end;
    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TestStatus;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TestStatus;
    "Tolerance%" := 100; // PMT
    */
    //end;


    //Unsupported feature: Code Modification on "TestStatus(PROCEDURE 1)".

    //procedure TestStatus();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF "Version Code" = '' THEN BEGIN
      ProdBOMHeader.GET("Production BOM No.");
      IF ProdBOMHeader.Status = ProdBOMHeader.Status::Certified THEN
    #4..6
      IF ProdBOMVersion.Status = ProdBOMVersion.Status::Certified THEN
        ProdBOMVersion.FIELDERROR(Status);
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..9

    //>>PMT.00.15
    IF "Version Code" = '' THEN BEGIN
      ProdBOMHeader.GET("Production BOM No.");
      IF ProdBOMHeader."1st Level Approved" = TRUE THEN
        ProdBOMHeader.FIELDERROR("1st Level Approved");
    END ELSE BEGIN
      ProdBOMVersion.GET("Production BOM No.","Version Code");
      IF ProdBOMHeader."1st Level Approved" = TRUE THEN
        ProdBOMVersion.FIELDERROR("1st Level Approved");
    END;
    //<<PMT.00.15
    */
    //end;
}

