report 50081 "Daily Status Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/DailyStatusReport.rdlc';
    UseRequestPage = true;

    dataset
    {
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = WHERE(Number = FILTER(1));
            column(NoOfSalesOrder; NoOfSalesOrder)
            {
            }
            column(NoOfSalesShipment; NoOfSalesShipment)
            {
            }
            column(NoOfSalesInvoice; NoOfSalesInvoice)
            {
            }
            column(NoOfPurchaseOrder; NoOfPurchaseOrder)
            {
            }
            column(NoOFPurchaseReceipt; NoOFPurchaseReceipt)
            {
            }
            column(NoOfPurchaseInvoice; NoOfPurchaseInvoice)
            {
            }
            column(NoOfTransferOrders; NoOfTransferOrders)
            {
            }
            column(NoOfTransferShipment; NoOfTransferShipment)
            {
            }
            column(NoOfTransferReceipt; NoOfTransferReceipt)
            {
            }
            column(NoOfProductionOrders; NoOfProductionOrders)
            {
            }
            column(NoOfFinishedProdOrders; NoOfFinishedProdOrders)
            {
            }
            column(CountOfItem; CountOfItem)
            {
            }
            column(CountOfGL; CountOfGL)
            {
            }
            column(StartDate; StartDate)
            {
            }
            column(EndDate; EndDate)
            {
            }

            trigger OnAfterGetRecord()
            begin

                CLEAR(NoOfSalesOrder);
                CLEAR(NoOfSalesShipment);
                CLEAR(NoOfSalesInvoice);
                CLEAR(NoOfPurchaseOrder);
                CLEAR(NoOFPurchaseReceipt);
                CLEAR(NoOfPurchaseInvoice);
                CLEAR(NoOfTransferOrders);
                CLEAR(NoOfTransferReceipt);
                CLEAR(NoOfTransferReceipt);
                CLEAR(NoOfProductionOrders);
                CLEAR(NoOfFinishedProdOrders);
                CLEAR(CountOfGL);
                CLEAR(CountOfItem);

                SalesHeader.RESET;
                SalesHeader.SETRANGE(SalesHeader."Document Date", StartDate, EndDate);
                SalesHeader.SETRANGE(SalesHeader."Document Type", SalesHeader."Document Type"::Order);
                IF SalesHeader.FINDSET THEN
                    NoOfSalesOrder += SalesHeader.COUNT;

                SalesShipmentHeader.RESET;
                SalesShipmentHeader.SETRANGE(SalesShipmentHeader."Posting Date", StartDate, EndDate);
                IF SalesShipmentHeader.FINDSET THEN
                    NoOfSalesShipment += SalesShipmentHeader.COUNT;

                SalesInvoiceHeader.RESET;
                SalesInvoiceHeader.SETRANGE(SalesInvoiceHeader."Posting Date", StartDate, EndDate);
                IF SalesInvoiceHeader.FINDSET THEN
                    NoOfSalesInvoice += SalesInvoiceHeader.COUNT;

                PurchaseHeader.RESET;
                PurchaseHeader.SETRANGE(PurchaseHeader."Document Date", StartDate, EndDate);
                PurchaseHeader.SETRANGE(PurchaseHeader."Document Type", PurchaseHeader."Document Type"::Order);
                IF PurchaseHeader.FINDSET THEN
                    NoOfPurchaseOrder += PurchaseHeader.COUNT;

                PurchRcptHeader.RESET;
                PurchRcptHeader.SETRANGE(PurchRcptHeader."Posting Date", StartDate, EndDate);
                IF PurchRcptHeader.FINDSET THEN
                    NoOFPurchaseReceipt += PurchRcptHeader.COUNT;

                PurchInvHeader.RESET;
                PurchInvHeader.SETRANGE(PurchInvHeader."Posting Date", StartDate, EndDate);
                IF PurchInvHeader.FINDSET THEN
                    NoOfPurchaseInvoice += PurchInvHeader.COUNT;

                TransferHeader.RESET;
                TransferHeader.SETRANGE(TransferHeader."Posting Date", StartDate, EndDate);
                IF TransferHeader.FINDSET THEN
                    NoOfTransferOrders += TransferHeader.COUNT;

                TransferReceiptHeader.RESET;
                TransferReceiptHeader.SETRANGE(TransferReceiptHeader."Posting Date", StartDate, EndDate);
                IF TransferReceiptHeader.FINDSET THEN
                    NoOfTransferReceipt += TransferReceiptHeader.COUNT;

                TransferShipmentHeader.RESET;
                TransferShipmentHeader.SETRANGE(TransferShipmentHeader."Posting Date", StartDate, EndDate);
                IF TransferShipmentHeader.FINDSET THEN
                    NoOfTransferShipment += TransferShipmentHeader.COUNT;

                GLRegister.RESET;
                GLRegister.SETRANGE(GLRegister."Creation Date", StartDate, EndDate);
                IF GLRegister.FINDSET THEN
                    CountOfGL += GLRegister.COUNT;

                ItemRegister.RESET;
                ItemRegister.SETRANGE(ItemRegister."Creation Date", StartDate, EndDate);
                IF ItemRegister.FINDSET THEN
                    CountOfItem += ItemRegister.COUNT;

                ProductionOrder.RESET;
                ProductionOrder.SETRANGE(ProductionOrder."Creation Date", StartDate, EndDate);
                ProductionOrder.SETRANGE(ProductionOrder.Status, ProductionOrder.Status::Released);
                IF ProductionOrder.FINDSET THEN
                    NoOfProductionOrders += ProductionOrder.COUNT;

                ProductionOrder.RESET;
                ProductionOrder.SETRANGE(ProductionOrder."Creation Date", StartDate, EndDate);
                ProductionOrder.SETRANGE(ProductionOrder.Status, ProductionOrder.Status::Finished);
                IF ProductionOrder.FINDSET THEN
                    NoOfFinishedProdOrders += ProductionOrder.COUNT;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field("Start Date"; StartDate)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        EndDate := StartDate;
                    end;
                }
                field("End Date"; EndDate)
                {
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

    trigger OnPreReport()
    begin

        IF StartDate = 0D THEN BEGIN
            StartDate := TODAY;
            EndDate := StartDate;
        END;
    end;

    var
        NoOfSalesOrder: Integer;
        NoOfSalesShipment: Integer;
        NoOfSalesInvoice: Integer;
        NoOfPurchaseOrder: Integer;
        NoOFPurchaseReceipt: Integer;
        NoOfPurchaseInvoice: Integer;
        NoOfTransferOrders: Integer;
        NoOfTransferShipment: Integer;
        NoOfTransferReceipt: Integer;
        NoOfProductionOrders: Integer;
        NoOfFinishedProdOrders: Integer;
        CountOfItem: Integer;
        CountOfGL: Integer;
        SalesHeader: Record "Sales Header";
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesInvoiceHeader: Record "Sales Invoice Header";
        PurchaseHeader: Record "Purchase Header";
        PurchRcptHeader: Record "Purch. Rcpt. Header";
        PurchInvHeader: Record "Purch. Inv. Header";
        TransferHeader: Record "Transfer Header";
        TransferShipmentHeader: Record "Transfer Shipment Header";
        TransferReceiptHeader: Record "Transfer Receipt Header";
        GLRegister: Record "G/L Register";
        ItemRegister: Record "Item Register";
        ProductionOrder: Record "Production Order";
        DateFilter: Date;
        StartDate: Date;
        EndDate: Date;
        FilterStart: Text;
        FilterEnd: Text;
}

