pageextension 50433 "BankAccountLedgerEntriesExt" extends "Bank Account Ledger Entries"//372
{
    layout
    {
        modify(Amount)
        {
            Visible = ShowAmtInfo;
        }
        modify("Amount (LCY)")
        {
            Visible = ShowAmtInfo;
        }
        modify("Remaining Amount")
        {
            Visible = ShowAmtInfo;
        }
    }
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

