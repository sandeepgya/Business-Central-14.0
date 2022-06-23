codeunit 50001 "Subscriber"
{
    // //OA0006
    //   Added new subscibers:
    //   -OnBeforePostingItemJournalLine
    //   -OnBeforeChangeProdOrderStatus
    // 
    // CAS-05925-Z8Y7X11 3112020 OA.SB
    //   <FCN> New function added
    //     -OnValidatePurchaseHeaderLocation
    //     -OnValidatePurchaseLineLocation
    //     -OnReleasePurchaseDoc
    //     -OnValidateSalesHeaderLocation
    //     -OnValidateSalesLineLocation
    //     -OnReleaseSalesDoc
    // 
    // CAS-06369-S1Q3H8?241220202 OA.SB
    //     <COD> Code commented and deleted on OnBeforeTransferPost


    trigger OnRun()
    begin
    end;

    var
        User_Setup: Record "Custom Setup";
        Text001: Label 'Consumption Quantity is not sufficient as per defined Tolerance for Item %1. Minimum required is %2.';
        Text002: Label 'Consumption Quantity is not sufficient as per defined Tolerance for Line No %1.';
        WarehouseEmployee: Record "Warehouse Employee";
        CustomSetup: Record "Custom Setup";
        SalesArchived: Boolean;
        Text003: Label 'You do not have permission for releasing Sales Order';
        Text004: Label 'You do not have permision for releasing document for Location%1';
        Text005: Label 'You do not have permission for releasing Purchase Order';
        Text006: Label 'You do not have permission for releasing Transfer Order';
        Text007: Label 'You do not have permision for posting Item Journal Line for this Location %1';
        Text008: Label 'Please enter Invoice No. for the line %1';
        Text009: Label 'You do not have the permission to delete  Prod. Order Component Line';
        Text010: Label 'You do not have the permission to modify Prod. Order Component Line';
        Text011: Label 'You do not have the permission to delete Prod. Order Routing Line';
        Text012: Label 'You do not have the permission to modify Prod. Order Routing Line';
        Text013: Label 'You are not authorize to unblock the Item';
        Text014: Label 'You are not authorize to unblock the Customer';
        Text015: Label 'You are not authorize to unblock the Vendor';
        Text016: Label 'Costing Method should be standard for Item No. %1';
        CustomSetup_: Record "Custom Setup";
        QtySalesWarranty: Decimal;
        QtySalesInvLine: Decimal;
        Text017: Label 'Sales Warranty Quantity %1 is exceeding Sales Invoice Line Quantity %2.';
        Text018: Label 'All the Purchase Line must have Location Code %1 .';
        Text019: Label 'Location Code must have a value %1 .';
        Text020: Label 'All the Sales Line must have Location Code %1 .';
        Text021: Label ' Header Location Code must have a value .';
        Text022: Label 'You have changed Location Code on the header, it will updadated in all the lines.Do you want to continue?';
        Location: Record Location;
        HasGotGLSetup: Boolean;
        GLSetupShortcutDimCode: array[8] of Code[20];
        PostingNoSeries: Record "Posting No. Series";
        GSTTransferOrderShipment: Codeunit "GST Transfer Order Shipment";

    [EventSubscriber(ObjectType::Codeunit, 414, 'OnAfterReleaseSalesDoc', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforeReleaseSalesDoc(var SalesHeader: Record "Sales Header")
    var
        Record: Variant;
    begin
        // OA0001.1281217
        SalesHeader.TESTFIELD("Assigned User ID");
        IF User_Setup.GET(USERID) THEN
            IF NOT User_Setup."Release SO" THEN
                ERROR(Text003);
        // << OA0001.1281217
        IF NOT WarehouseEmployee.GET(USERID, SalesHeader."Location Code") THEN
            ERROR(Text004, SalesHeader."Location Code");

        //<<OA.DT CAS-07047-H7M0H4
        if not SalesHeader.IsTemporary() then begin
            Record := SalesHeader;
            PostingNoSeries.GetPostingNoSeriesCode(Record);
            SalesHeader := Record;
        end;
        IF SalesHeader."Document Type" = SalesHeader."Document Type"::Order THEN BEGIN
            IF SalesHeader."Posting No. Series" = '' THEN
                ERROR('Posting No. Series is blank in Sales Order');

            /*IF Location.GET(SalesHeader."Location Code") THEN BEGIN
                //Export
                IF (SalesHeader."Invoice Type" = SalesHeader."Invoice Type"::Export) THEN
                    IF (SalesHeader."Posting No. Series" <> Location."Sales Inv. No. (Export)") THEN
                        ERROR('Posting No. Series ' + SalesHeader."Posting No. Series" + ' provided in Sales Order does not map with given location for Export ' + SalesHeader."Location Code");
            END;
            //Taxable
            IF (SalesHeader."Invoice Type" = SalesHeader."Invoice Type"::Taxable) THEN
                IF (SalesHeader."Posting No. Series" <> Location."Sales Invoice Nos.") THEN BEGIN
                    ERROR('Posting No. Series ' + SalesHeader."Posting No. Series" + ' provided in Sales Order does not map with given location for Taxable ' + SalesHeader."Location Code");
                END;
            //Bill of Supply
            IF (SalesHeader."Invoice Type" = SalesHeader."Invoice Type"::"Bill of Supply") THEN
                IF (SalesHeader."Posting No. Series" <> Location."Sales Inv. Nos. (Exempt)") THEN BEGIN
                    ERROR('Posting No. Series ' + SalesHeader."Posting No. Series" + ' provided in Sales Order does not map with given location for Bill of Supply ' + SalesHeader."Location Code");
                END;
            //Supplementary
            IF (SalesHeader."Invoice Type" = SalesHeader."Invoice Type"::Supplementary) THEN
                IF (SalesHeader."Posting No. Series" <> Location."Sales Inv. No. (Supp)") THEN BEGIN
                    ERROR('Posting No. Series ' + SalesHeader."Posting No. Series" + ' provided in Sales Order does not map with given location for Supplementary ' + SalesHeader."Location Code");
                END;
            //Debit Note
            IF (SalesHeader."Invoice Type" = SalesHeader."Invoice Type"::"Debit Note") THEN
                IF (SalesHeader."Posting No. Series" <> Location."Sales Inv. No. (Debit Note)") THEN BEGIN
                    ERROR('Posting No. Series ' + SalesHeader."Posting No. Series" + ' provided in Sales Order does not map with given location for Debit Note ' + SalesHeader."Location Code");
                END;
            //Non-GST
            IF (SalesHeader."Invoice Type" = SalesHeader."Invoice Type"::"Non-GST") THEN
                IF (SalesHeader."Posting No. Series" <> Location."Sales Inv. Nos. (Non-GST)") THEN BEGIN
                    ERROR('Posting No. Series ' + SalesHeader."Posting No. Series" + ' provided in Sales Order does not map with given location for NON-GST ' + SalesHeader."Location Code");
                END;*/ //OA.AS Commented and to be configured using Posting No. Series Setup
        END;
    end;

    [EventSubscriber(ObjectType::Codeunit, 414, 'OnAfterReleaseSalesDoc', '', false, false)]
    local procedure OnAfterReleaseSalesDoc(var SalesHeader: Record "Sales Header")
    var
        ReleaseFirst: Integer;
    begin
        IF NOT SalesHeader."Archived First" THEN BEGIN
            SalesHeader.ArchivalFirst;
            SalesHeader."Archived First" := TRUE;
            SalesHeader.MODIFY;
        END
    end;

    [EventSubscriber(ObjectType::Codeunit, 80, 'OnBeforePostSalesDoc', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforeSalesPost(var SalesHeader: Record "Sales Header")
    var
        Cust: Record Customer;
    begin
        SalesHeader.TESTFIELD("Location Code");
        SalesHeader.TESTFIELD(Status, SalesHeader.Status::Released);
        IF Cust.GET(SalesHeader."Sell-to Customer No.") THEN
            IF Cust.Distributor THEN
                SalesHeader.TESTFIELD("Secondary Customer No.");
    end;

    [EventSubscriber(ObjectType::Codeunit, 415, 'OnBeforeReleasePurchaseDoc', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforeReleasePurchaseDoc(var PurchaseHeader: Record "Purchase Header")
    begin
        // >> OA0001.2-281217
        PurchaseHeader.TESTFIELD("Assigned User ID");
        IF User_Setup.GET(USERID) THEN
            IF NOT User_Setup."Release PO" THEN
                ERROR(Text005);

        // << OA0001.2-281217
        // >> OA0002.1
        IF NOT WarehouseEmployee.GET(USERID, PurchaseHeader."Location Code") THEN
            ERROR(Text004, PurchaseHeader."Location Code");
        // << OA0002.1
    end;

    [EventSubscriber(ObjectType::Codeunit, 415, 'OnAfterReleasePurchaseDoc', '', false, false)]
    [Scope('Cloud')]
    procedure OnAfterReleasePurchDoc(var PurchaseHeader: Record "Purchase Header")
    begin
        IF NOT PurchaseHeader."Archived First" THEN BEGIN
            PurchaseHeader.ArchivalFirst;
            PurchaseHeader."Archived First" := TRUE;
            PurchaseHeader.MODIFY;
        END;
    end;

    [EventSubscriber(ObjectType::Codeunit, 90, 'OnBeforePostPurchaseDoc', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforePurchasePost(var PurchaseHeader: Record "Purchase Header")
    begin
        PurchaseHeader.TESTFIELD("Location Code");
        PurchaseHeader.TESTFIELD(Status, PurchaseHeader.Status::Released);
    end;

    [EventSubscriber(ObjectType::Codeunit, 5708, 'OnBeforeReleaseTransferDoc', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforeReleaseTransfer(var TransferHeader: Record "Transfer Header")
    var
        Loc: Record Location;
    begin
        //>> OA0001-281217
        TransferHeader.TESTFIELD("Assigned User ID");
        IF User_Setup.GET(TransferHeader."Assigned User ID") THEN
            IF NOT User_Setup."Release TO" THEN
                ERROR(Text006);
        // << OA0001-281217



        IF (TransferHeader."Party Type" = TransferHeader."Party Type"::Customer) OR (TransferHeader."Party Type" = TransferHeader."Party Type"::Vendor) THEN
            TransferHeader.TESTFIELD("Party No.");
    end;

    [EventSubscriber(ObjectType::Codeunit, 5706, 'OnBeforePost', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforeTransferPost(var TransHeader: Record "Transfer Header")
    var
        Location: Record Location;
        TransferLine: Record "Transfer Line";
    begin
        TransHeader.TESTFIELD(Status, TransHeader.Status::Released); // >> OA0001-281217
        IF Location.GET(TransHeader."Transfer-from Code") THEN
            //>>CAS-06369-S1Q3H8?241220202 OA.SB
            //  IF Location."Demo Location" THEN BEGIN
            IF Location."Demo Location" OR Location."Job work location" THEN BEGIN
                //<<CAS-06369-S1Q3H8?241220202 OA.SB
                TransferLine.RESET;
                TransferLine.SETRANGE("Document No.", TransHeader."No.");
                IF TransferLine.FINDSET THEN
                    REPEAT
                    // TransferLine.TESTFIELD("Applies-to Entry (Ship)"); //OA.AS Commented
                    UNTIL TransferLine.NEXT = 0;
            END;
    end;

    [EventSubscriber(ObjectType::Codeunit, 80, 'OnBeforePostSalesDoc', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforePhyInvJournalPost(var SalesHeader: Record "Sales Header")
    begin
        SalesHeader.TESTFIELD(Status, SalesHeader.Status::Released);
    end;

    [EventSubscriber(ObjectType::Codeunit, 22, 'OnBeforePostItemJnlLine', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforePostingItemJournalLine(var ItemJournalLine: Record "Item Journal Line")
    var
        ProdOrderLine: Record "Prod. Order Line";
        ProductionBOMLine: Record "Production BOM Line";
        TotalConsumptionQty: Decimal;
        MinConsumptionQty: Decimal;
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalConsumedQuantity: Decimal;
        ProductionOrdCompLine: Record "Prod. Order Component";
    begin
        // >> OA0002.1
        IF ItemJournalLine."Location Code" <> '' THEN
            IF NOT WarehouseEmployee.GET(USERID, ItemJournalLine."Location Code") THEN
                ERROR(Text007, ItemJournalLine."Location Code");
        //>>CAS-05925-Z8Y7X11 3112020 OA.SB
        IF ItemJournalLine."New Location Code" <> '' THEN
            IF NOT WarehouseEmployee.GET(USERID, ItemJournalLine."New Location Code") THEN
                ERROR(Text007, ItemJournalLine."New Location Code");
        //<<CAS-05925-Z8Y7X11 3112020 OA.SB
        // << OA0002.1
        //>>OA0006
        IF ItemJournalLine."Entry Type" = ItemJournalLine."Entry Type"::Output THEN BEGIN
            ProdOrderLine.RESET;
            ProductionBOMLine.RESET;
            ProdOrderLine.SETRANGE("Prod. Order No.", ItemJournalLine."Order No.");
            ProdOrderLine.SETRANGE("Line No.", ItemJournalLine."Order Line No.");
            IF ProdOrderLine.FINDFIRST THEN BEGIN
                TotalConsumptionQty := 0;
                MinConsumptionQty := 0;
                ProductionOrdCompLine.SETRANGE("Prod. Order No.", ProdOrderLine."Prod. Order No.");
                ProductionOrdCompLine.SETRANGE("Prod. Order Line No.", ProdOrderLine."Line No.");

                IF ProductionOrdCompLine.FINDSET THEN
                    REPEAT
                        ProductionBOMLine.RESET;
                        IF ProductionOrdCompLine."Original Item No." <> '' THEN BEGIN
                            ProductionBOMLine.SETRANGE(Type, ProductionBOMLine.Type::Item);
                            ProductionBOMLine.SETRANGE("Production BOM No.", ProdOrderLine."Production BOM No.");
                            ProductionBOMLine.SETRANGE("No.", ProductionOrdCompLine."Original Item No.");
                            IF ProductionBOMLine.FINDFIRST THEN;
                        END ELSE BEGIN
                            ProductionBOMLine.SETRANGE(Type, ProductionBOMLine.Type::Item);
                            ProductionBOMLine.SETRANGE("Production BOM No.", ProdOrderLine."Production BOM No.");
                            ProductionBOMLine.SETRANGE("No.", ProductionOrdCompLine."Item No.");
                            IF ProductionBOMLine.FINDFIRST THEN;
                        END;

                        TotalConsumptionQty := ProductionOrdCompLine."Quantity per" * ItemJournalLine."Output Quantity";

                        MinConsumptionQty := TotalConsumptionQty - ((ProductionBOMLine."Tolerance%" / 100) * TotalConsumptionQty);
                        IF MinConsumptionQty <> 0 THEN BEGIN
                            TotalConsumedQuantity := 0;
                            ItemLedgerEntry.RESET;
                            ItemLedgerEntry.SETRANGE("Entry Type", ItemLedgerEntry."Entry Type"::Consumption);
                            ItemLedgerEntry.SETRANGE("Order No.", ItemJournalLine."Order No.");
                            ItemLedgerEntry.SETRANGE("Order Line No.", ItemJournalLine."Order Line No.");
                            ItemLedgerEntry.SETRANGE("Item No.", ProductionOrdCompLine."Item No.");
                            IF ItemLedgerEntry.FINDSET THEN
                                REPEAT
                                    TotalConsumedQuantity += ABS(ItemLedgerEntry.Quantity);
                                UNTIL ItemLedgerEntry.NEXT = 0;
                            IF TotalConsumedQuantity < MinConsumptionQty THEN
                                ERROR(Text001, ProductionOrdCompLine."Item No.", MinConsumptionQty);
                        END;
                    UNTIL ProductionOrdCompLine.NEXT = 0;
            END;
        END;
        //<<OA0006
    end;

    [EventSubscriber(ObjectType::Codeunit, 5407, 'OnBeforeChangeStatusOnProdOrder', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforeChangeProdOrderStatus(var ProductionOrder: Record "Production Order"; NewStatus: Option Quote,Planned,"Firm Planned",Released,Finished)
    var
        ProdOrderLine: Record "Prod. Order Line";
        ProductionBOMLine: Record "Production BOM Line";
        TotalConsumptionQty: Decimal;
        MinConsumptionQty: Decimal;
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalConsumedQuantity: Decimal;
    begin
        //>>OA0006
        ProdOrderLine.RESET;
        ProdOrderLine.SETRANGE("Prod. Order No.", ProductionOrder."No.");
        IF ProdOrderLine.FINDSET THEN
            REPEAT
                TotalConsumptionQty := 0;
                MinConsumptionQty := 0;
                ProductionBOMLine.SETRANGE(Type, ProductionBOMLine.Type::Item);
                ProductionBOMLine.SETRANGE("Production BOM No.", ProdOrderLine."Production BOM No.");
                IF ProductionBOMLine.FINDSET THEN
                    REPEAT
                        TotalConsumptionQty := ProductionBOMLine."Quantity per" * ProductionOrder.Quantity;
                        MinConsumptionQty := TotalConsumptionQty - ((ProductionBOMLine."Tolerance%" / 100) * TotalConsumptionQty);
                        IF MinConsumptionQty <> 0 THEN BEGIN
                            TotalConsumedQuantity := 0;
                            ItemLedgerEntry.RESET;
                            ItemLedgerEntry.SETRANGE("Entry Type", ItemLedgerEntry."Entry Type"::Consumption);
                            ItemLedgerEntry.SETRANGE("Order No.", ProductionOrder."No.");
                            ItemLedgerEntry.SETRANGE("Order Line No.", ProdOrderLine."Line No.");
                            ItemLedgerEntry.SETRANGE("Item No.", ProductionBOMLine."No.");
                            IF ItemLedgerEntry.FINDSET THEN
                                REPEAT
                                    TotalConsumedQuantity += ABS(ItemLedgerEntry.Quantity);
                                UNTIL ItemLedgerEntry.NEXT = 0;
                            IF TotalConsumedQuantity < MinConsumptionQty THEN
                                ERROR(Text002, ProdOrderLine."Line No.");
                        END;
                    UNTIL ProductionBOMLine.NEXT = 0;
            UNTIL ProdOrderLine.NEXT = 0;
        //<<OA0006
    end;

    [EventSubscriber(ObjectType::Codeunit, 5063, 'OnBeforeSalesHeaderArchiveInsert', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforeSalesArchive(SalesHeader: Record "Sales Header")
    begin
    end;

    [EventSubscriber(ObjectType::Codeunit, 1535, 'OnSendSalesDocForApproval', '', false, false)]
    [Scope('Cloud')]
    procedure OnCheckSalesApproval(var SalesHeader: Record "Sales Header")
    begin
    end;

    [EventSubscriber(ObjectType::Codeunit, 12, 'OnBeforePostGenJnlLine', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforePostingPaymentJournal(var GenJournalLine: Record "Gen. Journal Line")
    var
        Err: Label 'You do not have permission for posting this entry';
    begin
        IF (NOT GenJournalLine."GST on Advance Payment") AND (GenJournalLine."Document Type" = GenJournalLine."Document Type"::Payment) THEN
            IF User_Setup.GET(USERID) THEN
                IF NOT (User_Setup."Allow Payment Journal") THEN
                    ERROR(Err)
        // ELSE
        //IF  NOT GenJournalLine.CheckInvoice THEN
        //ERROR(Text008,GenJournalLine."Line No.");
    end;

    [EventSubscriber(ObjectType::Table, 5407, 'OnBeforeDeleteEvent', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforeDeleteProdOrderCompLine(var Rec: Record "Prod. Order Component"; RunTrigger: Boolean)
    var
        CustomSetup: Record "Custom Setup";
    begin
        IF CustomSetup.GET(USERID) THEN
            IF NOT CustomSetup."Prod. Comp. Line Permission" THEN
                ERROR(Text009);
    end;

    [EventSubscriber(ObjectType::Table, 5407, 'OnBeforeModifyEvent', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforeModifyProdOrderCompLine(var Rec: Record "Prod. Order Component"; var xRec: Record "Prod. Order Component"; RunTrigger: Boolean)
    var
        CustomSetup: Record "Custom Setup";
    begin
        IF CustomSetup.GET(USERID) THEN
            IF NOT CustomSetup."Prod. Comp. Line Permission" THEN
                ERROR(Text010);
    end;

    [EventSubscriber(ObjectType::Table, 5409, 'OnBeforeDeleteEvent', '', false, false)]
    [TryFunction]
    [Scope('Cloud')]
    procedure OnBeforeDeleteRoutingLine(var Rec: Record "Prod. Order Routing Line"; RunTrigger: Boolean)
    var
        CustomSetup: Record "Custom Setup";
    begin
        IF CustomSetup.GET(USERID) THEN
            IF NOT CustomSetup."Prod. Comp.Routing Permission" THEN
                ERROR(Text011);
    end;

    [EventSubscriber(ObjectType::Table, 5409, 'OnBeforeModifyEvent', '', false, false)]
    [TryFunction]
    [Scope('Cloud')]
    procedure OnBeforeModifyRoutingLine(var Rec: Record "Prod. Order Routing Line"; var xRec: Record "Prod. Order Routing Line"; RunTrigger: Boolean)
    var
        CustomSetup: Record "Custom Setup";
    begin
        IF CustomSetup.GET(USERID) THEN
            IF NOT CustomSetup."Prod. Comp.Routing Permission" THEN
                ERROR(Text012);
    end;

    [EventSubscriber(ObjectType::Codeunit, 80, 'OnBeforePostSalesDoc', '', false, false)]
    [Scope('Cloud')]
    procedure SalesReasonCodeMandatory(var SalesHeader: Record "Sales Header")
    var
        SalesLine: Record "Sales Line";
    begin
        IF SalesHeader."Document Type" = SalesHeader."Document Type"::"Return Order" THEN BEGIN
            SalesLine.RESET;
            SalesLine.SETRANGE("Document No.", SalesHeader."No.");
            IF SalesLine.FINDSET THEN
                REPEAT
                    SalesLine.TESTFIELD("Return Reason Code");
                UNTIL SalesLine.NEXT = 0;
        END;
    end;

    [EventSubscriber(ObjectType::Codeunit, 90, 'OnBeforePostPurchaseDoc', '', false, false)]
    [Scope('Cloud')]
    procedure PurchaseReasonCodeMandatory(var PurchaseHeader: Record "Purchase Header")
    var
        PurchaseLine: Record "Purchase Line";
    begin
        IF PurchaseHeader."Document Type" = PurchaseHeader."Document Type"::"Return Order" THEN BEGIN
            PurchaseLine.RESET;
            PurchaseLine.SETRANGE("Document No.", PurchaseHeader."No.");
            IF PurchaseLine.FINDSET THEN
                REPEAT
                //PurchaseLine.TESTFIELD("Reason Code");
                UNTIL PurchaseLine.NEXT = 0;
        END;
    end;

    [EventSubscriber(ObjectType::Table, 5407, 'OnBeforeInsertEvent', '', false, false)]
    [Scope('Cloud')]
    procedure OnBeforeInsertComponentLine(var Rec: Record "Prod. Order Component"; RunTrigger: Boolean)
    var
        CustomSetup: Record "Custom Setup";
        InventorySetup: Record "Inventory Setup";
        DimensionManagement: Codeunit DimensionManagement;
    begin
        /*IF CustomSetup.GET(USERID) THEN
          IF NOT CustomSetup."Prod. Comp.Routing Permission" THEN
            ERROR('You do not have the permission to insert Prod. Order Routing Line');
        */

    end;

    [EventSubscriber(ObjectType::Table, 27, 'OnAfterInsertEvent', '', false, false)]
    [Scope('Cloud')]
    procedure OnAfterItemInsert(var Rec: Record Item; RunTrigger: Boolean)
    var
        InventorySetup: Record "Inventory Setup";
        DimensionManagement: Codeunit DimensionManagement;
    begin
        Rec.Blocked := TRUE;
        Rec.MODIFY;
        /*
        InventorySetup.GET;
        IF InventorySetup."Item Dimension Code" <> '' THEN BEGIN
          CreateDimensionValue(InventorySetup."Item Dimension Code",Rec."No.",Rec.Description);
          DimensionManagement.InsertDefaultDim(DATABASE::Item,Rec."No.",InventorySetup."Item Dimension Code",Rec."No.");
        END;
        */

    end;

    [EventSubscriber(ObjectType::Table, 18, 'OnAfterInsertEvent', '', false, false)]
    [Scope('Cloud')]
    procedure OnAfterCustomerInsert(var Rec: Record Customer; RunTrigger: Boolean)
    begin
        Rec.Blocked := Rec.Blocked::All;
        Rec.MODIFY;
    end;

    [EventSubscriber(ObjectType::Table, 23, 'OnAfterInsertEvent', '', false, false)]
    [Scope('Cloud')]
    procedure OnAfterVendorInsert(var Rec: Record Vendor; RunTrigger: Boolean)
    begin
        Rec.Blocked := Rec.Blocked::All;
        Rec.MODIFY;
    end;

    [EventSubscriber(ObjectType::Table, 27, 'OnBeforeValidateEvent', 'Blocked', false, false)]
    [Scope('Cloud')]
    procedure CheckUnBlockItem(var Rec: Record Item; var xRec: Record Item; CurrFieldNo: Integer)
    begin
        // >> PMT.00.20
        IF CustomSetup.GET(USERID) THEN BEGIN
            IF NOT CustomSetup."Blocked Item" THEN
                ERROR(Text013);
        END ELSE
            ERROR(Text013);
        // << PMT.00.20
    end;

    [EventSubscriber(ObjectType::Table, 18, 'OnBeforeValidateEvent', 'Blocked', false, false)]
    [Scope('Cloud')]
    procedure CheckUnBlockCustomer(var Rec: Record Customer; var xRec: Record Customer; CurrFieldNo: Integer)
    begin
        // >> PMT.00.18
        IF CustomSetup.GET(USERID) THEN BEGIN
            IF NOT CustomSetup."Blocked Customer" THEN
                ERROR(Text014);
        END ELSE
            ERROR(Text014);
        //<<PMT.00.18
    end;

    [EventSubscriber(ObjectType::Table, 23, 'OnBeforeValidateEvent', 'Blocked', false, false)]
    [Scope('Cloud')]
    procedure CheckUnBlockVendor(var Rec: Record Vendor; var xRec: Record Vendor; CurrFieldNo: Integer)
    begin
        //>>PMT.00.19
        IF CustomSetup.GET(USERID) THEN BEGIN
            IF NOT CustomSetup."Blocked Vendor" THEN
                ERROR(Text015);
        END ELSE
            ERROR(Text015);
        //<<PMT.00.19
    end;

    [EventSubscriber(ObjectType::Table, 5740, 'OnAfterInsertEvent', '', false, false)]
    [Scope('Cloud')]
    procedure OnAfterTransferOrderInsert(var Rec: Record "Transfer Header"; RunTrigger: Boolean)
    begin
        Rec."Assigned User ID" := USERID;
        Rec.MODIFY;
    end;

    [EventSubscriber(ObjectType::Table, 36, 'OnAfterInsertEvent', '', false, false)]
    [Scope('Cloud')]
    procedure OnAfterSalesOrderInsert(var Rec: Record "Sales Header"; RunTrigger: Boolean)
    begin
        Rec."Assigned User ID" := USERID;
        Rec.MODIFY;
    end;

    [EventSubscriber(ObjectType::Table, 38, 'OnAfterInsertEvent', '', false, false)]
    [Scope('Cloud')]
    procedure OnAfterPurchaseOrderInsert(var Rec: Record "Purchase Header"; RunTrigger: Boolean)
    begin
        Rec."Assigned User ID" := USERID;
        Rec.MODIFY;
    end;

    [EventSubscriber(ObjectType::Table, 36, 'OnAfterValidateEvent', 'Sales Invoice Type', false, false)]
    [Scope('Cloud')]
    procedure SalesInvoiceSalesInvoiceTypeOnAfterValidate(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    var
        SalesLine: Record "Sales Line";
        Item: Record Item;
    begin
        //>>PMT.00.21
        SalesLine.RESET;
        SalesLine.SETRANGE("Document Type", Rec."Document Type");
        SalesLine.SETRANGE("Document No.", Rec."No.");
        IF SalesLine.FINDSET THEN
            REPEAT
            BEGIN
                IF Rec."Sales Invoice Type" = Rec."Sales Invoice Type"::"Service Invoice" THEN BEGIN
                    IF SalesLine.Type = SalesLine.Type::Item THEN BEGIN
                        IF Item.GET(SalesLine."No.") THEN BEGIN
                            Item.TESTFIELD("Service  Prod. Posting Group");
                            SalesLine."Gen. Prod. Posting Group" := Item."Service  Prod. Posting Group";
                            SalesLine.MODIFY;
                        END;
                    END;
                END ELSE
                    IF Rec."Sales Invoice Type" = Rec."Sales Invoice Type"::"Sales Invoice" THEN BEGIN
                        IF SalesLine.Type = SalesLine.Type::Item THEN BEGIN
                            IF Item.GET(SalesLine."No.") THEN BEGIN
                                Item.TESTFIELD("Gen. Prod. Posting Group");
                                SalesLine."Gen. Prod. Posting Group" := Item."Gen. Prod. Posting Group";
                                SalesLine.MODIFY;
                            END;
                        END;
                    END;
            END;
            UNTIL SalesLine.NEXT = 0;
        //<<PMT.00.21
    end;

    [EventSubscriber(ObjectType::Table, 38, 'OnAfterValidateEvent', 'Buy-from Vendor No.', false, false)]
    [Scope('Cloud')]
    procedure PurchaseHeaderVendorNoOnAfterValidate(var Rec: Record "Purchase Header"; var xRec: Record "Purchase Header"; CurrFieldNo: Integer)
    var
        PurchCommentLine: Record "Purch. Comment Line";
        CommentLine: Record "Comment Line";
        LastPurchCommentLine: Integer;
        PurchCommentLine2: Record "Purch. Comment Line";
    begin
        PurchCommentLine.RESET;
        PurchCommentLine.SETRANGE("Document Type", Rec."Document Type");
        PurchCommentLine.SETRANGE("No.", Rec."No.");
        IF PurchCommentLine.FINDLAST THEN
            LastPurchCommentLine := PurchCommentLine."Line No.";

        CommentLine.RESET;
        CommentLine.SETRANGE("Table Name", CommentLine."Table Name"::Vendor);
        CommentLine.SETRANGE("No.", Rec."Buy-from Vendor No.");
        IF CommentLine.FINDSET THEN
            REPEAT
                PurchCommentLine2.INIT;
                PurchCommentLine2."Document Type" := Rec."Document Type";
                PurchCommentLine2."No." := Rec."No.";
                PurchCommentLine2."Line No." := LastPurchCommentLine + 1;
                LastPurchCommentLine += 1;
                PurchCommentLine2.Date := CommentLine.Date;
                PurchCommentLine2.Comment := CommentLine.Comment;
                PurchCommentLine2."Include in T&C" := CommentLine."Include in T&C";
                //PurchCommentLine2.Bold := CommentLine.Bold;
                PurchCommentLine2.INSERT;
            UNTIL CommentLine.NEXT = 0;
    end;

    [EventSubscriber(ObjectType::Codeunit, 80, 'OnAfterPostSalesDoc', '', false, false)]
    [Scope('Cloud')]
    procedure OnAfterSalesPostInsertSecondarySalesData(var SalesHeader: Record "Sales Header"; var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line"; SalesShptHdrNo: Code[20]; RetRcpHdrNo: Code[20]; SalesInvHdrNo: Code[20]; SalesCrMemoHdrNo: Code[20])
    var
        SalesInvHeader: Record "Sales Invoice Header";
        SalesInvLine: Record "Sales Invoice Line";
        SalesInvoiceWarrantyDetails: Record "Sales Invoice Warranty Details";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        SalesCrMemoLine: Record "Sales Cr.Memo Line";
        SecondarySalesDetails: Record "Secondary Sales Details";
        SecondaryCustomer: Record "Secondary Customer";
        SecondarySalesDetails_EntryNo: Integer;
        SIWEntryNo: Integer;
    begin
        SecondarySalesDetails_EntryNo := SecondarySalesDetails.GetLastEntryNo;
        SIWEntryNo := SalesInvoiceWarrantyDetails.GetLastEntryNo;
        IF SalesInvHdrNo <> '' THEN BEGIN
            IF SalesInvHeader.GET(SalesInvHdrNo) THEN BEGIN
                IF SalesHeader."Secondary Customer No." <> '' THEN BEGIN
                    SalesInvLine.RESET;
                    SalesInvLine.SETRANGE("Document No.", SalesInvHeader."No.");
                    IF SalesInvLine.FINDSET THEN
                        REPEAT
                            SecondarySalesDetails.INIT;
                            SecondarySalesDetails_EntryNo += 1;
                            SecondarySalesDetails.EntryNo := SecondarySalesDetails_EntryNo;
                            SecondarySalesDetails.TRANSFERFIELDS(SalesInvLine);
                            SecondarySalesDetails.VALIDATE("Secondary Customer No.");
                            SecondarySalesDetails.VALIDATE("Sell-to Customer No.");
                            SecondarySalesDetails.VALIDATE("Bill-to Customer No.");
                            SecondarySalesDetails.INSERT;
                        UNTIL SalesInvLine.NEXT = 0;
                END;
            END;
        END;
        SecondarySalesDetails_EntryNo := SecondarySalesDetails.GetLastEntryNo;
        SIWEntryNo := SalesInvoiceWarrantyDetails.GetLastEntryNo;
        IF SalesCrMemoHdrNo <> '' THEN BEGIN
            IF SalesCrMemoHeader.GET(SalesCrMemoHdrNo) THEN BEGIN
                IF SalesHeader."Secondary Customer No." <> '' THEN BEGIN
                    SalesCrMemoLine.RESET;
                    SalesCrMemoLine.SETRANGE("Document No.", SalesCrMemoHeader."No.");
                    IF SalesCrMemoLine.FINDSET THEN
                        REPEAT
                            IF SalesCrMemoLine."No." <> '' THEN BEGIN
                                SecondarySalesDetails.INIT;
                                SecondarySalesDetails_EntryNo += 1;
                                SecondarySalesDetails.EntryNo := SecondarySalesDetails_EntryNo;
                                SecondarySalesDetails.TRANSFERFIELDS(SalesCrMemoLine);
                                SecondarySalesDetails.VALIDATE("Secondary Customer No.");
                                SecondarySalesDetails.VALIDATE("Sell-to Customer No.");
                                SecondarySalesDetails.VALIDATE("Bill-to Customer No.");
                                SecondarySalesDetails.INSERT;
                            END;
                        UNTIL SalesCrMemoLine.NEXT = 0;
                END;
            END;
        END;
    end;

    [EventSubscriber(ObjectType::Table, 36, 'OnAfterValidateEvent', 'Secondary Customer No.', false, false)]
    [Scope('Cloud')]
    procedure SecondaySalesData(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    var
        SalesLine: Record "Sales Line";
        Cust: Record Customer;
    begin
        IF Cust.GET(Rec."Sell-to Customer No.") THEN BEGIN
            IF Cust.Distributor THEN BEGIN
                SalesLine.RESET;
                SalesLine.SETRANGE("Document Type", Rec."Document Type");
                SalesLine.SETRANGE("Document No.", Rec."No.");
                IF SalesLine.FINDSET THEN
                    REPEAT BEGIN
                        SalesLine."Secondary Customer No." := Rec."Secondary Customer No.";
                        SalesLine.MODIFY;
                    END;
                    UNTIL SalesLine.NEXT = 0;
            END;
        END;
    end;

    [EventSubscriber(ObjectType::Table, 37, 'OnAfterInsertEvent', '', false, false)]
    [Scope('Cloud')]
    procedure OnAfterInsertSalesLine(var Rec: Record "Sales Line"; RunTrigger: Boolean)
    var
        SalesHeader: Record "Sales Header";
    begin
        IF SalesHeader.GET(Rec."Document Type", Rec."Document No.") THEN BEGIN
            Rec."Secondary Customer No." := SalesHeader."Secondary Customer No.";
            Rec.MODIFY;
        END;
    end;

    [EventSubscriber(ObjectType::Table, 36, 'OnAfterValidateEvent', 'Sell-to Customer No.', false, false)]
    [Scope('Cloud')]
    procedure SalesHeaderSellToCustomerNoOnAfterValidate(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    var
        SalesCommentLine: Record "Sales Comment Line";
        SalesCommentLine2: Record "Sales Comment Line";
        CommentLine: Record "Comment Line";
        LastSalesCommentLine: Integer;
    begin
        SalesCommentLine.RESET;
        SalesCommentLine.SETRANGE("Document Type", Rec."Document Type");
        SalesCommentLine.SETRANGE("No.", Rec."No.");
        IF SalesCommentLine.FINDLAST THEN
            LastSalesCommentLine := SalesCommentLine."Line No.";

        CommentLine.RESET;
        CommentLine.SETRANGE("Table Name", CommentLine."Table Name"::Customer);
        CommentLine.SETRANGE("No.", Rec."Sell-to Customer No.");
        IF CommentLine.FINDSET THEN
            REPEAT
                SalesCommentLine2.INIT;
                SalesCommentLine2."Document Type" := Rec."Document Type";
                SalesCommentLine2."No." := Rec."No.";
                SalesCommentLine2."Line No." := LastSalesCommentLine + 1;
                LastSalesCommentLine += 1;
                SalesCommentLine2.Date := CommentLine.Date;
                SalesCommentLine2.Comment := CommentLine.Comment;
                //SalesCommentLine2."Include in T&C" := CommentLine."Include in T&C";
                // SalesCommentLine2.Bold := CommentLine.Bold;
                SalesCommentLine2.INSERT;
            UNTIL CommentLine.NEXT = 0;
    end;

    [EventSubscriber(ObjectType::Codeunit, 80, 'OnAfterPostSalesDoc', '', false, false)]
    [Scope('Cloud')]
    procedure OnAfterSalesPostInsertWarrantySalesData(var SalesHeader: Record "Sales Header"; var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line"; SalesShptHdrNo: Code[20]; RetRcpHdrNo: Code[20]; SalesInvHdrNo: Code[20]; SalesCrMemoHdrNo: Code[20])
    var
        SalesInvHeader: Record "Sales Invoice Header";
        SalesInvLine: Record "Sales Invoice Line";
        SalesInvoiceWarrantyDetails: Record "Sales Invoice Warranty Details";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        SalesCrMemoLine: Record "Sales Cr.Memo Line";
        SecondarySalesDetails: Record "Secondary Sales Details";
        SecondaryCustomer: Record "Secondary Customer";
        SecondarySalesDetails_EntryNo: Integer;
        SIWEntryNo: Integer;
    begin
        IF CustomSetup.GET(USERID) THEN BEGIN
            IF CustomSetup."Update Sales Warranty on Post" THEN BEGIN
                SIWEntryNo := SalesInvoiceWarrantyDetails.GetLastEntryNo;
                IF SalesInvHdrNo <> '' THEN BEGIN
                    IF SalesInvHeader.GET(SalesInvHdrNo) THEN BEGIN
                        SalesInvLine.RESET;
                        SalesInvLine.SETRANGE("Document No.", SalesInvHeader."No.");
                        IF SalesInvLine.FINDSET THEN
                            REPEAT
                                SalesInvoiceWarrantyDetails.INIT;
                                SIWEntryNo += 1;
                                SalesInvoiceWarrantyDetails.EntryNo := SIWEntryNo;
                                SalesInvoiceWarrantyDetails.TRANSFERFIELDS(SalesInvLine);
                                SalesInvoiceWarrantyDetails.VALIDATE("Sell-to Customer No.");
                                SalesInvoiceWarrantyDetails.VALIDATE("Bill-to Customer No.");
                                SalesInvoiceWarrantyDetails.VALIDATE("Secondary Customer No.");
                                SalesInvoiceWarrantyDetails.VALIDATE("Service/Installation Date", SalesInvHeader."Service/Installation Date");
                                SalesInvoiceWarrantyDetails.INSERT;
                            UNTIL SalesInvLine.NEXT = 0;
                    END;
                END;
                SIWEntryNo := SalesInvoiceWarrantyDetails.GetLastEntryNo;
                IF SalesCrMemoHdrNo <> '' THEN BEGIN
                    IF SalesCrMemoHeader.GET(SalesCrMemoHdrNo) THEN BEGIN
                        //IF SalesHeader."Secondary Customer No."<>'' THEN BEGIN
                        SalesCrMemoLine.RESET;
                        SalesCrMemoLine.SETRANGE("Document No.", SalesCrMemoHeader."No.");
                        IF SalesCrMemoLine.FINDSET THEN
                            REPEAT
                                IF SalesCrMemoLine."No." <> '' THEN BEGIN
                                    SalesInvoiceWarrantyDetails.INIT;
                                    SIWEntryNo += 1;
                                    SalesInvoiceWarrantyDetails.EntryNo := SIWEntryNo;
                                    SalesInvoiceWarrantyDetails.TRANSFERFIELDS(SalesCrMemoLine);
                                    SalesInvoiceWarrantyDetails.VALIDATE("Sell-to Customer No.");
                                    SalesInvoiceWarrantyDetails.VALIDATE("Bill-to Customer No.");
                                    SalesInvoiceWarrantyDetails.VALIDATE("Secondary Customer No.");
                                    // SalesInvoiceWarrantyDetails.VALIDATE("Service/Installation Date",sale)
                                    SalesInvoiceWarrantyDetails.INSERT;
                                END;
                            UNTIL SalesCrMemoLine.NEXT = 0;
                    END;
                END;
            END;
        END;
        //END;
    end;

    [EventSubscriber(ObjectType::Table, 13, 'OnAfterInsertEvent', '', false, false)]
    [Scope('Cloud')]
    procedure SalesPersonPurchaserOnAfterInsert(var Rec: Record "Salesperson/Purchaser"; RunTrigger: Boolean)
    var
        SalesReceivablesSetup: Record "Sales & Receivables Setup";
    begin
        SalesReceivablesSetup.GET;
        IF SalesReceivablesSetup."Sales Person Dimension Code" <> '' THEN BEGIN
            CreateDimensionValue(SalesReceivablesSetup."Sales Person Dimension Code", Rec.Code, Rec.Name);
        END;
    end;

    local procedure CreateDimensionValue(DimCode: Code[20]; DimValue: Code[20]; DimName: Text[50])
    var
        DimensionValue: Record "Dimension Value";
    begin
        DimensionValue.RESET;
        IF NOT DimensionValue.GET(DimCode, DimValue) THEN BEGIN
            DimensionValue.INIT;
            DimensionValue.VALIDATE("Dimension Code", DimCode);
            DimensionValue.VALIDATE(Code, DimValue);
            DimensionValue.VALIDATE(Name, DimName);
            DimensionValue.INSERT(TRUE);
        END;
    end;

    [EventSubscriber(ObjectType::Table, 27, 'OnAfterValidateEvent', 'Description', false, false)]
    [Scope('Cloud')]
    procedure OnAfterItemDescriptionModify(var Rec: Record Item; var xRec: Record Item; CurrFieldNo: Integer)
    var
        InventorySetup: Record "Inventory Setup";
        DimensionValue: Record "Dimension Value";
    begin
        InventorySetup.GET;
        IF InventorySetup."Item Dimension Code" <> '' THEN BEGIN
            DimensionValue.RESET;
            IF DimensionValue.GET(InventorySetup."Item Dimension Code", Rec."No.") THEN BEGIN
                DimensionValue.VALIDATE(Name, Rec.Description);
                DimensionValue.MODIFY;
            END;
        END;
    end;

    [EventSubscriber(ObjectType::Table, 13, 'OnAfterValidateEvent', 'Name', false, false)]
    [Scope('Cloud')]
    procedure OnAfterSalesPersonNameModify(var Rec: Record "Salesperson/Purchaser"; var xRec: Record "Salesperson/Purchaser"; CurrFieldNo: Integer)
    var
        DimensionValue: Record "Dimension Value";
        SalesReceivablesSetup: Record "Sales & Receivables Setup";
    begin
        SalesReceivablesSetup.GET;
        IF SalesReceivablesSetup."Sales Person Dimension Code" <> '' THEN BEGIN
            DimensionValue.RESET;
            IF DimensionValue.GET(SalesReceivablesSetup."Sales Person Dimension Code", Rec.Code) THEN BEGIN
                DimensionValue.VALIDATE(Name, Rec.Name);
                DimensionValue.MODIFY;
            END;
        END;
    end;

    [EventSubscriber(ObjectType::Table, 27, 'OnAfterValidateEvent', 'Inventory Posting Group', false, false)]
    [Scope('Cloud')]
    procedure OnAfterValidateInventoryPostingGroupOnItem(var Rec: Record Item; var xRec: Record Item; CurrFieldNo: Integer)
    var
        InventorySetup: Record "Inventory Setup";
        DimensionManagement: Codeunit DimensionManagement;
    begin
        InventorySetup.GET;
        IF InventorySetup."Item Dimension Code" <> '' THEN BEGIN
            CreateDimensionValue(InventorySetup."Item Dimension Code", Rec."No.", Rec.Description);
            DimensionManagementInsertDefaultDim(DATABASE::Item, Rec."No.", InventorySetup."Item Dimension Code", Rec."No.");
        END;
    end;

    procedure DimensionManagementInsertDefaultDim(TableID: Integer; No: Code[20]; DimCode: Code[20]; ShortcutDimCode: Code[20])
    var
        DefaultDim: Record "Default Dimension";

    begin
        GetGLSetup1();
        IF ShortcutDimCode <> '' THEN BEGIN
            IF DefaultDim.GET(TableID, No, DimCode)
            THEN BEGIN
                DefaultDim.VALIDATE("Dimension Value Code", ShortcutDimCode);
                DefaultDim.MODIFY;
            END ELSE BEGIN
                DefaultDim.INIT;
                DefaultDim.VALIDATE("Table ID", TableID);
                DefaultDim.VALIDATE("No.", No);
                DefaultDim.VALIDATE("Dimension Code", DimCode);
                DefaultDim.VALIDATE("Dimension Value Code", ShortcutDimCode);
                DefaultDim.INSERT;
            END;
        END ELSE
            IF DefaultDim.GET(TableID, No, DimCode) THEN
                DefaultDim.DELETE;
    end;

    LOCAL procedure GetGLSetup1()
    var
        GLSetup: Record "General Ledger Setup";
    begin
        IF NOT HasGotGLSetup THEN BEGIN
            GLSetup.GET;
            GLSetupShortcutDimCode[1] := GLSetup."Shortcut Dimension 1 Code";
            GLSetupShortcutDimCode[2] := GLSetup."Shortcut Dimension 2 Code";
            GLSetupShortcutDimCode[3] := GLSetup."Shortcut Dimension 3 Code";
            GLSetupShortcutDimCode[4] := GLSetup."Shortcut Dimension 4 Code";
            GLSetupShortcutDimCode[5] := GLSetup."Shortcut Dimension 5 Code";
            GLSetupShortcutDimCode[6] := GLSetup."Shortcut Dimension 6 Code";
            GLSetupShortcutDimCode[7] := GLSetup."Shortcut Dimension 7 Code";
            GLSetupShortcutDimCode[8] := GLSetup."Shortcut Dimension 8 Code";
            HasGotGLSetup := TRUE;
        END;
    end;

    [EventSubscriber(ObjectType::Table, 5407, 'OnBeforeInsertEvent', '', false, false)]
    [Scope('Cloud')]
    procedure OnValidateProdOrderComponent(var Rec: Record "Prod. Order Component"; RunTrigger: Boolean)
    var
        ITM: Record Item;
    begin
        IF ITM.GET(Rec."Item No.") THEN
            IF ITM."Costing Method" <> ITM."Costing Method"::Standard THEN
                ERROR(Text016, Rec."Item No.");
    end;

    [EventSubscriber(ObjectType::Table, 5406, 'OnAfterInsertEvent', '', false, false)]
    [Scope('Cloud')]
    procedure OnInsertProdOrderLine(var Rec: Record "Prod. Order Line"; RunTrigger: Boolean)
    var
        ITM: Record Item;
    begin
        IF ITM.GET(Rec."Item No.") THEN
            IF ITM."Costing Method" <> ITM."Costing Method"::Standard THEN
                ERROR(Text016, Rec."Item No.");
    end;

    [EventSubscriber(ObjectType::Table, 99000772, 'OnAfterInsertEvent', '', false, false)]
    [Scope('Cloud')]
    procedure OnAfterInsertProdBOMLine(var Rec: Record "Production BOM Line"; RunTrigger: Boolean)
    var
        ITM: Record Item;
    begin
        IF ITM.GET(Rec."No.") THEN
            IF ITM."Costing Method" <> ITM."Costing Method"::Standard THEN
                ERROR(Text016, Rec."No.");
    end;

    [EventSubscriber(ObjectType::Table, 5715, 'OnAfterValidateEvent', 'Substitute No.', false, false)]
    [Scope('Cloud')]
    procedure OnValidateSubstituteItemNo(var Rec: Record "Item Substitution"; var xRec: Record "Item Substitution"; CurrFieldNo: Integer)
    var
        Item1: Record Item;
        Item2: Record Item;
        Text020: Label 'Costing Method should be same for both Items';
    begin
        IF Item1.GET(Rec."Substitute No.") THEN
            IF Item2.GET(Rec."No.") THEN
                IF Item1."Costing Method" <> Item2."Costing Method" THEN
                    ERROR(Text020);
    end;

    [EventSubscriber(ObjectType::Table, 83, 'OnAfterValidateEvent', 'Run Time', false, false)]
    [Scope('Cloud')]
    procedure OnAfterValidateRunTimeItemJnlLine(var Rec: Record "Item Journal Line"; var xRec: Record "Item Journal Line"; CurrFieldNo: Integer)
    begin
        Rec.UpdateRoutinglines;
    end;

    [EventSubscriber(ObjectType::Table, 50001, 'OnAfterValidateEvent', 'Warranty Qty', false, false)]
    [Scope('Cloud')]
    procedure SalesWarrantyQuantityValidate(var Rec: Record "Sales Invoice Warranty Details"; var xRec: Record "Sales Invoice Warranty Details"; CurrFieldNo: Integer)
    var
        SalesWarranty: Record "Sales Invoice Warranty Details";
        SalesInvLine: Record "Sales Invoice Line";
    begin
        CLEAR(QtySalesWarranty);
        CLEAR(QtySalesInvLine);
        SalesWarranty.RESET;
        SalesWarranty.SETRANGE("Document No.", Rec."Document No.");
        SalesWarranty.SETRANGE("No.", Rec."No.");
        IF SalesWarranty.FINDSET THEN
            REPEAT
                QtySalesWarranty += SalesWarranty."Warranty Qty";
            UNTIL SalesWarranty.NEXT = 0;

        SalesInvLine.RESET;
        SalesInvLine.SETRANGE("Document No.", Rec."Document No.");
        SalesInvLine.SETRANGE("No.", Rec."No.");
        IF SalesInvLine.FINDSET THEN
            REPEAT
                QtySalesInvLine += SalesInvLine.Quantity;
            UNTIL SalesInvLine.NEXT = 0;

        IF (QtySalesWarranty + Rec."Warranty Qty") > QtySalesInvLine THEN
            ERROR(Text017, QtySalesWarranty + Rec."Warranty Qty", QtySalesInvLine);
    end;

    local procedure "-------CAS-00993-Y3X9D7--------"()
    begin
    end;

    [EventSubscriber(ObjectType::Table, 5405, 'OnAfterValidateEvent', 'Source No.', false, false)]
    [Scope('Cloud')]
    procedure OnInsertProdOrder(var Rec: Record "Production Order"; var xRec: Record "Production Order"; CurrFieldNo: Integer)
    var
        ITM: Record Item;
    begin
        //>> CAS-00993-Y3X9D7
        IF ITM.GET(Rec."Source No.") THEN
            IF ITM."Costing Method" = ITM."Costing Method"::Standard THEN
                ITM.TESTFIELD("Standard Cost");
        //<< CAS-00993-Y3X9D7
    end;

    [EventSubscriber(ObjectType::Table, 38, 'OnAfterValidateEvent', 'Location Code', false, false)]
    [TryFunction]
    local procedure OnValidatePurchaseHeaderLocation(var Rec: Record "Purchase Header"; var xRec: Record "Purchase Header"; CurrFieldNo: Integer)
    var
        PurchaseLine: Record "Purchase Line";
        ChangeLocation: Boolean;
    begin
        //>>CAS-05925-Z8Y7X11 3112020 OA.SB
        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Document No.", Rec."No.");
        PurchaseLine.SETRANGE("Document Type", Rec."Document Type");
        PurchaseLine.SETFILTER(Type, '<>%1', PurchaseLine.Type::" ");
        IF PurchaseLine.FINDSET THEN BEGIN
            ChangeLocation := CONFIRM(Text022, FALSE);
            IF NOT ChangeLocation THEN BEGIN
                Rec."Location Code" := xRec."Location Code";
                EXIT;
            END;
            PurchaseLine.MODIFYALL("Location Code", Rec."Location Code");
        END;
        //<<CAS-05925-Z8Y7X11 3112020 OA.SB
    end;

    [EventSubscriber(ObjectType::Table, 39, 'OnAfterValidateEvent', 'Location Code', false, false)]
    local procedure OnValidatePurchaseLineLocation(var Rec: Record "Purchase Line"; var xRec: Record "Purchase Line"; CurrFieldNo: Integer)
    var
        PurchaseHeader: Record "Purchase Header";
    begin
        //>>CAS-05925-Z8Y7X11 3112020 OA.SB
        IF PurchaseHeader.GET(Rec."Document Type", Rec."Document No.") THEN BEGIN
            IF PurchaseHeader."Location Code" = '' THEN
                ERROR(Text021);
            IF Rec."Location Code" <> PurchaseHeader."Location Code" THEN
                ERROR(STRSUBSTNO(Text018, PurchaseHeader."Location Code"));
        END
        //<<CAS-05925-Z8Y7X11 3112020 OA.SB
    end;

    [EventSubscriber(ObjectType::Codeunit, 415, 'OnBeforeReleasePurchaseDoc', '', false, false)]
    local procedure OnReleasePurchaseDoc(var PurchaseHeader: Record "Purchase Header")
    var
        PurchaseLine: Record "Purchase Line";
        LocationNotSame: Boolean;
        PreLocation: Code[20];
    begin
        //>>CAS-05925-Z8Y7X11 3112020 OA.SB
        PurchaseLine.RESET;
        PurchaseLine.SETRANGE("Document No.", PurchaseHeader."No.");
        PurchaseLine.SETRANGE("Document Type", PurchaseHeader."Document Type");
        PurchaseLine.SETFILTER(Type, '<>%1', PurchaseLine.Type::" ");
        IF PurchaseLine.FINDSET THEN
            REPEAT
                IF (PurchaseLine."Location Code" <> PurchaseHeader."Location Code") AND (PreLocation <> '') THEN
                    LocationNotSame := TRUE;
                PreLocation := PurchaseLine."Location Code";
            UNTIL PurchaseLine.NEXT = 0;
        IF LocationNotSame THEN
            ERROR(STRSUBSTNO(Text018, PreLocation));
        //<<CAS-05925-Z8Y7X11 3112020 OA.SB
    end;

    [EventSubscriber(ObjectType::Table, 36, 'OnAfterValidateEvent', 'Location Code', false, false)]
    [TryFunction]
    local procedure OnValidateSalesHeaderLocation(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    var
        SalesLine: Record "Sales Line";
        ChangeLocation: Boolean;
    begin
        //>>CAS-05925-Z8Y7X11 3112020 OA.SB
        SalesLine.RESET;
        SalesLine.SETRANGE("Document No.", Rec."No.");
        SalesLine.SETRANGE("Document Type", Rec."Document Type");
        SalesLine.SETFILTER(Type, '<>%1', SalesLine.Type::" ");
        IF SalesLine.FINDSET THEN BEGIN
            ChangeLocation := CONFIRM(Text022, FALSE);
            IF NOT ChangeLocation THEN BEGIN
                Rec."Location Code" := xRec."Location Code";
                EXIT;
            END;
            SalesLine.MODIFYALL("Location Code", Rec."Location Code")
        END;
        //<<CAS-05925-Z8Y7X11 3112020 OA.SB
    end;

    [EventSubscriber(ObjectType::Table, 37, 'OnAfterValidateEvent', 'Location Code', false, false)]
    local procedure OnValidateSalesLineLocation(var Rec: Record "Sales Line"; var xRec: Record "Sales Line"; CurrFieldNo: Integer)
    var
        SalesHeader: Record "Sales Header";
    begin
        //>>CAS-05925-Z8Y7X11 3112020 OA.SB
        IF SalesHeader.GET(Rec."Document Type", Rec."Document No.") THEN BEGIN
            IF SalesHeader."Location Code" = '' THEN
                ERROR(Text021);
            IF Rec."Location Code" <> SalesHeader."Location Code" THEN BEGIN
                IF Rec."Location Code" <> '' THEN
                    ERROR(STRSUBSTNO(Text020, SalesHeader."Location Code"));
            END;
        END
        //<<CAS-05925-Z8Y7X11 3112020 OA.SB
    end;

    [EventSubscriber(ObjectType::Codeunit, 414, 'OnBeforeReleaseSalesDoc', '', false, false)]
    local procedure OnReleaseSalesDoc(var SalesHeader: Record "Sales Header")
    var
        SalesLine: Record "Sales Line";
        PreLocation: Code[20];
        LocationNotSame: Boolean;
    begin
        //>>CAS-05925-Z8Y7X11 3112020 OA.SB
        SalesLine.RESET;
        SalesLine.SETRANGE("Document No.", SalesHeader."No.");
        SalesLine.SETRANGE("Document Type", SalesHeader."Document Type");
        SalesLine.SETFILTER(Type, '<>%1', SalesLine.Type::" ");
        PreLocation := SalesHeader."Location Code";
        IF SalesLine.FINDSET THEN
            REPEAT
                IF SalesLine."Location Code" <> PreLocation THEN
                    LocationNotSame := TRUE;
            UNTIL SalesLine.NEXT = 0;
        IF LocationNotSame THEN
            ERROR(STRSUBSTNO(Text020, PreLocation));
        //<<CAS-05925-Z8Y7X11 3112020 OA.SB
        //>>oa.dt CAS-07395-Z5B3T7
        IF SalesHeader."Document Type" IN [SalesHeader."Document Type"::Invoice, SalesHeader."Document Type"::Order] THEN
            SalesHeader.TESTFIELD("Salesperson Code");
        //<<oa.dt CAS-07395-Z5B3T7
    end;

    [EventSubscriber(ObjectType::Codeunit, 80, 'OnBeforePostSalesDoc', '', false, false)]
    local procedure OnBeforePostSalesDoc(var SalesHeader: Record "Sales Header")
    begin
        //>>oa.dt CAS-07395-Z5B3T7
        IF SalesHeader."Document Type" IN [SalesHeader."Document Type"::Invoice, SalesHeader."Document Type"::Order] THEN
            SalesHeader.TESTFIELD("Salesperson Code");
        //<<oa.dt CAS-07395-Z5B3T7
    end;
}

