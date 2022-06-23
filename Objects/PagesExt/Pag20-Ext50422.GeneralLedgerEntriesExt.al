pageextension 50422 "GeneralLedgerEntriesExt" extends "General Ledger Entries"//20
{
    layout
    {
        modify(Amount)
        {
            Visible = ShowAmtInfo;
        }
        modify("Additional-Currency Amount")
        {
            Visible = ShowAmtInfo;
        }
        modify("VAT Amount")
        {
            Visible = ShowAmtInfo;
        }
        addafter("FA Entry No.")
        {
            // field("Source Type"; "Source Type")
            // {
            //     ApplicationArea = All;
            // }
            // field("Source No."; "Source No.")
            // {
            //     ApplicationArea = All;
            // } //Already defined by Base Application
        }
    }

    var
        ManagementEmployee: Record "Management Employee";
        ShowAmtInfo: Boolean;


    //Unsupported feature: Code Insertion on "OnOpenPage".

    //trigger OnOpenPage()
    //begin
    /*
    ShowAmtInfo:=ManagementEmployee.ShowGLAmt(USERID);//PMT
    */
    //end;
}

