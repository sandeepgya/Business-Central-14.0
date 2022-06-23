pageextension 50469 "ValueEntriesExt" extends "Value Entries"//5802
{
    layout
    {
        modify("Sales Amount (Expected)")
        {
            Visible = ShowSalesInfo;
        }
        modify("Sales Amount (Actual)")
        {
            Visible = ShowSalesInfo;
        }
        modify("Cost Amount (Expected)")
        {
            Visible = ShowCostInfo;
        }
        modify("Cost Amount (Actual)")
        {
            Visible = ShowCostInfo;
        }
        modify("Cost Amount (Non-Invtbl.)")
        {
            Visible = ShowCostInfo;
        }
        modify("Cost Posted to G/L")
        {
            Visible = ShowCostInfo;
        }
        modify("Expected Cost Posted to G/L")
        {
            Visible = ShowCostInfo;
        }
        modify("Cost Amount (Expected) (ACY)")
        {
            Visible = ShowCostInfo;
        }
        modify("Cost Amount (Actual) (ACY)")
        {
            Visible = ShowCostInfo;
        }
        modify("Cost Amount (Non-Invtbl.)(ACY)")
        {
            Visible = ShowCostInfo;
        }
        modify("Cost Posted to G/L (ACY)")
        {
            Visible = ShowCostInfo;
        }
        modify("Cost per Unit")
        {
            Visible = ShowCostInfo;
        }
        modify("Cost per Unit (ACY)")
        {
            Visible = ShowCostInfo;
        }
    }
    var
        ManagementEmployee: Record "Management Employee";
        ShowCostInfo: Boolean;
        ShowSalesInfo: Boolean;
        ShowPurchInfo: Boolean;


    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    FilterGroupNo := FILTERGROUP; // Trick: FILTERGROUP is used to transfer an integer value
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    FilterGroupNo := FILTERGROUP; // Trick: FILTERGROUP is used to transfer an integer value
    ShowCostInfo:=ManagementEmployee.ShowCost(USERID);//PMT
    ShowSalesInfo:=ManagementEmployee.ShowSalesInfo(USERID);//PMT
    ShowPurchInfo:=ManagementEmployee.ShowPurchInfo(USERID);//PMT
    */
    //end;
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        ShowCostInfo := ManagementEmployee.ShowCost(USERID);//PMT
        ShowSalesInfo := ManagementEmployee.ShowSalesInfo(USERID);//PMT
        ShowPurchInfo := ManagementEmployee.ShowPurchInfo(USERID);//PMT
    end;
}

