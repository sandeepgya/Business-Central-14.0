pageextension 50419 "SalesStatisticsExt" extends "Sales Statistics"//160
{
    // PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
    //   <COD> Code added on OnaAftergetrecord
    layout
    {
        modify(InvDiscountAmount)
        {
            Editable = InvoiceEditable;
        }
        modify(TotalAmount1)
        {
            Editable = InvoiceEditable;
        }
        modify("TotalSalesLineLCY.""Unit Cost (LCY)""")
        {
            Visible = ShowCostInfo;
        }
        modify(TotalAdjCostLCY)
        {
            Visible = ShowCostInfo;
        }
        modify("TotalAdjCostLCY - TotalSalesLineLCY.""Unit Cost (LCY)""")
        {
            Visible = ShowCostInfo;
        }
        modify("TotalSalesLineLCY.Amount")
        {
            Visible = ShowSalesInfo;
        }
        modify(ProfitLCY)
        {
            Visible = ShowProfitInfo;
        }
        modify(AdjProfitLCY)
        {
            Visible = ShowProfitInfo;
        }
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
        InvoiceEditable: Boolean;
        ShowCostInfo: Boolean;
        ShowSalesInfo: Boolean;
        ShowPurchInfo: Boolean;
        ShowProfitInfo: Boolean;
        ManagementEmployee: Record "Management Employee";


    //Unsupported feature: Code Insertion on "OnAfterGetCurrRecord".

    //trigger OnAfterGetCurrRecord()
    //begin
    /*
    //>>PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
    IF (Status = Status::Released) OR (Status = Status::"Pending Approval") THEN
      InvoiceEditable := FALSE
    ELSE
      InvoiceEditable := TRUE
    //<<PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
    */
    //end;


    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SalesSetup.GET;
    CALCFIELDS("Price Inclusive of Taxes");
    IF NOT "Price Inclusive of Taxes" THEN
    #4..9
    CurrPage.EDITABLE :=
      AllowVATDifference OR AllowInvDisc;
    SetVATSpecification;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..12

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

    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin
        //>>PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
        IF (Rec.Status = Rec.Status::Released) OR (Rec.Status = Rec.Status::"Pending Approval") THEN
            InvoiceEditable := FALSE
        ELSE
            InvoiceEditable := TRUE
        //<<PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
    end;
}

