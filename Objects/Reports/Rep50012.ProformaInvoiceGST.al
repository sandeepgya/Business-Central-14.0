report 50012 "Proforma Invoice-GST"
{
    // 1. TRI S.S 12.07.17 - New report created for "GST" Functionality.
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/ProformaInvoiceGST.rdlc';


    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            // CalcFields = Amount to Customer;
            CalcFields = Amount, "Amount Including VAT";
            RequestFilterFields = "No.";
            column(InvoiceNo; "Sales Header"."No.")
            {
            }
            column(FinalAmt; FinalAmt)
            {
            }
            column(PayTerms; "Sales Header"."Payment Terms Code")
            {
            }
            column(FinalAmtWrds; FinalAmtWrds[1])
            {
            }
            column(Location_Name; tgLocation.Name)
            {
            }
            column(Location_Name2; tgLocation."Name 2")
            {
            }
            column(Location_Address; tgLocation.Address)
            {
            }
            column(Location_Address_2; tgLocation."Address 2")
            {
            }
            column(Location_PostCode; tgLocation."Post Code")
            {
            }
            column(Location_City; tgLocation.City)
            {
            }
            column(Location_State; tgStateName)
            {
            }
            column(Location_GSTRegistration; tgLocation."GST Registration No.")
            {
            }
            column(Remarks; 'Remarks : ' + tgRemarks)
            {
            }
            column(PayTermsDes; PayTermsDes)
            {
            }
            column(Payment_Method_Code; "Payment Method Code")
            {
            }
            column(Customer_PO_No; "External Document No.")
            {
            }
            column(Order_Date; FORMAT("Order Date"))
            {
            }
            column(Challan_No_And_Date; 'Test')
            {
            }
            column(GSTBilltoStateCode_SalesHeader; "Sales Header"."GST Bill-to State Code")
            {
            }
            column(GSTShiptoStateCode_SalesHeader; "Sales Header"."GST Ship-to State Code")
            {
            }
            column(BillToStateCode; BillToStateCode)
            {
            }
            column(BillToSateName; BillToSateName)
            {
            }
            column(ShipToStateCode; ShipToStateCode)
            {
            }
            column(ShiplToSateName; ShiplToSateName)
            {
            }
            column(BillToCity; BillToCity)
            {
            }
            column(ShiplToCity; ShipToCity)
            {
            }
            column(BillToGSTNo; BillToGSTNo)
            {
            }
            column(ShipToGSTNo; ShipToGSTNo)
            {
            }
            column(CompStateCode; CompStateCode)
            {
            }
            column(CompSateName; CompSateName)
            {
            }
            column(CompCINNo; 'CIN No : ' + CompInfo."Company Registration  No.")
            {
            }
            column(ShipmentMethodeDes; ShipmentMethodeDes)
            {
            }
            column(placeofSupply; placeofSupply)
            {
            }
            column(ReverseCharge; FORMAT(ReverseCharge))
            {
            }
            column(LoaStateCode; LoaStateCode)
            {
            }
            column(LoaStateName; LoaStateName)
            {
            }
            column(GSTonReverseCharge; GSTonReverseCharge)
            {
            }
            column(VehicleNo_SalesInvoiceHeader; "Sales Header"."Vehicle No.")
            {
            }
            column(DateOfRemoval_SalesHeader; 'TEST')
            {
            }
            column(Num_Curr; '')//tgCurrency."Currency Numeric Description")
            {
            }
            column(Dec_Curr; '')//tgCurrency."Currency Decimal Description")
            {
            }
            column(AmounttoCustomer_SalesInvoiceHeader; '')// "Sales Header"."Amount to Customer")
            {
            }
            column(BillToName1; BillToName1)
            {
            }
            column(BillToAdd1; BillToAdd1)
            {
            }
            column(ModeofTransport_SalesInvoiceHeader; "Mode of Transport")
            {
            }
            column(Payment_Mode; tgPaymentMode)
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(CopyText; CopyText)
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(CompName; CompInfo.Name)
                    {
                    }
                    column(CompAddress; CompInfo.Address)
                    {
                    }
                    column(CompAddress2; CompInfo."Address 2")
                    {
                    }
                    column(CompPostCode; CompInfo."Post Code")
                    {
                    }
                    column(CompCity; CompInfo.City)
                    {
                    }
                    column(CompCountry; CompInfo."Country/Region Code")
                    {
                    }
                    column(CompState; CompInfo."State Code")
                    {
                    }
                    column(ExiciseECCNo; '')//CompInfo."E.C.C. No.")
                    {
                    }
                    column(ExciseCERange; '')// CompInfo."C.E. Range")
                    {
                    }
                    column(ExciseCommission; '')// CompInfo."C.E. Commissionerate")
                    {
                    }
                    column(ExciseDivision; '')// CompInfo."C.E. Division")
                    {
                    }
                    column(CompTINNo; '')// CompInfo."T.I.N. No.")
                    {
                    }
                    column(CompInfo_Picture; CompInfo.Picture)
                    {
                    }
                    column(CompInfo_PhoneNo; CompInfo."Phone No.")
                    {
                    }
                    column(CompInfo_GSTRegistrationNo; CompInfo."GST Registration No.")
                    {
                    }
                    column(CompInfo_BankAccountNo; CompInfo."Bank Account No.")
                    {
                    }
                    column(CompInfo_BankIFSCCode; CompInfo."IFSC Code")
                    {
                    }
                    column(CompInfo_PANNo; CompInfo."P.A.N. No.")
                    {
                    }
                    column(CustTin; '')//CustRec."T.I.N. No.")
                    {
                    }
                    column(CustName; CustRec.Name)
                    {
                    }
                    column(CustAddress; CustRec.Address)
                    {
                    }
                    column(CustAddress2; CustRec."Address 2")
                    {
                    }
                    column(CustPostCode; CustRec."Post Code")
                    {
                    }
                    column(CustCity; CustRec.City)
                    {
                    }
                    column(CustECCNo; '')//CustRec."E.C.C. No.")
                    {
                    }
                    column(CustRange; '')//CustRec.Range)
                    {
                    }
                    column(CustCommission; '')// CustRec.Collectorate)
                    {
                    }
                    column(CustNo; CustRec."No.")
                    {
                    }
                    column(TelNo; CustRec."Phone No.")
                    {
                    }
                    column(ShipName; ShipToName)
                    {
                    }
                    column(ShipAdd; ShipToAdd)
                    {
                    }
                    column(PayTermsCode; "Sales Header"."Payment Terms Code")
                    {
                    }
                    column(PostingDate; FORMAT("Sales Header"."Posting Date"))
                    {
                    }
                    column(TaxChargeName1; txtTaxChargeName[1])
                    {
                    }
                    column(TaxChargeAmount1; decTaxChargeAmount[1])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName2; txtTaxChargeName[2])
                    {
                    }
                    column(TaxChargeAmount2; decTaxChargeAmount[2])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName3; txtTaxChargeName[3])
                    {
                    }
                    column(TaxChargeAmount3; decTaxChargeAmount[3])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName4; txtTaxChargeName[4])
                    {
                    }
                    column(TaxChargeAmount4; decTaxChargeAmount[4])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName5; txtTaxChargeName[5])
                    {
                    }
                    column(TaxChargeAmount5; decTaxChargeAmount[5])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName6; txtTaxChargeName[6])
                    {
                    }
                    column(TaxChargeAmount6; decTaxChargeAmount[6])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName7; txtTaxChargeName[7])
                    {
                    }
                    column(TaxChargeAmount7; decTaxChargeAmount[7])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName8; txtTaxChargeName[8])
                    {
                    }
                    column(TaxChargeAmount8; decTaxChargeAmount[8])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName9; txtTaxChargeName[9])
                    {
                    }
                    column(TaxChargeAmount9; decTaxChargeAmount[9])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName10; txtTaxChargeName[10])
                    {
                    }
                    column(TaxChargeAmount10; decTaxChargeAmount[10])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName11; txtTaxChargeName[11])
                    {
                    }
                    column(TaxChargeAmount11; decTaxChargeAmount[11])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName12; txtTaxChargeName[12])
                    {
                    }
                    column(TaxChargeAmount12; decTaxChargeAmount[12])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName13; txtTaxChargeName[13])
                    {
                    }
                    column(TaxChargeAmount13; decTaxChargeAmount[13])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName14; txtTaxChargeName[14])
                    {
                    }
                    column(TaxChargeAmount14; decTaxChargeAmount[14])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName15; txtTaxChargeName[15])
                    {
                    }
                    column(TaxChargeAmount15; decTaxChargeAmount[15])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName16; txtTaxChargeName[16])
                    {
                    }
                    column(TaxChargeAmount16; decTaxChargeAmount[16])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName17; txtTaxChargeName[17])
                    {
                    }
                    column(TaxChargeAmount17; decTaxChargeAmount[17])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName18; txtTaxChargeName[18])
                    {
                    }
                    column(TaxChargeAmount18; decTaxChargeAmount[18])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(TaxChargeName19; txtTaxChargeName[19])
                    {
                    }
                    column(TaxChargeAmount19; decTaxChargeAmount[19])
                    {
                        DecimalPlaces = 2 : 2;
                    }
                    column(ShipMethdDes; ShipMethdDes)
                    {
                    }
                    column(CustOrdNo; "Sales Header"."No.")
                    {
                    }
                    dataitem("Sales Line"; "Sales Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = WHERE(Quantity = FILTER(<> 0));
                        column(ItemNo; "No.")
                        {
                        }
                        column(SalesLineNo; "Line No.")
                        {
                        }
                        column(SalesLineDesc; tgInvoiceDesc)
                        {
                        }
                        column(Description_SalesLine; "Sales Line".Description)
                        {
                        }
                        column(Qty; "Sales Line".Quantity)
                        {
                        }
                        column(Rate; "Sales Line"."Unit Price")
                        {
                        }
                        column(UM; "Sales Line"."Unit of Measure Code")
                        {
                        }
                        column(LineAmount; "Sales Line"."Line Amount")
                        {
                        }
                        column(Sno; Sno)
                        {
                        }
                        column(LAmt; LAmt)
                        {
                        }
                        column(VatAmt; VatAmt)
                        {
                        }
                        column(VatPer; VatPer)
                        {
                        }
                        column(RateCGST; RateCGST)
                        {
                        }
                        column(AMTCGST; AMTCGST * (-1))
                        {
                        }
                        column(RateSGST; RateSGST)
                        {
                        }
                        column(AMTSGST; AMTSGST * (-1))
                        {
                        }
                        column(RateIGST; RateIGST)
                        {
                        }
                        column(AMTIGST; AMTIGST * (-1))
                        {
                        }
                        column(HSNSACCode_SalesLine; "Sales Line"."HSN/SAC Code")
                        {
                        }
                        column(LineDiscountAmount_SalesLine; "Sales Line"."Line Discount Amount")
                        {
                        }
                        column(Amount_SalesInvoiceLine; "Sales Line".Amount)
                        {
                        }
                        column(TDSTCSAmount_SalesLine; '')//"Sales Line"."TDS/TCS Amount")
                        {
                        }
                        column(GSTBaseAmount_SalesLine; '')//"Sales Line"."GST Base Amount")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            Sno += 1;

                            VatAmt := 0;
                            VatPer := 0;
                            VatPer := 0;//"Tax %";
                            VatAmt := 0;//"Tax Amount";

                            LAmt := 0;
                            LAmt := "Line Amount";
                            /*
                            //TRI V.D 17.07.17 START
                            CLEAR(tgInvoiceDesc);
                            IF "Invoice Description" <> '' THEN
                              tgInvoiceDesc := "Invoice Description"
                            ELSE
                              tgInvoiceDesc := Description + ' ' + "Description 2";
                            //TRI V.D 17.07.17 STOP
                            */
                            //TRI S.S 28.06.17 START
                            DetailGSTLedgerEntry.RESET;
                            DetailGSTLedgerEntry.SETCURRENTKEY("Transaction Type", "Document Type", "Document No.", "GST Component Code");
                            DetailGSTLedgerEntry.SETRANGE("Transaction Type", DetailGSTLedgerEntry."Transaction Type"::Sales);
                            DetailGSTLedgerEntry.SETFILTER("Document Type", '%1|%2', DetailGSTLedgerEntry."Document Type"::Invoice, DetailGSTLedgerEntry."Document Type"::Order);

                            DetailGSTLedgerEntry.SETRANGE("Document No.", "Document No.");
                            DetailGSTLedgerEntry.SETRANGE("No.", "No.");
                            DetailGSTLedgerEntry.SETRANGE("Line No.", "Sales Line"."Line No.");
                            DetailGSTLedgerEntry.SETRANGE("GST Component Code", 'CGST');
                            IF DetailGSTLedgerEntry.FINDFIRST THEN BEGIN
                                RateCGST := DetailGSTLedgerEntry."GST %";
                                AMTCGST := DetailGSTLedgerEntry."GST Amount";
                            END ELSE BEGIN
                                RateCGST := 0;
                                AMTCGST := 0;
                            END;

                            DetailGSTLedgerEntry.RESET;
                            DetailGSTLedgerEntry.SETCURRENTKEY("Transaction Type", "Document Type", "Document No.", "GST Component Code");
                            DetailGSTLedgerEntry.SETRANGE("Transaction Type", DetailGSTLedgerEntry."Transaction Type"::Sales);
                            DetailGSTLedgerEntry.SETFILTER("Document Type", '%1|%2', DetailGSTLedgerEntry."Document Type"::Invoice, DetailGSTLedgerEntry."Document Type"::Order);
                            DetailGSTLedgerEntry.SETRANGE("Document No.", "Document No.");
                            DetailGSTLedgerEntry.SETRANGE("No.", "No.");
                            DetailGSTLedgerEntry.SETRANGE("Line No.", "Sales Line"."Line No.");
                            DetailGSTLedgerEntry.SETRANGE("GST Component Code", 'SGST');
                            IF DetailGSTLedgerEntry.FINDFIRST THEN BEGIN
                                RateSGST := DetailGSTLedgerEntry."GST %";
                                AMTSGST := DetailGSTLedgerEntry."GST Amount";
                            END ELSE BEGIN
                                RateSGST := 0;
                                AMTSGST := 0;
                            END;

                            DetailGSTLedgerEntry.RESET;
                            DetailGSTLedgerEntry.SETCURRENTKEY("Transaction Type", "Document Type", "Document No.", "GST Component Code");
                            DetailGSTLedgerEntry.SETRANGE("Transaction Type", DetailGSTLedgerEntry."Transaction Type"::Sales);
                            DetailGSTLedgerEntry.SETFILTER("Document Type", '%1|%2', DetailGSTLedgerEntry."Document Type"::Invoice, DetailGSTLedgerEntry."Document Type"::Order);
                            DetailGSTLedgerEntry.SETRANGE("Document No.", "Document No.");
                            DetailGSTLedgerEntry.SETRANGE("No.", "No.");
                            DetailGSTLedgerEntry.SETRANGE("Line No.", "Sales Line"."Line No.");
                            DetailGSTLedgerEntry.SETRANGE("GST Component Code", 'IGST');
                            IF DetailGSTLedgerEntry.FINDFIRST THEN BEGIN
                                RateIGST := DetailGSTLedgerEntry."GST %";
                                AMTIGST := DetailGSTLedgerEntry."GST Amount";
                            END ELSE BEGIN
                                RateIGST := 0;
                                AMTIGST := 0;
                            END;
                            //TRI S.S 28.06.17 STOP

                        end;

                        trigger OnPreDataItem()
                        begin
                            Sno := 0;
                        end;
                    }

                    trigger OnAfterGetRecord()
                    begin
                        IF Number > 1 THEN BEGIN
                            OutputNo += 1;

                            IF Number = 1 THEN
                                CopyText := 'Original for Recipient';
                            IF Number = 2 THEN
                                CopyText := 'Duplicate for Transporter';
                            IF Number = 3 THEN
                                CopyText := 'Triplicate for Assessee';
                        END;

                        CurrReport.PAGENO := 1;
                    end;

                    trigger OnPreDataItem()
                    begin
                        CompInfo.GET;
                        CustRec.GET("Sales Header"."Bill-to Customer No.");

                        //ShiptoAddress.GET("Sales Header"."Bill-to Customer No.","Sales Header"."Ship-to Code");

                        ShipMethdDes := '';
                        IF ShipMethd.GET("Sales Header"."Shipment Method Code") THEN
                            ShipMethdDes := ShipMethd.Description;
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    IF Number > 0 THEN BEGIN
                        OutputNo += 1;

                        IF Number = 1 THEN
                            CopyText := 'Original for Recipient';
                        IF Number = 2 THEN
                            CopyText := 'Duplicate for Transporter';
                        IF Number = 3 THEN
                            CopyText := 'Triplicate for Supplier';
                    END;

                    CurrReport.PAGENO := 1;
                end;

                trigger OnPreDataItem()
                begin

                    NoOfLoops := ABS(NoOfCopies);
                    IF NoOfLoops <= 0 THEN
                        NoOfLoops := 1;
                    CopyText := '';
                    SETRANGE(Number, 1, 1);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                CLEAR(txtTaxChargeName);
                CLEAR(decTaxChargeAmount);

                CLEAR(tgRemarks);
                CLEAR(tgComments);

                tgComments.RESET;
                tgComments.SETCURRENTKEY("Document Type", "No.", "Document Line No.", "Line No.");
                tgComments.SETRANGE("No.", "No.");
                IF tgComments.FINDFIRST THEN
                    REPEAT
                        tgRemarks := tgRemarks + ' ' + tgComments.Comment;
                    UNTIL tgComments.NEXT = 0;

                // CLEAR(recStructureOrderDetails);
                // recStructureOrderDetails.RESET;
                // recStructureOrderDetails.SETCURRENTKEY(Type, "Calculation Order", "Document Type", "No.", "Structure Code", "Tax/Charge Type",
                //                                        "Tax/Charge Group", "Tax/Charge Code", "Document Line No.");
                // recStructureOrderDetails.SETRANGE(Type, recStructureOrderDetails.Type::Sale);
                // recStructureOrderDetails.SETRANGE("Document Type", recStructureOrderDetails."Document Type"::Invoice);
                // recStructureOrderDetails.SETRANGE("No.", "Sales Header"."No.");
                // recStructureOrderDetails.SETFILTER(recStructureOrderDetails."Tax/Charge Type", '<>%1', recStructureOrderDetails."Tax/Charge Type"::"Sales Tax");
                // recStructureOrderDetails.SETFILTER(recStructureOrderDetails."Tax/Charge Type", '<>%1', recStructureOrderDetails."Tax/Charge Type"::GST);
                // IF recStructureOrderDetails.FINDSET THEN
                //     REPEAT
                //         IF (recStructureOrderDetails."Tax/Charge Type" = recStructureOrderDetails."Tax/Charge Type"::Charges) THEN BEGIN
                //             IF recStructureOrderDetails."Tax/Charge Code" = '' THEN BEGIN
                //                 recTaxChargeGroup.GET(recStructureOrderDetails."Tax/Charge Group");
                //                 txtTaxChargeName[recStructureOrderDetails."Calculation Order"] := recTaxChargeGroup.Description;
                //             END ELSE BEGIN
                //                 IF recTaxChargeGroupDetails.GET(recStructureOrderDetails."Tax/Charge Group", recStructureOrderDetails."Tax/Charge Code") THEN
                //                     txtTaxChargeName[recStructureOrderDetails."Calculation Order"] := recTaxChargeGroupDetails.Description
                //                 ELSE
                //                     txtTaxChargeName[recStructureOrderDetails."Calculation Order"] := recStructureOrderDetails."Tax/Charge Group";
                //             END;
                //         END ELSE
                //             txtTaxChargeName[recStructureOrderDetails."Calculation Order"] := FORMAT(recStructureOrderDetails."Tax/Charge Type");

                //         CLEAR(recStructureOrderLineDetails);
                //         recStructureOrderLineDetails.RESET;
                //         recStructureOrderLineDetails.SETCURRENTKEY(Type, "Calculation Order", "Document Type", "Invoice No.", "Item No.", "Line No.",
                //                                                    "Tax/Charge Type", "Tax/Charge Group", "Tax/Charge Code");
                //         recStructureOrderLineDetails.SETRANGE(Type, recStructureOrderDetails.Type);
                //         recStructureOrderLineDetails.SETRANGE("Calculation Order", recStructureOrderDetails."Calculation Order");
                //         recStructureOrderLineDetails.SETRANGE("Document Type", recStructureOrderDetails."Document Type");
                //         recStructureOrderLineDetails.SETRANGE("Invoice No.", recStructureOrderDetails."No.");
                //         recStructureOrderLineDetails.SETFILTER(recStructureOrderLineDetails."Tax/Charge Type", '<>%1', recStructureOrderLineDetails."Tax/Charge Type"::"Sales Tax");
                //         IF recStructureOrderLineDetails.FINDSET THEN
                //             REPEAT
                //                 decTaxChargeAmount[recStructureOrderDetails."Calculation Order"] += ROUND(recStructureOrderLineDetails.Amount, 0.01);
                //             UNTIL recStructureOrderLineDetails.NEXT = 0;
                //     UNTIL recStructureOrderDetails.NEXT = 0; //OA.AS Commented

                decTotalLineAmount := decTaxChargeAmount[1] + decTaxChargeAmount[2] + decTaxChargeAmount[3] + decTaxChargeAmount[4] + decTaxChargeAmount[5] +
                                      decTaxChargeAmount[6] + decTaxChargeAmount[7] + decTaxChargeAmount[8] + decTaxChargeAmount[9] + decTaxChargeAmount[10] +
                                      decTaxChargeAmount[11] + decTaxChargeAmount[12] + decTaxChargeAmount[13] + decTaxChargeAmount[14] + decTaxChargeAmount[15] +
                                      decTaxChargeAmount[16] + decTaxChargeAmount[17] + decTaxChargeAmount[17] + decTaxChargeAmount[18] + decTaxChargeAmount[19] + decTaxChargeAmount[20];

                // FinalAmt := "Amount to Customer"; //OA.AS Commented
                FinalAmt := Amount;

                RptCheck.InitTextVariable;
                RptCheck.FormatNoText(FinalAmtWrds, FinalAmt, "Currency Code");

                PayTermsDes := '';
                IF PayTerms.GET("Payment Terms Code") THEN
                    PayTermsDes := PayTerms.Description;

                TESTFIELD("Location Code");
                tgLocation.GET("Location Code");

                CLEAR(tgStateName);
                IF tgLocation."State Code" <> '' THEN BEGIN
                    tgState.GET(tgLocation."State Code");
                    tgStateName := tgState.Description;
                END;

                CLEAR(BillToStateCode);
                CLEAR(BillToSateName);
                CLEAR(ShiplToSateName);

                IF RecState.GET("Sales Header"."GST Bill-to State Code") THEN BEGIN
                    BillToStateCode := RecState."State Code (GST Reg. No.)";
                    BillToSateName := RecState.Description;
                END;
                //>>101221 OA.SB
                // IF RecState.GET("Sales Header"."GST Ship-to State Code") THEN BEGIN
                //  ShipToStateCode := RecState."State Code (GST Reg. No.)";
                //  ShiplToSateName := RecState.Description;
                // END ELSE BEGIN
                //  IF CustRec.GET("Sales Header"."Sell-to Customer No.") THEN
                //  IF RecState.GET(CustRec."State Code") THEN BEGIN
                //    ShipToStateCode := RecState."State Code (GST Reg. No.)";
                //    ShiplToSateName := RecState.Description;
                //  END;
                // END;
                //<<101221 OA.SB
                IF RecState.GET(CompInfo."State Code") THEN BEGIN
                    CompStateCode := RecState."State Code (GST Reg. No.)";
                    CompSateName := RecState.Description;
                END;

                CLEAR(ShipToGSTNo);
                CLEAR(BillToGSTNo);
                CLEAR(BillToName1);
                CLEAR(BillToAdd1);
                CLEAR(BillToCity);
                CLEAR(ShipToCity);
                //TRI R.P 29.08.17 DEL

                IF "Sales Header"."Bill-to Customer No." <> '' THEN BEGIN
                    //IF RecShipToAdd.GET("Sell-to Customer No.","Bill-to Customer No.") THEN BEGIN
                    //BillToGSTNo := RecShipToAdd."GST Registration No.";
                    //BillToName1 := RecShipToAdd.Name + ' ' + RecShipToAdd."Name 2";
                    //BillToAdd1 := RecShipToAdd.Address + ' ' + RecShipToAdd."Address 2" + ' ' + RecShipToAdd.City + ' ' +'PIN Code '+ RecShipToAdd."Post Code";
                    //END;

                    BillToName1 := "Sales Header"."Bill-to Name";
                    BillToAdd1 := "Sales Header"."Bill-to Address" + ' ' + "Sales Header"."Bill-to Address 2";
                    BillToCity := "Sales Header"."Bill-to City" + ' PIN CODE ' + "Sales Header"."Bill-to Post Code";
                    IF CustRec.GET("Sales Header"."Bill-to Customer No.") THEN
                        BillToGSTNo := CustRec."GST Registration No.";
                END;

                IF "Sales Header"."Ship-to Code" <> '' THEN BEGIN
                    RecShipToAdd.GET("Sales Header"."Sell-to Customer No.", "Sales Header"."Ship-to Code");
                    ShipToName := RecShipToAdd.Name;
                    ShipToAdd := RecShipToAdd.Address + ' ' + RecShipToAdd."Address 2" + ' ' + RecShipToAdd.City + ' PIN CODE ' + RecShipToAdd."Post Code";
                    ShipToCity := RecShipToAdd.City + ' PIN CODE' + RecShipToAdd."Post Code";
                    //>>101221 OA.SB
                    IF RecState.GET(RecShipToAdd.State) THEN BEGIN
                        ShipToStateCode := RecState."State Code (GST Reg. No.)";
                        ShiplToSateName := RecState.Description;
                    END;
                    //<<101221 OA.SB
                END ELSE BEGIN
                    ShipToName := "Sales Header"."Sell-to Customer Name";
                    ShipToAdd := "Sales Header"."Sell-to Address" + ' ' + "Sales Header"."Sell-to Address 2";
                    ShipToCity := "Sales Header"."Sell-to City" + ' PIN CODE ' + "Sales Header"."Sell-to Post Code";
                    //>>101221 OA.SB
                    IF RecState.GET("Sales Header"."GST Ship-to State Code") THEN BEGIN
                        ShipToStateCode := RecState."State Code (GST Reg. No.)";
                        ShiplToSateName := RecState.Description;
                    END ELSE BEGIN
                        IF CustRec.GET("Sales Header"."Sell-to Customer No.") THEN
                            IF RecState.GET(CustRec."State Code") THEN BEGIN
                                ShipToStateCode := RecState."State Code (GST Reg. No.)";
                                ShiplToSateName := RecState.Description;
                            END;
                    END;
                    //<<101221 OA.SB
                END;
                //TRI R.P 29.08.17 DEL
                IF "Ship-to Code" <> '' THEN BEGIN
                    RecShipToAdd.GET("Sell-to Customer No.", "Ship-to Code");
                    ShipToGSTNo := RecShipToAdd."GST Registration No.";
                END ELSE BEGIN
                    CustRec.GET("Sales Header"."Sell-to Customer No.");
                    ShipToGSTNo := CustRec."GST Registration No.";
                END;

                CLEAR(ShipmentMethodeDes);
                IF ShipmentMethode.GET("Sales Header"."Shipment Method Code") THEN
                    ShipmentMethodeDes := ShipmentMethode.Description;

                CLEAR(placeofSupply);
                RecSL.RESET;
                RecSL.SETCURRENTKEY("Document No.", "Line No.");
                RecSL.SETRANGE("Document No.", "No.");
                IF RecSL.FINDFIRST THEN
                    placeofSupply := RecSL."GST Place of Supply".AsInteger();

                IF RecCustomer.GET("Sell-to Customer No.") THEN BEGIN
                    IF (RecCustomer."GST Customer Type" <> RecCustomer."GST Customer Type"::" ") AND (RecCustomer."GST Customer Type" = RecCustomer."GST Customer Type"::Unregistered) THEN
                        ReverseCharge := TRUE
                    ELSE
                        ReverseCharge := FALSE;
                END;

                IF RecLocation.GET("Sales Header"."Location Code") THEN BEGIN
                    IF RecState.GET(RecLocation."State Code") THEN BEGIN
                        LoaStateCode := RecState."State Code (GST Reg. No.)";
                        LoaStateName := RecState.Description;
                    END;
                END;

                // CLEAR(GSTonReverseCharge);
                // SL.RESET;
                // SL.SETCURRENTKEY("Document No.", "Line No.");
                // SL.SETRANGE("Document No.", "No.");
                // IF SL.FINDSET THEN
                //     REPEAT
                //         GSTonReverseCharge += SL."Total GST Amount";
                //     UNTIL SL.NEXT = 0; //OA.AS Commented
                /*
                IF tgCurrency.GET("Currency Code") THEN;
                //TRI V.D 31.07.17 START
                CLEAR(tgPaymentMode);
                IF "Payment Method Code" <> 'NBFC' THEN
                  tgPaymentMode := 'Mode : DD/chq in favour of "Power2SME Pvt. Ltd."'
                ELSE BEGIN
                  tgNBFCMaster.GET("NBFC ID");
                  tgPaymentMode := 'Mode : NBFC ( ' + tgNBFCMaster."Operation No." + ' )';
                END;
                //TRI V.D 31.07.17 STOP
                */
                /*
                IF "Sales Header"."Bill-to Customer No." <> '' THEN BEGIN
                  BillToCustomer[1] := "Sales Header"."Bill-to Name";
                  BillToCustomer[2] := "Sales Header"."Bill-to Address" + ' ' + "Sales Header"."Bill-to Address 2";
                  BillToCustomer[3] := "Sales Header"."Bill-to City";
                END;
                */

            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(NoOfCopies; NoOfCopies)
                {
                    Caption = 'No. Of Copies';
                    ApplicationArea = All;
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            NoOfCopies := 3;  //TRI V.D 17.07.17 ADD
        end;
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        CompInfo.GET;
        CompInfo.CALCFIELDS(CompInfo.Picture);
    end;

    var
        CompInfo: Record "Company Information";
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        OutputNo: Integer;
        Text003: Label 'COPY';
        CustRec: Record Customer;
        Sno: Integer;
        txtTaxChargeName: array[20] of Text[50];
        decTaxChargeAmount: array[20] of Decimal;
        // recStructureOrderDetails: Record "Posted Structure Order Details";
        // recStructureOrderLineDetails: Record "Posted Str Order Line Details";
        // recTaxChargeGroup: Record "Tax/Charge Group";
        // recTaxChargeGroupDetails: Record "Tax/Charge Group Details";
        decTotalLineAmount: Decimal;
        LAmt: Decimal;
        FinalAmt: Decimal;
        RptCheck: Report 1401;
        FinalAmtWrds: array[2] of Text[1000];
        VendRec: Record Vendor;
        PurchInvHeader: Record "Purch. Inv. Header";
        PIDate: Date;
        ShipMethd: Record "Shipment Method";
        ShipMethdDes: Text;
        VatAmt: Decimal;
        VatPer: Decimal;
        PayTerms: Record "Payment Terms";
        PayTermsDes: Text;
        ShiptoAddress: Record "Ship-to Address";
        NoOfGSTComponent: Integer;
        DetailedGSTLedgEntryBufferG: Record "Detailed GST Entry Buffer";
        GSTComponentCapt: array[10] of Code[20];
        AllGSTComponentG: array[10] of Code[10];
        RecState: Record State;
        RecCustomer: Record Customer;
        BillToStateCode: Code[10];
        BillToSateName: Text;
        ShipToStateCode: Code[10];
        ShiplToSateName: Text;
        BillToGSTNo: Code[20];
        ShipToGSTNo: Code[20];
        RecShipToAdd: Record "Ship-to Address";
        CompStateCode: Code[10];
        CompSateName: Text;
        DetailGSTLedgerEntry: Record "Detailed GST Entry Buffer";
        RateCGST: Decimal;
        AMTCGST: Decimal;
        RateSGST: Decimal;
        AMTSGST: Decimal;
        RateIGST: Decimal;
        AMTIGST: Decimal;
        ShipmentMethodeDes: Text;
        ShipmentMethode: Record "Shipment Method";
        RecSL: Record "Sales Line";
        placeofSupply: Option " ","Bill-to Address","Ship-to Address","Location Address";
        ReverseCharge: Boolean;
        RecLocation: Record Location;
        LoaStateCode: Code[20];
        LoaStateName: Text;
        SL: Record "Sales Line";
        GSTonReverseCharge: Decimal;
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        tgCurrency: Record Currency;
        BillToName1: Text;
        BillToAdd1: Text[250];
        tgLocation: Record Location;
        tgStateName: Text[50];
        tgState: Record State;
        tgInvoiceDesc: Text[100];
        tgPaymentMode: Text[250];
        tgComments: Record "Sales Comment Line";
        tgRemarks: Text;
        ShipToName: Text[50];
        ShipToAdd: Text[100];
        BillToCity: Text;
        ShipToCity: Text;

    [Scope('Cloud')]
    procedure _GSTFUN()
    begin
    end;

    [Scope('Cloud')]
    procedure ReturnArrayIndex(GSTComponent: Code[20]): Integer
    var
        ArrayIndex: Integer;
        ReturnIndex: Integer;
    begin
        CLEAR(ArrayIndex);
        CLEAR(ReturnIndex);
        FOR ArrayIndex := 1 TO NoOfGSTComponent DO BEGIN
            IF GSTComponentCapt[ArrayIndex] = GSTComponent THEN
                ReturnIndex := ArrayIndex;
        END;
        EXIT(ReturnIndex);
    end;

    [Scope('Cloud')]
    procedure CheckGSTArrayExist(GSTComponentCode: Code[20]): Boolean
    var
        IndexG: Integer;
        ExitBoolG: Boolean;
    begin
        CLEAR(ExitBoolG);
        FOR IndexG := 1 TO NoOfGSTComponent DO BEGIN
            IF AllGSTComponentG[IndexG] = GSTComponentCode THEN
                ExitBoolG := TRUE;
        END;
        EXIT(ExitBoolG);
    end;

    [Scope('Cloud')]
    procedure ReturnArrayIndexAll(GSTComponent: Code[20]): Integer
    var
        ArrayIndex1: Integer;
        ReturnIndex1: Integer;
    begin
        CLEAR(ArrayIndex1);
        CLEAR(ReturnIndex1);
        FOR ArrayIndex1 := 1 TO NoOfGSTComponent DO BEGIN
            IF AllGSTComponentG[ArrayIndex1] = GSTComponent THEN
                ReturnIndex1 := ArrayIndex1;
        END;
        EXIT(ReturnIndex1);
    end;
}

