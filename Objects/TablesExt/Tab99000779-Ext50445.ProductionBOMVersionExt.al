tableextension 50445 "ProductionBOMVersionExt" extends "Production BOM Version"//99000779
{
    fields
    {
        field(50052; "1st Level Approved"; Boolean)
        {
            Caption = '1st Level Approved';

            trigger OnValidate()
            begin
                //"1stApprovalBOMPermission"; //>>PMT.00.15
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
                    ERROR(Text003, "Production BOM No.");
            END ELSE
                ERROR(Text003, "Production BOM No.");
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
                    ERROR(Text004, "Production BOM No.");
            END ELSE
                ERROR(Text004, "Production BOM No.");
        //<<PMT.00.15
    end;

    var
        statusrec: Text;
        Text003: Label 'You do not have permission for certify the BOM %1';
        Text004: Label 'You do not have permission for 1st level approval of the BOM %1';
}

