tableextension 50407 "PurchRcptLineExt" extends "Purch. Rcpt. Line"//121
{
    // -PMT.00.12
    //    Added field Quality Checked for QC Process GRN
    fields
    {
        field(61001; "Quality Checked"; Boolean)
        {
            CalcFormula = Exist("Quality Check Header" WHERE("Quality Checked" = CONST(true), "GRN No." = FIELD("Document No."), "GRN Line No." = FIELD("Line No.")));
            Description = 'PMT.00.12';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    local procedure "---PMT---"()
    begin
    end;

    procedure ShowQualityLine()
    var
        QualityCheckHeader: Record "Quality Check Header";
        ItemLocal: Record Item;
    begin
        //>>PMT.00.12
        IF Type = Type::Item THEN BEGIN

            ItemLocal.GET("No.");
            IF NOT ItemLocal."Enable QC" THEN
                ERROR(Text002, "No.");

            FilterQualityCheckLines(QualityCheckHeader);
            PAGE.RUN(0, QualityCheckHeader);
        END;
        //<<PMT.00.12
    end;

    procedure FilterQualityCheckLines(var QualityCheckHeader: Record "Quality Check Header")
    begin
        //>>PMT.00.12
        QualityCheckHeader.RESET;
        QualityCheckHeader.SETRANGE("GRN No.", "Document No.");
        QualityCheckHeader.SETRANGE("GRN Line No.", "Line No.");
        IF NOT QualityCheckHeader.FINDFIRST THEN BEGIN
            CreateQualityCheckLine(QualityCheckHeader);
            QualityCheckHeader.RESET;
            QualityCheckHeader.SETRANGE("GRN No.", "Document No.");
            QualityCheckHeader.SETRANGE("GRN Line No.", "Line No.");
        END;
        //<<PMT.00.12
    end;

    procedure CreateQualityCheckLine(var QualityCheckHeader: Record "Quality Check Header")
    var
        CustomSetup: Record "Custom Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
        PurchRcptHeaderLocal: Record "Purch. Rcpt. Header";
        QualityComments: Record "Quality Comments";
    begin
        //>>PMT.00.12
        CustomSetup.GET(USERID);
        PurchRcptHeaderLocal.GET("Document No.");
        QualityCheckHeader.RESET;
        QualityCheckHeader.INIT;
        QualityCheckHeader."QC No." := NoSeriesManagement.GetNextNo(CustomSetup."Quality Check No. Series", TODAY, TRUE);
        QualityCheckHeader."Vendor No." := "Buy-from Vendor No.";
        QualityCheckHeader."Vendor Name" := PurchRcptHeaderLocal."Buy-from Vendor Name";
        QualityCheckHeader."GRN No." := "Document No.";
        QualityCheckHeader."GRN Line No." := "Line No.";
        QualityCheckHeader."Item No." := "No.";
        QualityCheckHeader."Item Description" := Description;
        QualityCheckHeader."Item Ledger Entry No" := "Item Rcpt. Entry No.";
        QualityCheckHeader."User ID" := USERID;
        QualityCheckHeader.INSERT;
        QualityComments.INIT;
        QualityComments."QC No." := QualityCheckHeader."QC No.";
        QualityComments.INSERT;
        //>>PMT.00.12
    end;

    var
        Text002: Label 'Quality Check is not valid for Item No. %1.';
}

