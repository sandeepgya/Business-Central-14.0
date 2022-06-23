report 50015 "Quantity- Explosion- of- BOM"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/QuantityExplosionofBOM.rdlc';
    Caption = 'Quantity Explosion of BOM';

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Search Description", "Inventory Posting Group";
            column(AsOfCalcDate; Text000 + FORMAT(CalculateDate))
            {
            }
            column(CompanyName; COMPANYNAME)
            {
            }
            column(TodayFormatted; FORMAT(TODAY, 0, 4))
            {
            }
            column(ItemTableCaptionFilter; TABLECAPTION + ': ' + ItemFilter)
            {
            }
            column(ItemFilter; ItemFilter)
            {
            }
            column(No_Item; "No.")
            {
            }
            column(Desc_Item; Description)
            {
            }
            column(QtyExplosionofBOMCapt; QtyExplosionofBOMCaptLbl)
            {
            }
            column(CurrReportPageNoCapt; CurrReportPageNoCaptLbl)
            {
            }
            column(BOMQtyCaption; BOMQtyCaptionLbl)
            {
            }
            column(BomCompLevelQtyCapt; BomCompLevelQtyCaptLbl)
            {
            }
            column(BomCompLevelDescCapt; BomCompLevelDescCaptLbl)
            {
            }
            column(BomCompLevelNoCapt; BomCompLevelNoCaptLbl)
            {
            }
            column(LevelCapt; LevelCaptLbl)
            {
            }
            column(BomCompLevelUOMCodeCapt; BomCompLevelUOMCodeCaptLbl)
            {
            }
            column(QtyOnTransferOrder_Item; Item."Qty. On Transfer Order")
            {
            }
            column(QtyonServiceOrder_Item; Item."Qty. on Service Order")
            {
            }
            column(QtyonPurchOrder_Item; Item."Qty. on Purch. Order")
            {
            }
            column(QtyonSalesOrder_Item; Item."Qty. on Sales Order")
            {
            }
            column(BaseUnitofMeasure_Item; Item."Base Unit of Measure")
            {
            }
            column(RequestedQty; RequestedQty)
            {
            }
            column(AvailbleStockFG; AvailbleStockFG)
            {
            }
            dataitem(BOMLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem("Integer"; "Integer")
                {
                    DataItemTableView = SORTING(Number);
                    MaxIteration = 1;
                    column(BomCompLevelNo; BomComponent[Level]."No.")
                    {
                    }
                    column(BomCompLevelDesc; BomComponent[Level].Description)
                    {
                    }
                    column(BOMQty; BOMQty)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(FormatLevel; PADSTR('', Level, ' ') + FORMAT(Level))
                    {
                    }
                    column(BomCompLevelQty; BomComponent[Level].Quantity)
                    {
                        DecimalPlaces = 0 : 5;
                    }
                    column(BomCompLevelUOMCode; BomComponent[Level]."Unit of Measure Code")
                    {
                        // DecimalPlaces = 0 : 5;
                    }
                    column(QtyonPurchseOrder; CompItem."Qty. on Purch. Order")
                    {
                    }
                    column(QtyonSalesOrder; CompItem."Qty. on Sales Order")
                    {
                    }
                    column(QtyonTransferOrder; CompItem."Qty. On Transfer Order")
                    {
                    }
                    column(QtyOnServiceOrder; CompItem."Qty. on Service Order")
                    {
                    }
                    column(AvailbleStock; AvailbleStock)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        BOMQty := Quantity[Level] * QtyPerUnitOfMeasure * BomComponent[Level].Quantity;
                    end;

                    trigger OnPostDataItem()
                    begin
                        Level := NextLevel;
                    end;
                }

                trigger OnAfterGetRecord()
                var
                    BomItem: Record Item;
                begin
                    WHILE BomComponent[Level].NEXT = 0 DO BEGIN
                        Level := Level - 1;
                        IF Level < 1 THEN
                            CurrReport.BREAK;
                    END;

                    NextLevel := Level;
                    CLEAR(CompItem);
                    QtyPerUnitOfMeasure := 1;
                    CASE BomComponent[Level].Type OF
                        BomComponent[Level].Type::Item:
                            BEGIN
                                CompItem.GET(BomComponent[Level]."No.");
                                IF CompItem."Production BOM No." <> '' THEN BEGIN
                                    ProdBOM.GET(CompItem."Production BOM No.");
                                    IF ProdBOM.Status = ProdBOM.Status::Closed THEN
                                        CurrReport.SKIP;
                                    NextLevel := Level + 1;
                                    IF Level > 1 THEN
                                        IF (NextLevel > 50) OR (BomComponent[Level]."No." = NoList[Level - 1]) THEN
                                            ERROR(ProdBomErr, 50, Item."No.", NoList[Level], Level);
                                    CLEAR(BomComponent[NextLevel]);
                                    NoListType[NextLevel] := NoListType[NextLevel] ::Item;
                                    NoList[NextLevel] := CompItem."No.";
                                    VersionCode[NextLevel] :=
                                      VersionMgt.GetBOMVersion(CompItem."Production BOM No.", CalculateDate, TRUE);
                                    BomComponent[NextLevel].SETRANGE("Production BOM No.", CompItem."Production BOM No.");
                                    BomComponent[NextLevel].SETRANGE("Version Code", VersionCode[NextLevel]);
                                    BomComponent[NextLevel].SETFILTER("Starting Date", '%1|..%2', 0D, CalculateDate);
                                    BomComponent[NextLevel].SETFILTER("Ending Date", '%1|%2..', 0D, CalculateDate);
                                END;
                                IF Level > 1 THEN
                                    IF BomComponent[Level - 1].Type = BomComponent[Level - 1].Type::Item THEN
                                        IF BomItem.GET(BomComponent[Level - 1]."No.") THEN
                                            QtyPerUnitOfMeasure :=
                                              UOMMgt.GetQtyPerUnitOfMeasure(BomItem, BomComponent[Level - 1]."Unit of Measure Code") /
                                              UOMMgt.GetQtyPerUnitOfMeasure(
                                                BomItem, VersionMgt.GetBOMUnitOfMeasure(BomItem."Production BOM No.", VersionCode[Level]));
                            END;
                        BomComponent[Level].Type::"Production BOM":
                            BEGIN
                                ProdBOM.GET(BomComponent[Level]."No.");
                                IF ProdBOM.Status = ProdBOM.Status::Closed THEN
                                    CurrReport.SKIP;
                                NextLevel := Level + 1;
                                IF Level > 1 THEN
                                    IF (NextLevel > 50) OR (BomComponent[Level]."No." = NoList[Level - 1]) THEN
                                        ERROR(ProdBomErr, 50, Item."No.", NoList[Level], Level);
                                CLEAR(BomComponent[NextLevel]);
                                NoListType[NextLevel] := NoListType[NextLevel] ::"Production BOM";
                                NoList[NextLevel] := ProdBOM."No.";
                                VersionCode[NextLevel] := VersionMgt.GetBOMVersion(ProdBOM."No.", CalculateDate, TRUE);
                                BomComponent[NextLevel].SETRANGE("Production BOM No.", NoList[NextLevel]);
                                BomComponent[NextLevel].SETRANGE("Version Code", VersionCode[NextLevel]);
                                BomComponent[NextLevel].SETFILTER("Starting Date", '%1|..%2', 0D, CalculateDate);
                                BomComponent[NextLevel].SETFILTER("Ending Date", '%1|%2..', 0D, CalculateDate);
                            END;
                    END;

                    IF NextLevel <> Level THEN
                        Quantity[NextLevel] := BomComponent[NextLevel - 1].Quantity * QtyPerUnitOfMeasure * Quantity[Level];


                    CLEAR(AvailbleStock);

                    ILE.RESET;
                    ILE.SETRANGE("Item No.", BomComponent[Level]."No.");
                    IF Location <> '' THEN
                        ILE.SETRANGE("Location Code", Location);
                    IF ILE.FINDSET THEN
                        REPEAT
                            AvailbleStock += ILE.Quantity;
                        UNTIL ILE.NEXT = 0;




                    IF Location <> '' THEN BEGIN
                        CompItem.SETRANGE("Location Filter", Location);
                        CompItem.CALCFIELDS("Qty. on Sales Order", "Qty. on Purch. Order", "Qty. on Service Order", "Qty. On Transfer Order");
                    END;

                    CompItem.CALCFIELDS("Qty. on Purch. Order", "Qty. on Sales Order", "Qty. on Service Order", "Qty. On Transfer Order");
                end;

                trigger OnPreDataItem()
                begin
                    Level := 1;

                    ProdBOM.GET(Item."Production BOM No.");

                    VersionCode[Level] := VersionMgt.GetBOMVersion(Item."Production BOM No.", CalculateDate, TRUE);
                    CLEAR(BomComponent);
                    BomComponent[Level]."Production BOM No." := Item."Production BOM No.";
                    BomComponent[Level].SETRANGE("Production BOM No.", Item."Production BOM No.");
                    BomComponent[Level].SETRANGE("Version Code", VersionCode[Level]);
                    BomComponent[Level].SETFILTER("Starting Date", '%1|..%2', 0D, CalculateDate);
                    BomComponent[Level].SETFILTER("Ending Date", '%1|%2..', 0D, CalculateDate);
                    NoListType[Level] := NoListType[Level] ::Item;
                    NoList[Level] := Item."No.";
                    Quantity[Level] :=
                      UOMMgt.GetQtyPerUnitOfMeasure(Item, Item."Base Unit of Measure") /
                      UOMMgt.GetQtyPerUnitOfMeasure(
                        Item,
                        VersionMgt.GetBOMUnitOfMeasure(
                          Item."Production BOM No.", VersionCode[Level]));
                end;
            }

            trigger OnAfterGetRecord()
            begin
                CLEAR(AvailbleStockFG);
                IF Location <> '' THEN BEGIN
                    ILE.RESET;
                    ILE.SETRANGE("Item No.", "No.");
                    ILE.SETRANGE("Location Code", Location);
                    IF ILE.FINDSET THEN
                        REPEAT
                            AvailbleStockFG += ILE.Quantity;
                        UNTIL ILE.NEXT = 0;
                END ELSE BEGIN
                    ILE.RESET;
                    ILE.SETRANGE("Item No.", "No.");
                    IF ILE.FINDFIRST THEN
                        REPEAT
                            AvailbleStockFG += ILE.Quantity;
                        UNTIL ILE.NEXT = 0;
                END;

                IF Location <> '' THEN BEGIN
                    Item.SETRANGE("Location Filter", Location);
                    Item.CALCFIELDS("Qty. on Sales Order", "Qty. on Purch. Order", "Qty. on Service Order", "Qty. On Transfer Order");
                END;
            end;

            trigger OnPreDataItem()
            begin
                ItemFilter := GETFILTERS;

                SETFILTER("Production BOM No.", '<>%1', '');
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(CalculateDate; CalculateDate)
                    {
                        Caption = 'Calculation Date';
                        ApplicationArea = All;
                    }
                    field(RequestedQty; RequestedQty)
                    {
                        Caption = 'Requested Qty.';
                        ApplicationArea = All;
                    }
                    field(Location; Location)
                    {
                        Caption = 'Location';
                        TableRelation = Location.Code;
                        ApplicationArea = All;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            CalculateDate := WORKDATE;
        end;
    }

    labels
    {
    }

    var
        Text000: Label 'As of ';
        ProdBOM: Record "Production BOM Header";
        BomComponent: array[99] of Record "Production BOM Line";
        CompItem: Record Item;
        UOMMgt: Codeunit "Unit of Measure Management";
        VersionMgt: Codeunit VersionManagement;
        ItemFilter: Text;
        CalculateDate: Date;
        NoList: array[99] of Code[20];
        VersionCode: array[99] of Code[20];
        Quantity: array[99] of Decimal;
        QtyPerUnitOfMeasure: Decimal;
        Level: Integer;
        NextLevel: Integer;
        BOMQty: Decimal;
        QtyExplosionofBOMCaptLbl: Label 'Quantity Explosion of BOM';
        CurrReportPageNoCaptLbl: Label 'Page';
        BOMQtyCaptionLbl: Label 'Total Quantity';
        BomCompLevelQtyCaptLbl: Label 'BOM Quantity';
        BomCompLevelDescCaptLbl: Label 'Description';
        BomCompLevelNoCaptLbl: Label 'No.';
        LevelCaptLbl: Label 'Level';
        BomCompLevelUOMCodeCaptLbl: Label 'Unit of Measure Code';
        NoListType: array[99] of Option " ",Item,"Production BOM";
        ProdBomErr: Label 'The maximum number of BOM levels, %1, was exceeded. The process stopped at item number %2, BOM header number %3, BOM level %4.';
        "----OA-----": Integer;
        RequestedQty: Decimal;
        Location: Text[20];
        ILE: Record "Item Ledger Entry";
        AvailbleStock: Decimal;
        QtyonSalesOrder: Decimal;
        QtyonPurchseOrder: Decimal;
        QtyonTransferOrder: Decimal;
        QtyOnServiceOrder: Decimal;
        Item_1: Record Item;
        SalesLine: Record "Sales Line";
        PurchaseLine: Record "Purchase Line";
        TransferLine: Record "Transfer Line";
        ServiceLine: Record "Service Line";
        AvailbleStockFG: Decimal;
        Sample: Decimal;
}

