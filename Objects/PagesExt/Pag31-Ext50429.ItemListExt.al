pageextension 50429 "ItemListExt" extends "Item List"//31
{
    // CAS-03484-N7V1P1 OA.AA 13112019
    // <COD>Code Added After
    //   -OnOpenPage()
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
        modify("Profit %")
        {
            Visible = ShowProfit;
        }
        modify("Unit Price")
        {
            Visible = ShowUnitPrice;
        }
        modify("Item Category Code")
        {
            Visible = true;
        }
        // modify("Product Group Code")
        // {
        //     Visible = true;
        // }
        addafter("Unit Price")
        {
            field(Inventory; Rec.Inventory)
            {
                ApplicationArea = All;
            }
        }
        addafter("Default Deferral Template Code")
        {
            field("M/L"; Rec."M/L")
            {
                ApplicationArea = All;
            }
        }
    }

    var
        ManagementEmployee: Record "Management Employee";
        ShowCostInfo: Boolean;
        ShowProfit: Boolean;
        ShowUnitPrice: Boolean;


    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    CRMIntegrationEnabled := CRMIntegrationManagement.IsCRMIntegrationEnabled;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    CRMIntegrationEnabled := CRMIntegrationManagement.IsCRMIntegrationEnabled;
    //>>CAS-03484-N7V1P1 OA.AA 13112019
    ShowCostInfo:=ManagementEmployee.ShowCost(USERID);
    ShowUnitPrice:=ManagementEmployee.ShowItemUnitPrice(USERID);
    ShowProfit:=ManagementEmployee.ShowProfitInfo(USERID);
    //<<CAS-03484-N7V1P1 OA.AA 13112019
    */
    //end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        //>>CAS-03484-N7V1P1 OA.AA 13112019
        ShowCostInfo := ManagementEmployee.ShowCost(USERID);
        ShowUnitPrice := ManagementEmployee.ShowItemUnitPrice(USERID);
        ShowProfit := ManagementEmployee.ShowProfitInfo(USERID);
        //<<CAS-03484-N7V1P1 OA.AA 13112019
    end;
}

