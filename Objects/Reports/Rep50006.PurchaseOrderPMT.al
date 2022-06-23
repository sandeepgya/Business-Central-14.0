report 50006 "Purchase Order_PMT"
{
    // ## DEVINPPSMG - 2014-10-08 - Addition of Condition of Contract in the Report
    // ## ARRS_PG - 09 JAN 2015 - Increase the array size from 12 to 20 for the below fields.
    //  - txtTaxChargeName
    //  - decTaxChargeAmount
    // 
    // 1. TRI S.S 12.07.17 - Some modifications done for "GST" Functionality.
    // //TRI R.P 29.08.17 DEL
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/PurchaseOrderPMT.rdlc';


    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            RequestFilterFields = "No.";
            CalcFields = Amount, "Amount Including VAT";
            column(CompName2; tgCompInfo.Name)
            {
            }

            column(ExpectedReceiptDate_PurchaseHeader; "Purchase Header"."Expected Receipt Date")
            {
            }
            column(CompanyPicture; tgCompInfo.Picture)
            {
            }
            column(tgCompInfoGSTRegistrationNo; 'GSTIN:-  ' + tgCompInfo."GST Registration No.")
            {
            }
            column(PurchOrderNo; "Purchase Header"."No.")
            {
            }
            column(Prefix; Prefix)
            {
            }
            column(PurchOrderDate; FORMAT("Purchase Header"."Order Date"))
            {
            }
            column(PurchaseCode; PurchCode)
            {
            }
            column(VendorGSTNO; 'GST No : ' + tgVendorGSTNO)
            {
            }
            column(Supplier_GST_No; 'GST No : ' + tgSupplierGSTNo)
            {
            }
            column(SC; SC)
            {
            }
            column(txtTaxName; txtTaxName)
            {
            }
            column(PartyName; txtPartyDetails[1])
            {
            }
            column(PartyAddress; txtPartyDetails[2])
            {
            }
            column(PartyAddress1; txtPartyDetails[3])
            {
            }
            column(PartyAddress2; txtPartyDetails[4])
            {
            }
            column(StateName; txtPartyDetails[5])
            {
            }
            column(StateCode; txtPartyDetails[6])
            {
            }
            column(GSTRegistrationNo; txtPartyDetails[7])
            {
            }
            column(ContractCond1; ContractCond[1])
            {
            }
            column(ContractCond2; ContractCond[2])
            {
            }
            column(ContractCond3; ContractCond[3])
            {
            }
            column(ContractCond4; ContractCond[4])
            {
            }
            column(ContractCond5; ContractCond[5])
            {
            }
            column(ContractCond6; ContractCond[6])
            {
            }
            column(ContractCond7; ContractCond[7])
            {
            }
            column(ContractCond8; ContractCond[8])
            {
            }
            column(ContractCond9; ContractCond[9])
            {
            }
            column(ContractCond10; ContractCond[10])
            {
            }
            column(ContractCond11; ContractCond[11])
            {
            }
            column(ContractCond12; ContractCond[12])
            {
            }
            column(ContractCond13; ContractCond[13])
            {
            }
            column(ContractCond14; ContractCond[14])
            {
            }
            column(ContractCond15; ContractCond[15])
            {
            }
            column(ContractCond16; ContractCond[16])
            {
            }
            column(ContractCond17; ContractCond[17])
            {
            }
            column(ContractCond18; ContractCond[18])
            {
            }
            column(ContractCond19; ContractCond[19])
            {
            }
            column(ContractCond20; ContractCond[20])
            {
            }
            column(ContractCond21; ContractCond[21])
            {
            }
            column(ContractCond22; ContractCond[22])
            {
            }
            column(ContractCond23; ContractCond[23])
            {
            }
            column(ContractCond24; ContractCond[24])
            {
            }
            column(ContractCond25; ContractCond[25])
            {
            }
            column(ContractCond26; ContractCond[26])
            {
            }
            column(ContractCond27; ContractCond[27])
            {
            }
            column(ContractCond28; ContractCond[28])
            {
            }
            column(ContractCond29; ContractCond[29])
            {
            }
            column(ContractCond30; ContractCond[30])
            {
            }
            column(ContractCond31; ContractCond[31])
            {
            }
            column(ContractCond32; ContractCond[32])
            {
            }
            column(ContractCond33; ContractCond[33])
            {
            }
            column(ContractCond34; ContractCond[34])
            {
            }
            column(ContractCond35; ContractCond[35])
            {
            }
            column(PartyAddress3; txtPartyDetails[5])
            {
            }
            column(PartyContact; txtPartyDetails[6])
            {
            }
            column(PartyStateCode; txtPartyDetails[9])
            {
            }
            column(PartyTINNo; Party_TINNo)
            {
            }
            column(PartyServiceTaxNo; Party_ServiceTaxNo)
            {
            }
            column(PartyPANNo; Part_PANNo)
            {
            }
            column(LocationName; txtLocationDetails[1])
            {
            }
            column(LocationAddress; txtLocationDetails[2])
            {
            }
            column(LocationAddress1; txtLocationDetails[3])
            {
            }
            column(LocationAddress2; txtLocationDetails[4])
            {
            }
            column(LocationAddress3; txtLocationDetails[5])
            {
            }
            column(LocationTINNo; txtLocationDetails[6])
            {
            }
            column(LocationECCNo; txtLocationDetails[7])
            {
            }
            column(LocationStateCode; txtLocationDetails[8])
            {
            }
            column(HeadOfficeName; txtHeadOffice[1])
            {
            }
            column(HeadOfficeAddress; txtHeadOffice[2])
            {
            }
            column(HeadOfficeAddress1; txtHeadOffice[3])
            {
            }
            column(HeadOfficeAddress2; txtHeadOffice[4])
            {
            }
            column(HeadOfficeAddress3; txtHeadOffice[5])
            {
            }
            column(CompanyRegNo; 'CIN No.' + ' ' + recCompanyInfo."Company Registration  No.")
            {
            }
            column(RecLocationTINNo; 'TIN No.' + ' ' + '')//recLocation."T.I.N. No.")
            {
            }
            column(ComCIN; 'CIN No.' + ' ' + txtHeadOffice[6])
            {
            }
            column(SalesTaxForm; txtTermsConditions[1])
            {
            }
            column(DeliveryTerms; 'TEST')
            {
            }
            column(WarrantyAMC; 'TEST')
            {
            }
            column(PaymentMode; txtTermsConditions[3])
            {
            }
            column(PaymentTerms; txtTermsConditions[4])
            {
            }
            column(BillSubmission; 'TEST')
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
            column(TaxChargeName20; txtTaxChargeName[20])
            {
            }
            column(TaxChargeAmount20; decTaxChargeAmount[20])
            {
                DecimalPlaces = 2 : 2;
            }
            column(Excise; Excise)
            {
            }
            column(FreightCharges; FreightCharges)
            {
            }
            column(LoadingCharges; LoadingCharges)
            {
            }
            column(PackingCharges; PackingCharge)
            {
            }
            column(InclusiveExcise; 'TEST')
            {
            }
            column(User_Name; Employe."First Name" + ' ' + Employe."Middle Name" + ' ' + Employe."Last Name")
            {
            }
            column(EntryTaxAmt; EntryTaxAmt)
            {
            }
            column(tgUnitPrice_Label; tgUnitPriceLabel)
            {
            }
            column(tgTotalAmt_Label; tgTotalAmountLabel)
            {
            }
            column(tgTotalPO_Label; tgTotalPOValue)
            {
            }
            column(GSTComponentCode1; GSTComponentCode[1])
            {
            }
            column(GSTComponentCode2; GSTComponentCode[2])
            {
            }
            column(GSTComponentCode3; GSTComponentCode[3])
            {
            }
            column(GSTComponentCode4; GSTComponentCode[4])
            {
            }
            column(GSTCompAmount1; ABS(GSTCompAmount[1]))
            {
            }
            column(GSTCompAmount2; ABS(GSTCompAmount[2]))
            {
            }
            column(GSTCompAmount3; ABS(GSTCompAmount[3]))
            {
            }
            column(GSTCompAmount4; ABS(GSTCompAmount[4]))
            {
            }
            column(RecState1; RecState1)
            {
            }
            column(SateCode3; SateCode3)
            {
            }
            column(CompAdd; tgCompInfo.Address)
            {
            }
            column(CompAdd2; tgCompInfo."Address 2")
            {
            }
            column(CompCity; tgCompInfo.City)
            {
            }
            column(CompPostCode; tgCompInfo."Post Code")
            {
            }
            column(CompState; tgCompInfo."State Code")
            {
            }
            column(CompPAN; tgCompInfo."P.A.N. No.")
            {
            }
            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document Type", "Document No.", "Line No.") ORDER(Ascending);
                column(SrNo; intSrNo)
                {
                }
                column(No_PurchaseLine; "Purchase Line"."No.")
                {
                }
                column(ItemName; "Purchase Line".Description)
                {
                }
                column(ItemUnit; "Unit of Measure Code")
                {
                }
                column(ItemQuantity; Quantity)
                {
                }
                column(ItemRates; "Direct Unit Cost")
                {
                }
                column(ItemValue; "Line Amount")
                {
                }
                column(TotalLineAmount; decTotalLineAmount)
                {
                    DecimalPlaces = 2 : 2;
                }
                column(TotalSturctureAmount; decTotalStrAmount)
                {
                }
                column(TotalValueWords; AmountWords)
                {
                }
                column(Tax_PurchaseLine; 0)//"Purchase Line"."Tax %")
                {
                }
                column(ExcisePercent; ExcisePer)
                {
                }
                column(ExciseAmount_PurchaseLine; 0)// "Excise Amount")
                {
                }
                column(TaxAmount_PurchaseLine; 0)// "Tax Amount")
                {
                }
                column(AmountToVendor; "Purchase Header".Amount)// "Purchase Header"."Amount to Vendor")
                {
                }
                column(Remrak1; Remrak1)
                {
                }
                column(Remrak2; Remrak2)
                {
                }
                column(Remrak3; Remrak3)
                {
                }
                column(Remrak4; Remrak4)
                {
                }
                column(Remrak5; Remrak5)
                {
                }
                column(ServiceTaxAmt; 0)//"Service Tax Amount")
                {
                }
                column(HSNSACCode_PurchaseLine; "Purchase Line"."HSN/SAC Code")
                {
                }
                column(GSTPercCGST; GSTPercCGST)
                {
                }
                column(GSTCompAmntCGST; GSTCompAmntCGST)
                {
                }
                column(GSTPercSGST; GSTPercSGST)
                {
                }
                column(GSTPercIGST; GSTPercIGST)
                {
                }
                column(GSTCompAmntSGST; GSTCompAmntSGST)
                {
                }
                column(GSTCompAmntIGST; GSTCompAmntIGST)
                {
                }
                column(LineDiscount_PurchaseLine; ROUND("Purchase Line"."Line Discount %", 0.01))
                {
                }
                column(LineDiscountAmount_PurchaseLine; ROUND("Purchase Line"."Line Discount Amount", 0.01))
                {
                }

                trigger OnAfterGetRecord()
                begin
                    intSrNo += 1;
                    decTotalLineAmount := 0;
                    decTotalLineAmount := decTotalLineAmount + "Purchase Line"."Line Amount";

                    /*
                    //TRI V.D 18.07.17 START
                    tgItemUOMDescription := '';
                    CLEAR(tgItemUOMDescription);
                    
                    IF ("Purchase Line".Type = "Purchase Line".Type::Item) AND ("No." <> '') THEN BEGIN
                      tgItem.GET("Purchase Line"."No.");
                      IF (tgItem."Item UOM Description" <> '') AND (tgItem."Base Unit of Measure" <> tgItem."Item UOM Description") THEN
                        tgItemUOMDescription := tgItem."Item UOM Description";
                    END;
                    //TRI V.D 18.07.17 STOP
                    */
                    //>>OA.AS Commented
                    // j := 1;
                    // GSTComponent.RESET;
                    // GSTComponent.SETRANGE("GST Jurisdiction Type", "Purchase Line"."GST Jurisdiction Type");
                    // IF GSTComponent.FINDSET THEN
                    //     REPEAT
                    //         GSTComponentCode[j] := GSTComponent.Code;
                    //         DetailedGSTLedgerEntry.RESET;
                    //         DetailedGSTLedgerEntry.SETRANGE("Document No.", "Purchase Line"."Document No.");
                    //         DetailedGSTLedgerEntry.SETRANGE("No.", "Purchase Line"."No.");
                    //         DetailedGSTLedgerEntry.SETRANGE("GST Component Code", GSTComponentCode[j]);
                    //         IF DetailedGSTLedgerEntry.FINDSET THEN BEGIN
                    //             REPEAT
                    //                 GSTCompAmount[j] += DetailedGSTLedgerEntry."GST Amount";
                    //             UNTIL DetailedGSTLedgerEntry.NEXT = 0;
                    //             j += 1;
                    //         END;
                    //     UNTIL GSTComponent.NEXT = 0; //<<OA.AS Commented

                    IF ("Purchase Header"."GST Vendor Type" <> "Purchase Header"."GST Vendor Type"::Unregistered) OR ("Purchase Header"."GST Vendor Type" = "Purchase Header"."GST Vendor Type"::Composite) THEN BEGIN
                        CLEAR(GSTPercCGST);
                        CLEAR(GSTCompAmntCGST);

                        DetailedGSTLedgerEntry.RESET;
                        DetailedGSTLedgerEntry.SETRANGE("Document No.", "Purchase Line"."Document No.");
                        DetailedGSTLedgerEntry.SETRANGE("No.", "Purchase Line"."No.");
                        DetailedGSTLedgerEntry.SETRANGE("Line No.", "Purchase Line"."Line No.");
                        DetailedGSTLedgerEntry.SETRANGE("GST Component Code", 'CGST');
                        IF DetailedGSTLedgerEntry.FINDSET THEN BEGIN
                            GSTPercCGST := DetailedGSTLedgerEntry."GST %";
                            REPEAT
                                GSTCompAmntCGST += DetailedGSTLedgerEntry."GST Amount";
                            UNTIL DetailedGSTLedgerEntry.NEXT = 0;
                        END;

                        CLEAR(GSTPercSGST);
                        CLEAR(GSTCompAmntSGST);
                        CLEAR(DetailedGSTLedgerEntry);
                        DetailedGSTLedgerEntry.RESET;
                        DetailedGSTLedgerEntry.SETRANGE("Document No.", "Purchase Line"."Document No.");
                        DetailedGSTLedgerEntry.SETRANGE("No.", "Purchase Line"."No.");
                        DetailedGSTLedgerEntry.SETRANGE("Line No.", "Purchase Line"."Line No.");
                        DetailedGSTLedgerEntry.SETRANGE("GST Component Code", 'SGST');
                        IF DetailedGSTLedgerEntry.FINDSET THEN BEGIN
                            GSTPercSGST := DetailedGSTLedgerEntry."GST %";
                            REPEAT
                                GSTCompAmntSGST += DetailedGSTLedgerEntry."GST Amount";
                            UNTIL DetailedGSTLedgerEntry.NEXT = 0;
                        END;

                        CLEAR(GSTPercIGST);
                        CLEAR(GSTCompAmntIGST);
                        CLEAR(DetailedGSTLedgerEntry);
                        DetailedGSTLedgerEntry.RESET;
                        DetailedGSTLedgerEntry.SETRANGE("Document No.", "Purchase Line"."Document No.");
                        DetailedGSTLedgerEntry.SETRANGE("No.", "Purchase Line"."No.");
                        DetailedGSTLedgerEntry.SETRANGE("Line No.", "Purchase Line"."Line No.");
                        DetailedGSTLedgerEntry.SETRANGE("GST Component Code", 'IGST');
                        IF DetailedGSTLedgerEntry.FINDSET THEN BEGIN
                            GSTPercIGST := DetailedGSTLedgerEntry."GST %";
                            REPEAT
                                GSTCompAmntIGST += DetailedGSTLedgerEntry."GST Amount";
                            UNTIL DetailedGSTLedgerEntry.NEXT = 0;
                        END;

                        CLEAR(GSTPercUTGST);
                        CLEAR(GSTCompAmntUTGST);
                        CLEAR(DetailedGSTLedgerEntry);
                        DetailedGSTLedgerEntry.RESET;
                        DetailedGSTLedgerEntry.SETRANGE("Document No.", "Purchase Line"."Document No.");
                        DetailedGSTLedgerEntry.SETRANGE("No.", "Purchase Line"."No.");
                        DetailedGSTLedgerEntry.SETRANGE("Line No.", "Purchase Line"."Line No.");
                        DetailedGSTLedgerEntry.SETRANGE("GST Component Code", 'UTGST');
                        IF DetailedGSTLedgerEntry.FINDSET THEN BEGIN
                            GSTPercUTGST := DetailedGSTLedgerEntry."GST %";
                            REPEAT
                                GSTCompAmntUTGST += DetailedGSTLedgerEntry."GST Amount";
                            UNTIL DetailedGSTLedgerEntry.NEXT = 0;
                        END;
                    END;

                    // "Purchase Header".CALCFIELDS("Purchase Header"."Amount to Vendor");
                    // AmtToVendor := ABS("Purchase Header"."Amount to Vendor"); //OA.AS Commented

                    "Purchase Header".CalcFields("Purchase Header".Amount);
                    AmtToVendor := Abs("Purchase Header".Amount);

                    /*
                    rptCheckReport.InitTextVariable;
                    rptCheckReport.FormatNoText(NumberText,ROUND(AmtToVendor,0.01),"Purchase Header"."Currency Code");
                    AmountWords := NumberText[1];
                    */
                    //>>OA.AS Commented
                    // IF ExcisePer = 0 THEN BEGIN
                    //     IF Excise <> 'Excise Duty(Inclusive)' THEN BEGIN
                    //         ExcisePostingSetup.RESET;
                    //         ExcisePostingSetup.SETRANGE("Excise Bus. Posting Group", "Excise Bus. Posting Group");
                    //         ExcisePostingSetup.SETRANGE("Excise Prod. Posting Group", "Excise Prod. Posting Group");
                    //         IF "Posting Date" <> 0D THEN
                    //             ExcisePostingSetup.SETRANGE("From Date", 0D, "Posting Date")
                    //         ELSE
                    //             ExcisePostingSetup.SETRANGE("From Date", 0D, WORKDATE);
                    //         IF ExcisePostingSetup.FINDLAST THEN BEGIN
                    //             ExcisePer := ExcisePostingSetup."BED %" + (ExcisePostingSetup."BED %" * ExcisePostingSetup."eCess %" / 100) +
                    //               ExcisePostingSetup."BED %" * ExcisePostingSetup."SHE Cess %" / 100;
                    //         END;
                    //     END;
                    // END; //<<OA.AS Commented

                end;
            }

            trigger OnAfterGetRecord()
            begin
                recLocation.GET("Purchase Header"."Location Code");
                //TRI VT
                Int := 1;
                Int2 := 0;
                PurchCommentLine.RESET;
                PurchCommentLine.SETRANGE(PurchCommentLine."Document Type", "Purchase Header"."Document Type");
                PurchCommentLine.SETRANGE(PurchCommentLine."No.", "Purchase Header"."No.");
                IF PurchCommentLine.FINDSET THEN
                    REPEAT
                        Int2 := Int2 + 1;
                        ContractCond[Int] := /*FORMAT(Int2) + '. ' +*/ PurchCommentLine.Comment + ' '; //+PurchCommentLine."Comment 2";
                        Int := Int + 1;
                    UNTIL PurchCommentLine.NEXT = 0;

                //TRI V.D 26.10.16 START
                IF ("Currency Code" = '') OR ("Currency Code" = 'INR') THEN BEGIN
                    tgUnitPriceLabel := 'Unit Price ' + '(Rs.)';
                    tgTotalAmountLabel := 'Total Amount ' + '(Rs.)';
                    tgTotalPOValue := 'Total PO Value ' + '(Rs.)';
                END ELSE BEGIN
                    tgUnitPriceLabel := 'Unit Price (' + "Currency Code" + ')';
                    tgTotalAmountLabel := 'Total Amount (' + "Currency Code" + ')';
                    tgTotalPOValue := 'Total PO Value (' + "Currency Code" + ')';
                END;
                //TRI V.D 26.10.16 STOP

                //TRI AS 161117 START
                /*
                CLEAR(Prefix);
                IF "Purchase Header"."PO Type" = "Purchase Header"."PO Type"::Domestic THEN
                  Prefix := '17';
                IF "Purchase Header"."PO Type" = "Purchase Header"."PO Type"::Import THEN
                  Prefix := '13';
                IF "Purchase Header"."PO Type" = "Purchase Header"."PO Type"::"Domestic-Paper" THEN
                  Prefix := '12';
                IF "Purchase Header"."PO Type" = "Purchase Header"."PO Type"::"Import-Paper" THEN
                  Prefix := '11';
                IF "Purchase Header"."PO Type" = "Purchase Header"."PO Type"::"Service Order" THEN
                  Prefix := '19';
                IF "Purchase Header"."PO Type" = "Purchase Header"."PO Type"::Capex THEN
                  Prefix := '18';
                  */
                //TRI AS 161117 STOP

                //IF "Purchase Header".Structure =
                //
                taxgrp := '';
                // IF "Purchase Header".Structure <> '' THEN
                //     taxgrp := COPYSTR("Purchase Header".Structure, STRLEN("Purchase Header".Structure) - 2); //OA.AS Commented

                IF taxgrp = 'VAT' THEN
                    txtTaxName := 'VAT @'
                ELSE
                    IF taxgrp = 'CST' THEN
                        txtTaxName := 'CST @'
                    ELSE
                        txtTaxName := '';
                //TRI R.P 29.08.17 DEL
                /*
                IF "Inclusive VAT" THEN
                  txtTaxName := 'Inclusive VAT';
                  */
                //TRI R.P 29.08.17 DEL

                CLEAR(txtPartyDetails);
                CLEAR(txtLocationDetails);
                CLEAR(txtHeadOffice);
                CLEAR(tgSupplierGSTNo);

                intSrNo := 0;
                decTotalStrAmount := 0;

                IF "Order Address Code" = '' THEN BEGIN
                    recVendor.GET("Purchase Header"."Buy-from Vendor No.");
                    txtPartyDetails[1] := recVendor.Name;
                    txtPartyDetails[2] := recVendor.Address;
                    txtPartyDetails[3] := recVendor."Address 2";
                    txtPartyDetails[7] := '';//recVendor."GST Registration No.";
                    IF recVendor.City <> '' THEN
                        txtPartyDetails[4] := recVendor.City;
                    IF recVendor."Post Code" <> '' THEN
                        txtPartyDetails[4] := txtPartyDetails[4] + ' - ' + recVendor."Post Code";
                    IF recState.GET(recVendor."State Code") THEN BEGIN
                        txtPartyDetails[5] := recState.Description;
                        txtPartyDetails[6] := recState."State Code (GST Reg. No.)";
                    END;

                    IF recCountry.GET(recVendor."Country/Region Code") THEN
                        txtPartyDetails[5] := txtPartyDetails[5] + ', ' + recCountry.Name;

                    // IF recVendor."T.I.N. No." <> '' THEN
                    //     Party_TINNo := recVendor."T.I.N. No.";

                    // IF recVendor."Service Tax Registration No." <> '' THEN
                    //     Party_ServiceTaxNo := recVendor."Service Tax Registration No."; //OA.AS Commented

                    IF recVendor."P.A.N. No." <> '' THEN
                        Part_PANNo := recVendor."P.A.N. No.";

                    tgSupplierGSTNo := recVendor."GST Registration No.";
                    txtPartyDetails[9] := recState.Description;//'State Code:' + recVendor."State Code"; //TRI VK - GST
                END ELSE BEGIN
                    recVendor.GET("Buy-from Vendor No.");
                    OrderAdress.GET("Buy-from Vendor No.", "Order Address Code");
                    txtPartyDetails[1] := OrderAdress.Name;
                    txtPartyDetails[2] := OrderAdress.Address;
                    txtPartyDetails[3] := OrderAdress."Address 2";
                    IF recVendor.City <> '' THEN
                        txtPartyDetails[4] := OrderAdress.City;

                    IF OrderAdress."Post Code" <> '' THEN
                        txtPartyDetails[4] := txtPartyDetails[4] + ' - ' + OrderAdress."Post Code";
                    //TRI R.P 29.08.17 DEL
                    /*
                    IF recState.GET(OrderAdress."State Code") THEN
                      txtPartyDetails[5] := recState.Description;
                    */
                    //TRI R.P 29.08.17 DEL
                    IF recCountry.GET(OrderAdress."Country/Region Code") THEN
                        txtPartyDetails[5] := txtPartyDetails[5] + ', ' + recCountry.Name;
                    //TRI R.P 29.08.17 DEL
                    /*
                    IF OrderAdress."T.I.N. No." <> '' THEN
                      Party_TINNo := OrderAdress."T.I.N. No.";
                    */
                    //TRI R.P 29.08.17 DEL
                    // IF recVendor."Service Tax Registration No." <> '' THEN
                    //     Party_ServiceTaxNo := recVendor."Service Tax Registration No."; //OA.AS Commented

                    IF recVendor."P.A.N. No." <> '' THEN
                        Part_PANNo := recVendor."P.A.N. No.";

                    //tgSupplierGSTNo := OrderAdress."GST Registration No.";//TRI R.P 29.08.17 DEL
                    txtPartyDetails[9] := 'State Code:' + recVendor."State Code"; //TRI VK - GST
                END;

                //recLocation.GET("Purchase Header"."Location Code");//TRI R.P 30.08.17 DEL
                txtLocationDetails[1] := recLocation.Name;
                txtLocationDetails[2] := recLocation.Address;
                txtLocationDetails[3] := recLocation."Address 2";
                IF recLocation.City <> '' THEN
                    txtLocationDetails[4] := recLocation.City;

                IF recLocation."Post Code" <> '' THEN
                    txtLocationDetails[4] := txtLocationDetails[4] + ' - ' + recLocation."Post Code";

                IF recState.GET(recLocation."State Code") THEN
                    txtLocationDetails[5] := recState.Description;

                IF recCountry.GET(recLocation."Country/Region Code") THEN
                    txtLocationDetails[5] := txtLocationDetails[5] + ', ' + recCountry.Name;

                // txtLocationDetails[6] := 'TIN No.:' + recLocation."T.I.N. No.";
                // txtLocationDetails[7] := 'E.C.C.No.:' + recLocation."E.C.C. No."; //OA.AS Commented
                txtLocationDetails[6] := '';
                txtLocationDetails[7] := '';

                //TRI VK GST
                GSTRegistrationNos.RESET;
                GSTRegistrationNos.SETRANGE("State Code", recLocation."State Code");
                IF GSTRegistrationNos.FINDFIRST THEN BEGIN
                    GSTRegNo := GSTRegistrationNos.Code;
                    txtLocationDetails[8] := 'GST No.: ' + GSTRegNo;
                END;
                //TRI VK GST

                recCompanyInfo.GET;
                txtHeadOffice[1] := recCompanyInfo.Name;
                txtHeadOffice[2] := recCompanyInfo.Address;
                txtHeadOffice[3] := recCompanyInfo."Address 2";
                txtHeadOffice[6] := '';//recCompanyInfo."Company Registration  No.";

                IF recCompanyInfo.City <> '' THEN
                    txtHeadOffice[4] := recCompanyInfo.City;

                IF recCompanyInfo."Post Code" <> '' THEN
                    txtHeadOffice[4] := txtHeadOffice[4] + ' - ' + recCompanyInfo."Post Code";

                IF recState.GET(recCompanyInfo."State Code") THEN
                    txtHeadOffice[5] := recState.Description;

                IF recCountry.GET(recCompanyInfo."Country/Region Code") THEN
                    txtHeadOffice[5] := txtHeadOffice[5] + ', ' + recCountry.Name;

                COMPRESSARRAY(txtPartyDetails);
                COMPRESSARRAY(txtLocationDetails);
                COMPRESSARRAY(txtHeadOffice);

                // CLEAR(txtTermsConditions);
                // IF "Purchase Header"."Form Code" <> '' THEN BEGIN
                //     recFormCode.GET("Purchase Header"."Form Code");
                //     txtTermsConditions[1] := recFormCode.Description;
                // END; //OA.AS Commented

                IF recPaymentTerm.GET("Purchase Header"."Payment Terms Code") THEN
                    txtTermsConditions[4] := recPaymentTerm.Description;

                IF recPaymentMethod.GET("Purchase Header"."Payment Method Code") THEN
                    txtTermsConditions[3] := recPaymentMethod.Description;

                // CLEAR(txtTaxChargeName);
                // CLEAR(decTaxChargeAmount);
                // recStructureOrderDetails.RESET;
                // recStructureOrderDetails.SETRANGE(Type, recStructureOrderDetails.Type::Purchase);
                // recStructureOrderDetails.SETRANGE("Document Type", recStructureOrderDetails."Document Type"::Order);
                // recStructureOrderDetails.SETFILTER(recStructureOrderDetails."Tax/Charge Type", '<>%1', recStructureOrderDetails."Tax/Charge Type"::GST);
                // recStructureOrderDetails.SETRANGE("Document No.", "Purchase Header"."No.");
                // IF recStructureOrderDetails.FIND('-') THEN
                //     REPEAT
                //         IF (recStructureOrderDetails."Tax/Charge Type" = recStructureOrderDetails."Tax/Charge Type"::Charges) OR
                //                              (recStructureOrderDetails."Tax/Charge Type" = recStructureOrderDetails."Tax/Charge Type"::"Other Taxes") THEN BEGIN
                //             IF recStructureOrderDetails."Tax/Charge Code" = '' THEN BEGIN
                //                 recTaxChargeGroup.GET(recStructureOrderDetails."Tax/Charge Group");
                //                 txtTaxChargeName[recStructureOrderDetails."Calculation Order"] := recTaxChargeGroup.Description;
                //             END ELSE BEGIN
                //                 recTaxChargeGroupDetails.GET(recStructureOrderDetails."Tax/Charge Group", recStructureOrderDetails."Tax/Charge Code");
                //                 txtTaxChargeName[recStructureOrderDetails."Calculation Order"] := recTaxChargeGroupDetails.Description;
                //             END;
                //         END ELSE
                //             txtTaxChargeName[recStructureOrderDetails."Calculation Order"] := FORMAT(recStructureOrderDetails."Tax/Charge Type");

                //         recStructureOrderLineDetails.RESET;
                //         recStructureOrderLineDetails.SETRANGE(Type, recStructureOrderDetails.Type);
                //         recStructureOrderLineDetails.SETRANGE("Calculation Order", recStructureOrderDetails."Calculation Order");
                //         recStructureOrderLineDetails.SETRANGE("Document Type", recStructureOrderDetails."Document Type");
                //         recStructureOrderLineDetails.SETRANGE("Document No.", recStructureOrderDetails."Document No.");
                //         IF recStructureOrderLineDetails.FIND('-') THEN
                //             REPEAT
                //                 decTaxChargeAmount[recStructureOrderDetails."Calculation Order"] += ROUND(recStructureOrderLineDetails.Amount, 0.01);
                //             UNTIL recStructureOrderLineDetails.NEXT = 0;
                //     UNTIL recStructureOrderDetails.NEXT = 0; //OA.AS Commented

                decTotalStrAmount := decTaxChargeAmount[1] + decTaxChargeAmount[2] + decTaxChargeAmount[3] + decTaxChargeAmount[4] + decTaxChargeAmount[5] +
                                     decTaxChargeAmount[6] + decTaxChargeAmount[7] + decTaxChargeAmount[8] + decTaxChargeAmount[9] + decTaxChargeAmount[10] +
                                     decTaxChargeAmount[11] + decTaxChargeAmount[12] + decTaxChargeAmount[13] + decTaxChargeAmount[14] + decTaxChargeAmount[15] +
                                     decTaxChargeAmount[16] + decTaxChargeAmount[17] + decTaxChargeAmount[17] + decTaxChargeAmount[18] + decTaxChargeAmount[19] +
                                     decTaxChargeAmount[20];

                // recStructureOrderLineDetails.RESET;
                // recStructureOrderLineDetails.SETRANGE("Document No.", "Purchase Header"."No.");
                // recStructureOrderLineDetails.SETRANGE("Tax/Charge Group", 'FRT-IN');
                // IF recStructureOrderLineDetails.FINDSET THEN
                //     REPEAT
                //         FreightCharges += recStructureOrderLineDetails.Amount;
                //     UNTIL recStructureOrderLineDetails.NEXT = 0;

                // LoadingCharges := 0;
                // recStructureOrderDetails.RESET;
                // recStructureOrderDetails.SETRANGE("Document No.", "Purchase Header"."No.");
                // IF recStructureOrderDetails.FIND('-') THEN
                //     REPEAT
                //         IF (recStructureOrderDetails."Tax/Charge Group" = 'LD-IN') THEN
                //             LoadingCharges := recStructureOrderDetails."Calculation Value";
                //     UNTIL recStructureOrderDetails.NEXT = 0;

                // PackingCharge := 0;
                // recStructureOrderDetails.RESET;
                // recStructureOrderDetails.SETRANGE("Document No.", "Purchase Header"."No.");
                // IF recStructureOrderDetails.FIND('-') THEN
                //     REPEAT
                //         IF (recStructureOrderDetails."Tax/Charge Group" = 'PCK-IN') THEN BEGIN
                //             PackingCharge := recStructureOrderDetails."Calculation Value";
                //         END;
                //     UNTIL recStructureOrderDetails.NEXT = 0; //OA.AS Commented

                /*Remrak1 := '';
                CommentLine.RESET;
                CommentLine.SETRANGE(CommentLine."No.","Purchase Header"."No.");
                IF CommentLine.FINDSET THEN REPEAT
                   Remrak1 := Remrak1 +' '+ CommentLine.Comment
                UNTIL CommentLine.NEXT = 0;
                *///TRI AS 141017 BLOCKED
                PurchCode := '';
                SalePurchase.RESET;
                SalePurchase.SETRANGE(SalePurchase.Code, "Purchase Header"."Purchaser Code");
                IF SalePurchase.FIND('-') THEN
                    PurchCode := SalePurchase.Name;

                //TRI R.P 29.08.17 DEL
                /*
                IF "Purchase Header"."Inclusive Excise" = "Purchase Header"."Inclusive Excise"::"1" THEN
                  Excise := 'Excise Duty(Inclusive)'
                ELSE
                  Excise := 'Excise Duty(As Applicable Extra)';
                
                IF Employe.GET("Vendor Manager") THEN;
                */
                //TRI R.P 29.08.17 DEL
                // EntryTaxAmt := 0;
                // StrOrderLineDetail.RESET;
                // StrOrderLineDetail.SETRANGE("Document Type", "Document Type");
                // StrOrderLineDetail.SETRANGE("Document No.", "No.");
                // StrOrderLineDetail.SETFILTER("Tax/Charge Group", 'ET-UP');
                // IF StrOrderLineDetail.FINDSET THEN
                //     REPEAT
                //         EntryTaxAmt += StrOrderLineDetail."Amount (LCY)";
                //     UNTIL StrOrderLineDetail.NEXT = 0;

                // EntryTaxAmt := 0;
                // PackingCharge := 0;
                // LoadingCharges := 0;
                // FreightCharges := 0;
                // StrOrderLineDetail.RESET;
                // StrOrderLineDetail.SETRANGE("Document Type", "Document Type");
                // StrOrderLineDetail.SETRANGE("Document No.", "No.");
                // IF StrOrderLineDetail.FINDSET THEN
                //     REPEAT
                //         IF StrOrderLineDetail."Tax/Charge Group" = 'ET-UP' THEN
                //             EntryTaxAmt += StrOrderLineDetail."Amount (LCY)"
                //         ELSE
                //             IF StrOrderLineDetail."Tax/Charge Group" = 'PCK-IN' THEN
                //                 PackingCharge += StrOrderLineDetail."Amount (LCY)"
                //             ELSE
                //                 IF StrOrderLineDetail."Tax/Charge Group" = 'LD-IN' THEN
                //                     LoadingCharges += StrOrderLineDetail."Amount (LCY)"
                //                 ELSE
                //                     IF StrOrderLineDetail."Tax/Charge Group" = 'FRT-IN' THEN
                //                         FreightCharges += StrOrderLineDetail."Amount (LCY)";
                //     UNTIL StrOrderLineDetail.NEXT = 0; //OA.AS Commented

                CLEAR(recState);
                CLEAR(ShiptoAddress);
                CLEAR(ShiptoAddress2);
                CLEAR(State2);
                CLEAR(State3);
                CLEAR(tgVendorGSTNO);

                IF Location1.GET("Location Code") THEN BEGIN
                    SateCode2 := Location1."State Code";
                    tgVendorGSTNO := Location1."GST Registration No.";
                END;

                IF state4.GET(SateCode2) THEN BEGIN
                    SateCode3 := state4.Description;
                    RecState1 := state4."State Code (GST Reg. No.)";
                END;

                IF RecVend.GET("Purchase Header"."Buy-from Vendor No.") THEN BEGIN
                    IF state5.GET(RecVend."State Code") THEN
                        SC := state5."State Code (GST Reg. No.)";
                END;

            end;

            trigger OnPreDataItem()
            begin
                CLEAR(ContractCond);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
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
        tgCompInfo.GET;  //TRI V.D 05.08.16 ADD
        tgCompInfo.CALCFIELDS(Picture);
    end;

    var
        recVendor: Record Vendor;
        txtPartyDetails: array[11] of Text[50];
        recState: Record State;
        recCountry: Record "Country/Region";
        recContact: Record Contact;
        recLocation: Record Location;
        txtLocationDetails: array[10] of Text[50];
        recCompanyInfo: Record "Company Information";
        txtHeadOffice: array[10] of Text[50];
        intSrNo: Integer;
        decTotalLineAmount: Decimal;
        rptCheckReport: Report 1401;
        NumberText: array[2] of Text[100];
        AmountWords: Text[100];
        recPaymentTerm: Record "Payment Terms";
        recPaymentMethod: Record "Payment Method";
        txtTermsConditions: array[10] of Text[100];
        // recFormCode: Record "Form Codes"; //OA.AS Commented
        txtTaxChargeName: array[20] of Text[50];
        decTaxChargeAmount: array[20] of Decimal;
        // recStructureOrderDetails: Record "Structure Order Details";
        // recStructureOrderLineDetails: Record "Structure Order Line Details";
        // recTaxChargeGroup: Record "Tax/Charge Group";
        // recTaxChargeGroupDetails: Record "Tax/Charge Group Details";
        // ExcisePostingSetup: Record "Excise Posting Setup"; //OA.AS Commented
        ExcisePer: Decimal;
        FreightCharges: Decimal;
        LoadingCharges: Decimal;
        decTotalStrAmount: Decimal;
        AmtToVendor: Decimal;
        txtTaxName: Text[50];
        taxgrp: Text[10];
        Remrak1: Text[1024];
        Remrak2: Text[250];
        Remrak3: Text[250];
        Remrak4: Text[250];
        Remrak5: Text[250];
        CommentLine: Record "Purch. Comment Line";
        PurchCode: Text[200];
        SalePurchase: Record "Salesperson/Purchaser";
        Excise: Text[100];
        PackingCharge: Decimal;
        ShiptoAddress: Record "Ship-to Address";
        ShiptoAddress2: Record "Ship-to Address";
        State2: Record State;
        State3: Record State;
        Party_TINNo: Code[30];
        Party_ServiceTaxNo: Code[30];
        Part_PANNo: Code[30];
        ContractCond: array[50] of Text;
        Text50000: Label 'supplier''s';
        Text50001: Label 'Company''s permission in writing.';
        Text50002: Label '''Force Majeure''';
        InclusionExcise: Text[30];
        Employe: Record Employee;
        // StrOrderLineDetail: Record "Structure Order Line Details"; //OA.AS Commented
        EntryTaxAmt: Decimal;
        OrderAdress: Record "Order Address";
        "----TRI----": Integer;
        tgCompInfo: Record "Company Information";
        tgUnitPriceLabel: Text[50];
        tgTotalAmountLabel: Text[50];
        tgTotalPOValue: Text[50];
        GSTRegistrationNos: Record "GST Registration Nos.";
        GSTRegNo: Code[15];
        j: Integer;
        // GSTComponent: Record "GST Component"; //OA.AS Commented
        DetailedGSTLedgerEntry: Record "Detailed GST Entry Buffer";
        GSTPercCGST: Decimal;
        GSTCompAmntCGST: Decimal;
        GSTPercSGST: Decimal;
        GSTCompAmntSGST: Decimal;
        GSTPercIGST: Decimal;
        GSTCompAmntIGST: Decimal;
        GSTComponentCode: array[20] of Code[10];
        GSTCompAmount: array[20] of Decimal;
        GSTPercUTGST: Decimal;
        GSTCompAmntUTGST: Decimal;
        Location1: Record Location;
        RecState1: Text;
        SateCode2: Code[30];
        state4: Record State;
        SateCode3: Code[30];
        RecVend: Record Vendor;
        state5: Record State;
        SC: Code[30];
        tgItem: Record Item;
        tgItemUOMDescription: Text[250];
        tgSupplierGSTNo: Code[15];
        tgVendorGSTNO: Code[15];
        Int: Integer;
        Int2: Integer;
        PurchCommentLine: Record "Purch. Comment Line";
        Prefix: Text;
}

