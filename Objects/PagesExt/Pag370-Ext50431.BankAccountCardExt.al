pageextension 50431 "BankAccountCardExt" extends "Bank Account Card"//370
{
    layout
    {
        modify(Balance)
        {
            Visible = ShowAmtInfo;
        }
        modify("Balance (LCY)")
        {
            Visible = ShowAmtInfo;
        }
        modify("Min. Balance")
        {
            Visible = ShowAmtInfo;
        }
        modify("Balance Last Statement")
        {
            Visible = ShowAmtInfo;
        }
    }
    var
        ManagementEmployee: Record "Management Employee";
        ShowAmtInfo: Boolean;


    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF NOT MapMgt.TestSetup THEN
      MapPointVisible := FALSE;
    ContactActionVisible := Contact.READPERMISSION;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
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

