report 50044 "PurchaseOrder_McDonald_GST"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/PurchaseOrderMcDonaldGST.rdlc';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = SORTING("Document Type", "No.") WHERE("Document Type" = FILTER(Order));
            RequestFilterFields = "Document Type", "No.";
            column(CompanyName; rec_companyinfo.Name)
            {
            }
            column(AddressLine1; rec_companyinfo.Address + ', ' + rec_companyinfo.City + ' - ' + rec_companyinfo."Post Code" + ', ' + CountryRegion.Name)
            {
            }
            column(AddressLine2; 'GST Registration No : ' + rec_companyinfo."GST Registration No.")
            {
            }
            column(AddressLine3; rec_companyinfo.City + ' ' + '')//rec_companyinfo."T.I.N. No.")
            {
            }
            column(PurchaseOrderCap; PurchaseOrderCaption)
            {
            }
            column(PurchaseOrderNoCap; PurchaseOrderNoCaption)
            {
            }
            column(QuotationRefNoCap; QuotationRefNoCaption)
            {
            }
            column(OrderDateCap; OrderDateCaption)
            {
            }
            column(DeliveryDateCap; DeliveryDateCaption)
            {
            }
            column(BuyfromVendorNo_PurchaseHeader; 'Buy From Vendor Code : ' + "Purchase Header"."Buy-from Vendor No.")
            {
            }
            column(RequestedReceiptDate_PurchaseHeader; "Purchase Header"."Requested Receipt Date")
            {
            }
            column(BuyfromContact_PurchaseHeader; 'Contact Person : ' + "Purchase Header"."Buy-from Contact")
            {
            }
            column(OrderDate_PurchaseHeader; "Purchase Header"."Order Date")
            {
            }
            column(QuoteNo_PurchaseHeader; "Purchase Header"."Quote No.")
            {
            }
            column(No_PurchaseHeader; "Purchase Header"."No.")
            {
            }
            column(WeArePleasedCap; WeArePleasedCaption)
            {
            }
            column(vendorname; 'Vendor Name : ' + rec_vendor.Name)
            {
            }
            column(Add1; 'Address : ' + rec_vendor.Address)
            {
            }
            column(Add2; rec_vendor."Address 2")
            {
            }
            column(city; rec_vendor.City)
            {
            }
            column(Postcode; rec_vendor."Post Code")
            {
            }
            column(cod_TIN_No; 'GST No : ' + rec_vendor."GST Registration No.")
            {
            }
            column(PhoneNo_Vendor; 'Phone No : ' + rec_vendor."Phone No.")
            {
            }
            column(Email_Vendor; 'Email ID : ' + rec_vendor."E-Mail")
            {
            }
            column(SNoCap; SNoCaption)
            {
            }
            column(ItemCodeCap; ItemCodeCaption)
            {
            }
            column(ItemDescriptionCap; ItemDescriptionCaption)
            {
            }
            column(MakeModelNoCap; MakeModelNoCaption)
            {
            }
            column(QtyCap; QtyCaption)
            {
            }
            column(UnitPriceCap; UnitPriceCaption)
            {
            }
            column(AmountCap; AmountCaption)
            {
            }
            column(TotalCap; TotalCaption)
            {
            }
            column(Packing; ' Packing : ' + ' ' + txtpacking)
            {
            }
            column(Taxes; ' Taxes:' + ' ' + txttaxces)
            {
            }
            column(ExciseDuty; ' Custom & Excise Duty : ' + ' ' + txtExcies)
            {
            }
            column(Freight; ' Freight : ' + ' ' + txtFrieght)
            {
            }
            column(Insurance; ' Insurance : ' + ' ' + txtinsurance)
            {
            }
            column(CompanyAddress; rec_companyinfo.Address)
            {
            }
            column(CompanyTINNo; '')//rec_companyinfo."T.I.N. No.")
            {
            }
            column(txtSpclInstruction; txtSpclInstruction)
            {
            }
            column(ShipmentMethodCode_PurchaseHeader; "Purchase Header"."Shipment Method Code")
            {
            }
            column(codepayment; codepayment)
            {
            }
            column(txtgurantwarnty; txtgurant_warnty)
            {
            }
            column(txtloc; txt_loc)
            {
            }
            column(BillingCap; BillingCaption)
            {
            }
            column(BillingAddressCap; BillingAddressCaption)
            {
            }
            column(BillingStateTinNoCap; BillingStateTinNoCaption)
            {
            }
            column(SpecialInstructionCap; SpecialInstructionCaption)
            {
            }
            column(ModeofDeliveryCap; ModeofDeliveryCaption)
            {
            }
            column(PaymentTermsCap; PaymentTermsCaption)
            {
            }
            column(GuaranteeWarrantyCap; GuaranteeWarrantyCaption)
            {
            }
            column(DeliveryAddressCap; DeliveryAddressCaption)
            {
            }
            column(PreparedByCap; PreparedByCaption)
            {
            }
            column(ApprovedByCap; ApprovedByCaption)
            {
            }
            column(dectotal; dec_total)
            {
            }
            column(CompanyInfoPicture; rec_companyinfo.Picture)
            {
            }
            column(Code_Location; 'Location/ Store Code : ' + Location.Code)
            {
            }
            column(Name_Location; Location.Name)
            {
            }
            column(Address_Location; 'Address : ' + Location.Address)
            {
            }
            column(Address2_Location; Location."Address 2")
            {
            }
            column(City_Location; Location.City)
            {
            }
            column(PostCode_Location; 'Post Code : ' + Location."Post Code")
            {
            }
            column(GSTRegistrationNo_Location; 'GST Registration No : ' + Location."GST Registration No.")
            {
            }
            column(Email_Location; 'Email ID : ' + Location."E-Mail")
            {
            }
            column(PhoneNo_Location; 'Phone No : ' + Location."Phone No.")
            {
            }
            column(UOMCap; UOMCaption)
            {
            }
            column(GSTCap; GSTCaption)
            {
            }
            column(OhrTermConditionCap; OhrTermConditionCaption)
            {
            }
            column(TotalBasicCap; TotalBasicCaption)
            {
            }
            column(TotalGSTCap; TotalGSTCaption)
            {
            }
            column(FooterOneCap; FooterOneCaption)
            {
            }
            column(FooterSecondCap; FooterSecondCaption)
            {
            }
            column(FooterThirdCap; FooterThirdCaption)
            {
            }
            column(OrderByNameCap; OrderByNameCaption)
            {
            }
            column(TotalGSTAmt; TotalGSTAmt)
            {
            }
            column(TotalPurchaseOrderValue; TotalPurchaseOrderValue)
            {
            }
            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");
                column(SrNo; SrNo)
                {
                }
                column(DocumentType_PurchaseLine; "Purchase Line"."Document Type")
                {
                }
                column(DocumentNo_PurchaseLine; "Purchase Line"."Document No.")
                {
                }
                column(No_PurchaseLine; Item."HSN/SAC Code")
                {
                }
                column(Description_PurchaseLine; "Purchase Line".Description)
                {
                }
                column(Description2_PurchaseLine; "Purchase Line"."Description 2")
                {
                }
                column(Quantity_PurchaseLine; "Purchase Line".Quantity)
                {
                }
                column(DirectUnitCost_PurchaseLine; "Purchase Line"."Direct Unit Cost")
                {
                }
                column(LineAmount_PurchaseLine; '')//"Purchase Line"."Amount To Vendor")
                {
                }
                column(CurrencyCode_PurchaseHeader; 'Amount in Words : ' + "Purchase Header"."Currency Code" + ' ' + COPYSTR(descrptionline[1], 5))
                {
                }
                column(DescriptionLine2; descrptionline[2])
                {
                }
                column(UnitofMeasure_PurchaseLine; "Purchase Line"."Unit of Measure")
                {
                }
                column(GSTAmount_PurchaseLine; '')//"Purchase Line"."Total GST Amount")
                {
                }
                column(TotalBlankLines; TotalBlankLines)
                {
                }
                column(CodePaymentDescription; CodePaymentDescription)
                {
                }
                column(txtgurant_warnty; txtgurant_warnty)
                {
                }

                trigger OnAfterGetRecord()
                begin

                    SrNo += 1;
                    dec_total += "Purchase Line"."Line Amount";
                    TotalGSTAmt += 0;//"Purchase Line"."Total GST Amount";
                    TotalPurchaseOrderValue += 0;//"Purchase Line"."Amount To Vendor";
                    rep_checkprint.InitTextVariable;
                    rep_checkprint.FormatNoText(descrptionline, TotalPurchaseOrderValue - TotalGSTAmt, "Purchase Header"."Currency Code");

                    Item.GET("No.");
                end;

                trigger OnPreDataItem()
                begin
                    CLEAR(dec_total);
                    CLEAR(TotalGSTAmt);
                    CLEAR(TotalPurchaseOrderValue);
                    SrNo := 0;
                    dec_total := 0;
                    PageNo := 0;


                    g_intCalc := "Purchase Line".COUNT MOD intMaxLines;
                    IF "Purchase Line".COUNT < intMaxLines THEN
                        PageCount := 1
                    ELSE
                        IF g_intCalc = 0 THEN
                            PageCount := ("Purchase Line".COUNT - g_intCalc) / intMaxLines
                        ELSE
                            IF g_intCalc <> 0 THEN
                                PageCount := ("Purchase Line".COUNT - g_intCalc) / intMaxLines + 1;
                end;
            }

            trigger OnAfterGetRecord()
            begin

                rec_companyinfo.GET;
                rec_companyinfo.CALCFIELDS(Picture);
                CountryRegion.GET(rec_companyinfo."Country/Region Code");
                Location.GET("Purchase Header"."Location Code");
                rec_vendor.GET("Purchase Header"."Buy-from Vendor No.");

                recpurchheader.RESET;
                recpurchheader.SETRANGE(recpurchheader."No.", "Purchase Header"."No.");
                IF recpurchheader.FINDFIRST THEN
                    codepayment := recpurchheader."Payment Terms Code";

                IF PaymentTerms.GET(recpurchheader."Payment Terms Code") THEN
                    CodePaymentDescription := PaymentTerms.Description;


                /*Vikas
                rec_vendor.RESET;
                rec_vendor.Setrange(rec_vendor."No.","Purchase Header"."Buy-from Vendor No.");
                IF rec_vendor.FINDFIRST THEN Begin
                  txt_vendorname:=rec_vendor.Name;
                  txt_Add1:=rec_vendor.Address;
                  txt_Add2:=rec_vendor."Address 2";
                  txt_city:=rec_vendor.City;
                  cod_TIN_No:=rec_vendor."T.I.N. No.";
                END;
                */
                rec_loca.RESET;
                rec_loca.SETRANGE(rec_loca.Code, "Purchase Header"."Location Code");
                IF rec_loca.FINDFIRST THEN
                    txt_loc := rec_loca.Name;


                rec_PurchComtLine.RESET;
                rec_PurchComtLine.SETRANGE(rec_PurchComtLine."Document Type", "Purchase Header"."Document Type");
                rec_PurchComtLine.SETRANGE(rec_PurchComtLine."No.", "Purchase Header"."No.");
                IF rec_PurchComtLine.FINDSET THEN
                    REPEAT
                        IF rec_PurchComtLine."Comment Type" = rec_PurchComtLine."Comment Type"::Packing THEN
                            txtgurant_warnty := txtgurant_warnty + ' ' + rec_PurchComtLine.Comment;

                        IF rec_PurchComtLine."Comment Type" = rec_PurchComtLine."Comment Type"::Taxes THEN
                            txtpacking := txtpacking + '' + rec_PurchComtLine.Comment;

                        IF rec_PurchComtLine."Comment Type" = rec_PurchComtLine."Comment Type"::ExciseDuty THEN
                            txttaxces := txttaxces + ' ' + rec_PurchComtLine.Comment;

                        IF rec_PurchComtLine."Comment Type" = rec_PurchComtLine."Comment Type"::Frieght THEN
                            txtExcies := txtExcies + ' ' + rec_PurchComtLine.Comment;

                        IF rec_PurchComtLine."Comment Type" = rec_PurchComtLine."Comment Type"::Insurance THEN
                            txtFrieght := txtFrieght + ' ' + rec_PurchComtLine.Comment;

                        IF rec_PurchComtLine."Comment Type" = rec_PurchComtLine."Comment Type"::SpecialInstructions THEN
                            txtinsurance := txtinsurance + ' ' + rec_PurchComtLine.Comment;

                    // IF rec_PurchComtLine."Comment Type" = rec_PurchComtLine."Comment Type"::"7" THEN
                    //     REPEAT
                    //         txtSpclInstruction := txtSpclInstruction + ' ' + rec_PurchComtLine.Comment;
                    //     UNTIL rec_PurchComtLine.NEXT = 0; //OA.AS Commented
                    UNTIL rec_PurchComtLine.NEXT = 0;

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

    trigger OnPreReport()
    begin
        intMaxLines := 20;
    end;

    var
        rec_companyinfo: Record "Company Information";
        rec_vendor: Record Vendor;
        SrNo: Integer;
        dec_total: Decimal;
        rec_loca: Record 14;
        rec_PurchComtLine: Record "Purch. Comment Line";
        rep_checkprint: Report 1401;
        descrptionline: array[2] of Text[100];
        txt_vendorname: Text[100];
        txt_loc: Text[100];
        txt_Add1: Text[100];
        txt_Add2: Text[100];
        txt_city: Text[100];
        cod_TIN_No: Code[30];
        txt_SpclIns: Text[100];
        intMaxLines: Integer;
        intLine: Integer;
        PurchLinecount: Integer;
        PageCount: Integer;
        LstPage: Decimal;
        g_intCalc: Integer;
        PageNo: Integer;
        codepayment: Code[30];
        recpurchheader: Record "Purchase Header";
        txtgurant_warnty: Text[50];
        txtpacking: Text[50];
        txttaxces: Text[50];
        txtExcies: Text[50];
        txtFrieght: Text[50];
        txtinsurance: Text[50];
        txtSpclInstruction: Text[100];
        i: Integer;
        j: Integer;
        PurchaseOrderCaption: Label 'Purchase Order';
        PurchaseOrderNoCaption: Label 'Purchase Order No :';
        QuotationRefNoCaption: Label 'Quotation Ref.No :';
        OrderDateCaption: Label 'Order Date :';
        DeliveryDateCaption: Label 'Delivery Date :';
        WeArePleasedCaption: Label 'We are pleased to place an order with you for following as per terms and conditions appended below:';
        SNoCaption: Label 'S.No';
        ItemCodeCaption: Label 'HSN Code';
        ItemDescriptionCaption: Label 'Item Description';
        MakeModelNoCaption: Label 'Model No.';
        QtyCaption: Label 'Quantity';
        UnitPriceCaption: Label 'Unit Price';
        AmountCaption: Label 'Total Value';
        TotalCaption: Label 'Total Purchase Order Value';
        BillingCaption: Label 'Billing & Shipping Address';
        BillingAddressCaption: Label 'Billing Address';
        BillingStateTinNoCaption: Label 'Billing State Tin No.';
        SpecialInstructionCaption: Label 'Special Instruction :-';
        ModeofDeliveryCaption: Label 'Mode of Delivery';
        PaymentTermsCaption: Label 'Payment Terms';
        GuaranteeWarrantyCaption: Label 'Guarantee/Warranty :-';
        DeliveryAddressCaption: Label 'Delivery Address';
        PreparedByCaption: Label 'Prepare By';
        ApprovedByCaption: Label 'Approved By';
        CountryRegion: Record "Country/Region";
        Location: Record Location;
        Item: Record Item;
        UOMCaption: Label 'UOM';
        GSTCaption: Label 'GST';
        OhrTermConditionCaption: Label 'Other Terms & Condition';
        TotalBasicCaption: Label 'Total Basic Value';
        TotalGSTCaption: Label 'Total GST Value';
        FooterOneCaption: Label '1. Please mention the Purchase order number and HSN Code against each material on the Bill/Invoice.';
        FooterSecondCaption: Label '2. Item description on Bill/invoice must be same as mentioned in purchase order.';
        OrderByNameCaption: Label 'Order By';
        TotalBlankLines: Integer;
        TotalGSTAmt: Decimal;
        TotalPurchaseOrderValue: Decimal;
        FooterThirdCaption: Label '3. No. Partial deliveries will be accepted.';
        CodePaymentDescription: Text[50];
        PaymentTerms: Record "Payment Terms";
}

