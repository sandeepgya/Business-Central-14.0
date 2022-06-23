pageextension 50418 "ChartofAccountsExt" extends "Chart of Accounts"//16
{
    layout
    {
        modify("Gen. Posting Type")
        {
            Visible = false;
        }
        modify("Gen. Bus. Posting Group")
        {
            Visible = false;
        }
        modify("Gen. Prod. Posting Group")
        {
            Visible = false;
        }
        modify("Net Change")
        {
            Visible = ShowAmtInfo;
        }
        modify("Balance at Date")
        {
            Visible = ShowAmtInfo;
        }
        modify(Balance)
        {
            Visible = ShowAmtInfo;
        }
        modify("Additional-Currency Net Change")
        {
            Visible = ShowAmtInfo;
        }
        modify("Add.-Currency Balance at Date")
        {
            Visible = ShowAmtInfo;
        }
        modify("Additional-Currency Balance")
        {
            Visible = ShowAmtInfo;
        }
        modify("Cost Type No.")
        {
            Visible = false;
        }
        modify("Default Deferral Template Code")
        {
            Visible = false;
        }
    }
    var
        ManagementEmployee: Record "Management Employee";
        ShowAmtInfo: Boolean;


    //Unsupported feature: Code Insertion on "OnOpenPage".

    //trigger OnOpenPage()
    //begin
    /*
    ShowAmtInfo:=ManagementEmployee.ShowCOAAmt(USERID);//PMT
    */
    //end;
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        ShowAmtInfo := ManagementEmployee.ShowCOAAmt(USERID);//PMT
    end;
}

