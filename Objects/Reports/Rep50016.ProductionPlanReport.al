report 50016 "Production Plan Report"
{
    Caption = 'Production Plan Report';
    ProcessingOnly = true;

    dataset
    {
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

            trigger OnAfterGetRecord()
            var
                Window: Dialog;
                RecNo: Integer;
                TotalRecNo: Integer;
                RowNo: Integer;
                ColumnNo: Integer;
                "--OA--": Integer;
                TotalForecastQty: Decimal;
                TotalOutputQty: Decimal;
            begin
                IF DoUpdateExistingWorksheet THEN BEGIN
                    // IF ServerFileName = '' THEN
                    //     ServerFileName := FileMgt.UploadFile(Text002, ExcelFileExtensionTok);
                    // IF ServerFileName = '' THEN
                    //     EXIT;
                    // SheetName := TempExcelBuffer.SelectSheetsName(ServerFileName);
                    // IF SheetName = '' THEN
                    //     EXIT; //OA.AS Commented
                END;

                Window.OPEN(
                  Text000 +
                  '@1@@@@@@@@@@@@@@@@@@@@@\');

                TempExcelBuffer.DELETEALL;
                CLEAR(TempExcelBuffer);

                //ItemBudgetName.GET(AnalysisArea,BudgetName);
                GLSetup.GET;

                IF DateFilter = '' THEN
                    ERROR(STRSUBSTNO(Text010, Text003));

                IF FindLine('-') THEN
                    REPEAT
                        TotalRecNo := TotalRecNo + 1;
                    UNTIL NextLine(1) = 0;

                RowNo := 1;
                EnterCell(RowNo, 1, Text001, FALSE, FALSE, TRUE, '', TempExcelBuffer."Cell Type"::Text);
                EnterCell(RowNo, 2, '', FALSE, FALSE, TRUE, '', TempExcelBuffer."Cell Type"::Text);

                RowNo := RowNo + 1;
                EnterFilterInCell(RowNo, BudgetName, 'Report');

                IF GlobalDim1Filter <> '' THEN BEGIN
                    RowNo := RowNo + 1;
                    Dim.GET(GLSetup."Global Dimension 1 Code");
                    EnterFilterInCell(RowNo, GlobalDim1Filter, Dim."Filter Caption");
                END;

                IF GlobalDim2Filter <> '' THEN BEGIN
                    RowNo := RowNo + 1;
                    Dim.GET(GLSetup."Global Dimension 2 Code");
                    EnterFilterInCell(RowNo, GlobalDim2Filter, Dim."Filter Caption");
                END;

                IF BudgetDim1Filter <> '' THEN BEGIN
                    RowNo := RowNo + 1;
                    Dim.GET(ItemBudgetName."Budget Dimension 1 Code");
                    EnterFilterInCell(RowNo, BudgetDim1Filter, Dim."Filter Caption");
                END;

                IF BudgetDim2Filter <> '' THEN BEGIN
                    RowNo := RowNo + 1;
                    Dim.GET(ItemBudgetName."Budget Dimension 2 Code");
                    EnterFilterInCell(RowNo, BudgetDim2Filter, Dim."Filter Caption");
                END;

                IF BudgetDim3Filter <> '' THEN BEGIN
                    RowNo := RowNo + 1;
                    Dim.GET(ItemBudgetName."Budget Dimension 3 Code");
                    EnterFilterInCell(RowNo, BudgetDim3Filter, Dim."Filter Caption");
                END;

                IF ItemFilter <> '' THEN BEGIN
                    RowNo := RowNo + 1;
                    EnterFilterInCell(RowNo, ItemFilter, Text004);
                END;

                IF DateFilter <> '' THEN BEGIN
                    RowNo := RowNo + 1;
                    EnterFilterInCell(RowNo, DateFilter, Text003);
                END;

                IF SourceNoFilter <> '' THEN BEGIN
                    RowNo := RowNo + 1;
                    IF SourceTypeFilter = SourceTypeFilter::Customer THEN
                        EnterFilterInCell(RowNo, SourceNoFilter, Text005)
                    ELSE
                        EnterFilterInCell(RowNo, SourceNoFilter, Text006);
                END;

                //RowNo := RowNo + 2;
                //EnterFilterInCell(RowNo,LineDimCode,Text008);

                //RowNo := RowNo + 1;
                //EnterFilterInCell(RowNo,ColumnDimCode,Text009);
                /*
                RowNo := RowNo + 1;
                CASE ValueType OF
                  ValueType::"Sales Amount":
                    ShowValueAsText := Text012;
                  ValueType::"Cost Amount":
                    IF AnalysisArea = AnalysisArea::Sales THEN
                      ShowValueAsText := Text014
                    ELSE
                      ShowValueAsText := Text013;
                  ValueType::Quantity:
                    ShowValueAsText := Text015;
                END;
                EnterFilterInCell(RowNo,ShowValueAsText,Text011);
                */

                RowNo := RowNo + 2;
                IF FindLine('-') THEN BEGIN
                    IF FindColumn('-') THEN BEGIN
                        ColumnNo := 1;
                        EnterCell(RowNo, ColumnNo, Text007, FALSE, FALSE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
                        ColumnNo := ColumnNo + 1; //RG
                        REPEAT
                            ColumnNo := ColumnNo + 1;
                            EnterCell(RowNo, ColumnNo, ColumnDimCodeBuffer.Code, FALSE, FALSE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
                        UNTIL NextColumn(1) = 0;
                    END;

                    REPEAT
                        RecNo := RecNo + 1;
                        Window.UPDATE(1, ROUND(RecNo / TotalRecNo * 10000, 1));
                        ItemRepeatCount := 0;
                        REPEAT
                            RowNo := RowNo + 1;
                            ColumnNo := 1;
                            ItemRepeatCount += 1;
                            EnterCell(
                              RowNo, ColumnNo, LineDimCodeBuffer.Code, LineDimCodeBuffer."Show in Bold", FALSE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
                            ColumnNo := ColumnNo + 1; //RG

                            CASE ItemRepeatCount OF
                                1:
                                    EnterCell(
                                      RowNo, ColumnNo, H1, FALSE, FALSE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
                                2:
                                    EnterCell(
                                      RowNo, ColumnNo, H2, FALSE, FALSE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
                                3:
                                    EnterCell(
                                      RowNo, ColumnNo, H3, FALSE, FALSE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
                                4:
                                    EnterCell(
                                      RowNo, ColumnNo, H4, FALSE, FALSE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
                                5:
                                    EnterCell(
                                      RowNo, ColumnNo, H5, FALSE, FALSE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
                            END;

                            IF FindColumn('-') THEN
                                REPEAT
                                    ColumnNo := ColumnNo + 1;
                                    // Item No = LineDimCodeBuffer ; Date = ColumnDimCodeBuffer."Period Start" and ColumnDimCodeBuffer."Period End";
                                    //use itemrepeatcount case to calculate values.
                                    ColumnValue := 0;
                                    TotalOutputQty := 0;
                                    TotalForecastQty := 0;
                                    CASE ItemRepeatCount OF
                                        1:
                                            BEGIN
                                                ColumnValue := CalcForecastQuantity;
                                            END;

                                        2:
                                            BEGIN
                                                ColumnValue := CalcOutputQuantity;
                                            END;

                                        3:
                                            BEGIN
                                                ColumnValue := CalcSalesOrderQty(LineDimCodeBuffer.Code, ColumnDimCodeBuffer."Period Start", ColumnDimCodeBuffer."Period End");
                                            END;

                                        4:
                                            BEGIN
                                                ColumnValue := CalcSalesShipmentQty(LineDimCodeBuffer.Code, ColumnDimCodeBuffer."Period Start", ColumnDimCodeBuffer."Period End")
                                                             - CalcSalesReturnQty(LineDimCodeBuffer.Code, ColumnDimCodeBuffer."Period Start", ColumnDimCodeBuffer."Period End");
                                            END;

                                        5:
                                            BEGIN
                                                ColumnValue := CalcOutputQuantity -
                                                               (CalcSalesShipmentQty(LineDimCodeBuffer.Code, ColumnDimCodeBuffer."Period Start", ColumnDimCodeBuffer."Period End") -
                                                               CalcSalesReturnQty(LineDimCodeBuffer.Code, ColumnDimCodeBuffer."Period Start", ColumnDimCodeBuffer."Period End"));

                                            END;

                                    END;
                                    //ColumnValue :=
                                    /*
                                    ItemBudgetManagement.CalcAmount(
                                      ValueType,TRUE,
                                      ItemStatisticsBuffer,ItemBudgetName,
                                      ItemFilter,SourceTypeFilter,SourceNoFilter,DateFilter,
                                      GlobalDim1Filter,GlobalDim2Filter,BudgetDim1Filter,BudgetDim2Filter,BudgetDim3Filter,
                                      LineDimOption,LineDimCodeBuffer,
                                      ColumnDimOption,ColumnDimCodeBuffer);
                                    */
                                    EnterCell(
                                      RowNo,
                                      ColumnNo,
                                      MatrixMgt.FormatValue(ColumnValue, RoundingFactor, FALSE),
                                      LineDimCodeBuffer."Show in Bold",
                                      FALSE,
                                      FALSE,
                                      '',
                                      TempExcelBuffer."Cell Type"::Number)
                                UNTIL NextColumn(1) = 0;
                        UNTIL ItemRepeatCount = 5;
                    UNTIL NextLine(1) = 0;
                END;
                Window.CLOSE;

                // IF DoUpdateExistingWorksheet THEN BEGIN
                //     TempExcelBuffer.UpdateBook(ServerFileName, SheetName);
                //     TempExcelBuffer.WriteSheet('', COMPANYNAME, USERID);
                //     TempExcelBuffer.CloseBook;
                //     IF NOT TestMode THEN
                //         TempExcelBuffer.DownloadAndOpenExcel;
                // END ELSE BEGIN
                //     TempExcelBuffer.CreateBook(ServerFileName, 'Production Plan');
                //     TempExcelBuffer.WriteSheet(
                //       PADSTR(STRSUBSTNO('%1 %2', ItemBudgetName.Name, ItemBudgetName.Description), 30),
                //       COMPANYNAME, USERID);
                //     TempExcelBuffer.CloseBook;
                //     IF NOT TestMode THEN
                //         TempExcelBuffer.OpenExcel;
                // END;
                // IF NOT TestMode THEN
                //     TempExcelBuffer.GiveUserControl; //OA.AS Commented

            end;

            trigger OnPreDataItem()
            begin
                SourceTypeFilter := 1;
                InternalDateFilter := DateFilter;
                PeriodInitialized := FALSE;
                PeriodType := 0;
                LineDimOption := 0;
                ColumnDimOption := 3;
                LineDimCode := 'Item';
                ColumnDimCode := 'Period';
                RoundingFactor := 0;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(DateFilter; DateFilter)
                {
                    Caption = 'Date Filter';
                    ApplicationArea = All;
                }
                field(ItemFilter; ItemFilter)
                {
                    Caption = 'Item Filter';
                    TableRelation = Item;
                    ApplicationArea = All;
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        Text000: Label 'Analyzing Data...\\';
        Text001: Label 'Filters';
        Text002: Label 'Update Workbook';
        ItemBudgetName: Record "Item Budget Name";
        Dim: Record Dimension;
        LineDimCodeBuffer: Record "Dimension Code Buffer";
        ColumnDimCodeBuffer: Record "Dimension Code Buffer";
        ItemStatisticsBuffer: Record "Item Statistics Buffer";
        TempExcelBuffer: Record "Excel Buffer" temporary;
        GLSetup: Record "General Ledger Setup";
        ItemBudgetManagement: Codeunit "Item Budget Management";
        MatrixMgt: Codeunit "Matrix Management";
        FileMgt: Codeunit "File Management";
        LineDimCode: Text[30];
        ColumnDimCode: Text[30];
        DateFilter: Text[30];
        InternalDateFilter: Text[30];
        ShowValueAsText: Text[30];
        ServerFileName: Text;
        SheetName: Text[250];
        BudgetName: Code[10];
        GlobalDim1Filter: Code[250];
        GlobalDim2Filter: Code[250];
        BudgetDim1Filter: Code[250];
        BudgetDim2Filter: Code[250];
        BudgetDim3Filter: Code[250];
        SourceNoFilter: Code[250];
        ItemFilter: Code[250];
        ColumnValue: Decimal;
        AnalysisArea: Option Sales,Purchase,Inventory;
        ValueType: Option "Sales Amount","Cost Amount",Quantity;
        Text003: Label 'Date Filter';
        Text004: Label 'Item Filter';
        Text005: Label 'Customer Filter';
        Text006: Label 'Vendor Filter';
        SourceTypeFilter: Option " ",Customer,Vendor,Item;
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        LineDimOption: Option Item,Customer,Vendor,Period,Location,"Global Dimension 1","Global Dimension 2","Budget Dimension 1","Budget Dimension 2","Budget Dimension 3","Budget Dimension 4";
        ColumnDimOption: Option Item,Customer,Vendor,Period,Location,"Global Dimension 1","Global Dimension 2","Budget Dimension 1","Budget Dimension 2","Budget Dimension 3","Budget Dimension 4";
        RoundingFactor: Option "None","1","1000","1000000";
        PeriodInitialized: Boolean;
        Text007: Label 'Item No.';
        Text008: Label 'Show as Lines';
        Text009: Label 'Show as Columns';
        Text010: Label '%1 must not be blank.';
        Text011: Label 'Show Value as';
        Text012: Label 'Sales Amount';
        Text013: Label 'Cost Amount';
        Text014: Label 'COGS Amount';
        Text015: Label 'Quantity';
        DoUpdateExistingWorksheet: Boolean;
        ExcelFileExtensionTok: Label '.xlsx', Locked = true;
        TestMode: Boolean;
        "--OA--": Integer;
        ItemRepeatCount: Integer;
        PrevItemCode: Code[50];
        H1: Label 'Production plan';
        H2: Label 'Actual';
        H3: Label 'Sales order';
        H4: Label 'Despatch';
        H5: Label 'Net stock';
        ProductionForecastEntry: Record "Production Forecast Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";

    [Scope('Cloud')]
    procedure SetOptions(NewAnalysisArea: Integer; NewBudgName: Code[10]; NewValueType: Integer; NewGlobalDim1Filter: Code[250]; NewGlobalDim2Filter: Code[250]; NewBudgDim1Filter: Code[250]; NewBudgDim2Filter: Code[250]; NewBudgDim3Filter: Code[250]; NewDateFilter: Text[30]; NewSourceTypeFilter: Integer; NewSourceNoFilter: Code[250]; NewItemFilter: Code[250]; NewInternalDateFilter: Text[30]; NewPeriodInitialized: Boolean; NewPeriodType: Integer; NewLineDimOption: Integer; NewColumnDimOption: Integer; NewLineDimCode: Text[30]; NewColumnDimCode: Text[30]; NewRoundingFactor: Option "None","1","1000","1000000")
    begin
        AnalysisArea := NewAnalysisArea;
        BudgetName := NewBudgName;
        ValueType := NewValueType;
        GlobalDim1Filter := NewGlobalDim1Filter;
        GlobalDim2Filter := NewGlobalDim2Filter;
        BudgetDim1Filter := NewBudgDim1Filter;
        BudgetDim2Filter := NewBudgDim2Filter;
        BudgetDim3Filter := NewBudgDim3Filter;
        DateFilter := NewDateFilter;
        ItemFilter := NewItemFilter;
        SourceTypeFilter := NewSourceTypeFilter;
        SourceNoFilter := NewSourceNoFilter;
        InternalDateFilter := NewInternalDateFilter;
        PeriodInitialized := NewPeriodInitialized;
        PeriodType := NewPeriodType;
        LineDimOption := NewLineDimOption;
        ColumnDimOption := NewColumnDimOption;
        LineDimCode := NewLineDimCode;
        ColumnDimCode := NewColumnDimCode;
        RoundingFactor := NewRoundingFactor;
    end;

    local procedure EnterFilterInCell(RowNo: Integer; "Filter": Text[250]; FieldName: Text[100])
    begin
        EnterCell(RowNo, 1, FieldName, FALSE, FALSE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
        EnterCell(RowNo, 2, Filter, FALSE, FALSE, FALSE, '', TempExcelBuffer."Cell Type"::Text);
    end;

    local procedure EnterCell(RowNo: Integer; ColumnNo: Integer; CellValue: Text[250]; Bold: Boolean; Italic: Boolean; UnderLine: Boolean; NumberFormat: Text[30]; CellType: Option)
    begin
        TempExcelBuffer.INIT;
        TempExcelBuffer.VALIDATE("Row No.", RowNo);
        TempExcelBuffer.VALIDATE("Column No.", ColumnNo);
        TempExcelBuffer."Cell Value as Text" := CellValue;
        TempExcelBuffer.Formula := '';
        TempExcelBuffer.Bold := Bold;
        TempExcelBuffer.Italic := Italic;
        TempExcelBuffer.Underline := UnderLine;
        TempExcelBuffer.NumberFormat := NumberFormat;
        TempExcelBuffer."Cell Type" := CellType;
        TempExcelBuffer.INSERT;
    end;

    local procedure FindLine(Which: Text[1024]): Boolean
    begin
        EXIT(
          ItemBudgetManagement.FindRec(
            ItemBudgetName, LineDimOption, LineDimCodeBuffer, Which,
            ItemFilter, SourceNoFilter, PeriodType, DateFilter, PeriodInitialized, InternalDateFilter,
            GlobalDim1Filter, GlobalDim2Filter, BudgetDim1Filter, BudgetDim2Filter, BudgetDim3Filter));
    end;

    local procedure NextLine(Steps: Integer): Integer
    begin
        EXIT(
          ItemBudgetManagement.NextRecord(
            ItemBudgetName, LineDimOption, LineDimCodeBuffer, Steps,
            ItemFilter, SourceNoFilter, PeriodType, DateFilter,
            GlobalDim1Filter, GlobalDim2Filter, BudgetDim1Filter, BudgetDim2Filter, BudgetDim3Filter));
    end;

    local procedure FindColumn(Which: Text[1024]): Boolean
    begin
        EXIT(
          ItemBudgetManagement.FindRec(
            ItemBudgetName, ColumnDimOption, ColumnDimCodeBuffer, Which,
            ItemFilter, SourceNoFilter, PeriodType, DateFilter, PeriodInitialized, InternalDateFilter,
            GlobalDim1Filter, GlobalDim2Filter, BudgetDim1Filter, BudgetDim2Filter, BudgetDim3Filter));
    end;

    local procedure NextColumn(Steps: Integer): Integer
    begin
        EXIT(
          ItemBudgetManagement.NextRec(
            ItemBudgetName, ColumnDimOption, ColumnDimCodeBuffer, Steps,
            ItemFilter, SourceNoFilter, PeriodType, DateFilter,
            GlobalDim1Filter, GlobalDim2Filter, BudgetDim1Filter, BudgetDim2Filter, BudgetDim3Filter));
    end;

    [Scope('Cloud')]
    procedure SetUpdateExistingWorksheet(UpdateExistingWorksheet: Boolean)
    begin
        DoUpdateExistingWorksheet := UpdateExistingWorksheet;
    end;

    [Scope('Cloud')]
    procedure SetFileNameSilent(NewFileName: Text)
    begin
        ServerFileName := NewFileName;
    end;

    [Scope('Cloud')]
    procedure SetTestMode(NewTestMode: Boolean)
    begin
        TestMode := NewTestMode;
    end;

    local procedure "--OAFNC--"()
    begin
    end;

    local procedure CalcForecastQuantity(): Decimal
    var
        TotalForecastQty: Decimal;
    begin

        CLEAR(TotalForecastQty);
        ProductionForecastEntry.RESET;
        ProductionForecastEntry.SETRANGE("Item No.", LineDimCodeBuffer.Code);
        ProductionForecastEntry.SETRANGE("Forecast Date", ColumnDimCodeBuffer."Period Start", ColumnDimCodeBuffer."Period End");
        IF ProductionForecastEntry.FINDSET THEN
            REPEAT
                TotalForecastQty += ProductionForecastEntry."Forecast Quantity";
            UNTIL ProductionForecastEntry.NEXT = 0;
        EXIT(TotalForecastQty);
    end;

    local procedure CalcOutputQuantity(): Decimal
    var
        TotalOutputQty: Decimal;
    begin

        CLEAR(TotalOutputQty);
        ItemLedgerEntry.RESET;
        ItemLedgerEntry.SETRANGE("Posting Date", ColumnDimCodeBuffer."Period Start", ColumnDimCodeBuffer."Period End");
        ItemLedgerEntry.SETRANGE("Item No.", LineDimCodeBuffer.Code);
        ItemLedgerEntry.SETRANGE("Entry Type", ItemLedgerEntry."Entry Type"::Output);
        IF ItemLedgerEntry.FINDSET THEN
            REPEAT
                TotalOutputQty += ItemLedgerEntry.Quantity;
            UNTIL ItemLedgerEntry.NEXT = 0;
        EXIT(TotalOutputQty);
    end;

    local procedure CalcSalesOrderQty(ItemCode: Code[20]; StartDate: Date; EndDate: Date): Decimal
    var
        TotalSalesOrderQty: Decimal;
        SalesLine: Record "Sales Line";
        SalesHeader: Record "Sales Header";
    begin

        CLEAR(TotalSalesOrderQty);
        SalesLine.RESET;
        SalesLine.SETRANGE("No.", ItemCode);
        IF SalesLine.FINDSET THEN
            REPEAT
                SalesHeader.RESET;
                SalesHeader.SETRANGE("No.", SalesLine."Document No.");
                SalesHeader.SETRANGE("Posting Date", StartDate, EndDate);
                IF SalesHeader.FINDFIRST THEN BEGIN
                    TotalSalesOrderQty += SalesLine."Qty. to Ship";
                END;
            UNTIL SalesLine.NEXT = 0;
        EXIT(TotalSalesOrderQty);
    end;

    local procedure CalcSalesShipmentQty(ItemCode: Code[20]; StartDate: Date; EndDate: Date): Decimal
    var
        TotalShippedQty: Decimal;
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentLine: Record "Sales Shipment Line";
    begin
        CLEAR(TotalShippedQty);
        SalesShipmentLine.RESET;
        SalesShipmentLine.SETRANGE("No.", ItemCode);
        IF SalesShipmentLine.FINDSET THEN
            REPEAT
                SalesShipmentHeader.RESET;
                SalesShipmentHeader.SETRANGE("No.", SalesShipmentLine."Document No.");
                SalesShipmentHeader.SETRANGE("Posting Date", StartDate, EndDate);
                IF SalesShipmentHeader.FINDFIRST THEN BEGIN
                    TotalShippedQty += SalesShipmentLine.Quantity;
                END;
            UNTIL SalesShipmentLine.NEXT = 0;
        EXIT(TotalShippedQty);
    end;

    local procedure CalcSalesReturnQty(ItemCode: Code[20]; StartDate: Date; EndDate: Date): Decimal
    begin
    end;
}

