report 50022 "Inventory Posting Group Value"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/InventoryPostingGroupValue.rdlc';

    dataset
    {
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
            column(TodayFormatted; FORMAT(TODAY, 0, 4))
            {
            }
            column(CompanyName; COMPANYNAME)
            {
            }
            column(FormatEndingDate; STRSUBSTNO(Text006, FORMAT(EndingDate, 0, 4)))
            {
            }
            column(HeaderText12; HeaderText[12])
            {
            }
            column(HeaderText11; HeaderText[11])
            {
            }
            column(HeaderText10; HeaderText[10])
            {
            }
            column(HeaderText9; HeaderText[9])
            {
            }
            column(HeaderText8; HeaderText[8])
            {
            }
            column(HeaderText7; HeaderText[7])
            {
            }
            column(HeaderText6; HeaderText[6])
            {
            }
            column(HeaderText5; HeaderText[5])
            {
            }
            column(HeaderText4; HeaderText[4])
            {
            }
            column(HeaderText3; HeaderText[3])
            {
            }
            column(HeaderText2; HeaderText[2])
            {
            }
            column(HeaderText1; HeaderText[1])
            {
            }
            column(Summary; Integer.Number)
            {
            }
            column(StartDate; PeriodStartDate[1])
            {
            }
            column(EndDate; PeriodEndDate[12])
            {
            }
            column(MaterialOverheadPct; MaterialOverheadPct)
            {
            }
            column(StartingInvoicedValue1; StartingInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(StartingExpectedValue1; StartingExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedValue1; PurIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedQty1; PurIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurIncreaseExpectedValue1; PurIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseExpectedQty1; PurIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseInvoicedValue1; PurRMIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseInvoicedQty1; PurRMIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseExpectedValue1; PurRMIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseExpectedQty1; PurRMIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseInvoicedValue1; PurCONSIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseInvoicedQty1; PurCONSIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseExpectedValue1; PurCONSIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseExpectedQty1; PurCONSIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseInvoicedValue1; PurSPAREIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseInvoicedQty1; PurSPAREIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseExpectedValue1; PurSPAREIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseExpectedQty1; PurSPAREIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseInvoicedValue1; PurFGIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseInvoicedQty1; PurFGIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseExpectedValue1; PurFGIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseExpectedQty1; PurFGIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseInvoicedValue1; PurMERCHIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseInvoicedQty1; PurMERCHIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseExpectedValue1; PurMERCHIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseExpectedQty1; PurMERCHIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseInvoicedValue1; PosIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseInvoicedQty1; PosIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseExpectedValue1; PosIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseExpectedQty1; PosIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseInvoicedValue1; PosRMIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseInvoicedQty1; PosRMIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseExpectedValue1; PosRMIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseExpectedQty1; PosRMIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseInvoicedValue1; PosCONSIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseInvoicedQty1; PosCONSIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseExpectedValue1; PosCONSIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseExpectedQty1; PosCONSIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseInvoicedValue1; PosSPAREIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseInvoicedQty1; PosSPAREIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseExpectedValue1; PosSPAREIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseExpectedQty1; PosSPAREIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseInvoicedValue1; PosFGIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseInvoicedQty1; PosFGIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseExpectedValue1; PosFGIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseExpectedQty1; PosFGIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseInvoicedValue1; PosMERCHIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseInvoicedQty1; PosMERCHIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseExpectedValue1; PosMERCHIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseExpectedQty1; PosMERCHIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseInvoicedValue1; OutIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseInvoicedQty1; OutIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseExpectedValue1; OutIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseExpectedQty1; OutIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseInvoicedValue1; OutRMIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseInvoicedQty1; OutRMIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseExpectedValue1; OutRMIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseExpectedQty1; OutRMIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseInvoicedValue1; OutCONSIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseInvoicedQty1; OutCONSIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseExpectedValue1; OutCONSIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseExpectedQty1; OutCONSIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseInvoicedValue1; OutSPAREIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseInvoicedQty1; OutSPAREIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseExpectedValue1; OutSPAREIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseExpectedQty1; OutSPAREIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseInvoicedValue1; OutFGIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseInvoicedQty1; OutFGIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseExpectedValue1; OutFGIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseExpectedQty1; OutFGIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseInvoicedValue1; OutMERCHIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseInvoicedQty1; OutMERCHIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseExpectedValue1; OutMERCHIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseExpectedQty1; OutMERCHIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseInvoicedValue1; SaleDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseInvoicedQty1; SaleDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseExpectedValue1; SaleDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseExpectedQty1; SaleDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseInvoicedValue1; SaleRMDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseInvoicedQty1; SaleRMDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseExpectedValue1; SaleRMDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseExpectedQty1; SaleRMDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseInvoicedValue1; SaleCONSDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseInvoicedQty1; SaleCONSDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseExpectedValue1; SaleCONSDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseExpectedQty1; SaleCONSDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseInvoicedValue1; SaleSPAREDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseInvoicedQty1; SaleSPAREDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseExpectedValue1; SaleSPAREDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseExpectedQty1; SaleSPAREDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseInvoicedValue1; SaleFGDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseInvoicedQty1; SaleFGDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseExpectedValue1; SaleFGDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseExpectedQty1; SaleFGDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseInvoicedValue1; SaleMERCHDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseInvoicedQty1; SaleMERCHDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseExpectedValue1; SaleMERCHDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseExpectedQty1; SaleMERCHDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseInvoicedValue1; CapDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseInvoicedQty1; CapDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseExpectedValue1; CapDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseExpectedQty1; CapDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseInvoicedValue1; CapRMDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseInvoicedQty1; CapRMDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseExpectedValue1; CapRMDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseExpectedQty1; CapRMDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseInvoicedValue1; CapCONSDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseInvoicedQty1; CapCONSDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseExpectedValue1; CapCONSDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseExpectedQty1; CapCONSDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseInvoicedValue1; CapSPAREDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseInvoicedQty1; CapSPAREDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseExpectedValue1; CapSPAREDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseExpectedQty1; CapSPAREDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseInvoicedValue1; CapFGDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(CaPFGDecreaseInvoicedQty1; CapFGDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseExpectedValue1; CapFGDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(CapFGDecreaseExpectedQty1; CapFGDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseInvoicedValue1; CapMERCHDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseInvoicedQty1; CapMERCHDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseExpectedValue1; CapMERCHDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseExpectedQty1; CapMERCHDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseInvoicedValue1; NegDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseInvoicedQty1; NegDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseExpectedValue1; NegDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseExpectedQty1; NegDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseInvoicedValue1; NegRMDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseInvoicedQty1; NegRMDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseExpectedValue1; NegRMDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseExpectedQty1; NegRMDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseInvoicedValue1; NegCONSDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseInvoicedQty1; NegCONSDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseExpectedValue1; NegCONSDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseExpectedQty1; NegCONSDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseInvoicedValue1; NegSPAREDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseInvoicedQty1; NegSPAREDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseExpectedValue1; NegSPAREDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseExpectedQty1; NegSPAREDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseInvoicedValue1; NegFGDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseInvoicedQty1; NegFGDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseExpectedValue1; NegFGDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseExpectedQty1; NegFGDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseInvoicedValue1; NegMERCHDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseInvoicedQty1; NegMERCHDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseExpectedValue1; NegMERCHDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseExpectedQty1; NegMERCHDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseInvoicedValue1; ConsDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseInvoicedQty1; ConsDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseExpectedValue1; ConsDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseExpectedQty1; ConsDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseInvoicedValue1; ConsRMDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseInvoicedQty1; ConsRMDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseExpectedValue1; ConsRMDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseExpectedQty1; ConsRMDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseInvoicedValue1; ConsCONSDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseInvoicedQty1; ConsCONSDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseExpectedValue1; ConsCONSDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseExpectedQty1; ConsCONSDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseInvoicedValue1; ConsSPAREDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseInvoicedQty1; ConsSPAREDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseExpectedValue1; ConsSPAREDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseExpectedQty1; ConsSPAREDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseInvoicedValue1; ConsFGDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseInvoicedQty1; ConsFGDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseExpectedValue1; ConsFGDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseExpectedQty1; ConsFGDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseInvoicedValue1; ConsMERCHDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseInvoicedQty1; ConsMERCHDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseExpectedValue1; ConsMERCHDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseExpectedQty1; ConsMERCHDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseInvoicedValue1; TranIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseInvoicedQty1; TranIncreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseExpectedValue1; TranIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseExpectedQty1; TranIncreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseInvoicedValue1; TranDecreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseInvoicedQty1; TranDecreaseInvoicedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseExpectedValue1; TranDecreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseExpectedQty1; TranDecreaseExpectedQty[1])
            {
                DecimalPlaces = 0 : 5;
            }
            column(HideItemDetails; HideItemDetails)
            {
            }
            column(ShowEntryTypeDetails; ShowEntryTypeDetails)
            {
            }
            column(OpenRMValue1; OpenRMValue[1])
            {
            }
            column(OpenFGValue1; OpenFGValue[1])
            {
            }
            column(OpenMerchandiseValue1; OpenMerchandiseValue[1])
            {
            }
            column(OpenConsSpareValue1; OpenConsSpareValue[1])
            {
            }
            column(RMValue1; RMValue[1])
            {
            }
            column(FGValue1; FGValue[1])
            {
            }
            column(MerchandiseValue1; MerchandiseValue[1])
            {
            }
            column(ConsSpareValue1; ConsSpareValue[1])
            {
            }
            column(ClosRMValue1; ClosRMValue[1])
            {
            }
            column(ClosFGValue1; ClosFGValue[1])
            {
            }
            column(ClosMerchandiseValue1; ClosMerchandiseValue[1])
            {
            }
            column(ClosConsSpareValue1; ClosConsSpareValue[1])
            {
            }
            column(StartingInvoicedValue2; StartingInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(StartingExpectedValue2; StartingExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedValue2; PurIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedQty2; PurIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurIncreaseExpectedValue2; PurIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseExpectedQty2; PurIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseInvoicedValue2; PurRMIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseInvoicedQty2; PurRMIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseExpectedValue2; PurRMIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseExpectedQty2; PurRMIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseInvoicedValue2; PurCONSIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseInvoicedQty2; PurCONSIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseExpectedValue2; PurCONSIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseExpectedQty2; PurCONSIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseInvoicedValue2; PurSPAREIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseInvoicedQty2; PurSPAREIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseExpectedValue2; PurSPAREIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseExpectedQty2; PurSPAREIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseInvoicedValue2; PurFGIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseInvoicedQty2; PurFGIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseExpectedValue2; PurFGIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseExpectedQty2; PurFGIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseInvoicedValue2; PurMERCHIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseInvoicedQty2; PurMERCHIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseExpectedValue2; PurMERCHIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseExpectedQty2; PurMERCHIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseInvoicedValue2; PosIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseInvoicedQty2; PosIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseExpectedValue2; PosIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseExpectedQty2; PosIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseInvoicedValue2; PosRMIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseInvoicedQty2; PosRMIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseExpectedValue2; PosRMIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseExpectedQty2; PosRMIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseInvoicedValue2; PosCONSIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseInvoicedQty2; PosCONSIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseExpectedValue2; PosCONSIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseExpectedQty2; PosCONSIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseInvoicedValue2; PosSPAREIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseInvoicedQty2; PosSPAREIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseExpectedValue2; PosSPAREIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseExpectedQty2; PosSPAREIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseInvoicedValue2; PosFGIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseInvoicedQty2; PosFGIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseExpectedValue2; PosFGIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseExpectedQty2; PosFGIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseInvoicedValue2; PosMERCHIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseInvoicedQty2; PosMERCHIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseExpectedValue2; PosMERCHIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseExpectedQty2; PosMERCHIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseInvoicedValue2; OutIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseInvoicedQty2; OutIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseExpectedValue2; OutIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseExpectedQty2; OutIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseInvoicedValue2; OutRMIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseInvoicedQty2; OutRMIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseExpectedValue2; OutRMIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseExpectedQty2; OutRMIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseInvoicedValue2; OutCONSIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseInvoicedQty2; OutCONSIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseExpectedValue2; OutCONSIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseExpectedQty2; OutCONSIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseInvoicedValue2; OutSPAREIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseInvoicedQty2; OutSPAREIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseExpectedValue2; OutSPAREIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseExpectedQty2; OutSPAREIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseInvoicedValue2; OutFGIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseInvoicedQty2; OutFGIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseExpectedValue2; OutFGIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseExpectedQty2; OutFGIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseInvoicedValue2; OutMERCHIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseInvoicedQty2; OutMERCHIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseExpectedValue2; OutMERCHIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseExpectedQty2; OutMERCHIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseInvoicedValue2; SaleDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseInvoicedQty2; SaleDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseExpectedValue2; SaleDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseExpectedQty2; SaleDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseInvoicedValue2; SaleRMDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseInvoicedQty2; SaleRMDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseExpectedValue2; SaleRMDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseExpectedQty2; SaleRMDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseInvoicedValue2; SaleCONSDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseInvoicedQty2; SaleCONSDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseExpectedValue2; SaleCONSDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseExpectedQty2; SaleCONSDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseInvoicedValue2; SaleSPAREDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseInvoicedQty2; SaleSPAREDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseExpectedValue2; SaleSPAREDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseExpectedQty2; SaleSPAREDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseInvoicedValue2; SaleFGDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseInvoicedQty2; SaleFGDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseExpectedValue2; SaleFGDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseExpectedQty2; SaleFGDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseInvoicedValue2; SaleMERCHDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseInvoicedQty2; SaleMERCHDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseExpectedValue2; SaleMERCHDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseExpectedQty2; SaleMERCHDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseInvoicedValue2; CapDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseInvoicedQty2; CapDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseExpectedValue2; CapDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseExpectedQty2; CapDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseInvoicedValue2; CapRMDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseInvoicedQty2; CapRMDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseExpectedValue2; CapRMDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseExpectedQty2; CapRMDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseInvoicedValue2; CapCONSDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseInvoicedQty2; CapCONSDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseExpectedValue2; CapCONSDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseExpectedQty2; CapCONSDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseInvoicedValue2; CapSPAREDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseInvoicedQty2; CapSPAREDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseExpectedValue2; CapSPAREDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseExpectedQty2; CapSPAREDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseInvoicedValue2; CapFGDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(CaPFGDecreaseInvoicedQty2; CapFGDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseExpectedValue2; CapFGDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(CapFGDecreaseExpectedQty2; CapFGDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseInvoicedValue2; CapMERCHDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseInvoicedQty2; CapMERCHDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseExpectedValue2; CapMERCHDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseExpectedQty2; CapMERCHDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseInvoicedValue2; NegDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseInvoicedQty2; NegDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseExpectedValue2; NegDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseExpectedQty2; NegDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseInvoicedValue2; NegRMDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseInvoicedQty2; NegRMDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseExpectedValue2; NegRMDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseExpectedQty2; NegRMDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseInvoicedValue2; NegCONSDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseInvoicedQty2; NegCONSDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseExpectedValue2; NegCONSDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseExpectedQty2; NegCONSDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseInvoicedValue2; NegSPAREDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseInvoicedQty2; NegSPAREDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseExpectedValue2; NegSPAREDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseExpectedQty2; NegSPAREDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseInvoicedValue2; NegFGDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseInvoicedQty2; NegFGDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseExpectedValue2; NegFGDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseExpectedQty2; NegFGDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseInvoicedValue2; NegMERCHDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseInvoicedQty2; NegMERCHDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseExpectedValue2; NegMERCHDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseExpectedQty2; NegMERCHDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseInvoicedValue2; ConsDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseInvoicedQty2; ConsDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseExpectedValue2; ConsDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseExpectedQty2; ConsDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseInvoicedValue2; ConsRMDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseInvoicedQty2; ConsRMDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseExpectedValue2; ConsRMDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseExpectedQty2; ConsRMDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseInvoicedValue2; ConsCONSDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseInvoicedQty2; ConsCONSDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseExpectedValue2; ConsCONSDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseExpectedQty2; ConsCONSDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseInvoicedValue2; ConsSPAREDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseInvoicedQty2; ConsSPAREDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseExpectedValue2; ConsSPAREDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseExpectedQty2; ConsSPAREDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseInvoicedValue2; ConsFGDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseInvoicedQty2; ConsFGDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseExpectedValue2; ConsFGDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseExpectedQty2; ConsFGDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseInvoicedValue2; ConsMERCHDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseInvoicedQty2; ConsMERCHDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseExpectedValue2; ConsMERCHDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseExpectedQty2; ConsMERCHDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseInvoicedValue2; TranIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseInvoicedQty2; TranIncreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseExpectedValue2; TranIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseExpectedQty2; TranIncreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseInvoicedValue2; TranDecreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseInvoicedQty2; TranDecreaseInvoicedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseExpectedValue2; TranDecreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseExpectedQty2; TranDecreaseExpectedQty[2])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OpenRMValue2; OpenRMValue[2])
            {
            }
            column(OpenFGValue2; OpenFGValue[2])
            {
            }
            column(OpenMerchandiseValue2; OpenMerchandiseValue[2])
            {
            }
            column(OpenConsSpareValue2; OpenConsSpareValue[2])
            {
            }
            column(RMValue2; RMValue[2])
            {
            }
            column(FGValue2; FGValue[2])
            {
            }
            column(MerchandiseValue2; MerchandiseValue[2])
            {
            }
            column(ConsSpareValue2; ConsSpareValue[2])
            {
            }
            column(ClosRMValue2; ClosRMValue[2])
            {
            }
            column(ClosFGValue2; ClosFGValue[2])
            {
            }
            column(ClosMerchandiseValue2; ClosMerchandiseValue[2])
            {
            }
            column(ClosConsSpareValue2; ClosConsSpareValue[2])
            {
            }
            column(StartingInvoicedValue3; StartingInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(StartingExpectedValue3; StartingExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedValue3; PurIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedQty3; PurIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurIncreaseExpectedValue3; PurIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseExpectedQty3; PurIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseInvoicedValue3; PurRMIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseInvoicedQty3; PurRMIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseExpectedValue3; PurRMIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseExpectedQty3; PurRMIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseInvoicedValue3; PurCONSIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseInvoicedQty3; PurCONSIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseExpectedValue3; PurCONSIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseExpectedQty3; PurCONSIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseInvoicedValue3; PurSPAREIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseInvoicedQty3; PurSPAREIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseExpectedValue3; PurSPAREIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseExpectedQty3; PurSPAREIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseInvoicedValue3; PurFGIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseInvoicedQty3; PurFGIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseExpectedValue3; PurFGIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseExpectedQty3; PurFGIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseInvoicedValue3; PurMERCHIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseInvoicedQty3; PurMERCHIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseExpectedValue3; PurMERCHIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseExpectedQty3; PurMERCHIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseInvoicedValue3; PosIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseInvoicedQty3; PosIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseExpectedValue3; PosIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseExpectedQty3; PosIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseInvoicedValue3; PosRMIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseInvoicedQty3; PosRMIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseExpectedValue3; PosRMIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseExpectedQty3; PosRMIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseInvoicedValue3; PosCONSIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseInvoicedQty3; PosCONSIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseExpectedValue3; PosCONSIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseExpectedQty3; PosCONSIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseInvoicedValue3; PosSPAREIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseInvoicedQty3; PosSPAREIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseExpectedValue3; PosSPAREIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseExpectedQty3; PosSPAREIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseInvoicedValue3; PosFGIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseInvoicedQty3; PosFGIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseExpectedValue3; PosFGIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseExpectedQty3; PosFGIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseInvoicedValue3; PosMERCHIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseInvoicedQty3; PosMERCHIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseExpectedValue3; PosMERCHIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseExpectedQty3; PosMERCHIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseInvoicedValue3; OutIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseInvoicedQty3; OutIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseExpectedValue3; OutIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseExpectedQty3; OutIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseInvoicedValue3; OutRMIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseInvoicedQty3; OutRMIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseExpectedValue3; OutRMIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseExpectedQty3; OutRMIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseInvoicedValue3; OutCONSIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseInvoicedQty3; OutCONSIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseExpectedValue3; OutCONSIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseExpectedQty3; OutCONSIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseInvoicedValue3; OutSPAREIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseInvoicedQty3; OutSPAREIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseExpectedValue3; OutSPAREIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseExpectedQty3; OutSPAREIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseInvoicedValue3; OutFGIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseInvoicedQty3; OutFGIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseExpectedValue3; OutFGIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseExpectedQty3; OutFGIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseInvoicedValue3; OutMERCHIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseInvoicedQty3; OutMERCHIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseExpectedValue3; OutMERCHIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseExpectedQty3; OutMERCHIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseInvoicedValue3; SaleDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseInvoicedQty3; SaleDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseExpectedValue3; SaleDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseExpectedQty3; SaleDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseInvoicedValue3; SaleRMDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseInvoicedQty3; SaleRMDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseExpectedValue3; SaleRMDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseExpectedQty3; SaleRMDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseInvoicedValue3; SaleCONSDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseInvoicedQty3; SaleCONSDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseExpectedValue3; SaleCONSDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseExpectedQty3; SaleCONSDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseInvoicedValue3; SaleSPAREDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseInvoicedQty3; SaleSPAREDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseExpectedValue3; SaleSPAREDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseExpectedQty3; SaleSPAREDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseInvoicedValue3; SaleFGDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseInvoicedQty3; SaleFGDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseExpectedValue3; SaleFGDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseExpectedQty3; SaleFGDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseInvoicedValue3; SaleMERCHDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseInvoicedQty3; SaleMERCHDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseExpectedValue3; SaleMERCHDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseExpectedQty3; SaleMERCHDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseInvoicedValue3; CapDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseInvoicedQty3; CapDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseExpectedValue3; CapDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseExpectedQty3; CapDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseInvoicedValue3; CapRMDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseInvoicedQty3; CapRMDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseExpectedValue3; CapRMDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseExpectedQty3; CapRMDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseInvoicedValue3; CapCONSDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseInvoicedQty3; CapCONSDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseExpectedValue3; CapCONSDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseExpectedQty3; CapCONSDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseInvoicedValue3; CapSPAREDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseInvoicedQty3; CapSPAREDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseExpectedValue3; CapSPAREDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseExpectedQty3; CapSPAREDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseInvoicedValue3; CapFGDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(CaPFGDecreaseInvoicedQty3; CapFGDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseExpectedValue3; CapFGDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(CapFGDecreaseExpectedQty3; CapFGDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseInvoicedValue3; CapMERCHDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseInvoicedQty3; CapMERCHDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseExpectedValue3; CapMERCHDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseExpectedQty3; CapMERCHDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseInvoicedValue3; NegDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseInvoicedQty3; NegDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseExpectedValue3; NegDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseExpectedQty3; NegDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseInvoicedValue3; NegRMDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseInvoicedQty3; NegRMDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseExpectedValue3; NegRMDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseExpectedQty3; NegRMDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseInvoicedValue3; NegCONSDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseInvoicedQty3; NegCONSDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseExpectedValue3; NegCONSDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseExpectedQty3; NegCONSDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseInvoicedValue3; NegSPAREDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseInvoicedQty3; NegSPAREDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseExpectedValue3; NegSPAREDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseExpectedQty3; NegSPAREDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseInvoicedValue3; NegFGDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseInvoicedQty3; NegFGDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseExpectedValue3; NegFGDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseExpectedQty3; NegFGDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseInvoicedValue3; NegMERCHDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseInvoicedQty3; NegMERCHDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseExpectedValue3; NegMERCHDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseExpectedQty3; NegMERCHDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseInvoicedValue3; ConsDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseInvoicedQty3; ConsDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseExpectedValue3; ConsDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseExpectedQty3; ConsDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseInvoicedValue3; ConsRMDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseInvoicedQty3; ConsRMDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseExpectedValue3; ConsRMDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseExpectedQty3; ConsRMDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseInvoicedValue3; ConsCONSDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseInvoicedQty3; ConsCONSDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseExpectedValue3; ConsCONSDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseExpectedQty3; ConsCONSDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseInvoicedValue3; ConsSPAREDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseInvoicedQty3; ConsSPAREDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseExpectedValue3; ConsSPAREDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseExpectedQty3; ConsSPAREDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseInvoicedValue3; ConsFGDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseInvoicedQty3; ConsFGDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseExpectedValue3; ConsFGDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseExpectedQty3; ConsFGDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseInvoicedValue3; ConsMERCHDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseInvoicedQty3; ConsMERCHDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseExpectedValue3; ConsMERCHDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseExpectedQty3; ConsMERCHDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseInvoicedValue3; TranIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseInvoicedQty3; TranIncreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseExpectedValue3; TranIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseExpectedQty3; TranIncreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseInvoicedValue3; TranDecreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseInvoicedQty3; TranDecreaseInvoicedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseExpectedValue3; TranDecreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseExpectedQty3; TranDecreaseExpectedQty[3])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OpenRMValue3; OpenRMValue[3])
            {
            }
            column(OpenFGValue3; OpenFGValue[3])
            {
            }
            column(OpenMerchandiseValue3; OpenMerchandiseValue[3])
            {
            }
            column(OpenConsSpareValue3; OpenConsSpareValue[3])
            {
            }
            column(RMValue3; RMValue[3])
            {
            }
            column(FGValue3; FGValue[3])
            {
            }
            column(MerchandiseValue3; MerchandiseValue[3])
            {
            }
            column(ConsSpareValue3; ConsSpareValue[3])
            {
            }
            column(ClosRMValue3; ClosRMValue[3])
            {
            }
            column(ClosFGValue3; ClosFGValue[3])
            {
            }
            column(ClosMerchandiseValue3; ClosMerchandiseValue[3])
            {
            }
            column(ClosConsSpareValue3; ClosConsSpareValue[3])
            {
            }
            column(StartingInvoicedValue4; StartingInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(StartingExpectedValue4; StartingExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedValue4; PurIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedQty4; PurIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurIncreaseExpectedValue4; PurIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseExpectedQty4; PurIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseInvoicedValue4; PurRMIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseInvoicedQty4; PurRMIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseExpectedValue4; PurRMIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseExpectedQty4; PurRMIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseInvoicedValue4; PurCONSIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseInvoicedQty4; PurCONSIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseExpectedValue4; PurCONSIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseExpectedQty4; PurCONSIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseInvoicedValue4; PurSPAREIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseInvoicedQty4; PurSPAREIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseExpectedValue4; PurSPAREIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseExpectedQty4; PurSPAREIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseInvoicedValue4; PurFGIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseInvoicedQty4; PurFGIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseExpectedValue4; PurFGIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseExpectedQty4; PurFGIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseInvoicedValue4; PurMERCHIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseInvoicedQty4; PurMERCHIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseExpectedValue4; PurMERCHIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseExpectedQty4; PurMERCHIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseInvoicedValue4; PosIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseInvoicedQty4; PosIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseExpectedValue4; PosIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseExpectedQty4; PosIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseInvoicedValue4; PosRMIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseInvoicedQty4; PosRMIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseExpectedValue4; PosRMIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseExpectedQty4; PosRMIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseInvoicedValue4; PosCONSIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseInvoicedQty4; PosCONSIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseExpectedValue4; PosCONSIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseExpectedQty4; PosCONSIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseInvoicedValue4; PosSPAREIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseInvoicedQty4; PosSPAREIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseExpectedValue4; PosSPAREIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseExpectedQty4; PosSPAREIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseInvoicedValue4; PosFGIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseInvoicedQty4; PosFGIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseExpectedValue4; PosFGIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseExpectedQty4; PosFGIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseInvoicedValue4; PosMERCHIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseInvoicedQty4; PosMERCHIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseExpectedValue4; PosMERCHIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseExpectedQty4; PosMERCHIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseInvoicedValue4; OutIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseInvoicedQty41; OutIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseExpectedValue4; OutIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseExpectedQty4; OutIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseInvoicedValue4; OutRMIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseInvoicedQty4; OutRMIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseExpectedValue4; OutRMIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseExpectedQty4; OutRMIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseInvoicedValue4; OutCONSIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseInvoicedQty4; OutCONSIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseExpectedValue4; OutCONSIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseExpectedQty4; OutCONSIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseInvoicedValue4; OutSPAREIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseInvoicedQty4; OutSPAREIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseExpectedValue4; OutSPAREIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseExpectedQty4; OutSPAREIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseInvoicedValue4; OutFGIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseInvoicedQty4; OutFGIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseExpectedValue4; OutFGIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseExpectedQty4; OutFGIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseInvoicedValue4; OutMERCHIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseInvoicedQty4; OutMERCHIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseExpectedValue4; OutMERCHIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseExpectedQty4; OutMERCHIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseInvoicedValue4; SaleDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseInvoicedQty4; SaleDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseExpectedValue4; SaleDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseExpectedQty4; SaleDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseInvoicedValue4; SaleRMDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseInvoicedQty4; SaleRMDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseExpectedValue4; SaleRMDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseExpectedQty4; SaleRMDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseInvoicedValue4; SaleCONSDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseInvoicedQty4; SaleCONSDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseExpectedValue4; SaleCONSDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseExpectedQty4; SaleCONSDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseInvoicedValue4; SaleSPAREDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseInvoicedQty4; SaleSPAREDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseExpectedValue4; SaleSPAREDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseExpectedQty4; SaleSPAREDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseInvoicedValue4; SaleFGDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseInvoicedQty4; SaleFGDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseExpectedValue4; SaleFGDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseExpectedQty4; SaleFGDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseInvoicedValue4; SaleMERCHDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseInvoicedQty4; SaleMERCHDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseExpectedValue4; SaleMERCHDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseExpectedQty4; SaleMERCHDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseInvoicedValue4; CapDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseInvoicedQty4; CapDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseExpectedValue4; CapDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseExpectedQty4; CapDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseInvoicedValue4; CapRMDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseInvoicedQty4; CapRMDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseExpectedValue4; CapRMDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseExpectedQty4; CapRMDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseInvoicedValue4; CapCONSDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseInvoicedQty4; CapCONSDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseExpectedValue4; CapCONSDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseExpectedQty4; CapCONSDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseInvoicedValue4; CapSPAREDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseInvoicedQty4; CapSPAREDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseExpectedValue4; CapSPAREDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseExpectedQty4; CapSPAREDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseInvoicedValue4; CapFGDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(CaPFGDecreaseInvoicedQty4; CapFGDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseExpectedValue4; CapFGDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(CapFGDecreaseExpectedQty4; CapFGDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseInvoicedValue4; CapMERCHDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseInvoicedQty4; CapMERCHDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseExpectedValue4; CapMERCHDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseExpectedQty4; CapMERCHDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseInvoicedValue4; NegDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseInvoicedQty4; NegDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseExpectedValue4; NegDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseExpectedQty4; NegDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseInvoicedValue4; NegRMDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseInvoicedQty4; NegRMDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseExpectedValue4; NegRMDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseExpectedQty4; NegRMDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseInvoicedValue4; NegCONSDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseInvoicedQty4; NegCONSDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseExpectedValue4; NegCONSDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseExpectedQty4; NegCONSDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseInvoicedValue4; NegSPAREDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseInvoicedQty4; NegSPAREDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseExpectedValue4; NegSPAREDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseExpectedQty4; NegSPAREDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseInvoicedValue4; NegFGDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseInvoicedQty4; NegFGDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseExpectedValue4; NegFGDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseExpectedQty4; NegFGDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseInvoicedValue4; NegMERCHDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseInvoicedQty4; NegMERCHDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseExpectedValue4; NegMERCHDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseExpectedQty4; NegMERCHDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseInvoicedValue4; ConsDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseInvoicedQty4; ConsDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseExpectedValue4; ConsDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseExpectedQty4; ConsDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseInvoicedValue4; ConsRMDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseInvoicedQty4; ConsRMDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseExpectedValue4; ConsRMDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseExpectedQty4; ConsRMDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseInvoicedValue4; ConsCONSDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseInvoicedQty4; ConsCONSDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseExpectedValue4; ConsCONSDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseExpectedQty4; ConsCONSDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseInvoicedValue4; ConsSPAREDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseInvoicedQty4; ConsSPAREDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseExpectedValue4; ConsSPAREDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseExpectedQty4; ConsSPAREDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseInvoicedValue4; ConsFGDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseInvoicedQty34; ConsFGDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseExpectedValue4; ConsFGDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseExpectedQty4; ConsFGDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseInvoicedValue4; ConsMERCHDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseInvoicedQty4; ConsMERCHDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseExpectedValue4; ConsMERCHDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseExpectedQty4; ConsMERCHDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseInvoicedValue4; TranIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseInvoicedQty4; TranIncreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseExpectedValue4; TranIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseExpectedQty4; TranIncreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseInvoicedValue4; TranDecreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseInvoicedQty4; TranDecreaseInvoicedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseExpectedValue4; TranDecreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseExpectedQty4; TranDecreaseExpectedQty[4])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OpenRMValue4; OpenRMValue[4])
            {
            }
            column(OpenFGValue4; OpenFGValue[4])
            {
            }
            column(OpenMerchandiseValue4; OpenMerchandiseValue[4])
            {
            }
            column(OpenConsSpareValue4; OpenConsSpareValue[4])
            {
            }
            column(RMValue4; RMValue[4])
            {
            }
            column(FGValue4; FGValue[4])
            {
            }
            column(MerchandiseValue4; MerchandiseValue[4])
            {
            }
            column(ConsSpareValue4; ConsSpareValue[4])
            {
            }
            column(ClosRMValue4; ClosRMValue[4])
            {
            }
            column(ClosFGValue4; ClosFGValue[4])
            {
            }
            column(ClosMerchandiseValue4; ClosMerchandiseValue[4])
            {
            }
            column(ClosConsSpareValue4; ClosConsSpareValue[4])
            {
            }
            column(StartingInvoicedValue5; StartingInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(StartingExpectedValue5; StartingExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedValue5; PurIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedQty5; PurIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurIncreaseExpectedValue5; PurIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseExpectedQty5; PurIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseInvoicedValue5; PurRMIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseInvoicedQty5; PurRMIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseExpectedValue5; PurRMIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseExpectedQty5; PurRMIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseInvoicedValue5; PurCONSIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseInvoicedQty5; PurCONSIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseExpectedValue5; PurCONSIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseExpectedQty5; PurCONSIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseInvoicedValue5; PurSPAREIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseInvoicedQty5; PurSPAREIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseExpectedValue5; PurSPAREIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseExpectedQty5; PurSPAREIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseInvoicedValue5; PurFGIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseInvoicedQty5; PurFGIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseExpectedValue5; PurFGIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseExpectedQty5; PurFGIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseInvoicedValue5; PurMERCHIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseInvoicedQty5; PurMERCHIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseExpectedValue5; PurMERCHIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseExpectedQty5; PurMERCHIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseInvoicedValue5; PosIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseInvoicedQty5; PosIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseExpectedValue5; PosIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseExpectedQty5; PosIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseInvoicedValue5; PosRMIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseInvoicedQty5; PosRMIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseExpectedValue5; PosRMIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseExpectedQty5; PosRMIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseInvoicedValue5; PosCONSIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseInvoicedQty5; PosCONSIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseExpectedValue5; PosCONSIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseExpectedQty5; PosCONSIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseInvoicedValue5; PosSPAREIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseInvoicedQty5; PosSPAREIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseExpectedValue5; PosSPAREIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseExpectedQty5; PosSPAREIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseInvoicedValue5; PosFGIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseInvoicedQty5; PosFGIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseExpectedValue5; PosFGIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseExpectedQty5; PosFGIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseInvoicedValue5; PosMERCHIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseInvoicedQty5; PosMERCHIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseExpectedValue5; PosMERCHIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseExpectedQty5; PosMERCHIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseInvoicedValue5; OutIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseInvoicedQty5; OutIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseExpectedValue5; OutIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseExpectedQty5; OutIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseInvoicedValue5; OutRMIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseInvoicedQty5; OutRMIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseExpectedValue5; OutRMIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseExpectedQty5; OutRMIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseInvoicedValue5; OutCONSIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseInvoicedQty5; OutCONSIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseExpectedValue5; OutCONSIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseExpectedQty5; OutCONSIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseInvoicedValue5; OutSPAREIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseInvoicedQty5; OutSPAREIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseExpectedValue5; OutSPAREIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseExpectedQty5; OutSPAREIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseInvoicedValue5; OutFGIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseInvoicedQty5; OutFGIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseExpectedValue5; OutFGIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseExpectedQty5; OutFGIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseInvoicedValue5; OutMERCHIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseInvoicedQty5; OutMERCHIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseExpectedValue5; OutMERCHIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseExpectedQty5; OutMERCHIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseInvoicedValue5; SaleDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseInvoicedQty5; SaleDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseExpectedValue5; SaleDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseExpectedQty5; SaleDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseInvoicedValue5; SaleRMDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseInvoicedQty5; SaleRMDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseExpectedValue5; SaleRMDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseExpectedQty5; SaleRMDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseInvoicedValue5; SaleCONSDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseInvoicedQty5; SaleCONSDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseExpectedValue5; SaleCONSDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseExpectedQty5; SaleCONSDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseInvoicedValue5; SaleSPAREDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseInvoicedQty5; SaleSPAREDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseExpectedValue5; SaleSPAREDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseExpectedQty5; SaleSPAREDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseInvoicedValue5; SaleFGDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseInvoicedQty5; SaleFGDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseExpectedValue5; SaleFGDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseExpectedQty5; SaleFGDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseInvoicedValue5; SaleMERCHDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseInvoicedQty5; SaleMERCHDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseExpectedValue5; SaleMERCHDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseExpectedQty5; SaleMERCHDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseInvoicedValue5; CapDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseInvoicedQty5; CapDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseExpectedValue5; CapDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseExpectedQty5; CapDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseInvoicedValue5; CapRMDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseInvoicedQty5; CapRMDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseExpectedValue5; CapRMDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseExpectedQty5; CapRMDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseInvoicedValue5; CapCONSDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseInvoicedQty5; CapCONSDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseExpectedValue5; CapCONSDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseExpectedQty5; CapCONSDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseInvoicedValue5; CapSPAREDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseInvoicedQty5; CapSPAREDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseExpectedValue5; CapSPAREDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseExpectedQty5; CapSPAREDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseInvoicedValue5; CapFGDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(CaPFGDecreaseInvoicedQty5; CapFGDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseExpectedValue5; CapFGDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(CapFGDecreaseExpectedQty5; CapFGDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseInvoicedValue5; CapMERCHDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseInvoicedQty5; CapMERCHDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseExpectedValue5; CapMERCHDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseExpectedQty5; CapMERCHDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseInvoicedValue5; NegDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseInvoicedQty5; NegDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseExpectedValue5; NegDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseExpectedQty5; NegDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseInvoicedValue5; NegRMDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseInvoicedQty5; NegRMDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseExpectedValue5; NegRMDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseExpectedQty5; NegRMDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseInvoicedValue5; NegCONSDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseInvoicedQty5; NegCONSDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseExpectedValue5; NegCONSDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseExpectedQty5; NegCONSDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseInvoicedValue5; NegSPAREDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseInvoicedQty5; NegSPAREDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseExpectedValue5; NegSPAREDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseExpectedQty5; NegSPAREDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseInvoicedValue5; NegFGDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseInvoicedQty5; NegFGDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseExpectedValue5; NegFGDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseExpectedQty5; NegFGDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseInvoicedValue5; NegMERCHDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseInvoicedQty5; NegMERCHDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseExpectedValue5; NegMERCHDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseExpectedQty5; NegMERCHDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseInvoicedValue5; ConsDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseInvoicedQty5; ConsDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseExpectedValue5; ConsDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseExpectedQty5; ConsDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseInvoicedValue5; ConsRMDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseInvoicedQty5; ConsRMDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseExpectedValue5; ConsRMDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseExpectedQty5; ConsRMDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseInvoicedValue5; ConsCONSDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseInvoicedQty5; ConsCONSDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseExpectedValue5; ConsCONSDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseExpectedQty5; ConsCONSDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseInvoicedValue5; ConsSPAREDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseInvoicedQty5; ConsSPAREDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseExpectedValue5; ConsSPAREDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseExpectedQty5; ConsSPAREDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseInvoicedValue5; ConsFGDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseInvoicedQty5; ConsFGDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseExpectedValue5; ConsFGDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseExpectedQty5; ConsFGDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseInvoicedValue5; ConsMERCHDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseInvoicedQty5; ConsMERCHDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseExpectedValue5; ConsMERCHDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseExpectedQty5; ConsMERCHDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseInvoicedValue5; TranIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseInvoicedQty5; TranIncreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseExpectedValue5; TranIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseExpectedQty5; TranIncreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseInvoicedValue5; TranDecreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseInvoicedQty5; TranDecreaseInvoicedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseExpectedValue5; TranDecreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseExpectedQty5; TranDecreaseExpectedQty[5])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OpenRMValue5; OpenRMValue[5])
            {
            }
            column(OpenFGValue5; OpenFGValue[5])
            {
            }
            column(OpenMerchandiseValue5; OpenMerchandiseValue[5])
            {
            }
            column(OpenConsSpareValue5; OpenConsSpareValue[5])
            {
            }
            column(RMValue5; RMValue[5])
            {
            }
            column(FGValue5; FGValue[5])
            {
            }
            column(MerchandiseValue5; MerchandiseValue[5])
            {
            }
            column(ConsSpareValue5; ConsSpareValue[5])
            {
            }
            column(ClosRMValue5; ClosRMValue[5])
            {
            }
            column(ClosFGValue5; ClosFGValue[5])
            {
            }
            column(ClosMerchandiseValue5; ClosMerchandiseValue[5])
            {
            }
            column(ClosConsSpareValue5; ClosConsSpareValue[5])
            {
            }
            column(StartingInvoicedValue6; StartingInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(StartingExpectedValue6; StartingExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedValue6; PurIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedQty6; PurIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurIncreaseExpectedValue6; PurIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseExpectedQty6; PurIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseInvoicedValue6; PurRMIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseInvoicedQty6; PurRMIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseExpectedValue6; PurRMIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseExpectedQty6; PurRMIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseInvoicedValue6; PurCONSIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseInvoicedQty6; PurCONSIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseExpectedValue6; PurCONSIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseExpectedQty6; PurCONSIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseInvoicedValue6; PurSPAREIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseInvoicedQty6; PurSPAREIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseExpectedValue6; PurSPAREIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseExpectedQty6; PurSPAREIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseInvoicedValue6; PurFGIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseInvoicedQty6; PurFGIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseExpectedValue6; PurFGIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseExpectedQty6; PurFGIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseInvoicedValue6; PurMERCHIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseInvoicedQty6; PurMERCHIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseExpectedValue6; PurMERCHIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseExpectedQty6; PurMERCHIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseInvoicedValue6; PosIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseInvoicedQty6; PosIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseExpectedValue6; PosIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseExpectedQty6; PosIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseInvoicedValue6; PosRMIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseInvoicedQty6; PosRMIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseExpectedValue6; PosRMIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseExpectedQty6; PosRMIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseInvoicedValue6; PosCONSIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseInvoicedQty6; PosCONSIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseExpectedValue6; PosCONSIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseExpectedQty6; PosCONSIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseInvoicedValue6; PosSPAREIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseInvoicedQty6; PosSPAREIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseExpectedValue6; PosSPAREIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseExpectedQty6; PosSPAREIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseInvoicedValue6; PosFGIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseInvoicedQty6; PosFGIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseExpectedValue6; PosFGIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseExpectedQty6; PosFGIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseInvoicedValue6; PosMERCHIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseInvoicedQty6; PosMERCHIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseExpectedValue6; PosMERCHIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseExpectedQty6; PosMERCHIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseInvoicedValue6; OutIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseInvoicedQty6; OutIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseExpectedValue6; OutIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseExpectedQty6; OutIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseInvoicedValue6; OutRMIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseInvoicedQty6; OutRMIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseExpectedValue6; OutRMIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseExpectedQty6; OutRMIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseInvoicedValue6; OutCONSIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseInvoicedQty6; OutCONSIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseExpectedValue6; OutCONSIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseExpectedQty6; OutCONSIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseInvoicedValue6; OutSPAREIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseInvoicedQty6; OutSPAREIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseExpectedValue6; OutSPAREIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseExpectedQty6; OutSPAREIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseInvoicedValue6; OutFGIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseInvoicedQty6; OutFGIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseExpectedValue6; OutFGIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseExpectedQty6; OutFGIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseInvoicedValue6; OutMERCHIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseInvoicedQty6; OutMERCHIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseExpectedValue6; OutMERCHIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseExpectedQty6; OutMERCHIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseInvoicedValue6; SaleDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseInvoicedQty6; SaleDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseExpectedValue6; SaleDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseExpectedQty6; SaleDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseInvoicedValue6; SaleRMDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseInvoicedQty6; SaleRMDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseExpectedValue6; SaleRMDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseExpectedQty6; SaleRMDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseInvoicedValue6; SaleCONSDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseInvoicedQty6; SaleCONSDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseExpectedValue6; SaleCONSDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseExpectedQty6; SaleCONSDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseInvoicedValue6; SaleSPAREDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseInvoicedQty6; SaleSPAREDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseExpectedValue6; SaleSPAREDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseExpectedQty6; SaleSPAREDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseInvoicedValue6; SaleFGDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseInvoicedQty6; SaleFGDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseExpectedValue6; SaleFGDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseExpectedQty6; SaleFGDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseInvoicedValue6; SaleMERCHDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseInvoicedQty6; SaleMERCHDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseExpectedValue6; SaleMERCHDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseExpectedQty6; SaleMERCHDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseInvoicedValue6; CapDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseInvoicedQty6; CapDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseExpectedValue6; CapDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseExpectedQty6; CapDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseInvoicedValue6; CapRMDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseInvoicedQty6; CapRMDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseExpectedValue6; CapRMDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseExpectedQty6; CapRMDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseInvoicedValue6; CapCONSDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseInvoicedQty6; CapCONSDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseExpectedValue6; CapCONSDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseExpectedQty6; CapCONSDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseInvoicedValue6; CapSPAREDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseInvoicedQty6; CapSPAREDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseExpectedValue6; CapSPAREDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseExpectedQty6; CapSPAREDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseInvoicedValue6; CapFGDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(CaPFGDecreaseInvoicedQty6; CapFGDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseExpectedValue6; CapFGDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(CapFGDecreaseExpectedQty6; CapFGDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseInvoicedValue6; CapMERCHDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseInvoicedQty6; CapMERCHDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseExpectedValue6; CapMERCHDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseExpectedQty6; CapMERCHDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseInvoicedValue6; NegDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseInvoicedQty6; NegDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseExpectedValue6; NegDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseExpectedQty6; NegDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseInvoicedValue6; NegRMDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseInvoicedQty6; NegRMDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseExpectedValue6; NegRMDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseExpectedQty6; NegRMDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseInvoicedValue6; NegCONSDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseInvoicedQty6; NegCONSDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseExpectedValue6; NegCONSDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseExpectedQty6; NegCONSDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseInvoicedValue6; NegSPAREDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseInvoicedQty6; NegSPAREDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseExpectedValue6; NegSPAREDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseExpectedQty6; NegSPAREDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseInvoicedValue6; NegFGDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseInvoicedQty6; NegFGDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseExpectedValue6; NegFGDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseExpectedQty6; NegFGDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseInvoicedValue6; NegMERCHDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseInvoicedQty6; NegMERCHDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseExpectedValue6; NegMERCHDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseExpectedQty6; NegMERCHDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseInvoicedValue6; ConsDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseInvoicedQty6; ConsDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseExpectedValue6; ConsDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseExpectedQty6; ConsDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseInvoicedValue6; ConsRMDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseInvoicedQty6; ConsRMDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseExpectedValue6; ConsRMDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseExpectedQty6; ConsRMDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseInvoicedValue6; ConsCONSDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseInvoicedQty6; ConsCONSDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseExpectedValue6; ConsCONSDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseExpectedQty6; ConsCONSDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseInvoicedValue6; ConsSPAREDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseInvoicedQty6; ConsSPAREDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseExpectedValue6; ConsSPAREDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseExpectedQty6; ConsSPAREDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseInvoicedValue6; ConsFGDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseInvoicedQty6; ConsFGDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseExpectedValue6; ConsFGDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseExpectedQty6; ConsFGDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseInvoicedValue6; ConsMERCHDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseInvoicedQty6; ConsMERCHDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseExpectedValue6; ConsMERCHDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseExpectedQty6; ConsMERCHDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseInvoicedValue6; TranIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseInvoicedQty6; TranIncreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseExpectedValue6; TranIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseExpectedQty6; TranIncreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseInvoicedValue6; TranDecreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseInvoicedQty6; TranDecreaseInvoicedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseExpectedValue6; TranDecreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseExpectedQty6; TranDecreaseExpectedQty[6])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OpenRMValue6; OpenRMValue[6])
            {
            }
            column(OpenFGValue6; OpenFGValue[6])
            {
            }
            column(OpenMerchandiseValue6; OpenMerchandiseValue[6])
            {
            }
            column(OpenConsSpareValue6; OpenConsSpareValue[6])
            {
            }
            column(RMValue6; RMValue[6])
            {
            }
            column(FGValue6; FGValue[6])
            {
            }
            column(MerchandiseValue6; MerchandiseValue[6])
            {
            }
            column(ConsSpareValue6; ConsSpareValue[6])
            {
            }
            column(ClosRMValue6; ClosRMValue[6])
            {
            }
            column(ClosFGValue6; ClosFGValue[6])
            {
            }
            column(ClosMerchandiseValue6; ClosMerchandiseValue[6])
            {
            }
            column(ClosConsSpareValue6; ClosConsSpareValue[6])
            {
            }
            column(StartingInvoicedValue7; StartingInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(StartingExpectedValue7; StartingExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedValue7; PurIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedQty7; PurIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurIncreaseExpectedValue7; PurIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseExpectedQty7; PurIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseInvoicedValue7; PurRMIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseInvoicedQty7; PurRMIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseExpectedValue7; PurRMIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseExpectedQty7; PurRMIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseInvoicedValue7; PurCONSIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseInvoicedQty7; PurCONSIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseExpectedValue7; PurCONSIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseExpectedQty7; PurCONSIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseInvoicedValue7; PurSPAREIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseInvoicedQty7; PurSPAREIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseExpectedValue7; PurSPAREIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseExpectedQty7; PurSPAREIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseInvoicedValue7; PurFGIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseInvoicedQty7; PurFGIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseExpectedValue7; PurFGIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseExpectedQty7; PurFGIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseInvoicedValue7; PurMERCHIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseInvoicedQty7; PurMERCHIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseExpectedValue7; PurMERCHIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseExpectedQty7; PurMERCHIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseInvoicedValue7; PosIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseInvoicedQty7; PosIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseExpectedValue7; PosIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseExpectedQty7; PosIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseInvoicedValue7; PosRMIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseInvoicedQty7; PosRMIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseExpectedValue7; PosRMIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseExpectedQty7; PosRMIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseInvoicedValue7; PosCONSIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseInvoicedQty7; PosCONSIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseExpectedValue7; PosCONSIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseExpectedQty7; PosCONSIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseInvoicedValue7; PosSPAREIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseInvoicedQty7; PosSPAREIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseExpectedValue7; PosSPAREIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseExpectedQty7; PosSPAREIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseInvoicedValue7; PosFGIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseInvoicedQty7; PosFGIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseExpectedValue7; PosFGIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseExpectedQty7; PosFGIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseInvoicedValue7; PosMERCHIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseInvoicedQty7; PosMERCHIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseExpectedValue7; PosMERCHIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseExpectedQty7; PosMERCHIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseInvoicedValue7; OutIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseInvoicedQty7; OutIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseExpectedValue7; OutIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseExpectedQty7; OutIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseInvoicedValue7; OutRMIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseInvoicedQty7; OutRMIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseExpectedValue7; OutRMIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseExpectedQty7; OutRMIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseInvoicedValue7; OutCONSIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseInvoicedQty7; OutCONSIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseExpectedValue7; OutCONSIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseExpectedQty7; OutCONSIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseInvoicedValue7; OutSPAREIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseInvoicedQty7; OutSPAREIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseExpectedValue7; OutSPAREIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseExpectedQty7; OutSPAREIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseInvoicedValue7; OutFGIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseInvoicedQty7; OutFGIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseExpectedValue7; OutFGIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseExpectedQty7; OutFGIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseInvoicedValue7; OutMERCHIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseInvoicedQty7; OutMERCHIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseExpectedValue7; OutMERCHIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseExpectedQty7; OutMERCHIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseInvoicedValue7; SaleDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseInvoicedQty7; SaleDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseExpectedValue7; SaleDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseExpectedQty7; SaleDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseInvoicedValue7; SaleRMDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseInvoicedQty7; SaleRMDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseExpectedValue7; SaleRMDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseExpectedQty7; SaleRMDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseInvoicedValue7; SaleCONSDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseInvoicedQty7; SaleCONSDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseExpectedValue7; SaleCONSDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseExpectedQty7; SaleCONSDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseInvoicedValue7; SaleSPAREDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseInvoicedQty7; SaleSPAREDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseExpectedValue7; SaleSPAREDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseExpectedQty7; SaleSPAREDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseInvoicedValue7; SaleFGDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseInvoicedQty7; SaleFGDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseExpectedValue7; SaleFGDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseExpectedQty7; SaleFGDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseInvoicedValue7; SaleMERCHDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseInvoicedQty7; SaleMERCHDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseExpectedValue7; SaleMERCHDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseExpectedQty7; SaleMERCHDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseInvoicedValue7; CapDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseInvoicedQty7; CapDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseExpectedValue7; CapDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseExpectedQty7; CapDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseInvoicedValue7; CapRMDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseInvoicedQty7; CapRMDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseExpectedValue7; CapRMDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseExpectedQty7; CapRMDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseInvoicedValue7; CapCONSDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseInvoicedQty7; CapCONSDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseExpectedValue7; CapCONSDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseExpectedQty7; CapCONSDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseInvoicedValue7; CapSPAREDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseInvoicedQty7; CapSPAREDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseExpectedValue7; CapSPAREDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseExpectedQty7; CapSPAREDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseInvoicedValue7; CapFGDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(CaPFGDecreaseInvoicedQty7; CapFGDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseExpectedValue7; CapFGDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(CapFGDecreaseExpectedQty7; CapFGDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseInvoicedValue7; CapMERCHDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseInvoicedQty7; CapMERCHDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseExpectedValue7; CapMERCHDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseExpectedQty7; CapMERCHDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseInvoicedValue7; NegDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseInvoicedQty7; NegDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseExpectedValue7; NegDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseExpectedQty7; NegDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseInvoicedValue7; NegRMDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseInvoicedQty7; NegRMDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseExpectedValue7; NegRMDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseExpectedQty7; NegRMDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseInvoicedValue7; NegCONSDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseInvoicedQty7; NegCONSDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseExpectedValue7; NegCONSDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseExpectedQty7; NegCONSDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseInvoicedValue7; NegSPAREDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseInvoicedQty7; NegSPAREDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseExpectedValue7; NegSPAREDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseExpectedQty7; NegSPAREDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseInvoicedValue7; NegFGDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseInvoicedQty7; NegFGDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseExpectedValue7; NegFGDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseExpectedQty7; NegFGDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseInvoicedValue7; NegMERCHDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseInvoicedQty7; NegMERCHDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseExpectedValue7; NegMERCHDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseExpectedQty7; NegMERCHDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseInvoicedValue7; ConsDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseInvoicedQty7; ConsDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseExpectedValue7; ConsDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseExpectedQty7; ConsDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseInvoicedValue7; ConsRMDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseInvoicedQty7; ConsRMDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseExpectedValue7; ConsRMDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseExpectedQty7; ConsRMDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseInvoicedValue7; ConsCONSDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseInvoicedQty7; ConsCONSDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseExpectedValue7; ConsCONSDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseExpectedQty7; ConsCONSDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseInvoicedValue7; ConsSPAREDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseInvoicedQty7; ConsSPAREDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseExpectedValue7; ConsSPAREDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseExpectedQty7; ConsSPAREDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseInvoicedValue7; ConsFGDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseInvoicedQty7; ConsFGDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseExpectedValue7; ConsFGDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseExpectedQty7; ConsFGDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseInvoicedValue7; ConsMERCHDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseInvoicedQty7; ConsMERCHDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseExpectedValue7; ConsMERCHDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseExpectedQty7; ConsMERCHDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseInvoicedValue7; TranIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseInvoicedQty7; TranIncreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseExpectedValue7; TranIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseExpectedQty7; TranIncreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseInvoicedValue7; TranDecreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseInvoicedQty7; TranDecreaseInvoicedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseExpectedValue7; TranDecreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseExpectedQty7; TranDecreaseExpectedQty[7])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OpenRMValue7; OpenRMValue[7])
            {
            }
            column(OpenFGValue7; OpenFGValue[7])
            {
            }
            column(OpenMerchandiseValue7; OpenMerchandiseValue[7])
            {
            }
            column(OpenConsSpareValue7; OpenConsSpareValue[7])
            {
            }
            column(RMValue7; RMValue[7])
            {
            }
            column(FGValue7; FGValue[7])
            {
            }
            column(MerchandiseValue7; MerchandiseValue[7])
            {
            }
            column(ConsSpareValue7; ConsSpareValue[7])
            {
            }
            column(ClosRMValue7; ClosRMValue[7])
            {
            }
            column(ClosFGValue7; ClosFGValue[7])
            {
            }
            column(ClosMerchandiseValue7; ClosMerchandiseValue[7])
            {
            }
            column(ClosConsSpareValue7; ClosConsSpareValue[7])
            {
            }
            column(StartingInvoicedValue8; StartingInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(StartingExpectedValue8; StartingExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedValue8; PurIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedQty8; PurIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurIncreaseExpectedValue8; PurIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseExpectedQty8; PurIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseInvoicedValue8; PurRMIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseInvoicedQty8; PurRMIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseExpectedValue8; PurRMIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseExpectedQty8; PurRMIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseInvoicedValue8; PurCONSIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseInvoicedQty8; PurCONSIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseExpectedValue8; PurCONSIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseExpectedQty8; PurCONSIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseInvoicedValue8; PurSPAREIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseInvoicedQty8; PurSPAREIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseExpectedValue8; PurSPAREIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseExpectedQty8; PurSPAREIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseInvoicedValue8; PurFGIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseInvoicedQty8; PurFGIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseExpectedValue8; PurFGIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseExpectedQty8; PurFGIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseInvoicedValue8; PurMERCHIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseInvoicedQty8; PurMERCHIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseExpectedValue8; PurMERCHIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseExpectedQty8; PurMERCHIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseInvoicedValue8; PosIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseInvoicedQty8; PosIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseExpectedValue8; PosIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseExpectedQty8; PosIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseInvoicedValue8; PosRMIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseInvoicedQty8; PosRMIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseExpectedValue8; PosRMIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseExpectedQty8; PosRMIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseInvoicedValue8; PosCONSIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseInvoicedQty8; PosCONSIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseExpectedValue8; PosCONSIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseExpectedQty8; PosCONSIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseInvoicedValue8; PosSPAREIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseInvoicedQty8; PosSPAREIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseExpectedValue8; PosSPAREIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseExpectedQty8; PosSPAREIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseInvoicedValue8; PosFGIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseInvoicedQty8; PosFGIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseExpectedValue8; PosFGIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseExpectedQty8; PosFGIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseInvoicedValue8; PosMERCHIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseInvoicedQty8; PosMERCHIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseExpectedValue8; PosMERCHIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseExpectedQty8; PosMERCHIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseInvoicedValue8; OutIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseInvoicedQty8; OutIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseExpectedValue8; OutIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseExpectedQty8; OutIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseInvoicedValue8; OutRMIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseInvoicedQty8; OutRMIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseExpectedValue8; OutRMIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseExpectedQty8; OutRMIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseInvoicedValue8; OutCONSIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseInvoicedQty8; OutCONSIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseExpectedValue8; OutCONSIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseExpectedQty8; OutCONSIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseInvoicedValue8; OutSPAREIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseInvoicedQty8; OutSPAREIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseExpectedValue8; OutSPAREIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseExpectedQty8; OutSPAREIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseInvoicedValue8; OutFGIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseInvoicedQty8; OutFGIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseExpectedValue8; OutFGIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseExpectedQty8; OutFGIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseInvoicedValue8; OutMERCHIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseInvoicedQty8; OutMERCHIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseExpectedValue8; OutMERCHIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseExpectedQty8; OutMERCHIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseInvoicedValue8; SaleDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseInvoicedQty8; SaleDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseExpectedValue8; SaleDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseExpectedQty8; SaleDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseInvoicedValue8; SaleRMDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseInvoicedQty8; SaleRMDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseExpectedValue8; SaleRMDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseExpectedQty8; SaleRMDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseInvoicedValue8; SaleCONSDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseInvoicedQty8; SaleCONSDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseExpectedValue8; SaleCONSDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseExpectedQty8; SaleCONSDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseInvoicedValue8; SaleSPAREDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseInvoicedQty8; SaleSPAREDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseExpectedValue8; SaleSPAREDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseExpectedQty8; SaleSPAREDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseInvoicedValue8; SaleFGDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseInvoicedQty8; SaleFGDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseExpectedValue8; SaleFGDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseExpectedQty8; SaleFGDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseInvoicedValue8; SaleMERCHDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseInvoicedQty8; SaleMERCHDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseExpectedValue8; SaleMERCHDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseExpectedQty8; SaleMERCHDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseInvoicedValue8; CapDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseInvoicedQty8; CapDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseExpectedValue8; CapDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseExpectedQty8; CapDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseInvoicedQty8; CapRMDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseExpectedValue8; CapRMDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseExpectedQty8; CapRMDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseInvoicedValue8; CapCONSDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseInvoicedQty8; CapCONSDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseExpectedValue8; CapCONSDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseExpectedQty8; CapCONSDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseInvoicedValue8; CapSPAREDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseInvoicedQty8; CapSPAREDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseExpectedValue8; CapSPAREDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseExpectedQty8; CapSPAREDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseInvoicedValue8; CapFGDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(CaPFGDecreaseInvoicedQty8; CapFGDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseExpectedValue8; CapFGDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(CapFGDecreaseExpectedQty8; CapFGDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseInvoicedValue8; CapMERCHDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseInvoicedQty8; CapMERCHDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseExpectedValue8; CapMERCHDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseExpectedQty8; CapMERCHDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseInvoicedValue8; NegDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseInvoicedQty8; NegDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseExpectedValue8; NegDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseExpectedQty8; NegDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseInvoicedValue8; NegRMDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseInvoicedQty8; NegRMDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseExpectedValue8; NegRMDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseExpectedQty8; NegRMDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseInvoicedValue8; NegCONSDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseInvoicedQty8; NegCONSDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseExpectedValue8; NegCONSDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseExpectedQty8; NegCONSDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseInvoicedValue8; NegSPAREDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseInvoicedQty8; NegSPAREDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseExpectedValue8; NegSPAREDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseExpectedQty8; NegSPAREDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseInvoicedValue8; NegFGDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseInvoicedQty8; NegFGDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseExpectedValue8; NegFGDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseExpectedQty8; NegFGDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseInvoicedValue8; NegMERCHDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseInvoicedQty8; NegMERCHDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseExpectedValue8; NegMERCHDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseExpectedQty8; NegMERCHDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseInvoicedValue8; ConsDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseInvoicedQty8; ConsDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseExpectedValue8; ConsDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseExpectedQty8; ConsDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseInvoicedValue8; ConsRMDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseInvoicedQty8; ConsRMDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseExpectedValue8; ConsRMDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseExpectedQty8; ConsRMDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseInvoicedValue8; ConsCONSDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseInvoicedQty8; ConsCONSDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseExpectedValue8; ConsCONSDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseExpectedQty8; ConsCONSDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseInvoicedValue8; ConsSPAREDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseInvoicedQty8; ConsSPAREDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseExpectedValue8; ConsSPAREDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseExpectedQty8; ConsSPAREDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseInvoicedValue8; ConsFGDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseInvoicedQty8; ConsFGDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseExpectedValue8; ConsFGDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseExpectedQty8; ConsFGDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseInvoicedValue8; ConsMERCHDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseInvoicedQty8; ConsMERCHDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseExpectedValue8; ConsMERCHDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseExpectedQty8; ConsMERCHDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseInvoicedValue8; TranIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseInvoicedQty8; TranIncreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseExpectedValue8; TranIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseExpectedQty8; TranIncreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseInvoicedValue8; TranDecreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseInvoicedQty8; TranDecreaseInvoicedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseExpectedValue8; TranDecreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseExpectedQty8; TranDecreaseExpectedQty[8])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OpenRMValue8; OpenRMValue[8])
            {
            }
            column(OpenFGValue8; OpenFGValue[8])
            {
            }
            column(OpenMerchandiseValue8; OpenMerchandiseValue[8])
            {
            }
            column(OpenConsSpareValue8; OpenConsSpareValue[8])
            {
            }
            column(RMValue8; RMValue[8])
            {
            }
            column(FGValue8; FGValue[8])
            {
            }
            column(MerchandiseValue8; MerchandiseValue[8])
            {
            }
            column(ConsSpareValue8; ConsSpareValue[8])
            {
            }
            column(ClosRMValue8; ClosRMValue[8])
            {
            }
            column(ClosFGValue8; ClosFGValue[8])
            {
            }
            column(ClosMerchandiseValue8; ClosMerchandiseValue[8])
            {
            }
            column(ClosConsSpareValue8; ClosConsSpareValue[8])
            {
            }
            column(StartingInvoicedValue9; StartingInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(StartingExpectedValue9; StartingExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedValue9; PurIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedQty9; PurIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurIncreaseExpectedValue9; PurIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseExpectedQty9; PurIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseInvoicedValue9; PurRMIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseInvoicedQty9; PurRMIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseExpectedValue9; PurRMIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseExpectedQty9; PurRMIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseInvoicedValue9; PurCONSIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseInvoicedQty9; PurCONSIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseExpectedValue9; PurCONSIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseExpectedQty9; PurCONSIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseInvoicedValue9; PurSPAREIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseInvoicedQty9; PurSPAREIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseExpectedValue9; PurSPAREIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseExpectedQty9; PurSPAREIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseInvoicedValue9; PurFGIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseInvoicedQty9; PurFGIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseExpectedValue9; PurFGIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseExpectedQty9; PurFGIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseInvoicedValue9; PurMERCHIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseInvoicedQty9; PurMERCHIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseExpectedValue9; PurMERCHIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseExpectedQty9; PurMERCHIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseInvoicedValue9; PosIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseInvoicedQty9; PosIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseExpectedValue9; PosIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseExpectedQty9; PosIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseInvoicedValue9; PosRMIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseInvoicedQty9; PosRMIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseExpectedValue9; PosRMIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseExpectedQty9; PosRMIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseInvoicedValue9; PosCONSIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseInvoicedQty9; PosCONSIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseExpectedValue9; PosCONSIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseExpectedQty9; PosCONSIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseInvoicedValue9; PosSPAREIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseInvoicedQty9; PosSPAREIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseExpectedValue9; PosSPAREIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseExpectedQty9; PosSPAREIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseInvoicedValue9; PosFGIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseInvoicedQty9; PosFGIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseExpectedValue9; PosFGIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseExpectedQty9; PosFGIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseInvoicedValue9; PosMERCHIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseInvoicedQty9; PosMERCHIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseExpectedValue9; PosMERCHIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseExpectedQty9; PosMERCHIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseInvoicedValue9; OutIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseInvoicedQty9; OutIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseExpectedValue9; OutIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseExpectedQty9; OutIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseInvoicedValue9; OutRMIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseInvoicedQty9; OutRMIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseExpectedValue9; OutRMIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseExpectedQty9; OutRMIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseInvoicedValue9; OutCONSIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseInvoicedQty9; OutCONSIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseExpectedValue9; OutCONSIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseExpectedQty9; OutCONSIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseInvoicedValue9; OutSPAREIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseInvoicedQty9; OutSPAREIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseExpectedValue9; OutSPAREIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseExpectedQty9; OutSPAREIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseInvoicedValue9; OutFGIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseInvoicedQty9; OutFGIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseExpectedValue9; OutFGIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseExpectedQty9; OutFGIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseInvoicedValue9; OutMERCHIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseInvoicedQty9; OutMERCHIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseExpectedValue9; OutMERCHIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseExpectedQty9; OutMERCHIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseInvoicedValue9; SaleDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseInvoicedQty9; SaleDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseExpectedValue9; SaleDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseExpectedQty9; SaleDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseInvoicedValue9; SaleRMDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseInvoicedQty9; SaleRMDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseExpectedValue9; SaleRMDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseExpectedQty9; SaleRMDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseInvoicedValue9; SaleCONSDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseInvoicedQty9; SaleCONSDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseExpectedValue9; SaleCONSDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseExpectedQty9; SaleCONSDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseInvoicedValue9; SaleSPAREDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseInvoicedQty9; SaleSPAREDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseExpectedValue9; SaleSPAREDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseExpectedQty9; SaleSPAREDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseInvoicedValue9; SaleFGDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseInvoicedQty9; SaleFGDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseExpectedValue9; SaleFGDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseExpectedQty9; SaleFGDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseInvoicedValue9; SaleMERCHDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseInvoicedQty9; SaleMERCHDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseExpectedValue9; SaleMERCHDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseExpectedQty9; SaleMERCHDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseInvoicedValue9; CapDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseInvoicedQty9; CapDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseExpectedValue9; CapDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseExpectedQty9; CapDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseInvoicedQty9; CapRMDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseExpectedValue9; CapRMDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseExpectedQty9; CapRMDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseInvoicedValue9; CapCONSDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseInvoicedQty9; CapCONSDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseExpectedValue9; CapCONSDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseExpectedQty9; CapCONSDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseInvoicedValue9; CapSPAREDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseInvoicedQty9; CapSPAREDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseExpectedValue9; CapSPAREDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseExpectedQty9; CapSPAREDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseInvoicedValue9; CapFGDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(CaPFGDecreaseInvoicedQty9; CapFGDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseExpectedValue9; CapFGDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(CapFGDecreaseExpectedQty9; CapFGDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseInvoicedValue9; CapMERCHDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseInvoicedQty9; CapMERCHDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseExpectedValue9; CapMERCHDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseExpectedQty9; CapMERCHDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseInvoicedValue9; NegDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseInvoicedQty9; NegDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseExpectedValue9; NegDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseExpectedQty9; NegDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseInvoicedValue9; NegRMDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseInvoicedQty9; NegRMDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseExpectedValue9; NegRMDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseExpectedQty9; NegRMDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseInvoicedValue9; NegCONSDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseInvoicedQty9; NegCONSDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseExpectedValue9; NegCONSDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseExpectedQty9; NegCONSDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseInvoicedValue9; NegSPAREDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseInvoicedQty9; NegSPAREDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseExpectedValue9; NegSPAREDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseExpectedQty9; NegSPAREDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseInvoicedValue9; NegFGDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseInvoicedQty9; NegFGDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseExpectedValue9; NegFGDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseExpectedQty9; NegFGDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseInvoicedValue9; NegMERCHDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseInvoicedQty9; NegMERCHDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseExpectedValue9; NegMERCHDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseExpectedQty9; NegMERCHDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseInvoicedValue9; ConsDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseInvoicedQty9; ConsDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseExpectedValue9; ConsDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseExpectedQty9; ConsDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseInvoicedValue9; ConsRMDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseInvoicedQty9; ConsRMDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseExpectedValue9; ConsRMDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseExpectedQty9; ConsRMDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseInvoicedValue9; ConsCONSDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseInvoicedQty9; ConsCONSDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseExpectedValue9; ConsCONSDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseExpectedQty9; ConsCONSDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseInvoicedValue9; ConsSPAREDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseInvoicedQty9; ConsSPAREDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseExpectedValue9; ConsSPAREDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseExpectedQty9; ConsSPAREDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseInvoicedValue9; ConsFGDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseInvoicedQty9; ConsFGDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseExpectedValue9; ConsFGDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseExpectedQty9; ConsFGDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseInvoicedValue9; ConsMERCHDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseInvoicedQty9; ConsMERCHDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseExpectedValue9; ConsMERCHDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseExpectedQty9; ConsMERCHDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseInvoicedValue9; TranIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseInvoicedQty9; TranIncreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseExpectedValue9; TranIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseExpectedQty9; TranIncreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseInvoicedValue9; TranDecreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseInvoicedQty9; TranDecreaseInvoicedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseExpectedValue9; TranDecreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseExpectedQty9; TranDecreaseExpectedQty[9])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OpenRMValue9; OpenRMValue[9])
            {
            }
            column(OpenFGValue9; OpenFGValue[9])
            {
            }
            column(OpenMerchandiseValue9; OpenMerchandiseValue[9])
            {
            }
            column(OpenConsSpareValue9; OpenConsSpareValue[9])
            {
            }
            column(RMValue9; RMValue[9])
            {
            }
            column(FGValue9; FGValue[9])
            {
            }
            column(MerchandiseValue9; MerchandiseValue[9])
            {
            }
            column(ConsSpareValue9; ConsSpareValue[9])
            {
            }
            column(ClosRMValue9; ClosRMValue[9])
            {
            }
            column(ClosFGValue9; ClosFGValue[9])
            {
            }
            column(ClosMerchandiseValue9; ClosMerchandiseValue[9])
            {
            }
            column(ClosConsSpareValue9; ClosConsSpareValue[9])
            {
            }
            column(StartingInvoicedValue10; StartingInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(StartingExpectedValue10; StartingExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedValue10; PurIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedQty10; PurIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurIncreaseExpectedValue10; PurIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseExpectedQty10; PurIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseInvoicedValue10; PurRMIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseInvoicedQty10; PurRMIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseExpectedValue10; PurRMIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseExpectedQty10; PurRMIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseInvoicedValue10; PurCONSIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseInvoicedQty10; PurCONSIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseExpectedValue10; PurCONSIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseExpectedQty10; PurCONSIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseInvoicedValue10; PurSPAREIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseInvoicedQty10; PurSPAREIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseExpectedValue10; PurSPAREIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseExpectedQty10; PurSPAREIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseInvoicedValue10; PurFGIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseInvoicedQty10; PurFGIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseExpectedValue10; PurFGIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseExpectedQty10; PurFGIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseInvoicedValue10; PurMERCHIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseInvoicedQty10; PurMERCHIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseExpectedValue10; PurMERCHIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseExpectedQty10; PurMERCHIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseInvoicedValue10; PosIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseInvoicedQty10; PosIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseExpectedValue10; PosIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseExpectedQty10; PosIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseInvoicedValue10; PosRMIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseInvoicedQty10; PosRMIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseExpectedValue10; PosRMIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseExpectedQty10; PosRMIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseInvoicedValue10; PosCONSIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseInvoicedQty10; PosCONSIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseExpectedValue10; PosCONSIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseExpectedQty10; PosCONSIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseInvoicedValue10; PosSPAREIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseInvoicedQty10; PosSPAREIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseExpectedValue10; PosSPAREIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseExpectedQty10; PosSPAREIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseInvoicedValue10; PosFGIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseInvoicedQty10; PosFGIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseExpectedValue10; PosFGIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseExpectedQty910; PosFGIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseInvoicedValue10; PosMERCHIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseInvoicedQty10; PosMERCHIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseExpectedValue10; PosMERCHIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseExpectedQty10; PosMERCHIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseInvoicedValue10; OutIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseInvoicedQty10; OutIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseExpectedValue10; OutIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseExpectedQty10; OutIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseInvoicedValue10; OutRMIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseInvoicedQty10; OutRMIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseExpectedValue10; OutRMIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseExpectedQty10; OutRMIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseInvoicedValue10; OutCONSIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseInvoicedQty10; OutCONSIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseExpectedValue10; OutCONSIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseExpectedQty10; OutCONSIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseInvoicedValue10; OutSPAREIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseInvoicedQty10; OutSPAREIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseExpectedValue10; OutSPAREIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseExpectedQty10; OutSPAREIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseInvoicedValue10; OutFGIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseInvoicedQty10; OutFGIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseExpectedValue10; OutFGIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseExpectedQty10; OutFGIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseInvoicedValue10; OutMERCHIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseInvoicedQty10; OutMERCHIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseExpectedValue10; OutMERCHIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseExpectedQty10; OutMERCHIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseInvoicedValue10; SaleDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseInvoicedQty10; SaleDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseExpectedValue10; SaleDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseExpectedQty10; SaleDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseInvoicedValue10; SaleRMDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseInvoicedQty10; SaleRMDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseExpectedValue10; SaleRMDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseExpectedQty10; SaleRMDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseInvoicedValue10; SaleCONSDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseInvoicedQty10; SaleCONSDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseExpectedValue10; SaleCONSDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseExpectedQty10; SaleCONSDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseInvoicedValue10; SaleSPAREDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseInvoicedQty10; SaleSPAREDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseExpectedValue10; SaleSPAREDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseExpectedQty10; SaleSPAREDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseInvoicedValue10; SaleFGDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseInvoicedQty10; SaleFGDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseExpectedValue10; SaleFGDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseExpectedQty10; SaleFGDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseInvoicedValue10; SaleMERCHDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseInvoicedQty10; SaleMERCHDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseExpectedValue10; SaleMERCHDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseExpectedQty10; SaleMERCHDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseInvoicedValue10; CapDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseInvoicedQty10; CapDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseExpectedValue10; CapDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseExpectedQty10; CapDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseInvoicedQty10; CapRMDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseExpectedValue10; CapRMDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseExpectedQty10; CapRMDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseInvoicedValue910; CapCONSDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseInvoicedQty10; CapCONSDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseExpectedValue10; CapCONSDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseExpectedQty10; CapCONSDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseInvoicedValue10; CapSPAREDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseInvoicedQty10; CapSPAREDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseExpectedValue10; CapSPAREDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseExpectedQty10; CapSPAREDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseInvoicedValue10; CapFGDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(CaPFGDecreaseInvoicedQty10; CapFGDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseExpectedValue10; CapFGDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(CapFGDecreaseExpectedQty10; CapFGDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseInvoicedValue10; CapMERCHDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseInvoicedQty10; CapMERCHDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseExpectedValue10; CapMERCHDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseExpectedQty10; CapMERCHDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseInvoicedValue10; NegDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseInvoicedQty10; NegDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseExpectedValue10; NegDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseExpectedQty10; NegDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseInvoicedValue10; NegRMDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseInvoicedQty10; NegRMDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseExpectedValue10; NegRMDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseExpectedQty10; NegRMDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseInvoicedValue10; NegCONSDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseInvoicedQty10; NegCONSDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseExpectedValue10; NegCONSDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseExpectedQty10; NegCONSDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseInvoicedValue10; NegSPAREDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseInvoicedQty10; NegSPAREDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseExpectedValue10; NegSPAREDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseExpectedQty10; NegSPAREDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseInvoicedValue10; NegFGDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseInvoicedQty10; NegFGDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseExpectedValue10; NegFGDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseExpectedQty10; NegFGDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseInvoicedValue10; NegMERCHDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseInvoicedQty10; NegMERCHDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseExpectedValue10; NegMERCHDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseExpectedQty10; NegMERCHDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseInvoicedValue10; ConsDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseInvoicedQty10; ConsDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseExpectedValue10; ConsDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseExpectedQty10; ConsDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseInvoicedValue10; ConsRMDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseInvoicedQty10; ConsRMDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseExpectedValue10; ConsRMDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseExpectedQty10; ConsRMDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseInvoicedValue10; ConsCONSDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseInvoicedQty10; ConsCONSDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseExpectedValue10; ConsCONSDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseExpectedQty10; ConsCONSDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseInvoicedValue10; ConsSPAREDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseInvoicedQty10; ConsSPAREDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseExpectedValue10; ConsSPAREDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseExpectedQty10; ConsSPAREDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseInvoicedValue10; ConsFGDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseInvoicedQty10; ConsFGDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseExpectedValue10; ConsFGDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseExpectedQty10; ConsFGDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseInvoicedValue10; ConsMERCHDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseInvoicedQty10; ConsMERCHDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseExpectedValue10; ConsMERCHDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseExpectedQty10; ConsMERCHDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseInvoicedValue10; TranIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseInvoicedQty10; TranIncreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseExpectedValue10; TranIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseExpectedQty10; TranIncreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseInvoicedValue10; TranDecreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseInvoicedQty10; TranDecreaseInvoicedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseExpectedValue10; TranDecreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseExpectedQty10; TranDecreaseExpectedQty[10])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OpenRMValue10; OpenRMValue[10])
            {
            }
            column(OpenFGValue10; OpenFGValue[10])
            {
            }
            column(OpenMerchandiseValue10; OpenMerchandiseValue[10])
            {
            }
            column(OpenConsSpareValue10; OpenConsSpareValue[10])
            {
            }
            column(RMValue10; RMValue[10])
            {
            }
            column(FGValue10; FGValue[10])
            {
            }
            column(MerchandiseValue10; MerchandiseValue[10])
            {
            }
            column(ConsSpareValue10; ConsSpareValue[10])
            {
            }
            column(ClosRMValue10; ClosRMValue[10])
            {
            }
            column(ClosFGValue10; ClosFGValue[10])
            {
            }
            column(ClosMerchandiseValue10; ClosMerchandiseValue[10])
            {
            }
            column(ClosConsSpareValue10; ClosConsSpareValue[10])
            {
            }
            column(StartingInvoicedValue11; StartingInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(StartingExpectedValue11; StartingExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedValue11; PurIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedQty11; PurIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurIncreaseExpectedValue11; PurIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseExpectedQty11; PurIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseInvoicedValue11; PurRMIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseInvoicedQty11; PurRMIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseExpectedValue11; PurRMIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseExpectedQty11; PurRMIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseInvoicedValue11; PurCONSIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseInvoicedQty11; PurCONSIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseExpectedValue11; PurCONSIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseExpectedQty11; PurCONSIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseInvoicedValue11; PurSPAREIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseInvoicedQty11; PurSPAREIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseExpectedValue11; PurSPAREIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseExpectedQty11; PurSPAREIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseInvoicedValue11; PurFGIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseInvoicedQty11; PurFGIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseExpectedValue11; PurFGIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseExpectedQty11; PurFGIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseInvoicedValue11; PurMERCHIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseInvoicedQty11; PurMERCHIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseExpectedValue11; PurMERCHIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseExpectedQty11; PurMERCHIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseInvoicedValue11; PosIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseInvoicedQty11; PosIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseExpectedValue11; PosIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseExpectedQty11; PosIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseInvoicedValue11; PosRMIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseInvoicedQty11; PosRMIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseExpectedValue11; PosRMIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseExpectedQty11; PosRMIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseInvoicedValue11; PosCONSIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseInvoicedQty11; PosCONSIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseExpectedValue11; PosCONSIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseExpectedQty11; PosCONSIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseInvoicedValue11; PosSPAREIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseInvoicedQty11; PosSPAREIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseExpectedValue11; PosSPAREIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseExpectedQty11; PosSPAREIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseInvoicedValue11; PosFGIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseInvoicedQty11; PosFGIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseExpectedValue11; PosFGIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseExpectedQty911; PosFGIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseInvoicedValue11; PosMERCHIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseInvoicedQty11; PosMERCHIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseExpectedValue11; PosMERCHIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseExpectedQty11; PosMERCHIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseInvoicedValue11; OutIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseInvoicedQty11; OutIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseExpectedValue11; OutIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseExpectedQty11; OutIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseInvoicedValue11; OutRMIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseInvoicedQty11; OutRMIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseExpectedValue11; OutRMIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseExpectedQty11; OutRMIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseInvoicedValue11; OutCONSIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseInvoicedQty11; OutCONSIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseExpectedValue11; OutCONSIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseExpectedQty11; OutCONSIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseInvoicedValue11; OutSPAREIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseInvoicedQty11; OutSPAREIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseExpectedValue11; OutSPAREIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseExpectedQty11; OutSPAREIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseInvoicedValue11; OutFGIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseInvoicedQty11; OutFGIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseExpectedValue11; OutFGIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseExpectedQty11; OutFGIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseInvoicedValue11; OutMERCHIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseInvoicedQty11; OutMERCHIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseExpectedValue11; OutMERCHIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseExpectedQty11; OutMERCHIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseInvoicedValue11; SaleDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseInvoicedQty11; SaleDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseExpectedValue11; SaleDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseExpectedQty11; SaleDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseInvoicedValue11; SaleRMDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseInvoicedQty11; SaleRMDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseExpectedValue11; SaleRMDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseExpectedQty11; SaleRMDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseInvoicedValue11; SaleCONSDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseInvoicedQty11; SaleCONSDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseExpectedValue11; SaleCONSDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseExpectedQty11; SaleCONSDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseInvoicedValue11; SaleSPAREDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseInvoicedQty11; SaleSPAREDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseExpectedValue11; SaleSPAREDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseExpectedQty11; SaleSPAREDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseInvoicedValue11; SaleFGDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseInvoicedQty11; SaleFGDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseExpectedValue11; SaleFGDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseExpectedQty11; SaleFGDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseInvoicedValue11; SaleMERCHDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseInvoicedQty11; SaleMERCHDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseExpectedValue11; SaleMERCHDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseExpectedQty11; SaleMERCHDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseInvoicedValue11; CapDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseInvoicedQty11; CapDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseExpectedValue11; CapDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseExpectedQty11; CapDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseInvoicedQty11; CapRMDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseExpectedValue11; CapRMDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseExpectedQty11; CapRMDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseInvoicedValue11; CapCONSDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseInvoicedQty11; CapCONSDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseExpectedValue11; CapCONSDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseExpectedQty11; CapCONSDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseInvoicedValue11; CapSPAREDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseInvoicedQty11; CapSPAREDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseExpectedValue11; CapSPAREDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseExpectedQty11; CapSPAREDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseInvoicedValue11; CapFGDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(CaPFGDecreaseInvoicedQty11; CapFGDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseExpectedValue11; CapFGDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(CapFGDecreaseExpectedQty11; CapFGDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseInvoicedValue11; CapMERCHDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseInvoicedQty11; CapMERCHDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseExpectedValue11; CapMERCHDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseExpectedQty11; CapMERCHDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseInvoicedValue11; NegDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseInvoicedQty11; NegDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseExpectedValue11; NegDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseExpectedQty11; NegDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseInvoicedValue11; NegRMDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseInvoicedQty11; NegRMDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseExpectedValue11; NegRMDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseExpectedQty11; NegRMDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseInvoicedValue11; NegCONSDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseInvoicedQty11; NegCONSDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseExpectedValue11; NegCONSDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseExpectedQty11; NegCONSDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseInvoicedValue11; NegSPAREDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseInvoicedQty11; NegSPAREDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseExpectedValue11; NegSPAREDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseExpectedQty11; NegSPAREDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseInvoicedValue11; NegFGDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseInvoicedQty11; NegFGDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseExpectedValue11; NegFGDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseExpectedQty11; NegFGDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseInvoicedValue11; NegMERCHDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseInvoicedQty11; NegMERCHDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseExpectedValue11; NegMERCHDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseExpectedQty11; NegMERCHDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseInvoicedValue11; ConsDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseInvoicedQty11; ConsDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseExpectedValue11; ConsDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseExpectedQty11; ConsDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseInvoicedValue11; ConsRMDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseInvoicedQty11; ConsRMDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseExpectedValue11; ConsRMDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseExpectedQty11; ConsRMDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseInvoicedValue11; ConsCONSDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseInvoicedQty11; ConsCONSDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseExpectedValue11; ConsCONSDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseExpectedQty11; ConsCONSDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseInvoicedValue11; ConsSPAREDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseInvoicedQty11; ConsSPAREDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseExpectedValue11; ConsSPAREDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseExpectedQty11; ConsSPAREDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseInvoicedValue11; ConsFGDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseInvoicedQty11; ConsFGDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseExpectedValue11; ConsFGDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseExpectedQty11; ConsFGDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseInvoicedValue11; ConsMERCHDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseInvoicedQty11; ConsMERCHDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseExpectedValue11; ConsMERCHDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseExpectedQty11; ConsMERCHDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseInvoicedValue11; TranIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseInvoicedQty11; TranIncreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseExpectedValue11; TranIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseExpectedQty11; TranIncreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseInvoicedValue11; TranDecreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseInvoicedQty11; TranDecreaseInvoicedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseExpectedValue11; TranDecreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseExpectedQty11; TranDecreaseExpectedQty[11])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OpenRMValue11; OpenRMValue[11])
            {
            }
            column(OpenFGValue11; OpenFGValue[11])
            {
            }
            column(OpenMerchandiseValue11; OpenMerchandiseValue[11])
            {
            }
            column(OpenConsSpareValue11; OpenConsSpareValue[11])
            {
            }
            column(RMValue11; RMValue[11])
            {
            }
            column(FGValue11; FGValue[11])
            {
            }
            column(MerchandiseValue11; MerchandiseValue[11])
            {
            }
            column(ConsSpareValue11; ConsSpareValue[11])
            {
            }
            column(ClosRMValue11; ClosRMValue[11])
            {
            }
            column(ClosFGValue11; ClosFGValue[11])
            {
            }
            column(ClosMerchandiseValue11; ClosMerchandiseValue[11])
            {
            }
            column(ClosConsSpareValue11; ClosConsSpareValue[11])
            {
            }
            column(StartingInvoicedValue12; StartingInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(StartingExpectedValue12; StartingExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedValue12; PurIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseInvoicedQty12; PurIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurIncreaseExpectedValue12; PurIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PurIncreaseExpectedQty12; PurIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseInvoicedValue12; PurRMIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseInvoicedQty12; PurRMIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurRMIncreaseExpectedValue12; PurRMIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PurRMIncreaseExpectedQty12; PurRMIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseInvoicedValue12; PurCONSIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseInvoicedQty12; PurCONSIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurCONSIncreaseExpectedValue12; PurCONSIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PurCONSIncreaseExpectedQty12; PurCONSIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseInvoicedValue12; PurSPAREIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseInvoicedQty12; PurSPAREIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurSPAREIncreaseExpectedValue12; PurSPAREIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PurSPAREIncreaseExpectedQty12; PurSPAREIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseInvoicedValue12; PurFGIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseInvoicedQty12; PurFGIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurFGIncreaseExpectedValue12; PurFGIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PurFGIncreaseExpectedQty12; PurFGIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseInvoicedValue12; PurMERCHIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseInvoicedQty12; PurMERCHIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PurMERCHIncreaseExpectedValue12; PurMERCHIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PurMERCHIncreaseExpectedQty12; PurMERCHIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseInvoicedValue12; PosIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseInvoicedQty12; PosIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosIncreaseExpectedValue12; PosIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PosIncreaseExpectedQty12; PosIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseInvoicedValue12; PosRMIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseInvoicedQty12; PosRMIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosRMIncreaseExpectedValue12; PosRMIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PosRMIncreaseExpectedQty12; PosRMIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseInvoicedValue12; PosCONSIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseInvoicedQty12; PosCONSIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosCONSIncreaseExpectedValue12; PosCONSIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PosCONSIncreaseExpectedQty12; PosCONSIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseInvoicedValue12; PosSPAREIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseInvoicedQty12; PosSPAREIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosSPAREIncreaseExpectedValue12; PosSPAREIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PosSPAREIncreaseExpectedQty12; PosSPAREIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseInvoicedValue12; PosFGIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseInvoicedQty12; PosFGIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosFGIncreaseExpectedValue12; PosFGIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PosFGIncreaseExpectedQty12; PosFGIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseInvoicedValue12; PosMERCHIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseInvoicedQty12; PosMERCHIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(PosMERCHIncreaseExpectedValue12; PosMERCHIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(PosMERCHIncreaseExpectedQty12; PosMERCHIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseInvoicedValue12; OutIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseInvoicedQty12; OutIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutIncreaseExpectedValue12; OutIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(OutIncreaseExpectedQty12; OutIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseInvoicedValue12; OutRMIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseInvoicedQty12; OutRMIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutRMIncreaseExpectedValue12; OutRMIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(OutRMIncreaseExpectedQty12; OutRMIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseInvoicedValue12; OutCONSIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseInvoicedQty12; OutCONSIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutCONSIncreaseExpectedValue12; OutCONSIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(OutCONSIncreaseExpectedQty12; OutCONSIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseInvoicedValue12; OutSPAREIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseInvoicedQty12; OutSPAREIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutSPAREIncreaseExpectedValue12; OutSPAREIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(OutSPAREIncreaseExpectedQty12; OutSPAREIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseInvoicedValue12; OutFGIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseInvoicedQty12; OutFGIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutFGIncreaseExpectedValue12; OutFGIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(OutFGIncreaseExpectedQty12; OutFGIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseInvoicedValue12; OutMERCHIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseInvoicedQty12; OutMERCHIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OutMERCHIncreaseExpectedValue12; OutMERCHIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(OutMERCHIncreaseExpectedQty12; OutMERCHIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseInvoicedValue12; SaleDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseInvoicedQty12; SaleDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleDecreaseExpectedValue12; SaleDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(SaleDecreaseExpectedQty12; SaleDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseInvoicedValue12; SaleRMDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseInvoicedQty12; SaleRMDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleRMDecreaseExpectedValue12; SaleRMDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(SaleRMDecreaseExpectedQty12; SaleRMDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseInvoicedValue12; SaleCONSDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseInvoicedQty12; SaleCONSDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleCONSDecreaseExpectedValue12; SaleCONSDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(SaleCONSDecreaseExpectedQty12; SaleCONSDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseInvoicedValue12; SaleSPAREDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseInvoicedQty12; SaleSPAREDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleSPAREDecreaseExpectedValue12; SaleSPAREDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(SaleSPAREDecreaseExpectedQty12; SaleSPAREDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseInvoicedValue12; SaleFGDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseInvoicedQty12; SaleFGDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleFGDecreaseExpectedValue12; SaleFGDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(SaleFGDecreaseExpectedQty12; SaleFGDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseInvoicedValue12; SaleMERCHDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseInvoicedQty12; SaleMERCHDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(SaleMERCHDecreaseExpectedValue12; SaleMERCHDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(SaleMERCHDecreaseExpectedQty12; SaleMERCHDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseInvoicedValue12; CapDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseInvoicedQty12; CapDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapDecreaseExpectedValue12; CapDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(CapDecreaseExpectedQty12; CapDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseInvoicedQty12; CapRMDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapRMDecreaseExpectedValue12; CapRMDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(CapRMDecreaseExpectedQty12; CapRMDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseInvoicedValue12; CapCONSDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseInvoicedQty12; CapCONSDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapCONSDecreaseExpectedValue12; CapCONSDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(CapCONSDecreaseExpectedQty12; CapCONSDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseInvoicedValue12; CapSPAREDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseInvoicedQty12; CapSPAREDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapSPAREDecreaseExpectedValue12; CapSPAREDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(CapSPAREDecreaseExpectedQty12; CapSPAREDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseInvoicedValue12; CapFGDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(CaPFGDecreaseInvoicedQty12; CapFGDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapFGDecreaseExpectedValue12; CapFGDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(CapFGDecreaseExpectedQty12; CapFGDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseInvoicedValue12; CapMERCHDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseInvoicedQty12; CapMERCHDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(CapMERCHDecreaseExpectedValue12; CapMERCHDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(CapMERCHDecreaseExpectedQty12; CapMERCHDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseInvoicedValue12; NegDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseInvoicedQty12; NegDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegDecreaseExpectedValue12; NegDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(NegDecreaseExpectedQty12; NegDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseInvoicedValue12; NegRMDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseInvoicedQty12; NegRMDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegRMDecreaseExpectedValue12; NegRMDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(NegRMDecreaseExpectedQty12; NegRMDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseInvoicedValue12; NegCONSDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseInvoicedQty12; NegCONSDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegCONSDecreaseExpectedValue12; NegCONSDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(NegCONSDecreaseExpectedQty12; NegCONSDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseInvoicedValue12; NegSPAREDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseInvoicedQty12; NegSPAREDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegSPAREDecreaseExpectedValue12; NegSPAREDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(NegSPAREDecreaseExpectedQty12; NegSPAREDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseInvoicedValue12; NegFGDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseInvoicedQty12; NegFGDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegFGDecreaseExpectedValue12; NegFGDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(NegFGDecreaseExpectedQty12; NegFGDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseInvoicedValue12; NegMERCHDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseInvoicedQty12; NegMERCHDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(NegMERCHDecreaseExpectedValue12; NegMERCHDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(NegMERCHDecreaseExpectedQty12; NegMERCHDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseInvoicedValue12; ConsDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseInvoicedQty12; ConsDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsDecreaseExpectedValue12; ConsDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ConsDecreaseExpectedQty12; ConsDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseInvoicedValue12; ConsRMDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseInvoicedQty12; ConsRMDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsRMDecreaseExpectedValue12; ConsRMDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ConsRMDecreaseExpectedQty12; ConsRMDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseInvoicedValue12; ConsCONSDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseInvoicedQty12; ConsCONSDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsCONSDecreaseExpectedValue12; ConsCONSDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ConsCONSDecreaseExpectedQty12; ConsCONSDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseInvoicedValue12; ConsSPAREDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseInvoicedQty12; ConsSPAREDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsSPAREDecreaseExpectedValue12; ConsSPAREDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ConsSPAREDecreaseExpectedQty12; ConsSPAREDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseInvoicedValue12; ConsFGDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseInvoicedQty12; ConsFGDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsFGDecreaseExpectedValue12; ConsFGDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ConsFGDecreaseExpectedQty12; ConsFGDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseInvoicedValue12; ConsMERCHDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseInvoicedQty12; ConsMERCHDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(ConsMERCHDecreaseExpectedValue12; ConsMERCHDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ConsMERCHDecreaseExpectedQty12; ConsMERCHDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseInvoicedValue12; TranIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseInvoicedQty12; TranIncreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranIncreaseExpectedValue12; TranIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(TranIncreaseExpectedQty12; TranIncreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseInvoicedValue12; TranDecreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseInvoicedQty12; TranDecreaseInvoicedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(TranDecreaseExpectedValue12; TranDecreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(TranDecreaseExpectedQty12; TranDecreaseExpectedQty[12])
            {
                DecimalPlaces = 0 : 5;
            }
            column(OpenRMValue12; OpenRMValue[12])
            {
            }
            column(OpenFGValue12; OpenFGValue[12])
            {
            }
            column(OpenMerchandiseValue12; OpenMerchandiseValue[12])
            {
            }
            column(OpenConsSpareValue12; OpenConsSpareValue[12])
            {
            }
            column(RMValue12; RMValue[12])
            {
            }
            column(FGValue12; FGValue[12])
            {
            }
            column(MerchandiseValue12; MerchandiseValue[12])
            {
            }
            column(ConsSpareValue12; ConsSpareValue[12])
            {
            }
            column(ClosRMValue12; ClosRMValue[12])
            {
            }
            column(ClosFGValue12; ClosFGValue[12])
            {
            }
            column(ClosMerchandiseValue12; ClosMerchandiseValue[12])
            {
            }
            column(ClosConsSpareValue12; ClosConsSpareValue[12])
            {
            }
            column(ActPurIncreaseInvoicedValue1; ActPurIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseExpectedValue1; ActPurIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseInvoicedValue1; ActPurRMIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseExpectedValue1; ActPurRMIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseInvoicedValue1; ActPurCONSIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseExpectedValue1; ActPurCONSIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseInvoicedValue1; ActPurSPAREIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseExpectedValue1; ActPurSPAREIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseInvoicedValue1; ActPurFGIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseExpectedValue1; ActPurFGIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseInvoicedValue1; ActPurMERCHIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseExpectedValue1; ActPurMERCHIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseInvoicedValue1; ActPosIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseExpectedValue1; ActPosIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseInvoicedValue1; ActPosRMIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseExpectedValue1; ActPosRMIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseInvoicedValue1; ActPosCONSIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseExpectedValue1; ActPosCONSIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseInvoicedValue1; ActPosSPAREIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseExpectedValue1; ActPosSPAREIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseInvoicedValue1; ActPosFGIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseExpectedValue1; ActPosFGIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseInvoicedValue1; ActPosMERCHIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseExpectedValue1; ActPosMERCHIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseInvoicedValue1; ActOutIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseExpectedValue1; ActOutIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseInvoicedValue1; ActOutRMIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseExpectedValue1; ActOutRMIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseInvoicedValue1; ActOutCONSIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseExpectedValue1; ActOutCONSIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseInvoicedValue1; ActOutSPAREIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseExpectedValue1; ActOutSPAREIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseInvoicedValue1; ActOutFGIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseExpectedValue1; ActOutFGIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseInvoicedValue1; ActOutMERCHIncreaseInvoicedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseExpectedValue1; ActOutMERCHIncreaseExpectedValue[1])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseInvoicedValue2; ActPurIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPursIncreaseExpectedValue2; ActPurIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseInvoicedValue2; ActPurRMIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseExpectedValue2; ActPurRMIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseInvoicedValue2; ActPurCONSIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseExpectedValue2; ActPurCONSIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseInvoicedValue2; ActPurSPAREIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseExpectedValue2; ActPurSPAREIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseInvoicedValue2; ActPurFGIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseExpectedValue2; ActPurFGIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseInvoicedValue2; ActPurMERCHIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseExpectedValue2; ActPurMERCHIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseInvoicedValue2; ActPosIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseExpectedValue2; ActPosIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseInvoicedValue2; ActPosRMIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseExpectedValue2; ActPosRMIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseInvoicedValue2; ActPosCONSIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseExpectedValue2; ActPosCONSIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseInvoicedValue2; ActPosSPAREIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseExpectedValue2; ActPosSPAREIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseInvoicedValue2; ActPosFGIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseExpectedValue2; ActPosFGIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseInvoicedValue2; ActPosMERCHIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseExpectedValue2; ActPosMERCHIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseInvoicedValue2; ActOutIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseExpectedValue2; ActOutIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseInvoicedValue2; ActOutRMIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseExpectedValue2; ActOutRMIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseInvoicedValue2; ActOutCONSIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseExpectedValue2; ActOutCONSIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseInvoicedValue2; ActOutSPAREIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseExpectedValue2; ActOutSPAREIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseInvoicedValue2; ActOutFGIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseExpectedValue2; ActOutFGIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseInvoicedValue2; ActOutMERCHIncreaseInvoicedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseExpectedValue2; ActOutMERCHIncreaseExpectedValue[2])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseInvoicedValue3; ActPurIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseExpectedValue3; ActPurIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseInvoicedValue3; ActPurRMIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseExpectedValue3; ActPurRMIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseInvoicedValue3; ActPurCONSIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseExpectedValue3; ActPurCONSIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseInvoicedValue3; ActPurSPAREIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseExpectedValue3; ActPurSPAREIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseInvoicedValue3; ActPurFGIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseExpectedValue3; ActPurFGIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseInvoicedValue3; ActPurMERCHIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseExpectedValue3; ActPurMERCHIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseInvoicedValue3; ActPosIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseExpectedValue3; ActPosIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseInvoicedValue3; ActPosRMIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseExpectedValue3; ActPosRMIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseInvoicedValue3; ActPosCONSIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseExpectedValue3; ActPosCONSIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseInvoicedValue3; ActPosSPAREIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseExpectedValue3; ActPosSPAREIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseInvoicedValue3; ActPosFGIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseExpectedValue3; ActPosFGIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseInvoicedValue3; ActPosMERCHIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseExpectedValue3; ActPosMERCHIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseInvoicedValue3; ActOutIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseExpectedValue3; ActOutIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseInvoicedValue3; ActOutRMIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseExpectedValue3; ActOutRMIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseInvoicedValue3; ActOutCONSIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseExpectedValue3; ActOutCONSIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseInvoicedValue3; ActOutSPAREIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseExpectedValue3; ActOutSPAREIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseInvoicedValue3; ActOutFGIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseExpectedValue3; ActOutFGIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseInvoicedValue3; ActOutMERCHIncreaseInvoicedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseExpectedValue3; ActOutMERCHIncreaseExpectedValue[3])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseInvoicedValue4; ActPurIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseExpectedValue4; ActPurIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseInvoicedValue4; ActPurRMIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseExpectedValue4; ActPurRMIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseInvoicedValue4; ActPurCONSIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseExpectedValue4; ActPurCONSIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseInvoicedValue4; ActPurSPAREIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseExpectedValue4; ActPurSPAREIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseInvoicedValue4; ActPurFGIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseExpectedValue4; ActPurFGIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseInvoicedValue4; ActPurMERCHIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseExpectedValue4; ActPurMERCHIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseInvoicedValue4; ActPosIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseExpectedValue4; ActPosIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseInvoicedValue4; ActPosRMIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseExpectedValue4; ActPosRMIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseInvoicedValue4; ActPosCONSIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseExpectedValue4; ActPosCONSIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseInvoicedValue4; ActPosSPAREIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseExpectedValue4; ActPosSPAREIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseInvoicedValue4; ActPosFGIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseExpectedValue4; ActPosFGIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseInvoicedValue4; ActPosMERCHIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseExpectedValue4; ActPosMERCHIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseInvoicedValue4; ActOutIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseExpectedValue4; ActOutIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseInvoicedValue4; ActOutRMIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseExpectedValue4; ActOutRMIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseInvoicedValue4; ActOutCONSIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseExpectedValue4; ActOutCONSIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseInvoicedValue4; ActOutSPAREIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseExpectedValue4; ActOutSPAREIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseInvoicedValue4; ActOutFGIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseExpectedValue4; ActOutFGIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseInvoicedValue4; ActOutMERCHIncreaseInvoicedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseExpectedValue4; ActOutMERCHIncreaseExpectedValue[4])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseInvoicedValue5; ActPurIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseExpectedValue5; ActPurIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseInvoicedValue5; ActPurRMIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseExpectedValue5; ActPurRMIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseInvoicedValue5; ActPurCONSIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseExpectedValue5; ActPurCONSIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseInvoicedValue5; ActPurSPAREIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseExpectedValue5; ActPurSPAREIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseInvoicedValue5; ActPurFGIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseExpectedValue5; ActPurFGIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseInvoicedValue5; ActPurMERCHIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseExpectedValue5; ActPurMERCHIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseInvoicedValue5; ActPosIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseExpectedValue5; ActPosIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseInvoicedValue5; ActPosRMIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseExpectedValue5; ActPosRMIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseInvoicedValue5; ActPosCONSIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseExpectedValue5; ActPosCONSIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseInvoicedValue5; ActPosSPAREIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseExpectedValue5; ActPosSPAREIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseInvoicedValue5; ActPosFGIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseExpectedValue5; ActPosFGIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseInvoicedValue5; ActPosMERCHIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseExpectedValue5; ActPosMERCHIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseInvoicedValue5; ActOutIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseExpectedValue5; ActOutIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseInvoicedValue5; ActOutRMIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseExpectedValue5; ActOutRMIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseInvoicedValue5; ActOutCONSIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseExpectedValue5; ActOutCONSIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseInvoicedValue5; ActOutSPAREIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseExpectedValue5; ActOutSPAREIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseInvoicedValue5; ActOutFGIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseExpectedValue5; ActOutFGIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseInvoicedValue5; ActOutMERCHIncreaseInvoicedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseExpectedValue5; ActOutMERCHIncreaseExpectedValue[5])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseInvoicedValue6; ActPurIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseExpectedValue6; ActPurIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseInvoicedValue6; ActPurRMIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseExpectedValue6; ActPurRMIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseInvoicedValue6; ActPurCONSIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseExpectedValue6; ActPurCONSIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseInvoicedValue6; ActPurSPAREIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseExpectedValue6; ActPurSPAREIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseInvoicedValue6; ActPurFGIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseExpectedValue6; ActPurFGIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseInvoicedValue6; ActPurMERCHIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseExpectedValue6; ActPurMERCHIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseInvoicedValue6; ActPosIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseExpectedValue6; ActPosIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseInvoicedValue6; ActPosRMIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseExpectedValue6; ActPosRMIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseInvoicedValue6; ActPosCONSIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseExpectedValue6; ActPosCONSIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseInvoicedValue6; ActPosSPAREIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseExpectedValue6; ActPosSPAREIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseInvoicedValue6; ActPosFGIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseExpectedValue6; ActPosFGIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseInvoicedValue6; ActPosMERCHIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseExpectedValue6; ActPosMERCHIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseInvoicedValue6; ActOutIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseExpectedValue6; ActOutIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseInvoicedValue6; ActOutRMIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseExpectedValue6; ActOutRMIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseInvoicedValue6; ActOutCONSIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseExpectedValue6; ActOutCONSIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseInvoicedValue6; ActOutSPAREIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseExpectedValue6; ActOutSPAREIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseInvoicedValue6; ActOutFGIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseExpectedValue6; ActOutFGIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseInvoicedValue6; ActOutMERCHIncreaseInvoicedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseExpectedValue6; ActOutMERCHIncreaseExpectedValue[6])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseInvoicedValue7; ActPurIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseExpectedValue7; ActPurIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseInvoicedValue7; ActPurRMIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseExpectedValue7; ActPurRMIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseInvoicedValue7; ActPurCONSIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseExpectedValue7; ActPurCONSIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseInvoicedValue7; ActPurSPAREIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseExpectedValue7; ActPurSPAREIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseInvoicedValue7; ActPurFGIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseExpectedValue7; ActPurFGIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseInvoicedValue7; ActPurMERCHIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseExpectedValue7; ActPurMERCHIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseInvoicedValue7; ActPosIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseExpectedValue7; ActPosIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseInvoicedValue7; ActPosRMIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseExpectedValue7; ActPosRMIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseInvoicedValue7; ActPosCONSIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseExpectedValue7; ActPosCONSIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseInvoicedValue7; ActPosSPAREIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseExpectedValue7; ActPosSPAREIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseInvoicedValue7; ActPosFGIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseExpectedValue7; ActPosFGIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseInvoicedValue7; ActPosMERCHIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseExpectedValue7; ActPosMERCHIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseInvoicedValue7; ActOutIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseExpectedValue7; ActOutIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseInvoicedValue7; ActOutRMIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseExpectedValue7; ActOutRMIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseInvoicedValue7; ActOutCONSIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseExpectedValue7; ActOutCONSIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseInvoicedValue7; ActOutSPAREIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseExpectedValue7; ActOutSPAREIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseInvoicedValue7; ActOutFGIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseExpectedValue7; ActOutFGIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseInvoicedValue7; ActOutMERCHIncreaseInvoicedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseExpectedValue7; ActOutMERCHIncreaseExpectedValue[7])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseInvoicedValue8; ActPurIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseExpectedValue8; ActPurIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseInvoicedValue8; ActPurRMIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseExpectedValue8; ActPurRMIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseInvoicedValue8; ActPurCONSIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseExpectedValue8; ActPurCONSIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseInvoicedValue8; ActPurSPAREIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseExpectedValue8; ActPurSPAREIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseInvoicedValue8; ActPurFGIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseExpectedValue8; ActPurFGIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseInvoicedValue8; ActPurMERCHIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseExpectedValue8; ActPurMERCHIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseInvoicedValue8; ActPosIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseExpectedValue8; ActPosIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseInvoicedValue8; ActPosRMIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseExpectedValue8; ActPosRMIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseInvoicedValue8; ActPosCONSIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseExpectedValue8; ActPosCONSIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseInvoicedValue8; ActPosSPAREIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseExpectedValue8; ActPosSPAREIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseInvoicedValue8; ActPosFGIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseExpectedValue8; ActPosFGIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseInvoicedValue8; ActPosMERCHIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseExpectedValue8; ActPosMERCHIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseInvoicedValue8; ActOutIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseExpectedValue8; ActOutIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseInvoicedValue8; ActOutRMIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseExpectedValue8; ActOutRMIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseInvoicedValue8; ActOutCONSIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseExpectedValue8; ActOutCONSIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseInvoicedValue8; ActOutSPAREIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseExpectedValue8; ActOutSPAREIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseInvoicedValue8; ActOutFGIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseExpectedValue8; ActOutFGIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseInvoicedValue8; ActOutMERCHIncreaseInvoicedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseExpectedValue8; ActOutMERCHIncreaseExpectedValue[8])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseInvoicedValue9; ActPurIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseExpectedValue9; ActPurIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseInvoicedValue9; ActPurRMIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseExpectedValue9; ActPurRMIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseInvoicedValue9; ActPurCONSIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseExpectedValue9; ActPurCONSIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseInvoicedValue9; ActPurSPAREIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseExpectedValue9; ActPurSPAREIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseInvoicedValue9; ActPurFGIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseExpectedValue9; ActPurFGIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseInvoicedValue9; ActPurMERCHIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseExpectedValue9; ActPurMERCHIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseInvoicedValue9; ActPosIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseExpectedValue9; ActPosIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseInvoicedValue9; ActPosRMIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseExpectedValue9; ActPosRMIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseInvoicedValue9; ActPosCONSIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseExpectedValue9; ActPosCONSIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseInvoicedValue9; ActPosSPAREIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseExpectedValue9; ActPosSPAREIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseInvoicedValue9; ActPosFGIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseExpectedValue9; ActPosFGIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseInvoicedValue9; ActPosMERCHIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseExpectedValue9; ActPosMERCHIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseInvoicedValue9; ActOutIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseExpectedValue9; ActOutIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseInvoicedValue9; ActOutRMIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseExpectedValue9; ActOutRMIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseInvoicedValue9; ActOutCONSIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseExpectedValue9; ActOutCONSIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseInvoicedValue9; ActOutSPAREIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseExpectedValue9; ActOutSPAREIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseInvoicedValue9; ActOutFGIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseExpectedValue9; ActOutFGIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseInvoicedValue9; ActOutMERCHIncreaseInvoicedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseExpectedValue9; ActOutMERCHIncreaseExpectedValue[9])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseInvoicedValue10; ActPurIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseExpectedValue10; ActPurIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseInvoicedValue10; ActPurRMIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseExpectedValue10; ActPurRMIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseInvoicedValue10; ActPurCONSIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseExpectedValue10; ActPurCONSIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseInvoicedValue10; ActPurSPAREIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseExpectedValue10; ActPurSPAREIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseInvoicedValue10; ActPurFGIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseExpectedValue10; ActPurFGIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseInvoicedValue10; ActPurMERCHIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseExpectedValue10; ActPurMERCHIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseInvoicedValue10; ActPosIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseExpectedValue10; ActPosIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseInvoicedValue10; ActPosRMIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseExpectedValue10; ActPosRMIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseInvoicedValue10; ActPosCONSIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseExpectedValue10; ActPosCONSIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseInvoicedValue10; ActPosSPAREIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseExpectedValue10; ActPosSPAREIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseInvoicedValue10; ActPosFGIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseExpectedValue10; ActPosFGIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseInvoicedValue10; ActPosMERCHIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseExpectedValue10; ActPosMERCHIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseInvoicedValue10; ActOutIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseExpectedValue10; ActOutIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseInvoicedValue10; ActOutRMIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseExpectedValue10; ActOutRMIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseInvoicedValue10; ActOutCONSIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseExpectedValue10; ActOutCONSIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseInvoicedValue10; ActOutSPAREIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseExpectedValue10; ActOutSPAREIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseInvoicedValue10; ActOutFGIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseExpectedValue10; ActOutFGIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseInvoicedValue10; ActOutMERCHIncreaseInvoicedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseExpectedValue10; ActOutMERCHIncreaseExpectedValue[10])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseInvoicedValue11; ActPurIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseExpectedValue11; ActPurIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseInvoicedValue11; ActPurRMIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseExpectedValue11; ActPurRMIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseInvoicedValue11; ActPurCONSIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseExpectedValue11; ActPurCONSIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseInvoicedValue11; ActPurSPAREIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseExpectedValue11; ActPurSPAREIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseInvoicedValue11; ActPurFGIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseExpectedValue11; ActPurFGIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseInvoicedValue11; ActPurMERCHIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseExpectedValue11; ActPurMERCHIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseInvoicedValue11; ActPosIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseExpectedValue11; ActPosIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseInvoicedValue11; ActPosRMIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseExpectedValue11; ActPosRMIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseInvoicedValue11; ActPosCONSIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseExpectedValue11; ActPosCONSIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseInvoicedValue11; ActPosSPAREIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseExpectedValue11; ActPosSPAREIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseInvoicedValue11; ActPosFGIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseExpectedValue11; ActPosFGIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseInvoicedValue11; ActPosMERCHIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseExpectedValue11; ActPosMERCHIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseInvoicedValue11; ActOutIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseExpectedValue11; ActOutIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseInvoicedValue11; ActOutRMIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseExpectedValue11; ActOutRMIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseInvoicedValue11; ActOutCONSIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseExpectedValue11; ActOutCONSIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseInvoicedValue11; ActOutSPAREIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseExpectedValue11; ActOutSPAREIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseInvoicedValue11; ActOutFGIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseExpectedValue11; ActOutFGIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseInvoicedValue11; ActOutMERCHIncreaseInvoicedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseExpectedValue11; ActOutMERCHIncreaseExpectedValue[11])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseInvoicedValue12; ActPurIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPurIncreaseExpectedValue12; ActPurIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseInvoicedValue12; ActPurRMIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPurRMIncreaseExpectedValue12; ActPurRMIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseInvoicedValue12; ActPurCONSIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPurCONSIncreaseExpectedValue12; ActPurCONSIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseInvoicedValue12; ActPurSPAREIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPurSPAREIncreaseExpectedValue12; ActPurSPAREIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseInvoicedValue12; ActPurFGIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPurFGIncreaseExpectedValue12; ActPurFGIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseInvoicedValue12; ActPurMERCHIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPurMERCHIncreaseExpectedValue12; ActPurMERCHIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseInvoicedValue12; ActPosIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPosIncreaseExpectedValue12; ActPosIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseInvoicedValue12; ActPosRMIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPosRMIncreaseExpectedValue12; ActPosRMIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseInvoicedValue12; ActPosCONSIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPosCONSIncreaseExpectedValue12; ActPosCONSIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseInvoicedValue12; ActPosSPAREIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPosSPAREIncreaseExpectedValue12; ActPosSPAREIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseInvoicedValue12; ActPosFGIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPosFGIncreaseExpectedValue12; ActPosFGIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseInvoicedValue12; ActPosMERCHIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActPosMERCHIncreaseExpectedValue12; ActPosMERCHIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseInvoicedValue12; ActOutIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActOutIncreaseExpectedValue12; ActOutIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseInvoicedValue12; ActOutRMIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActOutRMIncreaseExpectedValue12; ActOutRMIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseInvoicedValue12; ActOutCONSIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActOutCONSIncreaseExpectedValue12; ActOutCONSIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseInvoicedValue12; ActOutSPAREIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActOutSPAREIncreaseExpectedValue12; ActOutSPAREIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseInvoicedValue12; ActOutFGIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActOutFGIncreaseExpectedValue12; ActOutFGIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseInvoicedValue12; ActOutMERCHIncreaseInvoicedValue[12])
            {
                AutoFormatType = 1;
            }
            column(ActOutMERCHIncreaseExpectedValue12; ActOutMERCHIncreaseExpectedValue[12])
            {
                AutoFormatType = 1;
            }

            trigger OnAfterGetRecord()
            var
                i: Integer;
                ItemRec: Record Item;
            begin
                Item.RESET;
                ValueEntry.RESET;
                ValueEntry.SETCURRENTKEY("Item No.", "Posting Date", "Item Ledger Entry Type", "Entry Type", "Variance Type", "Item Charge No.",
                                         "Location Code", "Variant Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Source Type", "Source No.");

                IF (InvtPostGrpFilter = '') AND (ItemFilter <> '') THEN BEGIN
                    ItemRec.GET(ItemFilter);
                    InvtPostGrpFilter := ItemRec."Inventory Posting Group";
                END;

                InvtPostGrp.RESET;
                IF InvtPostGrpFilter <> '' THEN
                    InvtPostGrp.SETRANGE(Code, InvtPostGrpFilter);
                IF InvtPostGrp.FINDFIRST THEN
                    REPEAT
                        CLEAR(StartingInvoicedValue);
                        CLEAR(StartingExpectedValue);
                        CLEAR(EndingInvoicedValue);
                        CLEAR(EndingExpectedValue);

                        IsEmptyLine := TRUE;
                        Item.SETRANGE("Inventory Posting Group", InvtPostGrp.Code);
                        IF ItemFilter <> '' THEN
                            Item.SETRANGE("No.", ItemFilter);
                        Item.SETRANGE(Type, Item.Type::Inventory);
                        IF Item.FINDFIRST THEN
                            REPEAT
                                FOR i := 1 TO ARRAYLEN(PeriodEndDate) DO BEGIN
                                    CalculateOpeningCost(i);
                                    CalculateRunningPurchaseCost(i);
                                    CalculateRunningOutputCost(i);
                                    CalculateRunningPosAdjCost(i);
                                    CalculateRunningConsumptionCost(i);
                                    CalculateRunningNegAdjCost(i);
                                    CalculateRunningSaleCost(i);
                                    CalculateRunningCapacityCost(i);
                                    CalculateClosingCost(i);
                                    CalActualPurchaseCost(i);
                                    CalActualPosAdjmtCost(i);
                                    CalActualOutputCost(i);
                                    //COSRMValue[i] := OpenRMValue[i] + RMValue[i];
                                    //COSFGValue[i] := OpenFGValue[i] + FGValue[i];
                                    //COSMerchandiseValue[i] := OpenMerchandiseValue[i] + MerchandiseValue[i];
                                    //COSConsSpareValue[i] := OpenConsSpareValue[i] + ConsSpareValue[i];
                                END;
                            UNTIL Item.NEXT = 0;
                    UNTIL InvtPostGrp.NEXT = 0;
            end;

            trigger OnPreDataItem()
            begin
                InitializeVariable();
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
                    field(AgedAsOf; EndingDate)
                    {
                        Caption = 'Aged As Of';
                        ApplicationArea = All;
                    }
                    field(PeriodLength; PeriodLength)
                    {
                        Caption = 'Period Length';
                        Editable = false;
                        ApplicationArea = All;
                    }
                    field(ShowCostAmountActual; ShowCostAmountActual)
                    {
                        Caption = 'Show Cost Amount Actual';
                        Visible = false;
                        ApplicationArea = All;
                    }
                    field(MaterialOverheadPct; MaterialOverheadPct)
                    {
                        Caption = 'Material Overhead %';
                        ApplicationArea = All;
                    }
                    field(InvtPostGrpFilter; InvtPostGrpFilter)
                    {
                        Caption = 'Inventory Posting Group Filter';
                        TableRelation = "Inventory Posting Group";
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
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        EVALUATE(PeriodLength, '1M');
        IF FORMAT(PeriodLength) = ' ' THEN
            EVALUATE(PeriodLength, '1M');
    end;

    trigger OnPreReport()
    begin
        GLSetup.GET;

        CalcDates;
        CreateHeadings;
        /*
        FGText := 'FINISHED';
        RMText := 'RAW MAT';
        CONSText := 'CONS';
        MerchText := 'RESALE';
        SPAREText := 'SPARES';
        */

        FGText := 'FG';
        RMText := 'RM';
        CONSText := 'CONS';
        MerchText := 'TRADING';
        SPAREText := 'SPARES';

    end;

    var
        GLSetup: Record "General Ledger Setup";
        MaterialOverheadPct: Integer;
        HeadingType: Option "Date Interval","Number of Days";
        EndingDate: Date;
        PeriodLength: DateFormula;
        PeriodStartDate: array[12] of Date;
        PeriodEndDate: array[12] of Date;
        InvtPostGrpFilter: Code[20];
        ItemFilter: Code[20];
        HeaderText: array[12] of Text[30];
        InvtPostGrp: Record "Inventory Posting Group";
        Item: Record Item;
        ValueEntry: Record "Value Entry";
        StartDateText: Text[10];
        IsEmptyLine: Boolean;
        StartingInvoicedValue: array[12] of Decimal;
        StartingExpectedValue: array[12] of Decimal;
        EndingInvoicedValue: array[12] of Decimal;
        EndingExpectedValue: array[12] of Decimal;
        PosIncreaseInvoicedValue: array[12] of Decimal;
        PosIncreaseExpectedValue: array[12] of Decimal;
        PosIncreaseInvoicedQty: array[12] of Decimal;
        PosIncreaseExpectedQty: array[12] of Decimal;
        PosRMIncreaseInvoicedValue: array[12] of Decimal;
        PosRMIncreaseExpectedValue: array[12] of Decimal;
        PosRMIncreaseInvoicedQty: array[12] of Decimal;
        PosRMIncreaseExpectedQty: array[12] of Decimal;
        PosCONSIncreaseInvoicedValue: array[12] of Decimal;
        PosCONSIncreaseExpectedValue: array[12] of Decimal;
        PosCONSIncreaseInvoicedQty: array[12] of Decimal;
        PosCONSIncreaseExpectedQty: array[12] of Decimal;
        PosSPAREIncreaseInvoicedValue: array[12] of Decimal;
        PosSPAREIncreaseExpectedValue: array[12] of Decimal;
        PosSPAREIncreaseInvoicedQty: array[12] of Decimal;
        PosSPAREIncreaseExpectedQty: array[12] of Decimal;
        PosFGIncreaseInvoicedValue: array[12] of Decimal;
        PosFGIncreaseExpectedValue: array[12] of Decimal;
        PosFGIncreaseInvoicedQty: array[12] of Decimal;
        PosFGIncreaseExpectedQty: array[12] of Decimal;
        PosMERCHIncreaseInvoicedValue: array[12] of Decimal;
        PosMERCHIncreaseExpectedValue: array[12] of Decimal;
        PosMERCHIncreaseInvoicedQty: array[12] of Decimal;
        PosMERCHIncreaseExpectedQty: array[12] of Decimal;
        OutIncreaseInvoicedValue: array[12] of Decimal;
        OutIncreaseExpectedValue: array[12] of Decimal;
        OutIncreaseInvoicedQty: array[12] of Decimal;
        OutIncreaseExpectedQty: array[12] of Decimal;
        OutRMIncreaseInvoicedValue: array[12] of Decimal;
        OutRMIncreaseExpectedValue: array[12] of Decimal;
        OutRMIncreaseInvoicedQty: array[12] of Decimal;
        OutRMIncreaseExpectedQty: array[12] of Decimal;
        OutCONSIncreaseInvoicedValue: array[12] of Decimal;
        OutCONSIncreaseExpectedValue: array[12] of Decimal;
        OutCONSIncreaseInvoicedQty: array[12] of Decimal;
        OutCONSIncreaseExpectedQty: array[12] of Decimal;
        OutSPAREIncreaseInvoicedValue: array[12] of Decimal;
        OutSPAREIncreaseExpectedValue: array[12] of Decimal;
        OutSPAREIncreaseInvoicedQty: array[12] of Decimal;
        OutSPAREIncreaseExpectedQty: array[12] of Decimal;
        OutFGIncreaseInvoicedValue: array[12] of Decimal;
        OutFGIncreaseExpectedValue: array[12] of Decimal;
        OutFGIncreaseInvoicedQty: array[12] of Decimal;
        OutFGIncreaseExpectedQty: array[12] of Decimal;
        OutMERCHIncreaseInvoicedValue: array[12] of Decimal;
        OutMERCHIncreaseExpectedValue: array[12] of Decimal;
        OutMERCHIncreaseInvoicedQty: array[12] of Decimal;
        OutMERCHIncreaseExpectedQty: array[12] of Decimal;
        PurIncreaseInvoicedValue: array[12] of Decimal;
        PurIncreaseExpectedValue: array[12] of Decimal;
        PurIncreaseInvoicedQty: array[12] of Decimal;
        PurIncreaseExpectedQty: array[12] of Decimal;
        PurRMIncreaseInvoicedValue: array[12] of Decimal;
        PurRMIncreaseExpectedValue: array[12] of Decimal;
        PurRMIncreaseInvoicedQty: array[12] of Decimal;
        PurRMIncreaseExpectedQty: array[12] of Decimal;
        PurCONSIncreaseInvoicedValue: array[12] of Decimal;
        PurCONSIncreaseExpectedValue: array[12] of Decimal;
        PurCONSIncreaseInvoicedQty: array[12] of Decimal;
        PurCONSIncreaseExpectedQty: array[12] of Decimal;
        PurSPAREIncreaseInvoicedValue: array[12] of Decimal;
        PurSPAREIncreaseExpectedValue: array[12] of Decimal;
        PurSPAREIncreaseInvoicedQty: array[12] of Decimal;
        PurSPAREIncreaseExpectedQty: array[12] of Decimal;
        PurFGIncreaseInvoicedValue: array[12] of Decimal;
        PurFGIncreaseExpectedValue: array[12] of Decimal;
        PurFGIncreaseInvoicedQty: array[12] of Decimal;
        PurFGIncreaseExpectedQty: array[12] of Decimal;
        PurMERCHIncreaseInvoicedValue: array[12] of Decimal;
        PurMERCHIncreaseExpectedValue: array[12] of Decimal;
        PurMERCHIncreaseInvoicedQty: array[12] of Decimal;
        PurMERCHIncreaseExpectedQty: array[12] of Decimal;
        NegDecreaseInvoicedValue: array[12] of Decimal;
        NegDecreaseExpectedValue: array[12] of Decimal;
        NegDecreaseInvoicedQty: array[12] of Decimal;
        NegDecreaseExpectedQty: array[12] of Decimal;
        NegRMDecreaseInvoicedValue: array[12] of Decimal;
        NegRMDecreaseExpectedValue: array[12] of Decimal;
        NegRMDecreaseInvoicedQty: array[12] of Decimal;
        NegRMDecreaseExpectedQty: array[12] of Decimal;
        NegCONSDecreaseInvoicedValue: array[12] of Decimal;
        NegCONSDecreaseExpectedValue: array[12] of Decimal;
        NegCONSDecreaseInvoicedQty: array[12] of Decimal;
        NegCONSDecreaseExpectedQty: array[12] of Decimal;
        NegSPAREDecreaseInvoicedValue: array[12] of Decimal;
        NegSPAREDecreaseExpectedValue: array[12] of Decimal;
        NegSPAREDecreaseInvoicedQty: array[12] of Decimal;
        NegSPAREDecreaseExpectedQty: array[12] of Decimal;
        NegFGDecreaseInvoicedValue: array[12] of Decimal;
        NegFGDecreaseExpectedValue: array[12] of Decimal;
        NegFGDecreaseInvoicedQty: array[12] of Decimal;
        NegFGDecreaseExpectedQty: array[12] of Decimal;
        NegMERCHDecreaseInvoicedValue: array[12] of Decimal;
        NegMERCHDecreaseExpectedValue: array[12] of Decimal;
        NegMERCHDecreaseInvoicedQty: array[12] of Decimal;
        NegMERCHDecreaseExpectedQty: array[12] of Decimal;
        ConsDecreaseInvoicedValue: array[12] of Decimal;
        ConsDecreaseExpectedValue: array[12] of Decimal;
        ConsDecreaseInvoicedQty: array[12] of Decimal;
        ConsDecreaseExpectedQty: array[12] of Decimal;
        ConsRMDecreaseInvoicedValue: array[12] of Decimal;
        ConsRMDecreaseExpectedValue: array[12] of Decimal;
        ConsRMDecreaseInvoicedQty: array[12] of Decimal;
        ConsRMDecreaseExpectedQty: array[12] of Decimal;
        ConsCONSDecreaseInvoicedValue: array[12] of Decimal;
        ConsCONSDecreaseExpectedValue: array[12] of Decimal;
        ConsCONSDecreaseInvoicedQty: array[12] of Decimal;
        ConsCONSDecreaseExpectedQty: array[12] of Decimal;
        ConsSPAREDecreaseInvoicedValue: array[12] of Decimal;
        ConsSPAREDecreaseExpectedValue: array[12] of Decimal;
        ConsSPAREDecreaseInvoicedQty: array[12] of Decimal;
        ConsSPAREDecreaseExpectedQty: array[12] of Decimal;
        ConsFGDecreaseInvoicedValue: array[12] of Decimal;
        ConsFGDecreaseExpectedValue: array[12] of Decimal;
        ConsFGDecreaseInvoicedQty: array[12] of Decimal;
        ConsFGDecreaseExpectedQty: array[12] of Decimal;
        ConsMERCHDecreaseInvoicedValue: array[12] of Decimal;
        ConsMERCHDecreaseExpectedValue: array[12] of Decimal;
        ConsMERCHDecreaseInvoicedQty: array[12] of Decimal;
        ConsMERCHDecreaseExpectedQty: array[12] of Decimal;
        SaleDecreaseInvoicedValue: array[12] of Decimal;
        SaleDecreaseExpectedValue: array[12] of Decimal;
        SaleDecreaseInvoicedQty: array[12] of Decimal;
        SaleDecreaseExpectedQty: array[12] of Decimal;
        SaleRMDecreaseInvoicedValue: array[12] of Decimal;
        SaleRMDecreaseExpectedValue: array[12] of Decimal;
        SaleRMDecreaseInvoicedQty: array[12] of Decimal;
        SaleRMDecreaseExpectedQty: array[12] of Decimal;
        SaleCONSDecreaseInvoicedValue: array[12] of Decimal;
        SaleCONSDecreaseExpectedValue: array[12] of Decimal;
        SaleCONSDecreaseInvoicedQty: array[12] of Decimal;
        SaleCONSDecreaseExpectedQty: array[12] of Decimal;
        SaleSPAREDecreaseInvoicedValue: array[12] of Decimal;
        SaleSPAREDecreaseExpectedValue: array[12] of Decimal;
        SaleSPAREDecreaseInvoicedQty: array[12] of Decimal;
        SaleSPAREDecreaseExpectedQty: array[12] of Decimal;
        SaleFGDecreaseInvoicedValue: array[12] of Decimal;
        SaleFGDecreaseExpectedValue: array[12] of Decimal;
        SaleFGDecreaseInvoicedQty: array[12] of Decimal;
        SaleFGDecreaseExpectedQty: array[12] of Decimal;
        SaleMERCHDecreaseInvoicedValue: array[12] of Decimal;
        SaleMERCHDecreaseExpectedValue: array[12] of Decimal;
        SaleMERCHDecreaseInvoicedQty: array[12] of Decimal;
        SaleMERCHDecreaseExpectedQty: array[12] of Decimal;
        CapDecreaseInvoicedValue: array[12] of Decimal;
        CapDecreaseExpectedValue: array[12] of Decimal;
        CapDecreaseInvoicedQty: array[12] of Decimal;
        CapDecreaseExpectedQty: array[12] of Decimal;
        CapRMDecreaseInvoicedValue: array[12] of Decimal;
        CapRMDecreaseExpectedValue: array[12] of Decimal;
        CapRMDecreaseInvoicedQty: array[12] of Decimal;
        CapRMDecreaseExpectedQty: array[12] of Decimal;
        CapCONSDecreaseInvoicedValue: array[12] of Decimal;
        CapCONSDecreaseExpectedValue: array[12] of Decimal;
        CapCONSDecreaseInvoicedQty: array[12] of Decimal;
        CapCONSDecreaseExpectedQty: array[12] of Decimal;
        CapSPAREDecreaseInvoicedValue: array[12] of Decimal;
        CapSPAREDecreaseExpectedValue: array[12] of Decimal;
        CapSPAREDecreaseInvoicedQty: array[12] of Decimal;
        CapSPAREDecreaseExpectedQty: array[12] of Decimal;
        CapFGDecreaseInvoicedValue: array[12] of Decimal;
        CapFGDecreaseExpectedValue: array[12] of Decimal;
        CapFGDecreaseInvoicedQty: array[12] of Decimal;
        CapFGDecreaseExpectedQty: array[12] of Decimal;
        CapMERCHDecreaseInvoicedValue: array[12] of Decimal;
        CapMERCHDecreaseExpectedValue: array[12] of Decimal;
        CapMERCHDecreaseInvoicedQty: array[12] of Decimal;
        CapMERCHDecreaseExpectedQty: array[12] of Decimal;
        TranIncreaseInvoicedValue: array[12] of Decimal;
        TranIncreaseExpectedValue: array[12] of Decimal;
        TranIncreaseInvoicedQty: array[12] of Decimal;
        TranIncreaseExpectedQty: array[12] of Decimal;
        TranDecreaseInvoicedValue: array[12] of Decimal;
        TranDecreaseExpectedValue: array[12] of Decimal;
        TranDecreaseInvoicedQty: array[12] of Decimal;
        TranDecreaseExpectedQty: array[12] of Decimal;
        ShowEntryTypeDetails: Boolean;
        HideItemDetails: Boolean;
        OpenRMValue: array[12] of Decimal;
        OpenFGValue: array[12] of Decimal;
        OpenMerchandiseValue: array[12] of Decimal;
        OpenConsSpareValue: array[12] of Decimal;
        RMValue: array[12] of Decimal;
        FGValue: array[12] of Decimal;
        MerchandiseValue: array[12] of Decimal;
        ConsSpareValue: array[12] of Decimal;
        ClosRMValue: array[12] of Decimal;
        ClosFGValue: array[12] of Decimal;
        ClosMerchandiseValue: array[12] of Decimal;
        ClosConsSpareValue: array[12] of Decimal;
        COSRMValue: array[12] of Decimal;
        COSFGValue: array[12] of Decimal;
        COSMerchandiseValue: array[12] of Decimal;
        COSConsSpareValue: array[12] of Decimal;
        Text000: Label 'Not Due';
        Text001: Label 'Before';
        Text002: Label 'days';
        Text003: Label 'More than';
        Text004: Label 'Aged by %1';
        Text005: Label 'Total for %1';
        Text006: Label 'Aged as of %1';
        Text007: Label 'Aged by %1';
        Text009: Label 'Due Date,Posting Date,Document Date';
        Text010: Label 'The Date Formula %1 cannot be used. Try to restate it. E.g. 1M+CM instead of CM+1M.';
        Text032: Label '-%1', Comment = 'Negating the period length: %1 is the period length';
        AgedAccReceivableCptnLbl: Label 'Aged Accounts Receivable';
        CurrReportPageNoCptnLbl: Label 'Page';
        AllAmtinLCYCptnLbl: Label 'All Amounts in LCY';
        AgedOverdueAmtCptnLbl: Label 'Aged Overdue Amounts';
        CLEEndDateAmtLCYCptnLbl: Label 'Original Amount ';
        CLEEndDateDueDateCptnLbl: Label 'Due Date';
        CLEEndDateDocNoCptnLbl: Label 'Document No.';
        CLEEndDatePstngDateCptnLbl: Label 'Posting Date';
        CLEEndDateDocTypeCptnLbl: Label 'Document Type';
        OriginalAmtCptnLbl: Label 'Currency Code';
        TotalLCYCptnLbl: Label 'Total (LCY)';
        CurrSpecificationCptnLbl: Label 'Currency Specification';
        EnterDateFormulaErr: Label 'Enter a date formula in the Period Length field.';
        EntryTypeValue: Decimal;
        FGText: Code[10];
        RMText: Code[10];
        CONSText: Code[10];
        SPAREText: Code[10];
        MerchText: Code[10];
        ShowCostAmountActual: Boolean;
        ActPurRMIncreaseInvoicedValue: array[12] of Decimal;
        ActPurRMIncreaseExpectedValue: array[12] of Decimal;
        ActPurCONSIncreaseInvoicedValue: array[12] of Decimal;
        ActPurCONSIncreaseExpectedValue: array[12] of Decimal;
        ActPurSPAREIncreaseInvoicedValue: array[12] of Decimal;
        ActPurSPAREIncreaseExpectedValue: array[12] of Decimal;
        ActPurFGIncreaseInvoicedValue: array[12] of Decimal;
        ActPurFGIncreaseExpectedValue: array[12] of Decimal;
        ActPurMERCHIncreaseInvoicedValue: array[12] of Decimal;
        ActPurMERCHIncreaseExpectedValue: array[12] of Decimal;
        ActPosRMIncreaseInvoicedValue: array[12] of Decimal;
        ActPosRMIncreaseExpectedValue: array[12] of Decimal;
        ActPosCONSIncreaseInvoicedValue: array[12] of Decimal;
        ActPosCONSIncreaseExpectedValue: array[12] of Decimal;
        ActPosSPAREIncreaseInvoicedValue: array[12] of Decimal;
        ActPosSPAREIncreaseExpectedValue: array[12] of Decimal;
        ActPosFGIncreaseInvoicedValue: array[12] of Decimal;
        ActPosFGIncreaseExpectedValue: array[12] of Decimal;
        ActPosMERCHIncreaseInvoicedValue: array[12] of Decimal;
        ActPosMERCHIncreaseExpectedValue: array[12] of Decimal;
        ActOutIncreaseInvoicedValue: array[12] of Decimal;
        ActOutIncreaseExpectedValue: array[12] of Decimal;
        ActOutRMIncreaseInvoicedValue: array[12] of Decimal;
        ActOutRMIncreaseExpectedValue: array[12] of Decimal;
        ActOutCONSIncreaseInvoicedValue: array[12] of Decimal;
        ActOutCONSIncreaseExpectedValue: array[12] of Decimal;
        ActOutSPAREIncreaseInvoicedValue: array[12] of Decimal;
        ActOutSPAREIncreaseExpectedValue: array[12] of Decimal;
        ActOutFGIncreaseInvoicedValue: array[12] of Decimal;
        ActOutFGIncreaseExpectedValue: array[12] of Decimal;
        ActOutMERCHIncreaseInvoicedValue: array[12] of Decimal;
        ActOutMERCHIncreaseExpectedValue: array[12] of Decimal;
        ActPosIncreaseInvoicedValue: array[12] of Decimal;
        ActPosIncreaseExpectedValue: array[12] of Decimal;
        ActPurIncreaseInvoicedValue: array[12] of Decimal;
        ActPurIncreaseExpectedValue: array[12] of Decimal;

    local procedure AssignPostedGLAmounts(ValueEntry: Record "Value Entry"; var InvoicedValue: Decimal; var InvoicedQty: Decimal; var ExpectedValue: Decimal; var ExpectedQty: Decimal; Sign: Decimal; var InvoicedValue1: Decimal)
    begin
        IF ShowCostAmountActual THEN BEGIN
            InvoicedValue += (ValueEntry."Cost Amount (Actual)" * Sign);
            InvoicedValue1 := 0;
            InvoicedValue1 := (ValueEntry."Cost Amount (Actual)" * Sign);
            // + (ValueEntry."Expected Cost Posted to G/L" * Sign));
            //InvoicedQty += ValueEntry."Invoiced Quantity" * Sign;
            //ExpectedValue += ValueEntry."Expected Cost Posted to G/L" * Sign;
            //ExpectedQty += ValueEntry."Item Ledger Entry Quantity" * Sign;
        END ELSE BEGIN
            InvoicedValue += (ValueEntry."Cost Posted to G/L" * Sign);
            InvoicedValue1 := 0;
            InvoicedValue1 := (ValueEntry."Cost Posted to G/L" * Sign);
            // + (ValueEntry."Expected Cost Posted to G/L" * Sign));
            //InvoicedQty += ValueEntry."Invoiced Quantity" * Sign;
            //ExpectedValue += ValueEntry."Expected Cost Posted to G/L" * Sign;
            //ExpectedQty += ValueEntry."Item Ledger Entry Quantity" * Sign;
        END;
    end;

    local procedure CalcDates()
    var
        i: Integer;
        PeriodLength2: DateFormula;
    begin
        IF NOT EVALUATE(PeriodLength2, STRSUBSTNO(Text032, PeriodLength)) THEN
            ERROR(EnterDateFormulaErr);

        PeriodEndDate[1] := EndingDate;
        PeriodStartDate[1] := CALCDATE(PeriodLength2, EndingDate + 1);

        FOR i := 2 TO ARRAYLEN(PeriodEndDate) DO BEGIN
            PeriodEndDate[i] := PeriodStartDate[i - 1] - 1;
            PeriodStartDate[i] := CALCDATE(PeriodLength2, PeriodEndDate[i] + 1);
        END;

        //PeriodStartDate[i] := 0D;

        FOR i := 1 TO ARRAYLEN(PeriodEndDate) DO
            IF PeriodEndDate[i] < PeriodStartDate[i] THEN
                ERROR(Text010, PeriodLength);
    end;

    local procedure CreateHeadings()
    var
        i: Integer;
    begin
        i := 1;
        WHILE i < ARRAYLEN(PeriodEndDate) DO BEGIN
            IF HeadingType = HeadingType::"Date Interval" THEN
                HeaderText[i] := STRSUBSTNO('%1\..%2', PeriodStartDate[i], PeriodEndDate[i])
            ELSE
                HeaderText[i] :=
                  STRSUBSTNO('%1 - %2 %3', EndingDate - PeriodEndDate[i] + 1, EndingDate - PeriodStartDate[i] + 1, Text002);
            i := i + 1;
        END;

        IF HeadingType = HeadingType::"Date Interval" THEN
            //HeaderText[i] := STRSUBSTNO('%1 %2',Text001,PeriodStartDate[i - 1])
            HeaderText[i] := STRSUBSTNO('%1\..%2', PeriodStartDate[i], PeriodEndDate[i])
        ELSE
            HeaderText[i] := STRSUBSTNO('%1 \%2 %3', Text003, EndingDate - PeriodStartDate[i - 1] + 1, Text002);
    end;

    [Scope('Cloud')]
    procedure InitializeRequest(NewEndingDate: Date; NewPeriodLength: DateFormula; NewHeadingType: Option)
    begin
        EndingDate := NewEndingDate;
        PeriodLength := NewPeriodLength;
        HeadingType := NewHeadingType;
    end;

    local procedure InitializeVariable()
    begin
        CLEAR(PosIncreaseInvoicedValue);
        CLEAR(PosIncreaseExpectedValue);
        CLEAR(PosIncreaseInvoicedQty);
        CLEAR(PosIncreaseExpectedQty);
        CLEAR(NegDecreaseInvoicedValue);
        CLEAR(NegDecreaseExpectedValue);
        CLEAR(NegDecreaseInvoicedQty);
        CLEAR(NegDecreaseExpectedQty);

        CLEAR(PurIncreaseInvoicedValue);
        CLEAR(PurIncreaseExpectedValue);
        CLEAR(PurIncreaseInvoicedQty);
        CLEAR(PurIncreaseExpectedQty);
        CLEAR(SaleDecreaseInvoicedValue);
        CLEAR(SaleDecreaseExpectedValue);
        CLEAR(SaleDecreaseInvoicedQty);
        CLEAR(SaleDecreaseExpectedQty);

        CLEAR(OutIncreaseInvoicedValue);
        CLEAR(OutIncreaseExpectedValue);
        CLEAR(OutIncreaseInvoicedQty);
        CLEAR(OutIncreaseExpectedQty);
        CLEAR(ConsDecreaseInvoicedValue);
        CLEAR(ConsDecreaseExpectedValue);
        CLEAR(ConsDecreaseInvoicedQty);
        CLEAR(ConsDecreaseExpectedQty);
        CLEAR(CapDecreaseInvoicedValue);
        CLEAR(CapDecreaseExpectedValue);
        CLEAR(CapDecreaseInvoicedQty);
        CLEAR(CapDecreaseExpectedQty);
        CLEAR(TranIncreaseInvoicedValue);
        CLEAR(TranIncreaseInvoicedQty);
        CLEAR(TranIncreaseExpectedValue);
        CLEAR(TranIncreaseExpectedQty);
        CLEAR(TranDecreaseInvoicedValue);
        CLEAR(TranDecreaseInvoicedQty);
        CLEAR(TranDecreaseExpectedValue);
        CLEAR(TranDecreaseExpectedQty);
        CLEAR(OpenRMValue);
        CLEAR(OpenFGValue);
        CLEAR(OpenMerchandiseValue);
        CLEAR(OpenConsSpareValue);
        CLEAR(RMValue);
        CLEAR(FGValue);
        CLEAR(MerchandiseValue);
        CLEAR(ConsSpareValue);
        CLEAR(ClosRMValue);
        CLEAR(ClosFGValue);
        CLEAR(ClosMerchandiseValue);
        CLEAR(ClosConsSpareValue);

        CLEAR(ActPosIncreaseInvoicedValue);
        CLEAR(ActPosIncreaseExpectedValue);
        CLEAR(ActPurIncreaseInvoicedValue);
        CLEAR(ActPurIncreaseExpectedValue);
        CLEAR(ActOutIncreaseInvoicedValue);
        CLEAR(ActOutIncreaseExpectedValue);
    end;

    local procedure CalculateOpeningCost(i: Integer)
    begin
        //Opening
        ValueEntry.SETRANGE("Item No.", Item."No.");
        //IF i = 12 THEN
        ValueEntry.SETFILTER("Posting Date", '<%1', PeriodStartDate[i]);
        //ELSE
        //ValueEntry.SETRANGE("Posting Date",CALCDATE('<-1M>',PeriodStartDate[i]),CALCDATE('<-1M>',PeriodEndDate[i]));
        ValueEntry.SETRANGE("Item Ledger Entry Type");
        ValueEntry.SETRANGE("Entry Type");
        ValueEntry.SETRANGE("Item Charge No.");
        ValueEntry.SETRANGE("Source Type");
        ValueEntry.SETRANGE("Source No.");
        ValueEntry.CALCSUMS("Cost Posted to G/L", "Expected Cost Posted to G/L");
        AssignPostedGLAmounts(ValueEntry, StartingInvoicedValue[i], PurIncreaseInvoicedQty[i], StartingExpectedValue[i], PurIncreaseExpectedQty[i], 1, EntryTypeValue);
    end;

    local procedure CalculateRunningPurchaseCost(i: Integer)
    begin
        //Running
        //Purchase
        ValueEntry.SETRANGE("Item No.", Item."No.");
        ValueEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodEndDate[i]);
        ValueEntry.SETFILTER(
          "Item Ledger Entry Type", '%1',
          ValueEntry."Item Ledger Entry Type"::Purchase);
        ValueEntry.SETRANGE("Entry Type");
        ValueEntry.SETRANGE("Item Charge No.");
        ValueEntry.SETRANGE("Source Type");
        ValueEntry.SETRANGE("Source No.");
        ValueEntry.CALCSUMS("Cost Posted to G/L", "Expected Cost Posted to G/L");
        AssignPostedGLAmounts(ValueEntry, PurIncreaseInvoicedValue[i], PurIncreaseInvoicedQty[i], PurIncreaseExpectedValue[i], PurIncreaseExpectedQty[i], 1, EntryTypeValue);

        //Purchase Raw Material
        IF InvtPostGrp.Code IN [RMText] THEN BEGIN
            PurRMIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Purchase FG Material
        IF InvtPostGrp.Code IN [FGText] THEN BEGIN
            PurFGIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Purchase CONS Material
        IF InvtPostGrp.Code IN [CONSText] THEN BEGIN
            PurCONSIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Purchase SPARE Material
        IF InvtPostGrp.Code IN [SPAREText] THEN BEGIN
            PurSPAREIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Purchase Merchandise Material
        IF InvtPostGrp.Code IN [MerchText] THEN BEGIN
            PurMERCHIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
    end;

    local procedure CalculateRunningPosAdjCost(i: Integer)
    begin
        //Positive Adjustment
        ValueEntry.SETRANGE("Item No.", Item."No.");
        ValueEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodEndDate[i]);
        ValueEntry.SETFILTER(
          "Item Ledger Entry Type", '%1',
          ValueEntry."Item Ledger Entry Type"::"Positive Adjmt.");
        ValueEntry.SETRANGE("Entry Type");
        ValueEntry.SETRANGE("Item Charge No.");
        ValueEntry.SETRANGE("Source Type");
        ValueEntry.SETRANGE("Source No.");
        ValueEntry.CALCSUMS("Cost Posted to G/L", "Expected Cost Posted to G/L");
        AssignPostedGLAmounts(ValueEntry, PosIncreaseInvoicedValue[i], PosIncreaseInvoicedQty[i], PosIncreaseExpectedValue[i], PosIncreaseExpectedQty[i], 1, EntryTypeValue);
        //Positive Adjustment Raw Material
        IF InvtPostGrp.Code IN [RMText] THEN BEGIN
            PosRMIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Positive Adjustment FG Material
        IF InvtPostGrp.Code IN [FGText] THEN BEGIN
            PosFGIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Positive Adjustment CONS Material
        IF InvtPostGrp.Code IN [CONSText] THEN BEGIN
            PosCONSIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Positive Adjustment SPARE Material
        IF InvtPostGrp.Code IN [SPAREText] THEN BEGIN
            PosSPAREIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Positive Adjustment Merchandise Material
        IF InvtPostGrp.Code IN [MerchText] THEN BEGIN
            PosMERCHIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
    end;

    local procedure CalculateRunningOutputCost(i: Integer)
    begin
        //Production
        ValueEntry.SETRANGE("Item No.", Item."No.");
        ValueEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodEndDate[i]);
        ValueEntry.SETFILTER(
          "Item Ledger Entry Type", '%1',
          ValueEntry."Item Ledger Entry Type"::Output);
        ValueEntry.SETRANGE("Entry Type");
        ValueEntry.SETRANGE("Item Charge No.");
        ValueEntry.SETRANGE("Source Type");
        ValueEntry.SETRANGE("Source No.");
        ValueEntry.CALCSUMS("Cost Posted to G/L", "Expected Cost Posted to G/L");
        AssignPostedGLAmounts(ValueEntry, OutIncreaseInvoicedValue[i], OutIncreaseInvoicedQty[i], OutIncreaseExpectedValue[i], OutIncreaseExpectedQty[i], 1, EntryTypeValue);
        //Production Raw Material
        IF InvtPostGrp.Code IN [RMText] THEN BEGIN
            OutRMIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Production FG Material
        IF InvtPostGrp.Code IN [FGText] THEN BEGIN
            OutFGIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Production CONS Material
        IF InvtPostGrp.Code IN [CONSText] THEN BEGIN
            OutCONSIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Production SPARE Material
        IF InvtPostGrp.Code IN [SPAREText] THEN BEGIN
            OutSPAREIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Production Merchandise Material
        IF InvtPostGrp.Code IN [MerchText] THEN BEGIN
            OutMERCHIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
    end;

    local procedure CalculateRunningConsumptionCost(i: Integer)
    begin
        //Consumption
        ValueEntry.SETRANGE("Item No.", Item."No.");
        ValueEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodEndDate[i]);
        ValueEntry.SETFILTER(
          "Item Ledger Entry Type", '%1',
          ValueEntry."Item Ledger Entry Type"::Consumption);
        ValueEntry.SETRANGE("Entry Type");
        ValueEntry.SETRANGE("Item Charge No.");
        ValueEntry.SETRANGE("Source Type");
        ValueEntry.SETRANGE("Source No.");
        ValueEntry.CALCSUMS("Cost Posted to G/L", "Expected Cost Posted to G/L");
        AssignPostedGLAmounts(ValueEntry, ConsDecreaseInvoicedValue[i], ConsDecreaseInvoicedQty[i], ConsDecreaseExpectedValue[i], ConsDecreaseExpectedQty[i], 1, EntryTypeValue);
        //Consumption Raw Material
        IF InvtPostGrp.Code IN [RMText] THEN BEGIN
            ConsRMDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Consumption FG Material
        IF InvtPostGrp.Code IN [FGText] THEN BEGIN
            ConsFGDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Consumption CONS Material
        IF InvtPostGrp.Code IN [CONSText] THEN BEGIN
            ConsCONSDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Consumption SPARE Material
        IF InvtPostGrp.Code IN [SPAREText] THEN BEGIN
            ConsSPAREDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Consumption Merchandise Material
        IF InvtPostGrp.Code IN [MerchText] THEN BEGIN
            ConsMERCHDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
    end;

    local procedure CalculateRunningNegAdjCost(i: Integer)
    begin
        //Negative Adjustment
        ValueEntry.SETRANGE("Item No.", Item."No.");
        ValueEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodEndDate[i]);
        ValueEntry.SETFILTER(
          "Item Ledger Entry Type", '%1',
          ValueEntry."Item Ledger Entry Type"::"Negative Adjmt.");
        ValueEntry.SETRANGE("Entry Type");
        ValueEntry.SETRANGE("Item Charge No.");
        ValueEntry.SETRANGE("Source Type");
        ValueEntry.SETRANGE("Source No.");
        ValueEntry.CALCSUMS("Cost Posted to G/L", "Expected Cost Posted to G/L");
        AssignPostedGLAmounts(ValueEntry, NegDecreaseInvoicedValue[i], NegDecreaseInvoicedQty[i], NegDecreaseExpectedValue[i], NegDecreaseExpectedQty[i], 1, EntryTypeValue);
        //Negative Adjustment Raw Material
        IF InvtPostGrp.Code IN [RMText] THEN BEGIN
            NegRMDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Negative Adjustment FG Material
        IF InvtPostGrp.Code IN [FGText] THEN BEGIN
            NegFGDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Negative Adjustment CONS Material
        IF InvtPostGrp.Code IN [CONSText] THEN BEGIN
            NegCONSDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Negative Adjustment SPARE Material
        IF InvtPostGrp.Code IN [SPAREText] THEN BEGIN
            NegSPAREDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Negative Adjustment Merchandise Material
        IF InvtPostGrp.Code IN [MerchText] THEN BEGIN
            NegMERCHDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
    end;

    local procedure CalculateRunningSaleCost(i: Integer)
    begin
        //Sale
        ValueEntry.SETRANGE("Item No.", Item."No.");
        ValueEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodEndDate[i]);
        ValueEntry.SETFILTER(
          "Item Ledger Entry Type", '%1',
          ValueEntry."Item Ledger Entry Type"::Sale);
        ValueEntry.SETRANGE("Entry Type");
        ValueEntry.SETRANGE("Item Charge No.");
        ValueEntry.SETRANGE("Source Type");
        ValueEntry.SETRANGE("Source No.");
        ValueEntry.CALCSUMS("Cost Posted to G/L", "Expected Cost Posted to G/L");
        AssignPostedGLAmounts(ValueEntry, SaleDecreaseInvoicedValue[i], SaleDecreaseInvoicedQty[i], SaleDecreaseExpectedValue[i], SaleDecreaseExpectedQty[i], 1, EntryTypeValue);
        //Sale Raw Material
        IF InvtPostGrp.Code IN [RMText] THEN BEGIN
            SaleRMDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Sale FG Material
        IF InvtPostGrp.Code IN [FGText] THEN BEGIN
            SaleFGDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Sale CONS Material
        IF InvtPostGrp.Code IN [CONSText] THEN BEGIN
            SaleCONSDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Sale SPARE Material
        IF InvtPostGrp.Code IN [SPAREText] THEN BEGIN
            SaleSPAREDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Sale Merchandise Material
        IF InvtPostGrp.Code IN [MerchText] THEN BEGIN
            SaleMERCHDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
    end;

    local procedure CalculateRunningCapacityCost(i: Integer)
    begin
        //Capacity
        ValueEntry.SETRANGE("Item No.", '');
        ValueEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodEndDate[i]);
        ValueEntry.SETFILTER(
          "Item Ledger Entry Type", '%1',
          ValueEntry."Item Ledger Entry Type"::" ");
        ValueEntry.SETRANGE("Entry Type");
        ValueEntry.SETRANGE("Item Charge No.");
        ValueEntry.SETRANGE("Source Type", ValueEntry."Source Type"::Item);
        ValueEntry.SETRANGE("Source No.", Item."No.");
        ValueEntry.CALCSUMS("Cost Posted to G/L", "Expected Cost Posted to G/L");
        AssignPostedGLAmounts(ValueEntry, CapDecreaseInvoicedValue[i], CapDecreaseInvoicedQty[i], CapDecreaseExpectedValue[i], CapDecreaseExpectedQty[i], 1, EntryTypeValue);
        //Capacity Raw Material
        IF InvtPostGrp.Code IN [RMText] THEN BEGIN
            CapRMDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Capacity FG Material
        IF InvtPostGrp.Code IN [FGText] THEN BEGIN
            CapFGDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Capacity CONS Material
        IF InvtPostGrp.Code IN [CONSText] THEN BEGIN
            CapCONSDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Capacity SPARE Material
        IF InvtPostGrp.Code IN [SPAREText] THEN BEGIN
            CapSPAREDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Capacity Merchandise Material
        IF InvtPostGrp.Code IN [MerchText] THEN BEGIN
            CapMERCHDecreaseInvoicedValue[i] += EntryTypeValue;
        END;
    end;

    local procedure CalculateClosingCost(i: Integer)
    begin
        //Closing
        ValueEntry.SETRANGE("Item No.", Item."No.");
        ValueEntry.SETFILTER("Posting Date", '<=%1', PeriodEndDate[i]);
        ValueEntry.SETRANGE("Item Ledger Entry Type");
        ValueEntry.SETRANGE("Entry Type");
        ValueEntry.SETRANGE("Item Charge No.");
        ValueEntry.SETRANGE("Source Type");
        ValueEntry.SETRANGE("Source No.");
        ValueEntry.CALCSUMS("Cost Posted to G/L", "Expected Cost Posted to G/L");
        AssignPostedGLAmounts(ValueEntry, EndingInvoicedValue[i], PurIncreaseInvoicedQty[i], EndingExpectedValue[i], PurIncreaseExpectedQty[i], 1, EntryTypeValue);

        //Raw Material
        IF InvtPostGrp.Code IN [RMText] THEN BEGIN
            OpenRMValue[i] := StartingInvoicedValue[i] + StartingExpectedValue[i];
            RMValue[i] := (TranIncreaseInvoicedValue[i] + PurIncreaseInvoicedValue[i] + PosIncreaseInvoicedValue[i] + OutIncreaseInvoicedValue[i]);
            ClosRMValue[i] := EndingInvoicedValue[i] + EndingExpectedValue[i];
        END;

        //Merchandise
        IF InvtPostGrp.Code IN [MerchText] THEN BEGIN
            OpenMerchandiseValue[i] := StartingInvoicedValue[i] + StartingExpectedValue[i];
            MerchandiseValue[i] += (TranIncreaseInvoicedValue[i] + PurIncreaseInvoicedValue[i] + PosIncreaseInvoicedValue[i] + OutIncreaseInvoicedValue[i]);
            ClosMerchandiseValue[i] := EndingInvoicedValue[i] + EndingExpectedValue[i];
        END;

        //Finished Goods
        IF InvtPostGrp.Code IN [FGText] THEN BEGIN
            OpenFGValue[i] := StartingInvoicedValue[i] + StartingExpectedValue[i];
            FGValue[i] += (TranIncreaseInvoicedValue[i] + PurIncreaseInvoicedValue[i] + PosIncreaseInvoicedValue[i] + OutIncreaseInvoicedValue[i]);
            ClosFGValue[i] := EndingInvoicedValue[i] + EndingExpectedValue[i];
        END;

        //Consumable & Spares
        IF InvtPostGrp.Code IN [CONSText, SPAREText] THEN BEGIN
            OpenConsSpareValue[i] := StartingInvoicedValue[i] + StartingExpectedValue[i];
            ConsSpareValue[i] += (TranIncreaseInvoicedValue[i] + PurIncreaseInvoicedValue[i] + PosIncreaseInvoicedValue[i] + OutIncreaseInvoicedValue[i]);
            ClosConsSpareValue[i] := EndingInvoicedValue[i] + EndingExpectedValue[i];
        END;
    end;

    local procedure CalActualPurchaseCost(i: Integer)
    begin
        //Actual Purchase
        ValueEntry.SETRANGE("Item No.", Item."No.");
        ValueEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodEndDate[i]);
        ValueEntry.SETFILTER(
          "Item Ledger Entry Type", '%1',
          ValueEntry."Item Ledger Entry Type"::Purchase);
        ValueEntry.SETFILTER("Entry Type", '<>%1', ValueEntry."Entry Type"::Variance);
        ValueEntry.SETRANGE("Item Charge No.", '');
        ValueEntry.SETRANGE("Source Type");
        ValueEntry.SETRANGE("Source No.");
        ValueEntry.CALCSUMS("Cost Posted to G/L", "Expected Cost Posted to G/L");
        AssignPostedGLAmounts(ValueEntry, ActPurIncreaseInvoicedValue[i], PurIncreaseInvoicedQty[i],
                                 ActPurIncreaseExpectedValue[i], PurIncreaseExpectedQty[i], 1, EntryTypeValue);

        //Purchase Raw Material
        IF InvtPostGrp.Code IN [RMText] THEN BEGIN
            ActPurRMIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Purchase FG Material
        IF InvtPostGrp.Code IN [FGText] THEN BEGIN
            ActPurFGIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Purchase CONS Material
        IF InvtPostGrp.Code IN [CONSText] THEN BEGIN
            ActPurCONSIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Purchase SPARE Material
        IF InvtPostGrp.Code IN [SPAREText] THEN BEGIN
            ActPurSPAREIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Purchase Merchandise Material
        IF InvtPostGrp.Code IN [MerchText] THEN BEGIN
            ActPurMERCHIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
    end;

    local procedure CalActualPosAdjmtCost(i: Integer)
    begin
        //Actual Positive Adjustment
        ValueEntry.SETRANGE("Item No.", Item."No.");
        ValueEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodEndDate[i]);
        ValueEntry.SETFILTER(
          "Item Ledger Entry Type", '%1',
          ValueEntry."Item Ledger Entry Type"::"Positive Adjmt.");
        ValueEntry.SETFILTER("Entry Type", '<>%1', ValueEntry."Entry Type"::Variance);
        ValueEntry.SETRANGE("Item Charge No.", '');
        ValueEntry.SETRANGE("Source Type");
        ValueEntry.SETRANGE("Source No.");
        ValueEntry.CALCSUMS("Cost Posted to G/L", "Expected Cost Posted to G/L");
        AssignPostedGLAmounts(ValueEntry, ActPosIncreaseInvoicedValue[i], PosIncreaseInvoicedQty[i],
                                 ActPosIncreaseExpectedValue[i], PosIncreaseExpectedQty[i], 1, EntryTypeValue);

        //Positive Adjustment Raw Material
        IF InvtPostGrp.Code IN [RMText] THEN BEGIN
            ActPosRMIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Positive Adjustment FG Material
        IF InvtPostGrp.Code IN [FGText] THEN BEGIN
            ActPosFGIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Positive Adjustment CONS Material
        IF InvtPostGrp.Code IN [CONSText] THEN BEGIN
            ActPosCONSIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Positive Adjustment SPARE Material
        IF InvtPostGrp.Code IN [SPAREText] THEN BEGIN
            ActPosSPAREIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Positive Adjustment Merchandise Material
        IF InvtPostGrp.Code IN [MerchText] THEN BEGIN
            ActPosMERCHIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
    end;

    local procedure CalActualOutputCost(i: Integer)
    begin
        //Actual Production
        ValueEntry.SETRANGE("Item No.", Item."No.");
        ValueEntry.SETRANGE("Posting Date", PeriodStartDate[i], PeriodEndDate[i]);
        ValueEntry.SETFILTER(
          "Item Ledger Entry Type", '%1',
          ValueEntry."Item Ledger Entry Type"::"Positive Adjmt.");
        ValueEntry.SETRANGE("Entry Type");
        ValueEntry.SETRANGE("Item Charge No.");
        ValueEntry.SETRANGE("Source Type");
        ValueEntry.SETRANGE("Source No.");
        ValueEntry.CALCSUMS("Cost Posted to G/L", "Expected Cost Posted to G/L");
        AssignPostedGLAmounts(ValueEntry, ActOutIncreaseInvoicedValue[i], OutIncreaseInvoicedQty[i],
                                 ActOutIncreaseExpectedValue[i], OutIncreaseExpectedQty[i], 1, EntryTypeValue);

        //Production Raw Material
        IF InvtPostGrp.Code IN [RMText] THEN BEGIN
            ActOutRMIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Production FG Material
        IF InvtPostGrp.Code IN [FGText] THEN BEGIN
            ActOutFGIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Production CONS Material
        IF InvtPostGrp.Code IN [CONSText] THEN BEGIN
            ActOutCONSIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Production SPARE Material
        IF InvtPostGrp.Code IN [SPAREText] THEN BEGIN
            ActOutSPAREIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
        //Production Merchandise Material
        IF InvtPostGrp.Code IN [MerchText] THEN BEGIN
            ActOutMERCHIncreaseInvoicedValue[i] += EntryTypeValue;
        END;
    end;
}

