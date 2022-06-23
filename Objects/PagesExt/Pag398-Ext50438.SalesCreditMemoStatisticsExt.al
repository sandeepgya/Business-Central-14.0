pageextension 50438 "SalesCreditMemoStatisticsExt" extends "Sales Credit Memo Statistics"//398
{
    layout
    {
        modify(CostLCY)
        {
            Visible = ShowCostInfo;
        }
        // modify(TotalAdjCostLCY)
        // {
        //     Visible = ShowCostInfo;
        // }
        modify("TotalAdjCostLCY - CostLCY")
        {
            Visible = ShowCostInfo;
        }
        modify(AmountLCY)
        {
            Visible = ShowSalesInfo;
        }
        modify(ProfitLCY)
        {
            Visible = ShowProfitInfo;
        }
        // modify(AdjProfitLCY)
        // {
        //     Visible = ShowProfitInfo;
        // }
        modify(ProfitPct)
        {
            Visible = ShowProfitInfo;
        }
        modify(AdjProfitPct)
        {
            Visible = ShowProfitInfo;
        }
    }
    var
        ShowCostInfo: Boolean;
        ShowSalesInfo: Boolean;
        ShowPurchInfo: Boolean;
        ShowProfitInfo: Boolean;
        ManagementEmployee: Record "Management Employee";


    //Unsupported feature: Code Insertion on "OnOpenPage".

    //trigger OnOpenPage()
    //begin
    /*
    ShowCostInfo:=ManagementEmployee.ShowCost(USERID);
    ShowSalesInfo:=ManagementEmployee.ShowSalesInfo(USERID);
    ShowPurchInfo:=ManagementEmployee.ShowPurchInfo(USERID);
    ShowProfitInfo:=ManagementEmployee.ShowProfitInfo(USERID);
    */
    //end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        ShowCostInfo := ManagementEmployee.ShowCost(USERID);
        ShowSalesInfo := ManagementEmployee.ShowSalesInfo(USERID);
        ShowPurchInfo := ManagementEmployee.ShowPurchInfo(USERID);
        ShowProfitInfo := ManagementEmployee.ShowProfitInfo(USERID);
    end;
}

