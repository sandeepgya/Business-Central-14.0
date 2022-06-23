report 50007 "Sales Delivery Challan"
{
    // TRI A.G 240215
    // Report for Posted Sales Invoice
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/SalesDeliveryChallan.rdlc';

    Caption = 'Trading  Invoice';
    Permissions = TableData "Sales Shipment Buffer" = rimd;

    dataset
    {
        dataitem("Sales Shipment Header"; "Sales Shipment Header")
        {
            DataItemTableView = SORTING("No.") WHERE(Trading = CONST(false));
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Posted Sales Shipment';
            column(txt; txt)
            {
            }
            column(Type_of_Copy; TypeofCopy1)
            {
            }
            column(TextA; TextA)
            {
            }
            column(StateName; StateName)
            {
            }
            column(No_SalesInvoiceHeader; "No.")
            {
            }
            column(Comp_Name; 'For' + '  ' + CompanyInfo.Name)
            {
            }
            column(ShipBillGSTSTATEname; ShipBillGSTSTATEname)
            {
            }
            column(GstStATECode2; GstStATECode2)
            {
            }
            column(GstStATECode; GstStATECode)
            {
            }
            column(GstStATECode1; GstStATECode1)
            {
            }
            column(LocStateCode; LocStateCode)
            {
            }
            column(Comp_Name1; CompanyInfo.Name)
            {
            }
            column(CE_Registration; '')// CompanyInfo."C.E. Registration No.")
            {
            }
            column(No; No)
            {
            }
            column(Pan_no; CompanyInfo."P.A.N. No.")
            {
            }
            column(COMPPOST; comp."Post Code")
            {
            }
            column(Tin_no; '')// CompanyInfo."T.I.N. No.")
            {
            }
            column(GST; CompanyInfo."GST Registration No.")
            {
            }
            column(Add1; Add1)
            {
            }
            column(Add2; Add2)
            {
            }
            column(Add3; Add3)
            {
            }
            column(EccNo; '')// Location."E.C.C. No.")
            {
            }
            column(range; '')// Location."C.E. Range")
            {
            }
            column(division; '')// Location."C.E. Division")
            {
            }
            column(LocationCode_SalesInvoiceHeader; "Sales Shipment Header"."Location Code")
            {
            }
            column(AmounttoCustomer_SalesInvoiceHeader; "Sales Shipment Header"."Prices Including VAT")
            {
            }
            column(comm; '')//Location."C.E. Commissionerate")
            {
            }
            column(RGEntryNo; 'RG 23D Register No.' + '     ' + RGEntryNo)
            {
            }
            column(SelltoCustomerNo; "Sales Shipment Header"."Sell-to Customer No.")
            {
            }
            column(SelltoCustName; "Sales Shipment Header"."Sell-to Customer Name")
            {
            }
            column(SelltoAddress; "Sales Shipment Header"."Sell-to Address")
            {
            }
            column(SelltoAddress2; "Sales Shipment Header"."Sell-to Address 2")
            {
            }
            column(Customer_TINNo; '')// CustomerInfo."T.I.N. No.")
            {
            }
            column(Customer_ECCNo; '')// CustomerInfo."E.C.C. No.")
            {
            }
            column(Vehicle_No; "Sales Shipment Header"."Vehicle No.")
            {
            }
            column(Order_Date; FORMAT("Sales Shipment Header"."Posting Date"))
            {
            }
            column(Form_Code; '')//"Sales Shipment Header"."Form Code")
            {
            }
            column(Our_Acc_No; Cust."Our Account No.")
            {
            }
            column(Ship_Desc; ShipmentMethod.Description)
            {
            }
            column(Name_Address_of_Consignee1; "Sales Shipment Header"."Ship-to Name" + '  ' + "Sales Shipment Header"."Ship-to Name 2")
            {
            }
            column(Name_Address_of_Consignee2; "Sales Shipment Header"."Ship-to Address")
            {
            }
            column(Name_Address_of_Consignee3; "Sales Shipment Header"."Ship-to Address 2" + "Sales Shipment Header"."Ship-to City")
            {
            }
            column(Name_Address_of_Buyer1; "Sales Shipment Header"."Bill-to Name" + ' ' + "Sales Shipment Header"."Bill-to Name 2")
            {
            }
            column(Name_Address_of_Buyer2; "Sales Shipment Header"."Bill-to Address")
            {
            }
            column(Name_Address_of_Buyer3; "Sales Shipment Header"."Bill-to Address 2" + "Sales Shipment Header"."Bill-to City")
            {
            }
            column(GSTBilltoStateCode_SalesInvoiceHeader; "Sales Shipment Header"."GST Bill-to State Code")
            {
            }
            column(GSTShiptoStateCode_SalesInvoiceHeader; "Sales Shipment Header"."GST Ship-to State Code")
            {
            }
            column(Cust_TIN_No; '')// Cust."T.I.N. No.")
            {
            }
            column(Cust_CST_No; '')//Cust."C.S.T. No.")
            {
            }
            column(postcode; postcode)
            {
            }
            column(ShipBillGST; ShipBillGST)
            {
            }
            column(Cust_Range; '')// Cust.Range)
            {
            }
            column(Cust_Collectorate; '')// Cust.Collectorate)
            {
            }
            column(SalesComment; SalesComment)
            {
            }
            column(PaymentTerms_Description; PaymentTerms.Description)
            {
            }
            column(ShipmentMethod_Description; ShipmentMethod.Description)
            {
            }
            column(Num_Curr; '')//tgCurrency."Currency Numeric Description")
            {
            }
            column(Dec_Curr; '')//tgCurrency."Currency Decimal Description")
            {
            }
            column(ReportName; ReportName)
            {
            }
            column(TimeofRemoval_SalesInvoiceHeader; "Sales Shipment Header"."Time of Removal")
            {
            }
            column(Form_description; FormDesc)
            {
            }
            column(SaleTax_Cap; SaleTax)
            {
            }
            column(TgcompanyName; TgcompanyName)
            {
            }
            column(TgComAdd; TgComAdd)
            {
            }
            column(TgCity; TgCity)
            {
            }
            column(TgStateCode; TgStateCode)
            {
            }
            column(TgGSTReg; TgGSTReg)
            {
            }
            column(SellToGSTRegType; SellToGSTRegistrationType)
            {
            }
            column(BilllToGSTRegType; BilllToGSTRegType)
            {
            }
            column(SellToGSTRegistrationNo; SellToGSTRegistrationNo)
            {
            }
            column(BilllToGSTRegistrationNo; BilllToGSTRegistrationNo)
            {
            }
            column(ReverseCharge; FORMAT(ReverseCharge))
            {
            }
            column(ShipmentMethodCode_SalesInvoiceHeader; "Sales Shipment Header"."Shipment Method Code")
            {
            }
            column(ShipmentMethodeDes; ShipmentMethodeDes)
            {
            }
            column(placeofSupply; placeofSupply)
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(CompanyInfo1Picture; CompanyInfo1.Picture)
                    {
                    }
                    column(CompanyInfo2Picture; CompanyInfo2.Picture)
                    {
                    }
                    column(CompanyInfo3Picture; CompanyInfo3.Picture)
                    {
                    }
                    column(DocumentCaptionCopyText; STRSUBSTNO(Text16503, CopyText))
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEMail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccountNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(PaymentTermsDescription; PaymentTerms.Description)
                    {
                    }
                    column(ShipmentMethodDescription; ShipmentMethod.Description)
                    {
                    }
                    column(BillToCustNo_SalesInvHdr; "Sales Shipment Header"."Bill-to Customer No.")
                    {
                    }
                    column(BillToCustNo_SalesInvHdrCaption; "Sales Shipment Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PostingDate_SalesInvHdr; FORMAT("Sales Shipment Header"."Posting Date"))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNo_SalesInvHdr; "Sales Shipment Header"."VAT Registration No.")
                    {
                    }
                    column(SalesInvoiceHeaderDueDate; FORMAT("Sales Shipment Header"."Due Date"))
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(YourReference_SalesInvHdr; "Sales Shipment Header"."Your Reference")
                    {
                    }
                    column(OrderNoText; OrderNoText)
                    {
                    }
                    column(OrderNo_SalesInvHeader; "Sales Shipment Header"."Order No.")
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(DocDate_SalesInvHeader; FORMAT("Sales Shipment Header"."Document Date", 0, 4))
                    {
                    }
                    column(PricesInclVAT_FormattedSalesInvHdr; FORMAT("Sales Shipment Header"."Prices Including VAT"))
                    {
                    }
                    column(Consignee1; Consignee[1])
                    {
                    }
                    column(Consignee2; Consignee[2])
                    {
                    }
                    column(Consignee3; Consignee[3])
                    {
                    }
                    column(Consignee4; Consignee[4])
                    {
                    }
                    column(CopyLoopNumber; CopyLoop.Number)
                    {
                    }
                    column(PageLoopPageLoopNumber; Number)
                    {
                    }
                    column(PricesInclVAT_SalesInvHdr; "Sales Shipment Header"."Prices Including VAT")
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(CompanyInfoPhoneNoCaption; CompanyInfoPhoneNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoEMailCaption; CompanyInfoEMailCaptionLbl)
                    {
                    }
                    column(CompanyInfoHomePageCaption; CompanyInfoHomePageCaptionLbl)
                    {
                    }
                    column(CompanyInfoVATRegNoCaption; CompanyInfoVATRegNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoGiroNoCaption; CompanyInfoGiroNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoBankNameCaption; CompanyInfoBankNameCaptionLbl)
                    {
                    }
                    column(CompanyInfoBankAccNoCaption; CompanyInfoBankAccNoCaptionLbl)
                    {
                    }
                    column(DueDateCaption; DueDateCaptionLbl)
                    {
                    }
                    column(InvoiceNoCaption; InvoiceNoCaptionLbl)
                    {
                    }
                    column(PostingDateCaption; PostingDateCaptionLbl)
                    {
                    }
                    column(PricesInclVATCaption; PricesInclVATCaptionLbl)
                    {
                    }
                    column(PageCaption; PageCaptionLbl)
                    {
                    }
                    column(PymtTermsDescCaption; PymtTermsDescCaptionLbl)
                    {
                    }
                    column(ShipmentMethodDescCaption; ShipmentMethodDescCaptionLbl)
                    {
                    }
                    column(DocDateCaption; DocDateCaptionLbl)
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = "Sales Shipment Header";
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText_DimensionLoop1; DimText)
                        {
                        }
                        column(DimLoopNo; Number)
                        {
                        }
                        column(HdrDimCaption; HdrDimCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT DimSetEntry1.FIND('-') THEN
                                    CurrReport.BREAK;
                            END ELSE
                                IF NOT Continue THEN
                                    CurrReport.BREAK;

                            CLEAR(DimText);
                            Continue := FALSE;
                            REPEAT
                                OldDimText := DimText;
                                IF DimText = '' THEN
                                    DimText := STRSUBSTNO(
                                        '%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    Continue := TRUE;
                                    EXIT;
                                END;
                            UNTIL (DimSetEntry1.NEXT = 0);
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF NOT ShowInternalInfo THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem("Sales Shipment Line"; "Sales Shipment Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Shipment Header";
                        DataItemTableView = SORTING("Document No.", "Line No.") WHERE(Quantity = FILTER(<> 0));
                        column(LineAmount_SalesInvLine; "Sales Shipment Line"."VAT Base Amount")// "Sales Shipment Line"."GST Base Amount")
                        {
                            AutoFormatExpression = "Sales Shipment Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Description_SalesInvLine; Desc)
                        {
                        }
                        column(Part_No; VarPart)
                        {
                        }
                        column(Tax_Amount_WithPercent; SaleTax + ' (' + FORMAT(TaxPercent) + '%)')
                        {
                        }
                        column(Cross_Ref_No; "Sales Shipment Line"."Cross-Reference No.")
                        {
                        }
                        column(Qty_Base; "Sales Shipment Line"."Quantity (Base)")
                        {
                        }
                        column(RG23D_Excise_Prod_Posting_Group; '')//tgItem."Excise Prod. Posting Group")
                        {
                        }
                        column(RateOfDuty_Perc; '')// ExcisePostingSetup."BED %" + (ExcisePostingSetup."eCess %" * (ExcisePostingSetup."BED %")) / 100 + (ExcisePostingSetup."SHE Cess %" * ExcisePostingSetup."BED %") / 100)
                        {
                        }
                        column(Duty_Per_Unit; '')// (-1) * (RG23D."BED Amount Per Unit" + RG23D."eCess Amount Per Unit" + RG23D."SHE Cess Amount Per Unit"))
                        {
                        }
                        column(BED_Amount; '')// ROUND("Sales Shipment Line"."BED Amount", 0.01, '='))
                        {
                        }
                        column(Description_SalesInvLineCaption; FIELDCAPTION(Description))
                        {
                        }
                        column(ECess_Amount; '')//ROUND("Sales Shipment Line"."eCess Amount", 0.01, '='))
                        {
                        }
                        column(SHE_Cess_Amount; '')//ROUND("Sales Shipment Line"."SHE Cess Amount", 0.01, '='))
                        {
                        }
                        column(InitialAmount; ROUND(InitialAmount, 0.01, '='))
                        {
                        }
                        column(SalesInvLineType_SalesInvLine; InvoiceLineType)
                        {
                        }
                        column(ADC_VAT_Amount; '')//ROUND("Sales Shipment Line"."ADC VAT Amount", 0.01, '='))
                        {
                        }
                        column(No_SalesInvoiceLine; "No.")
                        {
                        }
                        column(No_SalesInvoiceLineCaption; FIELDCAPTION("No."))
                        {
                        }
                        column(Quantity_SalesInvoiceLine; Quantity)
                        {
                        }
                        column(Quantity_SalesInvoiceLineCaption; FIELDCAPTION(Quantity))
                        {
                        }
                        column(UOM_SalesInvoiceLine; "Unit of Measure")
                        {
                        }
                        column(UOM_SalesInvoiceLineCaption; FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(UnitPrice_SalesInvLine; "Unit Price")
                        {
                            AutoFormatExpression = "Sales Shipment Line".GetCurrencyCode;
                            AutoFormatType = 2;
                        }
                        column(AmountToCustomer_SalesInvoiceLine; "Sales Shipment Line"."VAT Base Amount")// "Sales Shipment Line"."GST Base Amount" + "Sales Shipment Line"."Total GST Amount")
                        {
                            AutoFormatExpression = "Sales Shipment Line".GetCurrencyCode;
                        }
                        column(LineDiscount_SalesInvLine; "Line Discount %")
                        {
                        }
                        column(LineDiscount_SalesInvLineAmount; "Sales Shipment Line"."Line Discount %")
                        {
                        }
                        column(Total_Duty_Amount; '')// "Sales Shipment Line"."BED Amount" + "eCess Amount" + "SHE Cess Amount" + "ADC VAT Amount")
                        {
                        }
                        column(PostedShipmentDate; FORMAT(PostedShipmentDate))
                        {
                        }
                        column(DirectDebitPLARG_SalesInvLine; '')// FORMAT("Direct Debit To PLA / RG"))
                        {
                        }
                        column(InvDiscountAmount; -"Unit Price")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalAmount5; TotalAmount5)
                        {
                        }
                        column(TotalAmount1; TotalAmount1)
                        {
                        }
                        column(TotalText; TotalText)
                        {
                        }
                        column(Amount_SalesInvoiceLine; "Sales Shipment Line"."VAT Base Amount")// "Sales Shipment Line"."Total GST Amount")
                        {
                            AutoFormatExpression = "Sales Shipment Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalAmount2; TotalAmount2)
                        {
                        }
                        column(Amount_SalesInvoiceLineToCustomer; "Sales Shipment Line"."VAT Base Amount")// "Sales Shipment Line"."Amount To Customer UPIT")
                        {
                            AutoFormatExpression = "Sales Shipment Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalExclVATText; TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(ExciseAmount_SalesInvLine; '')//"Excise Amount")
                        {
                            AutoFormatExpression = "Sales Shipment Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TaxAmount_SalesInvLine; '')// ROUND("Total GST Amount", 0.01, '='))
                        {
                            AutoFormatExpression = "Sales Shipment Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(ServTaxAmt_SalesInvLine; '')// "Total GST Amount")
                        {
                            AutoFormatExpression = "Sales Shipment Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(ChargesAmount; ROUND(ChargesAmount, 0.01, '='))
                        {
                            AutoFormatExpression = "Sales Shipment Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(OtherTaxesAmount; '')//"Total GST Amount")
                        {
                            AutoFormatExpression = "Sales Shipment Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(ServTaxeCessAmt_SalesInvLine; '')//"Sales Shipment Line"."Total GST Amount")
                        {
                            AutoFormatExpression = "Sales Shipment Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalTDSTCSInclSHECESS_SalesInvLine; '')//"Sales Shipment Line"."Total GST Amount")
                        {
                        }
                        column(ServTaxSHECessAmt_SalesInvLine; '')//"Sales Shipment Line"."SHE Cess Amount")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalAmount4; TotalAmount4)
                        {
                        }
                        column(TotalAmount6; TotalAmount6)
                        {
                        }
                        column(TotalAmount7; TotalAmount7)
                        {
                        }
                        column(TotalAmount8; TotalAmount8)
                        {
                        }
                        column(TotalAmount9; TotalAmount9)
                        {
                        }
                        column(TotalAmount10; TotalAmount10)
                        {
                        }
                        column(LineAmtInvDiscAmtInclVAT; '')// -("GST Base Amount"))
                        {
                            AutoFormatExpression = "Sales Shipment Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseDisc_SalesInvHdr; "Sales Shipment Header"."VAT Base Discount %")
                        {
                        }
                        column(VATAmountLineVATAmountText; VATAmountLine.VATAmountText)
                        {
                        }
                        column(AmountIncludingVATAmount; "Sales Shipment Line"."VAT Base Amount")
                        {
                            AutoFormatType = 1;
                        }
                        column(AmtInclVAT_SalesInvoiceLine; "Sales Shipment Line"."VAT Base Amount")
                        {
                            AutoFormatExpression = "Sales Shipment Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(TotalAmount3; TotalAmount3)
                        {
                        }
                        column(DocumentNo_SalesInvLine; "Document No.")
                        {
                        }
                        column(LineNo_SalesInvoiceLine; "Line No.")
                        {
                        }
                        column(UnitPriceCaption; UnitPriceCaptionLbl)
                        {
                        }
                        column(DiscPercentageCaption; DiscPercentageCaptionLbl)
                        {
                        }
                        column(AmtCaption; AmtCaptionLbl)
                        {
                        }
                        column(LineDiscAmtCaption; LineDiscAmtCaptionLbl)
                        {
                        }
                        column(PostedShipmentDateCaption; PostedShipmentDateCaptionLbl)
                        {
                        }
                        column(DirectDebitCaption; DirectDebitCaptionLbl)
                        {
                        }
                        column(InvDiscAmtCaption; InvDiscAmtCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(ExciseAmtCaption; ExciseAmtCaptionLbl)
                        {
                        }
                        column(TaxAmtCaption; TaxAmtCaptionLbl)
                        {
                        }
                        column(ServTaxAmtCaption; ServTaxAmtCaptionLbl)
                        {
                        }
                        column(ChargesAmtCaption; ChargesAmtCaptionLbl)
                        {
                        }
                        column(OtherTaxesAmtCaption; OtherTaxesAmtCaptionLbl)
                        {
                        }
                        column(ServTaxeCessAmtCaption; ServTaxeCessAmtCaptionLbl)
                        {
                        }
                        column(TCSAmtCaption; TCSAmtCaptionLbl)
                        {
                        }
                        column(ServTaxSHECessAmtCaption; ServTaxSHECessAmtCaptionLbl)
                        {
                        }
                        column(PymtDiscOnVATCaption; PymtDiscOnVATCaptionLbl)
                        {
                        }
                        column(Description_SalesInvoiceLine; "Sales Shipment Line".Description)
                        {
                        }
                        column(SerialNo; "SerialNo.")
                        {
                        }
                        column(Tariff_No; '')//"Excise Prod. Posting Group")
                        {
                        }
                        column(HSNSACCode_SalesInvoiceLine; "Sales Shipment Line"."HSN/SAC Code")
                        {
                        }
                        column(GSTBaseAmount_SalesInvoiceLine; '')// "Sales Shipment Line"."GST Base Amount")
                        {
                        }
                        column(Taxablevalue; Taxablevalue)
                        {
                        }
                        column(HSNSACCode_SIL; "Sales Shipment Line"."HSN/SAC Code")
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
                        column(GSTPlaceofSupply_SalesInvoiceLine; "Sales Shipment Line"."GST Place of Supply")
                        {
                        }
                        dataitem("Sales Shipment Buffer"; "Integer")
                        {
                            DataItemTableView = SORTING(Number);
                            column(SalesShpBufferPostingDate; SalesShipmentBuffer."Posting Date")
                            {
                            }
                            column(SalesShipmentBufferQuantity; SalesShipmentBuffer.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(ShipmentCaption; ShipmentCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN
                                    SalesShipmentBuffer.FIND('-')
                                ELSE
                                    SalesShipmentBuffer.NEXT;
                            end;

                            trigger OnPreDataItem()
                            begin
                                SalesShipmentBuffer.SETRANGE("Document No.", "Sales Shipment Line"."Document No.");
                                SalesShipmentBuffer.SETRANGE("Line No.", "Sales Shipment Line"."Line No.");

                                SETRANGE(Number, 1, SalesShipmentBuffer.COUNT);
                            end;
                        }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText_DimensionLoop2; DimText)
                            {
                            }
                            column(LineDimensionsCaption; LineDimensionsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT DimSetEntry2.FIND('-') THEN
                                        CurrReport.BREAK;
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText := STRSUBSTNO(
                                            '%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL (DimSetEntry2.NEXT = 0);
                            end;

                            trigger OnPreDataItem()
                            begin
                                IF NOT ShowInternalInfo THEN
                                    CurrReport.BREAK;

                                DimSetEntry2.SETRANGE("Dimension Set ID", "Sales Shipment Line"."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord()
                        var
                        // StructureLineDetails: Record "Posted Str Order Line Details";
                        begin
                            IF ("No." <> '') THEN
                                "SerialNo." += 1;
                            Taxablevalue := 0;

                            //TRI MJ
                            RecDGST.RESET;
                            RecDGST.SETRANGE(RecDGST."Document No.", "Sales Shipment Line"."Document No.");
                            RecDGST.SETRANGE(RecDGST."Document Line No.", "Sales Shipment Line"."Line No.");
                            RecDGST.SETRANGE("No.", "Sales Shipment Line"."No.");
                            IF RecDGST.FINDFIRST THEN
                                Taxablevalue := ABS(RecDGST."GST Base Amount");

                            //TRI MJ

                            // PostedShipmentDate := 0D;
                            // IF Quantity <> 0 THEN
                            //     PostedShipmentDate := FindPostedShipmentDate; //OA.AS Commented


                            IF "Sales Shipment Line".Type = 1 THEN
                                //RoundOff := "Sales Shipment Line".Amount;

                                //Slno+=1;
                                IF RecItm.GET("No.") THEN;
                            IF Type = Type::"Charge (Item)" THEN
                                VarPart := Description
                            ELSE
                                VarPart := RecItm."No. 2";



                            // InitialAmount := ("Unit Price" * Quantity) + ("Sales Shipment Line"."BED Amount" + "eCess Amount" + "SHE Cess Amount" + "ADC VAT Amount"); //OA.AS Commented

                            //IF (Type = Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                            //"No." := '';
                            VATAmountLine.INIT;
                            //VATAmountLine."VAT Identifier" := "VAT Identifier";
                            VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                            VATAmountLine."Tax Group Code" := "Tax Group Code";
                            VATAmountLine."VAT %" := "VAT %";
                            //VATAmountLine."VAT Base" := Amount;
                            //VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                            //VATAmountLine."Line Amount" := "Line Amount";
                            IF "Allow Invoice Disc." THEN
                                ;//VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                            //VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                            VATAmountLine.InsertLine;

                            ChargesAmount := 0;
                            OtherTaxesAmount := 0;
                            IF "No." <> '' THEN BEGIN
                                // StructureLineDetails.RESET;
                                // StructureLineDetails.SETRANGE(Type, StructureLineDetails.Type::Sale);
                                // StructureLineDetails.SETRANGE("Document Type", StructureLineDetails."Document Type"::Invoice);
                                // StructureLineDetails.SETRANGE("Invoice No.", "Document No.");
                                // StructureLineDetails.SETRANGE("Item No.", "No.");
                                // StructureLineDetails.SETRANGE("Line No.", "Line No.");
                                // IF StructureLineDetails.FIND('-') THEN
                                //     REPEAT
                                //         IF NOT StructureLineDetails."Payable to Third Party" THEN BEGIN
                                //             IF StructureLineDetails."Tax/Charge Type" = StructureLineDetails."Tax/Charge Type"::Charges THEN
                                //                 ChargesAmount := ChargesAmount + ABS(StructureLineDetails.Amount);
                                //             IF StructureLineDetails."Tax/Charge Type" = StructureLineDetails."Tax/Charge Type"::"Other Taxes" THEN
                                //                 OtherTaxesAmount := OtherTaxesAmount + ABS(StructureLineDetails.Amount);
                                //         END;
                                //     UNTIL StructureLineDetails.NEXT = 0; //OA.AS Commented
                            END;
                            InvoiceLineType := Type;

                            //IN0090.BEGIN
                            IF (DocNo <> "Document No.") OR (LineNo <> "Line No.") THEN BEGIN
                                /*
                                TotalAmount1 += "Line Amount";
                                TotalAmount2 += Amount;
                                TotalAmount3 += "Amount Including VAT";
                                TotalAmount4 += "Excise Amount";
                                TotalAmount5 += "Inv. Discount Amount";
                                TotalAmount6 += "Tax Amount";
                                TotalAmount7 += "Service Tax Amount";
                                TotalAmount8 += "Service Tax eCess Amount";
                                TotalAmount9 += "Service Tax SHE Cess Amount";
                                TotalAmount10 += "Amount To Customer";
                                */
                            END;
                            DocNo := "Document No.";
                            LineNo := "Line No.";
                            //IN0090.END

                            // recSalInvLine.RESET;
                            // recSalInvLine.SETRANGE("Document No.", "Document No.");
                            // recSalInvLine.SETFILTER("Tax %", '<>%1', 0);
                            // IF recSalInvLine.FIND('-') THEN
                            //     TaxPercent := recSalInvLine."Tax %";


                            // ExcisePostingSetup.RESET;
                            // ExcisePostingSetup.SETRANGE("Excise Bus. Posting Group", "Excise Bus. Posting Group");
                            // ExcisePostingSetup.SETRANGE("Excise Prod. Posting Group", "Excise Prod. Posting Group");
                            // ExcisePostingSetup.SETFILTER("From Date", '<=%1', "Posting Date");
                            // IF ExcisePostingSetup.FINDLAST THEN; //OA.AS Commented

                            //TRI A.V 05.11.2015 START
                            Desc := '';
                            TariffNo := '';
                            /*
                            IF tgItem.GET("No.") THEN
                               IF ItemDesc = TRUE THEN
                                 Desc := tgItem.Description +' '+ tgItem."Description 2"
                            ELSE
                                 Desc := "Sales Shipment Line".Description +' '+"Sales Shipment Line"."Description 2" ;
                            */
                            Desc := "Sales Shipment Line".Description + ' ' + "Sales Shipment Line"."Description 2";
                            //TRI A.V 05.11.2015 STOP

                            // TRI SS 280617 START
                            DetailGSTLedgerEntry.RESET;
                            DetailGSTLedgerEntry.SETRANGE("Transaction Type", DetailGSTLedgerEntry."Transaction Type"::Sales);
                            DetailGSTLedgerEntry.SETRANGE("Document Type", DetailGSTLedgerEntry."Document Type"::Invoice);
                            DetailGSTLedgerEntry.SETRANGE("Document No.", "Document No.");
                            DetailGSTLedgerEntry.SETRANGE("No.", "No.");
                            DetailGSTLedgerEntry.SETRANGE("Document Line No.", "Line No.");//added mj 26-09-17
                            DetailGSTLedgerEntry.SETRANGE("GST Component Code", 'CGST');
                            IF DetailGSTLedgerEntry.FINDFIRST THEN BEGIN
                                RateCGST := DetailGSTLedgerEntry."GST %";
                                AMTCGST := DetailGSTLedgerEntry."GST Amount";
                            END ELSE BEGIN
                                RateCGST := 0;
                                AMTCGST := 0;
                            END;
                            DetailGSTLedgerEntry.RESET;
                            DetailGSTLedgerEntry.SETRANGE("Transaction Type", DetailGSTLedgerEntry."Transaction Type"::Sales);
                            DetailGSTLedgerEntry.SETRANGE("Document Type", DetailGSTLedgerEntry."Document Type"::Invoice);
                            DetailGSTLedgerEntry.SETRANGE("Document No.", "Document No.");
                            DetailGSTLedgerEntry.SETRANGE("No.", "No.");
                            DetailGSTLedgerEntry.SETRANGE("Document Line No.", "Line No.");//added mj 26-09-17

                            DetailGSTLedgerEntry.SETRANGE("GST Component Code", 'SGST');
                            IF DetailGSTLedgerEntry.FINDFIRST THEN BEGIN
                                RateSGST := DetailGSTLedgerEntry."GST %";
                                AMTSGST := DetailGSTLedgerEntry."GST Amount";
                            END ELSE BEGIN
                                RateSGST := 0;
                                AMTSGST := 0;
                            END;
                            CLEAR(AMTIGST);
                            DetailGSTLedgerEntry.RESET;
                            DetailGSTLedgerEntry.SETRANGE("Transaction Type", DetailGSTLedgerEntry."Transaction Type"::Sales);
                            DetailGSTLedgerEntry.SETRANGE("Document Type", DetailGSTLedgerEntry."Document Type"::Invoice);
                            DetailGSTLedgerEntry.SETRANGE("Document No.", "Document No.");
                            DetailGSTLedgerEntry.SETRANGE("Document Line No.", "Line No.");//added mj 26-09-17

                            DetailGSTLedgerEntry.SETRANGE(DetailGSTLedgerEntry."Document Line No.", "Line No.");
                            DetailGSTLedgerEntry.SETRANGE("GST Component Code", 'IGST');
                            IF DetailGSTLedgerEntry.FINDFIRST THEN BEGIN
                                RateIGST := DetailGSTLedgerEntry."GST %";
                                AMTIGST := DetailGSTLedgerEntry."GST Amount";
                            END ELSE BEGIN
                                RateIGST := 0;
                                AMTIGST := 0;
                            END;

                            // TRI SS 280617 STOP

                        end;

                        trigger OnPostDataItem()
                        begin
                            CLEAR("SerialNo.");
                        end;

                        trigger OnPreDataItem()
                        begin
                            VATAmountLine.DELETEALL;
                            SalesShipmentBuffer.RESET;
                            SalesShipmentBuffer.DELETEALL;
                            FirstValueEntryNo := 0;
                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) DO //AND (Amount = 0) DO
                                MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            SETRANGE("Line No.", 0, "Line No.");
                            //CurrReport.CREATETOTALS("Line Amount",Amount,"Amount Including VAT","Inv. Discount Amount","Excise Amount","Tax Amount",
                            //"Service Tax Amount","Service Tax eCess Amount","Amount To Customer");
                            //CurrReport.CREATETOTALS("Service Tax SHE Cess Amount");

                            //IN0090.BEGIN
                            DocNo := '';
                            LineNo := 0;
                            TotalAmount1 := 0;
                            TotalAmount2 := 0;
                            TotalAmount3 := 0;
                            TotalAmount4 := 0;
                            TotalAmount5 := 0;
                            TotalAmount6 := 0;
                            TotalAmount7 := 0;
                            TotalAmount8 := 0;
                            TotalAmount9 := 0;
                            TotalAmount10 := 0;
                            //IN0090.END
                        end;
                    }
                    dataitem(VATCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmountLineVATBase; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Shipment Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVATAmount; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Shipment Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineLineAmount; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Shipment Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Shipment Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Sales Shipment Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT_VATCounter; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier_VATCounter; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATPercentageCaption; VATPercentageCaptionLbl)
                        {
                        }
                        column(VATBaseCaption; VATBaseCaptionLbl)
                        {
                        }
                        column(VATAmtCaption; VATAmtCaptionLbl)
                        {
                        }
                        column(VATAmtSpecificationCaption; VATAmtSpecificationCaptionLbl)
                        {
                        }
                        column(VATIdentifierCaption; VATIdentifierCaptionLbl)
                        {
                        }
                        column(InvDiscBaseAmtCaption; InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(LineAmtCaption; LineAmtCaptionLbl)
                        {
                        }
                        column(TotalCaption; TotalCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF VATAmountLine.GetTotalVATAmount = 0 THEN
                                CurrReport.BREAK;
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(
                              VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                              VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Base", VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VatCounterLCY; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmountLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT_VATCounterLCY; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier_VATCounterLCY; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);

                            VALVATBaseLCY := ROUND(VATAmountLine."VAT Base" / "Sales Shipment Header"."Currency Factor");
                            VALVATAmountLCY := ROUND(VATAmountLine."VAT Amount" / "Sales Shipment Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Sales Shipment Header"."Currency Code" = '') OR
                               (VATAmountLine.GetTotalVATAmount = 0)
                            THEN
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VALVATBaseLCY, VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                                VALSpecLCYHeader := Text16505 + Text16506
                            ELSE
                                VALSpecLCYHeader := Text16505 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Shipment Header"."Posting Date", "Sales Shipment Header"."Currency Code", 1);
                            CalculatedExchRate := ROUND(1 / "Sales Shipment Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount", 0.000001);
                            VALExchRate := STRSUBSTNO(Text16507, CalculatedExchRate, CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    // dataitem("RG 23 D"; "RG 23 D")
                    // {
                    //     DataItemLink = "Document No." = FIELD("Document No."), "Source Code" = FIELD("Sell-to Customer No.");
                    //     DataItemLinkReference = "Sales Shipment Line";
                    //     DataItemTableView = SORTING("Entry No.") ORDER(Ascending) WHERE("Transaction Type" = FILTER(Sale), Type = FILTER(Invoice));
                    //     PrintOnlyIfDetail = true;
                    //     dataitem(loop; "Integer")
                    //     {
                    //         DataItemTableView = SORTING(Number) ORDER(Ascending);
                    //         column(RG23D_Entry_No; "RG 23 D"."Entry No.")
                    //         {
                    //         }
                    //         column(RG23DDocumentNo; "RG 23 D"."Document No.")
                    //         {
                    //         }
                    //         column(RG23Source_Code; "RG 23 D"."Source Code")
                    //         {
                    //         }
                    //         column(DescOfGoodsCaption; DescOfGoodsCaptionLbl)
                    //         {
                    //         }
                    //         column(TariffClassificationSubHeadingCaption; TariffClassificationSubHeadingCaptionLbl)
                    //         {
                    //         }
                    //         column(QtyCaption; QtyCaptionLbl)
                    //         {
                    //         }
                    //         column(RateOFDutyCaption; RateOFDutyCaptionLbl)
                    //         {
                    //         }
                    //         column(AssessableValueCaption; AssessableValueCaptionLbl)
                    //         {
                    //         }
                    //         column(ManufacturerNameAddrAndECCNoCaption; ManufacturerNameAddrAndECCNoCaptionLbl)
                    //         {
                    //         }
                    //         column(InvoiceNoBillOfEntryNoCaption; InvoiceNoBillOfEntryNoCaptionLbl)
                    //         {
                    //         }
                    //         column(DivisionNameRangeFullPostalAddrCaption; DivisionNameRangeFullPostalAddrCaptionLbl)
                    //         {
                    //         }
                    //         column(AmtOfDutyPerUnitCaption; AmtOfDutyPerUnitCaptionLbl)
                    //         {
                    //         }
                    //         column(AmtOfDutyPaidCaption; AmtOfDutyPaidCaptionLbl)
                    //         {
                    //         }
                    //         column(Vendor_Name; Vendor.Name)
                    //         {
                    //         }
                    //         column(Vendor_Address; Vendor.Address + Vendor."Address 2" + Vendor."Post Code" + Vendor.County)
                    //         {
                    //         }
                    //         column(Vendor_VAT_Reg_No; Vendor."VAT Registration No.")
                    //         {
                    //         }
                    //         column(Vendor_ECC_No; Vendor."E.C.C. No.")
                    //         {
                    //         }
                    //         column(Vendor_Range; Vendor.Range)
                    //         {
                    //         }
                    //         column(Vendor_Collectorate; Vendor.Collectorate)
                    //         {
                    //         }
                    //         column(RG23DAmount; RG23D.Amount)
                    //         {
                    //         }
                    //         column(RG23DExciseAmtPerUnit; RG23D."Excise Amt Per Unit")
                    //         {
                    //         }
                    //         column(ExcisePostingSetupBED; ExcisePostingSetup."BED %")
                    //         {
                    //         }
                    //         column(RG23DExciseBaseAmtPerUnitQty; RG23D."Excise Base Amt Per Unit" * RG23D.Quantity)
                    //         {
                    //         }
                    //         column(VendorRange; Vendor.Range)
                    //         {
                    //         }
                    //         column(VendorCollectorate; Vendor.Collectorate)
                    //         {
                    //         }
                    //         column(ABSRG23DQuantity; ABS(RG23D.Quantity))
                    //         {
                    //         }
                    //         column(RG23DExciseProdPostingGroup; RG23D."Excise Prod. Posting Group")
                    //         {
                    //         }
                    //         column(ItemDescription; Item.Description)
                    //         {
                    //         }
                    //         column(RG23DVendorInvoiceNo; RG23D."Vendor Invoice No.")
                    //         {
                    //         }
                    //         column(VendorNameVendorAddress; Vendor.Name + '  ' + Vendor.Address)
                    //         {
                    //         }
                    //         column(VendorECCNo; Vendor."E.C.C. No.")
                    //         {
                    //         }
                    //         column(Item_Description; Item.Description)
                    //         {
                    //         }
                    //         column(RG23D_Vendor_Invoice_No; RG23D."Vendor Invoice No.")
                    //         {
                    //         }
                    //         column(RG23D_Posting_Date; RG23D."Posting Date")
                    //         {
                    //         }
                    //         column(RG23D_Quantity; ABS(RG23D.Quantity))
                    //         {
                    //         }
                    //         column(RG23D_Excise_Prod_Posting_Group1; RG23D."Excise Prod. Posting Group")
                    //         {
                    //         }
                    //         column(RG23D_RateofDutyPer; (ExcisePostingSetup."BED %") + (ExcisePostingSetup."BED %") * (ExcisePostingSetup."eCess %") / 100 + (ExcisePostingSetup."BED %") * (ExcisePostingSetup."SHE Cess %") / 100)
                    //         {
                    //         }
                    //         column(RG23D_DutyPerUnit; ABS("RG 23 D"."BED Amount Per Unit" + "RG 23 D"."eCess Amount Per Unit" + "RG 23 D"."SHE Cess Amount Per Unit"))
                    //         {
                    //         }
                    //         column(RG23D_CVD; ROUND(ExciseUSD, 0.01, '='))
                    //         {
                    //         }
                    //         column(RG23D_Ecess; ROUND(eCesscurr, 0.01, '='))
                    //         {
                    //         }
                    //         column(RG23D_SHEcess; ROUND(SHEcesscurr, 0.01, '='))
                    //         {
                    //         }
                    //         column(RG23D_ADC_VAT; ROUND(ADCAmountcurr, 0.01, '='))
                    //         {
                    //         }
                    //         column(RG23D_AmtOfDuty_Paid; ROUND(DutyPaidcurr, 0.01, '='))
                    //         {
                    //         }
                    //         column(PaymentTerms_Description1; PaymentTerms.Description)
                    //         {
                    //         }
                    //         column(ShipmentMethod_Description1; ShipmentMethod.Description)
                    //         {
                    //         }

                    //         trigger OnAfterGetRecord()
                    //         begin
                    //             RG23D.NEXT;


                    //             ExciseUSD := ABS((RG23D."BED Amount Per Unit" * "Sales Shipment Header"."Currency Factor") * RG23D.Quantity);
                    //             Excise := Excise + ExciseUSD;
                    //             eCesscurr := ABS((RG23D."eCess Amount Per Unit" * "Sales Shipment Header"."Currency Factor") * RG23D.Quantity);
                    //             SHEcesscurr := ABS((RG23D."SHE Cess Amount Per Unit" * "Sales Shipment Header"."Currency Factor") * RG23D.Quantity);
                    //             DutyPaidcurr := ABS(((RG23D."BED Amount Per Unit" + RG23D."eCess Amount Per Unit"
                    //                 + RG23D."SHE Cess Amount Per Unit") * "Sales Shipment Header"."Currency Factor") * RG23D.Quantity);
                    //             ADCAmountcurr := ABS((RG23D."ADC VAT Amount Per Unit" * "Sales Shipment Header"."Currency Factor") * RG23D.Quantity);
                    //             eCess := eCess + eCesscurr;
                    //             SHEcess := SHEcesscurr + SHEcess;
                    //             DutyPaid := DutyPaid + DutyPaidcurr;
                    //             ADCAmount := ADCAmount + ADCAmountcurr;
                    //         end;

                    //         trigger OnPreDataItem()
                    //         begin
                    //             SETRANGE(Number, RG23D.COUNT);
                    //         end;
                    //     }

                    //     trigger OnAfterGetRecord()
                    //     begin
                    //         RG23D.RESET;
                    //         RG23D.SETCURRENTKEY("Transaction Type", "Ref. Entry No.");
                    //         RG23D.SETRANGE("Transaction Type", RG23D."Transaction Type"::Purchase);
                    //         RG23D.SETRANGE("Entry No.", "Ref. Entry No.");
                    //         RG23D.SETRANGE(Type, RG23D.Type::Invoice);
                    //         RG23D.CALCSUMS(Quantity, Amount);
                    //         IF RG23D.FIND('-') THEN;

                    //         ExcisePostingSetup.SETRANGE("Excise Bus. Posting Group", "Excise Bus. Posting Group");
                    //         ExcisePostingSetup.SETRANGE("Excise Prod. Posting Group", "Excise Prod. Posting Group");
                    //         ExcisePostingSetup.SETFILTER("From Date", '<=%1', "Posting Date");
                    //         IF ExcisePostingSetup.FINDLAST THEN;
                    //         IF Vendor.GET(RG23D."Source Code") THEN;
                    //         IF Item.GET("Item No.") THEN;
                    //     end;
                    // } //OA.AS Commented
                    dataitem(Total2; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(SellToCustNo_SalesInvHdr; "Sales Shipment Header"."Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr1; ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2; ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3; ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4; ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5; ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6; ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7; ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8; ShipToAddr[8])
                        {
                        }
                        column(ShipToAddressCaption; ShipToAddressCaptionLbl)
                        {
                        }
                        column(SellToCustNo_SalesInvHdrCaption; "Sales Shipment Header".FIELDCAPTION("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            IF NOT ShowShippingAddr THEN
                                CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    CLEAR(TypeofCopy1);
                    IF Number > 1 THEN
                        CopyText := Text16502;
                    IF Number = 1 THEN
                        TypeofCopy1 := TypeofCopy1::"Original for Recipient"
                    ELSE
                        IF Number = 2 THEN
                            TypeofCopy1 := TypeofCopy1::"Duplicate for Transporters"
                        ELSE
                            IF Number = 3 THEN
                                TypeofCopy1 := TypeofCopy1::"Triplicate for Suppliers"
                            ELSE
                                IF Number = 4 THEN
                                    TypeofCopy1 := TypeofCopy1::"Extra Copy";

                    CurrReport.PAGENO := 1;

                    OutputNo += 1;
                end;

                trigger OnPostDataItem()
                begin
                    IF NOT CurrReport.PREVIEW THEN
                        SalesShipCountPrinted.RUN("Sales Shipment Header");
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := ABS(NoOfCopies) + Cust."Invoice Copies" + 1;
                    IF NoOfLoops <= 0 THEN
                        NoOfLoops := 1;
                    CopyText := '';
                    NoOfLoops := 1;
                    SETRANGE(Number, 1, NoOfLoops);

                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                CLEAR(TgcompanyName);
                CLEAR(TgComAdd);
                CLEAR(TgCity);
                CLEAR(TgStateCode);
                CLEAR(TgGSTReg);
                CLEAR(SellToGSTRegistrationType);
                CLEAR(BilllToGSTRegType);
                CLEAR(SellToGSTRegistrationNo);
                CLEAR(BilllToGSTRegistrationNo);

                CLEAR(txt);
                IF "Currency Code" <> '' THEN
                    txt := "Currency Code" ELSE
                    "Currency Code" := 'äNR';



                CLEAR(StateName);
                Cust.RESET;
                Cust.SETRANGE(Cust."No.", "Sales Shipment Header"."Sell-to Customer No.");
                IF Cust.FINDFIRST THEN BEGIN
                    StateName := Cust."State Code";
                    postcode := Cust."Post Code";
                END;
                //MJTRI
                CLEAR(TextA);
                IF Original THEN TextA := 'Original for Recipient';
                IF Duplicate THEN TextA := 'Duplicate for Transporter';
                IF Triplicate THEN TextA := ' Triplicate For supplier';

                CLEAR(GstStATECode);
                Statesmj.RESET;
                Statesmj.SETRANGE(Code, "Sales Shipment Header"."GST Bill-to State Code");
                IF Statesmj.FINDFIRST THEN GstStATECode := Statesmj."State Code (GST Reg. No.)";




                CLEAR(ShipBillGST);
                SalInvLine.RESET;
                SalInvLine.SETRANGE("Document No.", "No.");
                IF SalInvLine.FINDFIRST THEN BEGIN
                    IF (SalInvLine."GST Place of Supply" = SalInvLine."GST Place of Supply"::"Bill-to Address") THEN
                        ShipBillGST := "Sales Shipment Header"."GST Bill-to State Code";

                    IF (SalInvLine."GST Place of Supply" = SalInvLine."GST Place of Supply"::"Ship-to Address") THEN
                        ShipBillGST := "Sales Shipment Header"."GST Ship-to State Code";
                    //MESSAGE('%1',ShipBillGST);
                END;
                CLEAR(GstStATECode1);
                Statesmj.RESET;
                Statesmj.SETRANGE(Code, ShipBillGST);
                IF Statesmj.FINDFIRST THEN BEGIN
                    GstStATECode1 := Statesmj."State Code (GST Reg. No.)";
                    ShipBillGSTSTATEname := Statesmj.Description;
                END;

                CLEAR(LocStateCode);
                LOC.RESET;
                LOC.SETRANGE(Code, "Location Code");
                IF LOC.FINDFIRST THEN LocStateCode := LOC."State Code";
                CLEAR(GstStATECode2);
                Statesmj.RESET;
                Statesmj.SETRANGE(Code, LocStateCode);
                IF Statesmj.FINDFIRST THEN GstStATECode2 := Statesmj."State Code (GST Reg. No.)";




                // CurrReport.LANGUAGE := Language.GetLanguageID("Language Code"); //OA.AS Commented

                IF "Sales Shipment Header".Trading = TRUE THEN
                    ReportName := 'TRADING INVOICE'
                ELSE
                    ReportName := 'EXCISE INVOICE';

                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE
                    FormatAddr.Company(CompanyAddr, CompanyInfo);

                DimSetEntry1.SETRANGE("Dimension Set ID", "Sales Shipment Header"."Dimension Set ID");

                IF "Order No." = '' THEN
                    OrderNoText := ''
                ELSE
                    OrderNoText := FIELDCAPTION("Order No.");
                IF "Salesperson Code" = '' THEN BEGIN
                    SalesPurchPerson.INIT;
                    SalesPersonText := '';
                END ELSE BEGIN
                    SalesPurchPerson.GET("Salesperson Code");
                    SalesPersonText := Text16500;
                END;
                IF "Your Reference" = '' THEN
                    ReferenceText := ''
                ELSE
                    ReferenceText := FIELDCAPTION("Your Reference");
                IF "VAT Registration No." = '' THEN
                    VATNoText := ''
                ELSE
                    VATNoText := FIELDCAPTION("VAT Registration No.");
                IF "Currency Code" = '' THEN BEGIN
                    GLSetup.TESTFIELD("LCY Code");
                    TotalText := STRSUBSTNO(Text16501, GLSetup."LCY Code");
                    TotalInclVATText := STRSUBSTNO(Text16508, GLSetup."LCY Code");
                    TotalExclVATText := STRSUBSTNO(Text16509, GLSetup."LCY Code");
                END ELSE BEGIN
                    TotalText := STRSUBSTNO(Text16501, "Currency Code");
                    TotalInclVATText := STRSUBSTNO(Text16508, "Currency Code");
                    TotalExclVATText := STRSUBSTNO(Text16509, "Currency Code");
                END;
                // FormatAddr.SalesShptBillTo(CustAddr, "Sales Shipment Header"); //OA.AS Commented
                Cust.GET("Bill-to Customer No.");

                IF "Payment Terms Code" = '' THEN
                    PaymentTerms.INIT
                ELSE
                    PaymentTerms.GET("Payment Terms Code");
                IF "Shipment Method Code" = '' THEN
                    ShipmentMethod.INIT
                ELSE
                    ShipmentMethod.GET("Shipment Method Code");

                FormatAddr.SalesShptShipTo(ShipToAddr, "Sales Shipment Header");
                ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                FOR i := 1 TO ARRAYLEN(ShipToAddr) DO
                    IF ShipToAddr[i] <> CustAddr[i] THEN
                        ShowShippingAddr := TRUE;

                IF LogInteraction THEN
                    IF NOT CurrReport.PREVIEW THEN BEGIN
                        IF "Bill-to Contact No." <> '' THEN
                            SegManagement.LogDocument(
                              4, "No.", 0, 0, DATABASE::Contact, "Bill-to Contact No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '')
                        ELSE
                            SegManagement.LogDocument(
                              4, "No.", 0, 0, DATABASE::Customer, "Bill-to Customer No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '');
                    END;

                // RG23D.RESET;
                // RG23D.SETRANGE(RG23D."Document No.", "Sales Shipment Header"."No.");
                // RG23D.SETRANGE(RG23D."Source Code", "Sales Shipment Header"."Sell-to Customer No.");
                // IF RG23D.FINDFIRST THEN
                //     RGEntryNo := RG23D."RG Entry No."; //OA.AS Commented



                Remarks.RESET;
                Remarks.SETRANGE("Document Type", Remarks."Document Type"::"Posted Invoice");
                Remarks.SETRANGE("No.", "No.");
                IF Remarks.FIND('-') THEN;
                REPEAT
                    SalesComment := SalesComment + '  ' + Remarks.Comment;
                UNTIL Remarks.NEXT = 0;


                IF "Sales Shipment Header"."Posting Date" > 20070712D THEN BEGIN
                    Add1 := CompInfo.Address;
                    Add2 := CompInfo."Address 2" + ' - ' + CompanyInfo."Post Code";
                    Add3 := CompInfo.City + '  - ' + CompInfo."State Code" + ' ( ' + CompanyInfo."Country/Region Code" + ' ) ';
                    //EccNo:=CompInfo."E.C.C. No.";
                END
                ELSE BEGIN
                    Add1 := 'PLOT NO. 64, SECTOR-3';
                    Add2 := 'IMT MANESAR - 122051';
                    Add3 := CompInfo.City + '  - ' + CompInfo."State Code" + ' ( ' + CompanyInfo."Country/Region Code" + ' ) ';
                    //EccNo:='AACCN6199AXD001';
                END;


                Location.GET("Sales Shipment Header"."Location Code");

                //TRI A.V 05.11.2015 DEL
                /*IF "Sales Shipment Header"."Posting Date" <= 070712D THEN BEGIN
                  range:=Location."C.E. Range";
                  division:=Location."C.E. Division";
                  comm:=Location."C.E. Commissionerate";
                  EccNo := Location."E.C.C. No.";
                END;
                //TRI A.V 05.11.2015 DEL
                ELSE BEGIN
                range:='XIX';
                division:='IV';
                comm:='DELHI-III';
                END;*/
                //TRI A.V 05.11.2015 DEL

                IF CustomerInfo.GET("Sell-to Customer No.") THEN;  //TRI A.V 03.11.2015 ADDED

                IF tgCurrency.GET("Sales Shipment Header"."Currency Code") THEN;

                //TRI A.V 05.11.2015 START
                // FormDesc := '';
                // StateForms.RESET;
                // StateForms.SETRANGE("Form Code", "Form Code");
                // IF StateForms.FINDFIRST THEN BEGIN
                //     StateForms.CALCFIELDS(StateForms."Form Description");
                //     FormDesc := StateForms."Form Description";
                // END; //OA.AS Commented

                SaleTax := '';
                IF State = 'HR' THEN
                    SaleTax := 'VAT'
                ELSE
                    SaleTax := 'CST';
                //TRI A.V 05.11.2015 STOP
                // TRI SS 260617 START
                IF RecLocation.GET("Sales Shipment Header"."Location Code") THEN BEGIN
                    TgcompanyName := RecLocation.Name;
                    TgComAdd := RecLocation.Address + RecLocation."Address 2";
                    TgCity := RecLocation.City;
                    TgStateCode := RecLocation."State Code";
                    TgGSTReg := RecLocation."GST Registration No.";
                END;

                IF RecCustomer.GET("Sales Shipment Header"."Sell-to Customer No.") THEN BEGIN
                    SellToGSTRegistrationType := RecCustomer."GST Registration Type".AsInteger();
                    SellToGSTRegistrationNo := RecCustomer."GST Registration No.";
                    IF (RecCustomer."GST Customer Type" <> RecCustomer."GST Customer Type"::" ") AND (RecCustomer."GST Customer Type" = RecCustomer."GST Customer Type"::Unregistered) THEN
                        ReverseCharge := TRUE
                    ELSE
                        ReverseCharge := FALSE;
                END;
                IF RecCustomer.GET("Sales Shipment Header"."Bill-to Customer No.") THEN BEGIN
                    BilllToGSTRegType := RecCustomer."GST Registration Type".AsInteger();
                    BilllToGSTRegistrationNo := RecCustomer."GST Registration No.";
                END;
                CLEAR(ShipmentMethodeDes);
                IF ShipmentMethode.GET("Sales Shipment Header"."Shipment Method Code") THEN
                    ShipmentMethodeDes := ShipmentMethod.Description;


                CLEAR(placeofSupply);
                RecSL.RESET;
                RecSL.SETRANGE("Document No.", "No.");
                IF RecSL.FINDFIRST THEN
                    placeofSupply := RecSL."GST Place of Supply".AsInteger();

                // TRI SS 260617 END

            end;

            trigger OnPreDataItem()
            begin
                IF ShipToAddress.GET(CustomerNo, ShipToCode) AND ShipToAddress.Consignee THEN BEGIN
                    Consignee[1] := ShipToAddress.FIELDCAPTION(Consignee) + '  ' + ShipToAddress.FIELDCAPTION(Name) + '.  ' +
                      ShipToAddress.Name;
                    Consignee[2] := ShipToAddress.FIELDCAPTION(Address) + '.  ' + ShipToAddress.Address;
                    Consignee[3] := ShipToAddress.FIELDCAPTION("Address 2") + '.  ' + ShipToAddress."Address 2";
                    Consignee[4] := ShipToAddress.FIELDCAPTION(City) + '.  ' + ShipToAddress.City;
                END ELSE BEGIN
                    Consignee[1] := '';
                    Consignee[2] := '';
                    Consignee[3] := '';
                    Consignee[4] := '';
                END;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = All;
                        Caption = 'No. of Copies';
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        ApplicationArea = All;
                        Caption = 'Show Internal Information';
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = All;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                    }
                    field("Item Description"; ItemDesc)
                    {
                        ApplicationArea = All;
                    }
                    field(Original; Original)
                    {
                        ApplicationArea = All;
                        Caption = 'Original';
                    }
                    field(Duplicate; Duplicate)
                    {
                        ApplicationArea = All;
                        Caption = 'Duplicate';
                    }
                    field(Triplicate; Triplicate)
                    {
                        ApplicationArea = All;
                        Caption = 'Triplicate';
                    }
                    field(TypeofCopy1; TypeofCopy1)
                    {
                        ApplicationArea = All;
                        Caption = 'Type of Copy';
                        OptionCaption = 'Original for Recipient,Duplicate for Transporters,Triplicate for Suppliers,Extra Copy';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            LogInteractionEnable := TRUE;
        end;

        trigger OnOpenPage()
        begin
            InitLogInteraction;
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        comp.GET;
        GLSetup.GET;
        CompanyInfo.GET;
        //CompanyInfo.CALCFIELDS(CompanyInfo.Logo);

        SalesSetup.GET;

        CASE SalesSetup."Logo Position on Documents" OF
            SalesSetup."Logo Position on Documents"::"No Logo":
                ;
            SalesSetup."Logo Position on Documents"::Left:
                BEGIN
                    CompanyInfo3.GET;
                    CompanyInfo3.CALCFIELDS(Picture);
                END;
            SalesSetup."Logo Position on Documents"::Center:
                BEGIN
                    CompanyInfo1.GET;
                    CompanyInfo1.CALCFIELDS(Picture);
                END;
            SalesSetup."Logo Position on Documents"::Right:
                BEGIN
                    CompanyInfo2.GET;
                    CompanyInfo2.CALCFIELDS(Picture);
                END;
        END;
    end;

    trigger OnPreReport()
    begin
        comp.GET;
        CompInfo.GET;
        NoOfCopies := 3;
        IF NOT CurrReport.USEREQUESTPAGE THEN
            InitLogInteraction;
    end;

    var
        Text16500: Label 'Salesperson';
        Text16501: Label 'Total %1';
        Text16502: Label 'COPY';
        Text16503: Label 'Sales - Invoice %1';
        Text16505: Label 'VAT Amount Specification in ';
        Text16506: Label 'Local Currency';
        Text16507: Label 'Exchange rate: %1/%2';
        Text16508: Label 'Total %1 Incl. Taxes';
        Text16509: Label 'Total %1 Excl. Taxes';
        comp: Record "Company Information";
        txt: Text[15];
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record Customer;
        VATAmountLine: Record "VAT Amount Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        Language: Record Language;
        CurrExchRate: Record "Currency Exchange Rate";
        SalesShipCountPrinted: Codeunit "Sales Shpt.-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit SegManagement;
        SalesShipmentBuffer: Record "Sales Shipment Buffer" temporary;
        PostedShipmentDate: Date;
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        OrderNoText: Text[30];
        SalesPersonText: Text[30];
        VATNoText: Text[30];
        ReferenceText: Text[30];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        NextEntryNo: Integer;
        FirstValueEntryNo: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        CalculatedExchRate: Decimal;
        ChargesAmount: Decimal;
        OtherTaxesAmount: Decimal;
        // RG23D: Record "RG 23 D";
        Consignee: array[4] of Text[80];
        ShipToAddress: Record "Ship-to Address";
        CustomerNo: Code[20];
        ShipToCode: Code[20];
        // ExcisePostingSetup: Record "Excise Posting Setup";
        Item: Record Item;
        Vendor: Record Vendor;
        InvoiceLineType: Integer;
        DocNo: Code[20];
        LineNo: Integer;
        TotalAmount1: Decimal;
        TotalAmount2: Decimal;
        TotalAmount3: Decimal;
        TotalAmount4: Decimal;
        TotalAmount5: Decimal;
        TotalAmount6: Decimal;
        TotalAmount7: Decimal;
        TotalAmount8: Decimal;
        TotalAmount9: Decimal;
        TotalAmount10: Decimal;
        OutputNo: Integer;
        [InDataSet]
        LogInteractionEnable: Boolean;
        CompanyInfoPhoneNoCaptionLbl: Label 'Phone No.';
        CompanyInfoEMailCaptionLbl: Label 'E-Mail';
        CompanyInfoHomePageCaptionLbl: Label 'Home Page';
        CompanyInfoVATRegNoCaptionLbl: Label 'VAT Registration No.';
        CompanyInfoGiroNoCaptionLbl: Label 'Giro No.';
        CompanyInfoBankNameCaptionLbl: Label 'Bank';
        CompanyInfoBankAccNoCaptionLbl: Label 'Account No.';
        DueDateCaptionLbl: Label 'Due Date';
        InvoiceNoCaptionLbl: Label 'Invoice No.';
        PostingDateCaptionLbl: Label 'Posting Date';
        PricesInclVATCaptionLbl: Label 'Prices Including VAT';
        PageCaptionLbl: Label 'Page';
        PymtTermsDescCaptionLbl: Label 'Payment Terms';
        ShipmentMethodDescCaptionLbl: Label 'Shipment Method';
        DocDateCaptionLbl: Label 'Document Date';
        HdrDimCaptionLbl: Label 'Header Dimensions';
        UnitPriceCaptionLbl: Label 'Unit Price';
        DiscPercentageCaptionLbl: Label 'Discount %';
        AmtCaptionLbl: Label 'Amount';
        LineDiscAmtCaptionLbl: Label 'Line Discount Amount';
        PostedShipmentDateCaptionLbl: Label 'Posted Shipment Date';
        DirectDebitCaptionLbl: Label 'Direct Debit';
        InvDiscAmtCaptionLbl: Label 'Invoice Discount Amount';
        SubtotalCaptionLbl: Label 'Subtotal';
        ExciseAmtCaptionLbl: Label 'Excise Amount';
        TaxAmtCaptionLbl: Label 'Tax Amount';
        ServTaxAmtCaptionLbl: Label 'Service Tax Amount';
        ChargesAmtCaptionLbl: Label 'Charges Amount';
        OtherTaxesAmtCaptionLbl: Label 'Other Taxes Amount';
        ServTaxeCessAmtCaptionLbl: Label 'Service Tax eCess Amount';
        TCSAmtCaptionLbl: Label 'TCS Amount';
        ServTaxSHECessAmtCaptionLbl: Label 'Service Tax SHE Cess Amount';
        PymtDiscOnVATCaptionLbl: Label 'Payment Discount on VAT';
        ShipmentCaptionLbl: Label 'Shipment';
        LineDimensionsCaptionLbl: Label 'Line Dimensions';
        VATPercentageCaptionLbl: Label 'VAT %';
        VATBaseCaptionLbl: Label 'VAT Base';
        VATAmtCaptionLbl: Label 'VAT Amount';
        VATAmtSpecificationCaptionLbl: Label 'VAT Amount Specification';
        VATIdentifierCaptionLbl: Label 'VAT Identifier';
        InvDiscBaseAmtCaptionLbl: Label 'Invoice Discount Base Amount';
        LineAmtCaptionLbl: Label 'Line Amount';
        TotalCaptionLbl: Label 'Total';
        DescOfGoodsCaptionLbl: Label 'Description Of Goods';
        TariffClassificationSubHeadingCaptionLbl: Label 'Tariff Classification & Sub Heading';
        QtyCaptionLbl: Label 'Quantity';
        RateOFDutyCaptionLbl: Label 'Rate OF Duty';
        AssessableValueCaptionLbl: Label 'Assessable Value';
        ManufacturerNameAddrAndECCNoCaptionLbl: Label 'Manufacturer Name,Address and E.C.C. No.';
        InvoiceNoBillOfEntryNoCaptionLbl: Label 'Invoice No/Bill of entry no';
        DivisionNameRangeFullPostalAddrCaptionLbl: Label 'Full Postal address of the range and Name of Division';
        AmtOfDutyPerUnitCaptionLbl: Label 'Amount of Duty per unit';
        AmtOfDutyPaidCaptionLbl: Label 'Amount of Duty Paid';
        ShipToAddressCaptionLbl: Label 'Ship-to Address';
        CompInfo: Record "Company Information";
        RGEntryNo: Code[20];
        Remarks: Record "Sales Comment Line";
        SalesComment: Text[500];
        Add1: Text[100];
        Add2: Text[100];
        Add3: Text[100];
        EccNo: Code[20];
        range: Code[50];
        division: Code[50];
        comm: Code[50];
        Location: Record Location;
        RoundOff: Decimal;
        InitialAmount: Decimal;
        TotalAmount: Decimal;
        RecItm: Record Item;
        VarPart: Text[30];
        recSalInvLine: Record "Sales Invoice Line";
        TaxPercent: Decimal;
        Excise: Decimal;
        eCess: Decimal;
        SHEcess: Decimal;
        DutyPaid: Decimal;
        ADCAmount: Decimal;
        ExciseUSD: Decimal;
        eCesscurr: Decimal;
        SHEcesscurr: Decimal;
        DutyPaidcurr: Decimal;
        ADCAmountcurr: Decimal;
        tgCurrency: Record Currency;
        "SerialNo.": Integer;
        ReportName: Text;
        tgItem: Record Item;
        CustomerInfo: Record Customer;
        Desc: Text[100];
        ItemDesc: Boolean;
        // StateForms: Record "State Forms";
        SaleTax: Text[10];
        FormDesc: Text[50];
        TypeofCopy1: Option "Original for Recipient","Duplicate for Transporters","Triplicate for Suppliers","Extra Copy";
        TariffNo: Code[20];
        RecLocation: Record Location;
        TgcompanyName: Text[250];
        TgComAdd: Text[250];
        TgCity: Text[100];
        TgStateCode: Code[50];
        TgGSTReg: Code[50];
        RecCustomer: Record Customer;
        SellToGSTRegistrationType: Option GSTIN,UID,GID;
        BilllToGSTRegType: Option GSTIN,UID,GID;
        SellToGSTRegistrationNo: Code[30];
        BilllToGSTRegistrationNo: Code[30];
        DetailGSTLedgerEntry: Record "Detailed GST Ledger Entry";
        RateCGST: Decimal;
        AMTCGST: Decimal;
        RateSGST: Decimal;
        AMTSGST: Decimal;
        RateIGST: Decimal;
        AMTIGST: Decimal;
        ReverseCharge: Boolean;
        ShipmentMethodeDes: Text;
        ShipmentMethode: Record "Shipment Method";
        RecSL: Record "Sales Invoice Line";
        placeofSupply: Option " ","Bill-to Address","Ship-to Address","Location Address";
        ShipBillGST: Code[20];
        SalInvLine: Record "Sales Invoice Line";
        No: Code[10];
        Original: Boolean;
        Duplicate: Boolean;
        Triplicate: Boolean;
        TextA: Text[100];
        GstStATECode: Code[10];
        State: Record State;
        Statesmj: Record State;
        GstStATECode1: Code[10];
        LOC: Record Location;
        LocStateCode: Code[10];
        GstStATECode2: Code[10];
        ShipBillGSTSTATEname: Text[100];
        StateName: Code[10];
        postcode: Code[10];
        RecDGST: Record "Detailed GST Ledger Entry";
        Taxablevalue: Decimal;

    [Scope('Cloud')]
    procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
    end;

    [Scope('Cloud')]
    procedure FindPostedShipmentDate(): Date
    var
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentBuffer2: Record "Sales Shipment Buffer" temporary;
    begin
        NextEntryNo := 1;
        //IF "Sales Shipment Line"."Shipment No." <> '' THEN
        IF SalesShipmentHeader.GET("Sales Shipment Line"."Document No.") THEN
            EXIT(SalesShipmentHeader."Posting Date");

        //IF "Sales Shipment Header"."Order No." = '' THEN
        //EXIT("Sales Shipment Header"."Posting Date");
        /*
        CASE "Sales Shipment Line".Type OF
          "Sales Shipment Line".Type::Item:
            GenerateBufferFromValueEntry("Sales Shipment Line");
          "Sales Shipment Line".Type::"G/L Account","Sales Shipment Line".Type::Resource,
          "Sales Shipment Line".Type::"Charge (Item)","Sales Shipment Line".Type::"Fixed Asset":
            GenerateBufferFromShipment("Sales Shipment Line");
          "Sales Shipment Line".Type::" ":
            EXIT(0D);
        END;
        
        SalesShipmentBuffer.RESET;
        SalesShipmentBuffer.SETRANGE("Document No.","Sales Shipment Line"."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No." ,"Sales Shipment Line"."Line No.");
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
          SalesShipmentBuffer2 := SalesShipmentBuffer;
          IF SalesShipmentBuffer.NEXT = 0 THEN BEGIN
            SalesShipmentBuffer.GET(
              SalesShipmentBuffer2."Document No.",SalesShipmentBuffer2."Line No.",SalesShipmentBuffer2."Entry No.");
            SalesShipmentBuffer.DELETE;
            EXIT(SalesShipmentBuffer2."Posting Date");
          END ;
          SalesShipmentBuffer.CALCSUMS(Quantity);
          IF SalesShipmentBuffer.Quantity <> "Sales Shipment Line".Quantity THEN BEGIN
            SalesShipmentBuffer.DELETEALL;
            EXIT("Sales Shipment Header"."Posting Date");
          END;
        END ELSE
          EXIT("Sales Shipment Header"."Posting Date");
        */

    end;

    [Scope('Cloud')]
    procedure GenerateBufferFromValueEntry(SalesInvoiceLine2: Record "Sales Invoice Line")
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := SalesInvoiceLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.", "Posting Date");
        ValueEntry.SETRANGE("Document No.", SalesInvoiceLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date", "Sales Shipment Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.", '');
        ValueEntry.SETFILTER("Entry No.", '%1..', FirstValueEntryNo);
        IF ValueEntry.FIND('-') THEN
            REPEAT
                IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
                    IF SalesInvoiceLine2."Qty. per Unit of Measure" <> 0 THEN
                        Quantity := ValueEntry."Invoiced Quantity" / SalesInvoiceLine2."Qty. per Unit of Measure"
                    ELSE
                        Quantity := ValueEntry."Invoiced Quantity";
                    AddBufferEntry(
                      SalesInvoiceLine2,
                      -Quantity,
                      ItemLedgerEntry."Posting Date");
                    TotalQuantity := TotalQuantity + ValueEntry."Invoiced Quantity";
                END;
                FirstValueEntryNo := ValueEntry."Entry No." + 1;
            UNTIL (ValueEntry.NEXT = 0) OR (TotalQuantity = 0);
    end;

    [Scope('Cloud')]
    procedure GenerateBufferFromShipment(SalesInvoiceLine: Record "Sales Invoice Line")
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceLine2: Record "Sales Invoice Line";
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentLine: Record "Sales Shipment Line";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := 0;
        SalesInvoiceHeader.SETCURRENTKEY("Order No.");
        SalesInvoiceHeader.SETFILTER("No.", '..%1', "Sales Shipment Header"."No.");
        SalesInvoiceHeader.SETRANGE("Order No.", "Sales Shipment Header"."Order No.");
        IF SalesInvoiceHeader.FIND('-') THEN
            REPEAT
                SalesInvoiceLine2.SETRANGE("Document No.", SalesInvoiceHeader."No.");
                SalesInvoiceLine2.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
                SalesInvoiceLine2.SETRANGE(Type, SalesInvoiceLine.Type);
                SalesInvoiceLine2.SETRANGE("No.", SalesInvoiceLine."No.");
                SalesInvoiceLine2.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
                IF SalesInvoiceLine2.FIND('-') THEN
                    REPEAT
                        TotalQuantity := TotalQuantity + SalesInvoiceLine2.Quantity;
                    UNTIL SalesInvoiceLine2.NEXT = 0;
            UNTIL SalesInvoiceHeader.NEXT = 0;

        SalesShipmentLine.SETCURRENTKEY("Order No.", "Order Line No.");
        SalesShipmentLine.SETRANGE("Order No.", "Sales Shipment Header"."Order No.");
        SalesShipmentLine.SETRANGE("Order Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE(Type, SalesInvoiceLine.Type);
        SalesShipmentLine.SETRANGE("No.", SalesInvoiceLine."No.");
        SalesShipmentLine.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
        SalesShipmentLine.SETFILTER(Quantity, '<>%1', 0);

        IF SalesShipmentLine.FIND('-') THEN
            REPEAT
                //IF "Sales Shipment Header"."Get Shipment Used" THEN
                //CorrectShipment(SalesShipmentLine);
                IF ABS(SalesShipmentLine.Quantity) <= ABS(TotalQuantity - SalesInvoiceLine.Quantity) THEN
                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity
                ELSE BEGIN
                    IF ABS(SalesShipmentLine.Quantity) > ABS(TotalQuantity) THEN
                        SalesShipmentLine.Quantity := TotalQuantity;
                    Quantity :=
                      SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);

                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity;
                    SalesInvoiceLine.Quantity := SalesInvoiceLine.Quantity - Quantity;

                    IF SalesShipmentHeader.GET(SalesShipmentLine."Document No.") THEN
                        AddBufferEntry(
                          SalesInvoiceLine,
                          Quantity,
                          SalesShipmentHeader."Posting Date");
                END;
            UNTIL (SalesShipmentLine.NEXT = 0) OR (TotalQuantity = 0);
    end;

    [Scope('Cloud')]
    procedure CorrectShipment(var SalesShipmentLine: Record "Sales Shipment Line")
    var
        SalesInvoiceLine: Record "Sales Invoice Line";
    begin
        SalesInvoiceLine.SETCURRENTKEY("Shipment No.", "Shipment Line No.");
        SalesInvoiceLine.SETRANGE("Shipment No.", SalesShipmentLine."Document No.");
        SalesInvoiceLine.SETRANGE("Shipment Line No.", SalesShipmentLine."Line No.");
        IF SalesInvoiceLine.FIND('-') THEN
            REPEAT
                SalesShipmentLine.Quantity := SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
            UNTIL SalesInvoiceLine.NEXT = 0;
    end;

    [Scope('Cloud')]
    procedure AddBufferEntry(SalesInvoiceLine: Record "Sales Invoice Line"; QtyOnShipment: Decimal; PostingDate: Date)
    begin
        SalesShipmentBuffer.SETRANGE("Document No.", SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date", PostingDate);
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity + QtyOnShipment;
            SalesShipmentBuffer.MODIFY;
            EXIT;
        END;

        WITH SalesShipmentBuffer DO BEGIN
            "Document No." := SalesInvoiceLine."Document No.";
            "Line No." := SalesInvoiceLine."Line No.";
            "Entry No." := NextEntryNo;
            Type := SalesInvoiceLine.Type;
            "No." := SalesInvoiceLine."No.";
            Quantity := QtyOnShipment;
            "Posting Date" := PostingDate;
            INSERT;
            NextEntryNo := NextEntryNo + 1
        END;
    end;

    [Scope('Cloud')]
    procedure SetCustomerNo(CustomerCode: Code[20]; ShipTo: Code[20])
    begin
        CustomerNo := CustomerCode;
        ShipToCode := ShipTo;
    end;
}

