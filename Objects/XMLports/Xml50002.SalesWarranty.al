xmlport 50002 "Sales-Warranty"
{
    FieldSeparator = ',';
    Format = VariableText;
    FormatEvaluate = Legacy;

    schema
    {
        textelement(Root)
        {
            tableelement("Sales Invoice Warranty Details"; "Sales Invoice Warranty Details")
            {
                AutoSave = false;
                XmlName = 'SalesWarranty';
                textelement(DocumentNo)
                {
                    MinOccurs = Zero;
                }
                textelement(ItemCode)
                {
                    MinOccurs = Zero;
                }
                textelement(Description)
                {
                    MinOccurs = Zero;
                }
                textelement(Qty)
                {
                    MinOccurs = Zero;
                }
                textelement(WarrantyStartDate)
                {
                    MinOccurs = Zero;
                }
                textelement(WarrantyEndDate)
                {
                    MinOccurs = Zero;
                }
                textelement(ReplacedAgainstInvoiceNo)
                {
                    MinOccurs = Zero;
                }
                textelement(FieldPerson)
                {
                    MaxOccurs = Once;
                    MinOccurs = Zero;
                }
                textelement(SerailNo)
                {
                }

                trigger OnAfterInsertRecord()
                begin

                    NoOfCount += 1;
                    if NoOfCount > 1 then begin
                        with SalesInvoiceWarrantyDetails do begin
                            SalesInvoiceWarrantyDetails.Init;
                            SalesInvoiceWarrantyDetails_EntryNo := SalesInvoiceWarrantyDetails.GetLastEntryNo;
                            SalesInvoiceWarrantyDetails_EntryNo += 1;
                            SalesInvoiceWarrantyDetails.EntryNo := SalesInvoiceWarrantyDetails_EntryNo;
                            "Document No." := DocumentNo;
                            Validate("Document No.", DocumentNo);
                            // EVALUATE("Line No." , LineNo);
                            //
                            /*
                            IF CustomSetup.GET(USERID) THEN
                             IF CustomSetup."Date Format"= CustomSetup."Date Format"::DDMMYY THEN BEGIN
                             IF WarrantyStartDate<>'' THEN BEGIN
                                D := DATE2DMY(SD,1);
                                M := DATE2DMY(SD,2);
                                Y:=  DATE2DMY(SD,3);
                              "Warranty Start Date" :=DMY2DATE(D,M,Y);
                               END;
                               END ELSE IF CustomSetup."Date Format"= CustomSetup."Date Format"::MMDDYY THEN BEGIN
                                 IF WarrantyStartDate<>'' THEN BEGIN
                                  EVALUATE(SD,WarrantyStartDate);
                                  D:= DATE2DMY(SD,2);
                                  M := DATE2DMY(SD,1);
                                  Y := DATE2DMY(SD,3);
                              "Warranty Start Date":= DMY2DATE(D,M,Y);
                               END;
                               END;
                               */
                            //
                            "No." := ItemCode;
                            Validate("No.", ItemCode);
                            Description := Description;
                            //IF UnitPrice<>'' THEN
                            // EVALUATE("Unit Price",UnitPrice);
                            //IF Amt<>'' THEN
                            // EVALUATE(Amount,Amt);
                            if WarrantyStartDate <> '' then
                                Evaluate("Warranty Start Date", WarrantyStartDate);
                            if WarrantyEndDate <> '' then
                                Evaluate("Warranty End Date", WarrantyEndDate);
                            //IF WarrantyPeriod<>'' THEN
                            //EVALUATE("Warranty Period",WarrantyPeriod);
                            "Field Person Name" := FieldPerson;
                            "Warranty Period" := Format(("Warranty End Date") - ("Warranty Start Date")) + 'DAYS';
                            "Uploaded By" := UserId;
                            //INSERT(TRUE); //  Priiti
                            SalesInvoiceHeader.Reset;
                            SalesInvoiceHeader.SetRange("No.", DocumentNo);
                            if SalesInvoiceHeader.FindFirst then
                                Validate("Service/Installation Date", SalesInvoiceHeader."Service/Installation Date");
                            SalesInvLine.Reset;
                            SalesInvLine.SetRange("Document No.", DocumentNo);
                            SalesInvLine.SetRange("No.", ItemCode);
                            if SalesInvLine.FindSet then begin
                                repeat
                                    TransferFields(SalesInvLine);
                                until SalesInvLine.Next = 0;
                            end else
                                Error(Text0001, DocumentNo, ItemCode);
                            "Document No." := DocumentNo;
                            Validate("Document No.");
                            "No." := ItemCode;
                            Validate("No.");
                            if Qty <> '' then
                                Evaluate("Warranty Qty", Qty);
                            Validate("Warranty Qty");
                            Amount := "Unit Price" * Quantity;
                            if "Warranty End Date" < "Warranty Start Date" then
                                Error(Text0002);
                            if "Warranty End Date" > Today then
                                "Warranty Status" := 'Active'
                            else
                                "Warranty Status" := 'Expired';
                            "Replaced Against Invoice No." := ReplacedAgainstInvoiceNo;
                            Validate("Replaced Against Invoice No.");
                            "Uploaded Date Time" := CurrentDateTime;
                            "Bed Serail No." := SerailNo;
                            Insert(true);
                        end;
                    end;

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
        Message(Text003);
    end;

    var
        SalesInvoiceWarrantyDetails: Record "Sales Invoice Warranty Details";
        SalesInvoiceWarrantyDetails_EntryNo: Integer;
        SalesInvHeader: Record "Sales Invoice Header";
        SalesInvLine: Record "Sales Invoice Line";
        Text0001: Label 'Invoice No.%1 & Item No. %2 combination  does not exist.';
        Text0002: Label 'Warranty End Date should not less than  Warranty Start Date';
        NoOfCount: Integer;
        NoOfDays: Integer;
        SalesInvoiceHeader: Record "Sales Invoice Header";
        CustomSetup: Record "Custom Setup";
        D: Integer;
        M: Integer;
        Y: Integer;
        SD: Date;
        ED: Date;
        Text003: Label 'Number of Lines Uploaded.';

    local procedure UpdateDetailsSalesInvLine()
    var
        SalesInvHeader: Record "Sales Invoice Header";
        SalesInvLine: Record "Sales Invoice Line";
    begin
    end;
}

