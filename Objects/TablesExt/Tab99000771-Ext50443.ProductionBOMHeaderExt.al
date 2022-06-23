tableextension 50443 "ProductionBOMHeaderExt" extends "Production BOM Header"//99000771
{
    // PMT.00.15
    //   Added function 'CertifiedBOMPermission'
    fields
    {


        //Unsupported feature: Code Modification on "Status(Field 45).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF (Status <> xRec.Status) AND (Status = Status::Certified) THEN BEGIN
          MfgSetup.LOCKTABLE;
          MfgSetup.GET;
        #4..18
          END ELSE
            Status := xRec.Status;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        CertifiedBOMPermission; //>>PMT.00.15
        #1..21
        //>>PMT.00.15
        IF Status <> Status::Certified THEN
          "1st Level Approved" := FALSE;
        //<<PMT.00.15
        */
        //end;
        field(50052; "1st Level Approved"; Boolean)
        {
            Caption = '1st Level Approved';

            trigger OnValidate()
            begin
                "1stApprovalBOMPermission"; //>>PMT.00.15
            end;
        }
    }

    local procedure "--PMT---"()
    begin
    end;

    local procedure CertifiedBOMPermission()
    var
        CustomSetup: Record "Custom Setup";
    begin
        //>>PMT.00.15
        TESTFIELD("1st Level Approved", TRUE);
        CLEAR(statusrec);
        statusrec := FORMAT(Status::Certified);
        IF statusrec = FORMAT(Status) THEN
            IF CustomSetup.GET(USERID) THEN BEGIN
                IF NOT CustomSetup."Certified BOM" THEN
                    ERROR(Text003, "No.");
            END ELSE
                ERROR(Text003, "No.");
        //<<PMT.00.15
    end;

    local procedure "1stApprovalBOMPermission"()
    var
        CustomSetup: Record "Custom Setup";
    begin
        //>>PMT.00.15
        IF xRec."1st Level Approved" <> "1st Level Approved" THEN
            IF CustomSetup.GET(USERID) THEN BEGIN
                IF NOT CustomSetup."BOM 1st Level Approval" THEN
                    ERROR(Text004, "No.");
            END ELSE
                ERROR(Text004, "No.");
        //<<PMT.00.15
    end;

    var
        statusrec: Text;
        Text003: Label 'You do not have permission for certify the BOM %1';
        Text004: Label 'You do not have permission for 1st level approval of the BOM %1';
}

