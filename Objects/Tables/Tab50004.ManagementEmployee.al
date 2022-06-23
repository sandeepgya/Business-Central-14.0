table 50004 "Management Employee"
{
    // CAS-03484-N7V1P1 OA.AA 13112019
    // <NEW>New Object Created

    Caption = 'Management Employee';
    LookupPageID = "Management Employee List";

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnValidate()
            var
                UserSelection: Codeunit "User Selection";
            begin
                UserSelection.ValidateUserName("User ID");
            end;
        }
        field(2; "Show Cost"; Boolean)
        {
            Caption = 'Show Cost';
        }
        field(3; "Show Purchase Value"; Boolean)
        {
            Caption = 'Show Purchase Value';
        }
        field(4; "Show Sales Value"; Boolean)
        {
            Caption = 'Show Sales Value';
        }
        field(5; "Show Profit Value"; Boolean)
        {
            Caption = 'Show Profit Value';
        }
        field(6; "Show Item Unit Price"; Boolean)
        {
            Caption = 'Show Item Unit Price';
        }
        field(7; "Show OverHeadRate"; Boolean)
        {
            Caption = 'Show Overhead Rate';
        }
        field(8; "Show Whole Item Led. Page"; Boolean)
        {
            Caption = 'Show Whole Item Ledger Entry Page';
        }
        field(9; "Show Amount in COA"; Boolean)
        {
            Caption = 'Show Amount in COA';
        }
        field(10; "Show Amount in G/L"; Boolean)
        {
            Caption = 'Show Amount in G/L';
        }
        field(11; "Show Amount in Bank"; Boolean)
        {
            Caption = 'Show Amount in Bank';
        }
    }

    keys
    {
        key(Key1; "User ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    var
        ManagementEmployee: Record "Management Employee";

    [Scope('Cloud')]
    procedure ShowCost(UserID: Code[50]): Boolean
    begin
        ManagementEmployee.RESET;
        ManagementEmployee.SETRANGE("User ID", UserID);
        ManagementEmployee.SETRANGE("Show Cost", TRUE);
        IF ManagementEmployee.FINDFIRST THEN
            EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;

    [Scope('Cloud')]
    procedure ShowSalesInfo("User Id": Code[50]): Boolean
    begin
        ManagementEmployee.RESET;
        ManagementEmployee.SETRANGE("User ID", USERID);
        ManagementEmployee.SETRANGE("Show Sales Value", TRUE);
        IF ManagementEmployee.FINDFIRST THEN
            EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;

    [Scope('Cloud')]
    procedure ShowPurchInfo(UserId: Code[50]): Boolean
    begin
        ManagementEmployee.RESET;
        ManagementEmployee.SETRANGE("User ID", UserId);
        ManagementEmployee.SETRANGE("Show Purchase Value", TRUE);
        IF ManagementEmployee.FINDFIRST THEN
            EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;

    [Scope('Cloud')]
    procedure ShowProfitInfo(UserId: Code[50]): Boolean
    begin
        ManagementEmployee.RESET;
        ManagementEmployee.SETRANGE("User ID", UserId);
        ManagementEmployee.SETRANGE("Show Profit Value", TRUE);
        IF ManagementEmployee.FINDFIRST THEN
            EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;

    [Scope('Cloud')]
    procedure ShowItemUnitPrice(UserId: Code[50]): Boolean
    begin
        ManagementEmployee.RESET;
        ManagementEmployee.SETRANGE("User ID", UserId);
        ManagementEmployee.SETRANGE("Show Item Unit Price", TRUE);
        IF ManagementEmployee.FINDFIRST THEN
            EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;

    [Scope('Cloud')]
    procedure ShowOverHeadRate(UserId: Code[50]): Boolean
    begin
        ManagementEmployee.RESET;
        ManagementEmployee.SETRANGE("User ID", UserId);
        ManagementEmployee.SETRANGE("Show OverHeadRate", TRUE);
        IF ManagementEmployee.FINDFIRST THEN
            EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;

    [Scope('Cloud')]
    procedure ShowItemLedgerPage(UserId: Code[50]): Boolean
    begin
        ManagementEmployee.RESET;
        ManagementEmployee.SETRANGE("User ID", UserId);
        ManagementEmployee.SETRANGE("Show Whole Item Led. Page", TRUE);
        IF ManagementEmployee.FINDFIRST THEN
            EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;

    [Scope('Cloud')]
    procedure ShowCOAAmt("User Id": Code[50]): Boolean
    begin
        ManagementEmployee.RESET;
        ManagementEmployee.SETRANGE("User ID", USERID);
        ManagementEmployee.SETRANGE("Show Amount in COA", TRUE);
        IF ManagementEmployee.FINDFIRST THEN
            EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;

    [Scope('Cloud')]
    procedure ShowGLAmt(UserId: Code[50]): Boolean
    begin
        ManagementEmployee.RESET;
        ManagementEmployee.SETRANGE("User ID", UserId);
        ManagementEmployee.SETRANGE("Show Amount in G/L", TRUE);
        IF ManagementEmployee.FINDFIRST THEN
            EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;

    [Scope('Cloud')]
    procedure ShowBankAmt(UserId: Code[50]): Boolean
    begin
        ManagementEmployee.RESET;
        ManagementEmployee.SETRANGE("User ID", UserId);
        ManagementEmployee.SETRANGE("Show Amount in Bank", TRUE);
        IF ManagementEmployee.FINDFIRST THEN
            EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;
}

