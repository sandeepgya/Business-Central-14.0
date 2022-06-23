xmlport 50003 "Secondary-Sales Details"
{
    FieldSeparator = '<TAB>';
    Format = VariableText;

    schema
    {
        textelement(Root)
        {
            tableelement("Secondary Sales Details"; "Secondary Sales Details")
            {
                AutoSave = false;
                XmlName = 'SalesWarranty';
                textelement(SellToCustNo)
                {
                    MinOccurs = Zero;
                }
                textelement(DocumentNo)
                {
                    MinOccurs = Zero;
                }
                textelement(LineNo)
                {
                    MinOccurs = Zero;
                }
                textelement(Type1)
                {
                    MinOccurs = Zero;
                }
                textelement(ItemCode)
                {
                    MinOccurs = Zero;
                }
                textelement(LocationCode)
                {
                    MinOccurs = Zero;
                }
                textelement(Description)
                {
                    MinOccurs = Zero;
                }
                textelement(Description2)
                {
                    MinOccurs = Zero;
                }
                textelement(UnitofMeasure)
                {
                    MinOccurs = Zero;
                }
                textelement(Qty)
                {
                    MinOccurs = Zero;
                }
                textelement(OrderDate)
                {
                    MinOccurs = Zero;
                }
                textelement(UnitPrice)
                {
                    MinOccurs = Zero;
                }
                textelement(UnitCostLCY)
                {
                    MinOccurs = Zero;
                }
                textelement(LineDiscount)
                {
                    MinOccurs = Zero;
                }
                textelement(LineDiscountAmount)
                {
                    MinOccurs = Zero;
                }
                textelement(Amt)
                {
                    MinOccurs = Zero;
                }
                textelement(ShortCutDimension1)
                {
                    MinOccurs = Zero;
                }
                textelement(ShortCutDimension2)
                {
                    MinOccurs = Zero;
                }
                textelement(DepartmentCode)
                {
                    MinOccurs = Zero;
                }
                textelement(SalespersonCode)
                {
                    MinOccurs = Zero;
                }
                textelement(OrderNo)
                {
                    MinOccurs = Zero;
                }
                textelement("BilltoCustomerNo.")
                {
                    MinOccurs = Zero;
                }
                textelement(Email)
                {
                    MinOccurs = Zero;
                }
                textelement(LineAmount)
                {
                    MinOccurs = Zero;
                }
                textelement(PostingDate)
                {
                    MinOccurs = Zero;
                }
                textelement(VariantCode)
                {
                    MinOccurs = Zero;
                }
                textelement(UnitOfMeasureCode)
                {
                    MinOccurs = Zero;
                }
                textelement(QuantityBase)
                {
                    MinOccurs = Zero;
                }
                textelement(ItemCategoryCode)
                {
                    MinOccurs = Zero;
                }
                textelement(PurchasingCode)
                {
                    MinOccurs = Zero;
                }
                textelement(LotNo)
                {
                    MinOccurs = Zero;
                }
                textelement(ReturnReasonCode)
                {
                    MinOccurs = Zero;
                }
                textelement(AmountToCustomer)
                {
                    MinOccurs = Zero;
                }
                textelement("GSTRegistrationNo.")
                {
                    MinOccurs = Zero;
                }
                textelement(GSTPlaceOfSupply)
                {
                    MinOccurs = Zero;
                }
                textelement(GSTGroupCode)
                {
                    MinOccurs = Zero;
                }
                textelement(GSTGroupType)
                {
                    MinOccurs = Zero;
                }
                textelement(GSTBaseAmount)
                {
                    MinOccurs = Zero;
                }
                textelement(GSTPercent)
                {
                    MinOccurs = Zero;
                }
                textelement(TotalGSTAmount)
                {
                    MinOccurs = Zero;
                }
                textelement(HSNSAC)
                {
                    MinOccurs = Zero;
                }
                textelement(SecondaryCustNo)
                {
                    MinOccurs = Zero;
                }
                textelement(SecondaryCustName)
                {
                    MinOccurs = Zero;
                }
                textelement(SecondaryCustomerAdd)
                {
                    MinOccurs = Zero;
                }
                textelement(SecondaryCustadd2)
                {
                    MinOccurs = Zero;
                }
                textelement(SecondaryCustCity)
                {
                    MinOccurs = Zero;
                }
                textelement(SecondryCustContact)
                {
                    MinOccurs = Zero;
                }
                textelement(SecondCustCountryCode)
                {
                    MinOccurs = Zero;
                }

                trigger OnAfterInsertRecord()
                begin
                    with SecondarySalesDetails do begin
                        SecondarySalesDetails_EntryNo := SecondarySalesDetails.GetLastEntryNo;
                        SecondarySalesDetails_EntryNo += 1;
                        SecondarySalesDetails.EntryNo := SecondarySalesDetails_EntryNo;
                        "Sell-to Customer No." := SellToCustNo;
                        Validate("Sell-to Customer No.");
                        "Document No." := DocumentNo;
                        Validate("Document No.");
                        Evaluate(Type, Type1);
                        "No." := ItemCode;
                        "Location Code" := LocationCode;
                        Description := Description;
                        "Description 2" := Description2;
                        "Unit of Measure" := UnitofMeasure;
                        if Qty <> '' then
                            Evaluate(Quantity, Qty);
                        Evaluate("Order Date", OrderDate);
                        if UnitPrice <> '' then
                            Evaluate("Unit Price", UnitPrice);
                        if Amt <> '' then
                            Evaluate(Amount, Amt);
                        "Salesperson Code" := SalespersonCode;
                        "Order No." := OrderNo;
                        if AmountToCustomer <> '' then
                            Evaluate("Amount To Customer", AmountToCustomer);
                        Evaluate("GST Registration No.", "GSTRegistrationNo.");
                        Evaluate("GST Place of Supply", GSTPlaceOfSupply);
                        Evaluate("GST Group Code", GSTGroupCode);
                        if GSTBaseAmount <> '' then
                            Evaluate("GST Base Amount", GSTBaseAmount);
                        if TotalGSTAmount <> '' then
                            Evaluate("Total GST Amount", TotalGSTAmount);
                        Evaluate("HSN/SAC Code", HSNSAC);
                        if GSTPercent <> '' then
                            Evaluate("GST %", GSTPercent);
                        "Secondary Customer No." := SecondaryCustNo;
                        "Secondary Cust. Customer Name" := SecondaryCustName;
                        "Secondary Cust. Address" := SecondaryCustomerAdd;
                        "Secondary Cust. Address 2" := SecondaryCustadd2;
                        "Secondary Cust. City" := SecondaryCustCity;
                        "Secondary Cust. Contact" := SecondryCustContact;
                        "Secondary Cust. Country Code" := SecondCustCountryCode;
                        Insert(true);
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

    var
        SecondarySalesDetails: Record "Secondary Sales Details";
        SecondarySalesDetails_EntryNo: Integer;
}

