pageextension 50417 "CustomerStatisticsExt" extends "Customer Statistics"//151
{
    layout
    {
        modify("CustSalesLCY[1]")
        {
            Visible = ShowSalesInfo;
        }
        // modify("CustSalesLCY[1] - CustProfit[1]")
        // {
        //     Visible = ShowCostInfo;
        // }
        // modify("CustProfit[1]")
        // {
        //     Visible = ShowProfitInfo;
        // } //OA.AS Commented
        modify("ProfitPct[1]")
        {
            Visible = ShowProfitInfo;
        }
        // modify("CustSalesLCY[1] - CustProfit[1] - AdjmtCostLCY[1]")
        // {
        //     Visible = ShowCostInfo;
        // }
        // modify("AdjCustProfit[1]")
        // {
        //     Visible = ShowProfitInfo;
        // } //OA.AS Commented
        modify("AdjProfitPct[1]")
        {
            Visible = ShowProfitInfo;
        }
        // modify("-AdjmtCostLCY[1]")
        // {
        //     Visible = ShowCostInfo;
        // } //OA.AS Commented
        modify("CustSalesLCY[2] - CustProfit[2]")
        {
            Visible = ShowCostInfo;
        }
        modify("CustProfit[2]")
        {
            Visible = ShowProfitInfo;
        }
        modify("ProfitPct[2]")
        {
            Visible = ShowProfitInfo;
        }
        modify("CustSalesLCY[2] - CustProfit[2] - AdjmtCostLCY[2]")
        {
            Visible = ShowCostInfo;
        }
        modify("AdjCustProfit[2]")
        {
            Visible = ShowProfitInfo;
        }
        modify("AdjProfitPct[2]")
        {
            Visible = ShowProfitInfo;
        }
        modify("-AdjmtCostLCY[2]")
        {
            Visible = ShowCostInfo;
        }
        modify("CustSalesLCY[3]")
        {
            Visible = ShowSalesInfo;
        }
        modify("CustSalesLCY[3] - CustProfit[3]")
        {
            Visible = ShowCostInfo;
        }
        modify("CustProfit[3]")
        {
            Visible = ShowProfitInfo;
        }
        modify("ProfitPct[3]")
        {
            Visible = ShowProfitInfo;
        }
        modify("CustSalesLCY[3] - CustProfit[3] - AdjmtCostLCY[3]")
        {
            Visible = ShowCostInfo;
        }
        modify("AdjCustProfit[3]")
        {
            Visible = ShowProfitInfo;
        }
        modify("AdjProfitPct[3]")
        {
            Visible = ShowProfitInfo;
        }
        modify("-AdjmtCostLCY[3]")
        {
            Visible = ShowCostInfo;
        }
        modify("CustSalesLCY[4]")
        {
            Visible = ShowSalesInfo;
        }
        modify("CustSalesLCY[4] - CustProfit[4]")
        {
            Visible = ShowCostInfo;
        }
        modify("CustProfit[4]")
        {
            Visible = ShowProfitInfo;
        }
        modify("ProfitPct[4]")
        {
            Visible = ShowProfitInfo;
        }
        modify("CustSalesLCY[4] - CustProfit[4] - AdjmtCostLCY[4]")
        {
            Visible = ShowCostInfo;
        }
        modify("AdjCustProfit[4]")
        {
            Visible = ShowProfitInfo;
        }
        modify("AdjProfitPct[4]")
        {
            Visible = ShowProfitInfo;
        }
        modify("-AdjmtCostLCY[4]")
        {
            Visible = ShowCostInfo;
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

