pageextension 50484 "ItemInvoicingFactBoxExt" extends "Item Invoicing FactBox"//9089
{
    layout
    {
        modify("Standard Cost")
        {
            Visible = ShowCostInfo;
        }
        modify("Unit Cost")
        {
            Visible = ShowCostInfo;
        }
        modify("Overhead Rate")
        {
            Visible = ShowOverHeadRate;
        }
        modify("Indirect Cost %")
        {
            Visible = ShowCostInfo;
        }
        modify("Last Direct Cost")
        {
            Visible = ShowCostInfo;
        }
        modify("Profit %")
        {
            Visible = ShowProfitInfo;
        }
        modify("Unit Price")
        {
            Visible = ShowItemUnitPrice;
        }
    }
    var
        ShowCostInfo: Boolean;
        ShowProfitInfo: Boolean;
        ManagementEmployee: Record "Management Employee";
        ShowItemUnitPrice: Boolean;
        ShowOverHeadRate: Boolean;


    //Unsupported feature: Code Insertion on "OnOpenPage".

    //trigger OnOpenPage()
    //begin
    /*
    ShowCostInfo:=ManagementEmployee.ShowCost(USERID);
    ShowProfitInfo:=ManagementEmployee.ShowProfitInfo(USERID);
    ShowItemUnitPrice:=ManagementEmployee.ShowItemUnitPrice(USERID);
    ShowOverHeadRate:=ManagementEmployee.ShowOverHeadRate(USERID);
    */
    //end;
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        ShowCostInfo := ManagementEmployee.ShowCost(USERID);
        ShowProfitInfo := ManagementEmployee.ShowProfitInfo(USERID);
        ShowItemUnitPrice := ManagementEmployee.ShowItemUnitPrice(USERID);
        ShowOverHeadRate := ManagementEmployee.ShowOverHeadRate(USERID);
    end;
}

