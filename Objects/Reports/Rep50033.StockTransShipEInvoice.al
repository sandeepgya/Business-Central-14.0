report 50033 "Stock Trans Ship EInvoice"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/StockTransShipEInvoice.rdlc';
    Caption = 'Stock Transfer Note';
    Permissions = TableData "Item Ledger Entry" = rm;

    dataset
    {
        dataitem("Transfer Shipment Header"; "Transfer Shipment Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.";
            column(CompanyinfoName; recCompanyInfo.Name)
            {
            }
            column(CompanyinfoAddress; recCompanyInfo.Address)
            {
            }
            column(Companyinfoaddress2; recCompanyInfo."Address 2")
            {
            }
            column(Companiinfopostcode; recCompanyInfo."Post Code")
            {
            }
            column(Companyinfocity; recCompanyInfo.City)
            {
            }
            column(BankName; recCompanyInfo."Bank Name")
            {
            }
            column(CompanyGST; recCompanyInfo."GST Registration No.")
            {
            }
            column(CompPAN; recCompanyInfo."P.A.N. No.")
            {
            }
            column(BankBranch; recCompanyInfo."Bank Branch No.")
            {
            }
            column(BankIFSCCode; recCompanyInfo."IFSC Code")
            {
            }
            column(AccountNo; recCompanyInfo."Bank Account No.")
            {
            }
            column(CompanyinfoState; recCompanyInfo."State Code")
            {
            }
            column(CompanyinfoTIN; recCompanyInfo."Company Registration  No.")
            {
            }
            column(Companyinfophoneno; recCompanyInfo."Phone No.")
            {
            }
            column(CompStateName; CompStateName)
            {
            }
            column(InvoiceHeading; txtReportHeading)
            {
            }
            column(CompanyName; recLocation.Name)
            {
            }
            column(CompanyName2; recLocation."Name 2")
            {
            }
            column(CompanyAddress; recLocation.Address)
            {
            }
            column(CompanyAddress2; recLocation."Address 2")
            {
            }
            column(CompanyCity; recLocation.City)
            {
            }
            column(CompanyPostCode; recLocation."Post Code")
            {
            }
            column(ContectPerson; recLocation.Contact)
            {
            }
            column(ContectNo; recLocation."Phone No.")
            {
            }
            column(ContectPersonTO; recLocationTo.Contact)
            {
            }
            column(ContectNoTo; recLocationTo."Phone No.")
            {
            }
            column(toName; recLocationTo.Name)
            {
            }
            column(txtCoCityStateCountry; txtCoCityStateCountry)
            {
            }
            column(txtLocCityStateCountry; txtLocCityStateCountry)
            {
            }
            column(txtLoctoCityStateCountry; txtLoctoCityStateCountry)
            {
            }
            column(CompanyState; txtCompanyState)
            {
            }
            column(CompanyCountry; txtCompanyCountry)
            {
            }
            column(CompanyTIN; '')//recLocation."T.I.N. No.")
            {
            }
            column(CompanyTINTo; '')//recLocationTo."T.I.N. No.")
            {
            }
            column(OrderNo; "Transfer Shipment Header"."No.")
            {
            }
            column(PostingDate; "Transfer Shipment Header"."Posting Date")
            {
            }
            column(ShiptoEmail; recLocation."E-Mail")
            {
            }
            column(VendorState; txtVenderState)
            {
            }
            column(VendorCountry; txtVendorCountry)
            {
            }
            column(ShipfromName; "Transfer Shipment Header"."Transfer-from Name 2")
            {
            }
            column(ShipfromAddress; "Transfer Shipment Header"."Transfer-from Address")
            {
            }
            column(ShipfromAddress2; "Transfer Shipment Header"."Transfer-from Address 2")
            {
            }
            column(ShipfromCity; "Transfer Shipment Header"."Transfer-from City")
            {
            }
            column(ShipfromPostCode; "Transfer Shipment Header"."Transfer-from Post Code")
            {
            }
            column(ShiptoName; "Transfer Shipment Header"."Transfer-to Name 2")
            {
            }
            column(ShiptoAddress; "Transfer Shipment Header"."Transfer-to Address")
            {
            }
            column(ShiptoAddress2; "Transfer Shipment Header"."Transfer-to Address 2")
            {
            }
            column(ShiptoCity; "Transfer Shipment Header"."Transfer-to City")
            {
            }
            column(ShiptoPostCode; "Transfer Shipment Header"."Transfer-to Post Code")
            {
            }
            column(RequsitionNo; "Transfer Shipment Header"."Transfer Order No.")
            {
            }
            column(RequsitionDate; "Transfer Shipment Header"."Transfer Order Date")
            {
            }
            column(VehicleNo; "Transfer Shipment Header"."Vehicle No.")
            {
            }
            column(ShippingAgent; "Transfer Shipment Header"."Shipping Agent Code")
            {
            }
            column(ShipmentMethod; "Transfer Shipment Header"."Shipment Method Code")
            {
            }
            column(STNNo; "Transfer Shipment Header"."No.")
            {
            }
            column(STNDate; "Transfer Shipment Header"."Posting Date")
            {
            }
            column(PANNo; recCompanyInfo."P.A.N. No.")
            {
            }
            column(TrackingNumber; "Transfer Shipment Header"."LR/RR No.")
            {
            }
            column(CoCSTNo; '')// recLocation."C.S.T No.")
            {
            }
            column(decTotaAmount; decTotaAmount)
            {
            }
            column(HdComment; RecInvCommentLine.Comment)
            {
            }
            column(decTotalQty; decTotalQty)
            {
            }
            column(UOM; recPurchInvLine."Unit of Measure")
            {
            }
            column(txtFormF; txtFormF)
            {
            }
            column(GSTINFrom; GSTINFrom)
            {
            }
            column(GSTINTo; GSTINTo)
            {
            }
            column(StateCodeFrom; StateCodeFrom)
            {
            }
            column(StateCodeTo; StateCodeTo)
            {
            }
            column(StateNameFrom; StateNameFrom)
            {
            }
            column(StateNameTo; StateNameTo)
            {
            }
            column(Code1; Code1)
            {
            }
            column(code2; Code2)
            {
            }
            column(Comments; Comments)
            {
            }
            column(TransferFromName; TransferFromName)
            {
            }
            column(TransferFromAddress; TransferFromAddress)
            {
            }
            column(TransferFromAddress2; TransferFromAddress2)
            {
            }
            column(TransferFromCity; TransferFromCity)
            {
            }
            column(TransferFromPostcode; TransferFromPostCode)
            {
            }
            column(TransferToName; TransferToName)
            {
            }
            column(TransferToAddress; TransferToAddress)
            {
            }
            column(TransferToAddress2; TransferToAddress2)
            {
            }
            column(TransferToCity; TransferToCity)
            {
            }
            column(TransferToPostcode; TransferToPostCode)
            {
            }
            column(TransferFromNumber1; TransferFromNumber1)
            {
            }
            column(TransferToNumber1; TransferToNumber1)
            {
            }
            //column(QRCode; "Transfer Shipment Header"."QR Code")
            //{
            //}
            //column(IRNHash; "Transfer Shipment Header"."IRN Hash")
            //{
            //}
            column(AckNo; "Transfer Shipment Header"."Ack No.")
            {
            }
            column(AckCancelDate; "Transfer Shipment Header"."Ack./Cancel Date")
            {
            }
            dataitem("Transfer Shipment Line"; "Transfer Shipment Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document No.", "Line No.") ORDER(Ascending) WHERE(Quantity = FILTER(<> 0));
                column(ItemNo; "Transfer Shipment Line"."Item No.")
                {
                }
                column(UnitOfMeasure; "Transfer Shipment Line"."Unit of Measure Code")
                {
                }
                column(Description; "Transfer Shipment Line".Description)
                {
                }
                column(Quantity; "Transfer Shipment Line".Quantity)
                {
                }
                column(UnitCost; "Transfer Shipment Line"."Unit Price")
                {
                }
                column(Amount; "Transfer Shipment Line".Amount)
                {
                }
                column(GSTBaseAmount_TransferShipmentLine; '')//"Transfer Shipment Line"."GST Base Amount")
                {
                }
                column(GST_TransferShipmentLine; '')//"Transfer Shipment Line"."GST %")
                {
                }
                column(HSNSACCode_TransferShipmentLine; "Transfer Shipment Line"."HSN/SAC Code")
                {
                }
                column(intSerialNo; intSerialNo)
                {
                }
                column(TotalQty; decTotalLineQty)
                {
                }
                column(cdLotNo; cdLotNo)
                {
                }
                column(GSTGroupCode_TransferShipmentLine; "Transfer Shipment Line"."GST Group Code")
                {
                }
                column(Amountinwords; Amountinwords)
                {
                }
                column(TaxAmountinWords; TaxAmountinWords)
                {
                }
                column(RateIGST; RateIGST)
                {
                }
                column(AMTIGST; AMTIGST)
                {
                }
                column(TaxGSTAmount; TaxGSTAmount)
                {
                }
                column(TaxAmountinWords1; TaxAmountinWords)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    recItem.GET("Transfer Shipment Line"."Item No.");
                    intSerialNo += 1;
                    recValEntry.RESET;
                    recValEntry.SETRANGE("Document No.", "Document No.");
                    recValEntry.SETRANGE("Document Line No.", "Line No.");
                    cdLotNo := '';
                    IF recValEntry.FIND('-') THEN BEGIN
                        recItemLedger.RESET;
                        recItemLedger.SETRANGE("Entry No.", recValEntry."Item Ledger Entry No.");
                        IF recItemLedger.FIND('-') THEN BEGIN
                            cdLotNo := recItemLedger."Lot No.";
                        END;
                    END;


                    /*
                    CLEAR(GSTAmount);
                    CLEAR(Text0001);
                    CheckReport.InitTextVariable;
                    CheckReport.FormatNoText(Text0001,decTotaAmount,'');
                    Amountinwords:=Text0001[1];
                    */
                    CLEAR(TaxAmount);
                    TransShipLine.RESET;
                    TransShipLine.SETRANGE("Document No.", "Document No.");
                    //TransShipLine.SETRANGE("HSN/SAC Code","HSN/SAC Code");
                    IF TransShipLine.FINDSET THEN
                        REPEAT
                            TaxAmount += TransShipLine.Amount;
                        UNTIL TransShipLine.NEXT = 0;





                    CLEAR(AMTIGST);
                    DetailGSTLedgerEntry.RESET;
                    DetailGSTLedgerEntry.SETRANGE("Transaction Type", DetailGSTLedgerEntry."Transaction Type"::Sales);
                    DetailGSTLedgerEntry.SETRANGE("Document Type", DetailGSTLedgerEntry."Document Type"::Invoice);
                    DetailGSTLedgerEntry.SETRANGE("Document No.", "Document No.");
                    DetailGSTLedgerEntry.SETRANGE("Document Line No.", "Line No.");

                    DetailGSTLedgerEntry.SETRANGE(DetailGSTLedgerEntry."Document Line No.", "Line No.");
                    DetailGSTLedgerEntry.SETRANGE("GST Component Code", 'IGST');
                    IF DetailGSTLedgerEntry.FINDFIRST THEN BEGIN
                        RateIGST := DetailGSTLedgerEntry."GST %";
                        AMTIGST := ABS(DetailGSTLedgerEntry."GST Amount");
                    END ELSE BEGIN
                        RateIGST := 0;
                        AMTIGST := 0;
                    END;



                    CLEAR(TaxGSTAmount);
                    DetailGSTLedgerEntry.RESET;
                    DetailGSTLedgerEntry.SETRANGE("Transaction Type", DetailGSTLedgerEntry."Transaction Type"::Sales);
                    DetailGSTLedgerEntry.SETRANGE("Document Type", DetailGSTLedgerEntry."Document Type"::Invoice);
                    DetailGSTLedgerEntry.SETRANGE("Document No.", "Document No.");
                    DetailGSTLedgerEntry.SETRANGE("GST Component Code", 'IGST');
                    IF DetailGSTLedgerEntry.FINDFIRST THEN
                        REPEAT
                            TaxGSTAmount += DetailGSTLedgerEntry."GST Amount";
                        UNTIL DetailGSTLedgerEntry.NEXT = 0;

                    CLEAR(decTotaAmount1);
                    decTotaAmount1 := decTotaAmount + ABS(TaxGSTAmount);

                    //CLEAR(TaxAmountinWords);
                    CLEAR(Text0003);
                    CheckReport.InitTextVariable;
                    CheckReport.FormatNoText(Text0003, (TaxGSTAmount * (-1)), '');
                    TaxAmountinWords := Text0003[1];



                    CLEAR(GSTAmount);
                    CLEAR(Text0001);
                    CheckReport.InitTextVariable;
                    CheckReport.FormatNoText(Text0001, decTotaAmount1, '');
                    Amountinwords := Text0001[1];

                end;
            }

            trigger OnAfterGetRecord()
            var
                Cust: Record Customer;
            begin
                recCompanyInfo.GET;
                recLocation.GET("Transfer Shipment Header"."Transfer-from Code");
                recLocationTo.GET("Transfer Shipment Header"."Transfer-to Code");

                IF recState.GET(recLocation."State Code") THEN
                    txtCompanyState := recState.Description
                ELSE
                    txtCompanyState := '';

                IF recCountry.GET(recLocation."Country/Region Code") THEN
                    txtCompanyCountry := recCountry.Name
                ELSE
                    txtCompanyCountry := '';

                txtLocCityStateCountry := recLocation.City;
                IF recState.GET(recLocation."State Code") THEN BEGIN
                    IF txtLocCityStateCountry <> '' THEN
                        txtLocCityStateCountry += ', ' + recState.Description;
                END;


                IF (recLocation."Post Code" <> '') THEN
                    txtLocCityStateCountry += ' - ' + recLocation."Post Code";
                IF recCountry.GET(recLocation."Country/Region Code") THEN BEGIN
                    IF txtLocCityStateCountry <> '' THEN
                        txtLocCityStateCountry += ' (' + recCountry.Name + ')';
                END;



                txtLoctoCityStateCountry := recLocationTo.City;
                IF recState.GET(recLocationTo."State Code") THEN BEGIN
                    IF txtLoctoCityStateCountry <> '' THEN
                        txtLoctoCityStateCountry += ', ' + recState.Description;
                END;


                IF (recLocationTo."Post Code" <> '') THEN
                    txtLoctoCityStateCountry += ' - ' + recLocation."Post Code";
                IF recCountry.GET(recLocationTo."Country/Region Code") THEN BEGIN
                    IF txtLoctoCityStateCountry <> '' THEN
                        txtLoctoCityStateCountry += ' (' + recCountry.Name + ')';
                END;



                decTotalLineQty := 0;

                //recPaymentTerms.GET("Transfer Shipment Header"."Payment Terms Code");
                recPurchInvLine.RESET;
                recPurchInvLine.SETRANGE("Document No.", "No.");
                decTotaAmount := 0;
                decTaxAmt := 0;
                decDiscount := 0;
                decTotalQty := 0;

                IF recPurchInvLine.FIND('-') THEN BEGIN
                    REPEAT
                        decTotaAmount += recPurchInvLine.Amount;
                        decTotalQty += recPurchInvLine.Quantity;
                    UNTIL recPurchInvLine.NEXT = 0;
                END;
                CLEAR(Comments);
                RecInvCommentLine.RESET;
                //RecInvCommentLine.SETRANGE("Document Type",2);
                RecInvCommentLine.SETRANGE("No.", "No.");
                //RecInvCommentLine.SETRANGE("Line No.",10000);
                IF RecInvCommentLine.FIND('-') THEN BEGIN
                    REPEAT
                        Comments := RecInvCommentLine.Comment;
                    UNTIL RecInvCommentLine.NEXT = 0;
                END;
                // txtFormF := '';
                // IF "Transfer Shipment Header"."Form Code" <> '' THEN
                //     txtFormF := 'Special Note: Material Issued Against Form "F"'
                // ELSE
                //     txtFormF := ''; //OA.AS Commented




                // >> PMT.REP.CLEAR(GSTINFrom);
                CLEAR(GSTINTo);
                CLEAR(StateCodeFrom);
                CLEAR(StateCodeTo);
                CLEAR(StateNameFrom);
                CLEAR(StateNameTo);
                CLEAR(Code1);
                CLEAR(Code2);
                IF recLocation.GET("Transfer-from Code") THEN BEGIN
                    GSTINFrom := recLocation."GST Registration No.";
                    StateCodeFrom := recLocation."State Code";
                END;

                IF recLocationTo.GET("Transfer Shipment Header"."Transfer-to Code") THEN BEGIN
                    IF recLocationTo."Demo Location" THEN BEGIN
                        IF Cust.GET("Transfer Shipment Header"."Party No.") THEN;
                        GSTINTo := Cust."GST Registration No.";
                        StateCodeTo := Cust."State Code";
                    END ELSE BEGIN
                        GSTINTo := recLocationTo."GST Registration No.";
                        StateCodeTo := recLocationTo."State Code";
                    END;
                END;

                IF State.GET(StateCodeFrom) THEN BEGIN
                    StateNameFrom := State.Description;
                    Code1 := State."State Code (GST Reg. No.)";
                END;
                IF StateTo.GET(StateCodeTo) THEN BEGIN
                    StateNameTo := StateTo.Description;
                    Code2 := StateTo."State Code (GST Reg. No.)";
                END;



                CLEAR(TransferFromName);
                CLEAR(TransferFromAddress);
                CLEAR(TransferFromAddress2);
                CLEAR(TransferFromCity);
                CLEAR(TransferFromPostCode);
                CLEAR(TransferToName);
                CLEAR(TransferToAddress);
                CLEAR(TransferToAddress2);
                CLEAR(TransferToCity);
                CLEAR(TransferToPostCode);
                CLEAR(TransferFromNumber1);
                CLEAR(TransferToNumber1);

                RecLocFrom.RESET;
                RecLocFrom.SETRANGE(Code, "Transfer Shipment Header"."Transfer-from Code");
                IF RecLocFrom.FINDFIRST THEN BEGIN
                    TransferFromName := RecLocFrom.Name;
                    TransferFromAddress := RecLocFrom.Address;
                    TransferFromAddress2 := RecLocFrom."Address 2";
                    TransferFromCity := RecLocFrom.City;
                    TransferFromPostCode := RecLocFrom."Post Code";
                    TransferFromNumber1 := RecLocFrom."Phone No.";
                END;

                RecLocTo.RESET;
                RecLocTo.SETRANGE(Code, "Transfer Shipment Header"."Transfer-to Code");
                IF RecLocTo.FINDFIRST THEN BEGIN
                    IF RecLocTo."Demo Location" THEN BEGIN
                        IF Cust.GET("Transfer Shipment Header"."Party No.") THEN;
                        TransferToName := Cust.Name;
                        TransferToAddress := Cust.Address;
                        TransferToAddress2 := Cust."Address 2";
                        TransferToCity := Cust.City;
                        TransferToPostCode := Cust."Post Code";
                        TransferToNumber1 := Cust."Phone No.";
                    END ELSE BEGIN
                        TransferToName := RecLocTo.Name;
                        TransferToAddress := RecLocTo.Address;
                        TransferToAddress2 := RecLocTo."Address 2";
                        TransferToCity := RecLocTo.City;
                        TransferToPostCode := RecLocTo."Post Code";
                        TransferToNumber1 := recLocationTo."Phone No.";
                    END;
                END;


                CLEAR(CompStateName);
                IF recCompanyInfo."State Code" <> '' THEN
                    IF recState.GET(recCompanyInfo."State Code") THEN
                        CompStateName := recState.Description;
            end;
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

    labels
    {
    }

    var
        recCompanyInfo: Record "Company Information";
        txtReportHeading: Text[50];
        recLocation: Record Location;
        recState: Record State;
        txtCompanyState: Text[50];
        recCountry: Record "Country/Region";
        txtCompanyCountry: Text[50];
        txtVendorState: Text[50];
        txtVendorCountry: Text[50];
        recVendor: Record Vendor;
        recBuyfromVendor: Record Vendor;
        recItem: Record Item;
        decDiscount: Decimal;
        decTax: Decimal;
        decTotalLineAmount: Decimal;
        intSerialNo: Integer;
        recSalesInvLine: Record "Sales Invoice Line";
        txtShiptoState: Text[50];
        txtShiptoCountry: Text[50];
        cdLotNo: Code[20];
        txtVenderState: Text[30];
        txtLocCityStateCountry: Text[50];
        txtCoCityStateCountry: Text[50];
        recPaymentTerms: Record "Payment Terms";
        decTotalLineQty: Decimal;
        recPurchInvLine: Record "Transfer Shipment Line";
        decTotaAmount: Decimal;
        recValEntry: Record "Value Entry";
        recItemLedger: Record "Item Ledger Entry";
        decTaxAmt: Decimal;
        // recStructure: Record "Posted Structure Order Details";
        decFreight: Decimal;
        recLocationTo: Record Location;
        txtLoctoCityStateCountry: Text[50];
        RecInvCommentLine: Record "Inventory Comment Line";
        decTotalQty: Decimal;
        txtFormF: Text[80];
        Text0001: array[1] of Text;
        GSTAmount: Decimal;
        TaxAmount: Decimal;
        TransShipLine: Record "Transfer Shipment Line";
        Text0003: array[1] of Text;
        TaxAmountinWords: Text;
        GSTINFrom: Code[30];
        GSTINTo: Code[30];
        StateNameFrom: Text;
        StateNameTo: Text;
        StateCodeFrom: Code[10];
        StateCodeTo: Code[10];
        State: Record State;
        StateTo: Record State;
        Code1: Code[10];
        Code2: Code[10];
        Amountinwords: Text;
        CheckReport: Report 1401;
        DetailGSTLedgerEntry: Record "Detailed GST Ledger Entry";
        AMTIGST: Decimal;
        RateIGST: Decimal;
        TaxGSTAmount: Decimal;
        decTotaAmount1: Decimal;
        InventoryCommentLine: Record "Inventory Comment Line";
        Comments: Text;
        TransferFromName: Text;
        TransferFromAddress: Text;
        TransferFromAddress2: Text;
        TransferFromCity: Text;
        TransferFromPostCode: Text;
        TransferToName: Text;
        TransferToAddress: Text;
        TransferToAddress2: Text;
        TransferToCity: Text;
        TransferToPostCode: Text;
        RecLocFrom: Record Location;
        RecLocTo: Record Location;
        TransferFromNumber1: Code[30];
        TransferToNumber1: Code[30];
        CompStateName: Text;
}

