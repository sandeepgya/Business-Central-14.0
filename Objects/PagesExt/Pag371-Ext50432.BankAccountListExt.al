pageextension 50432 "BankAccountListExt" extends "Bank Account List"//371
{
    var
        ManagementEmployee: Record "Management Employee";
        ShowAmtInfo: Boolean;


    //Unsupported feature: Code Insertion on "OnOpenPage".

    //trigger OnOpenPage()
    //begin
    /*
    ShowAmtInfo:=ManagementEmployee.ShowBankAmt(USERID);//PMT
    */
    //end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        ShowAmtInfo := ManagementEmployee.ShowBankAmt(USERID);//PMT
    end;
}

