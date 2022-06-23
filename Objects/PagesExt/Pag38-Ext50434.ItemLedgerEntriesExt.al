pageextension 50434 "ItemLedgerEntriesExt" extends "Item Ledger Entries"//38
{
    // PMT.00.12
    //   Added field Quality Checked
    // 
    //   CAS-03484-N7V1P1 OA.AA 13112019
    //   <COD>Code Added After
    //   -OnOpenPage()
    // # Some fields removed
    layout
    {
        addafter("Item No.")
        {
            field("Item Category Code"; Rec."Item Category Code")
            {
                Editable = false;
                ApplicationArea = All;
            }
            // field("Product Group Code"; Rec."Product Group Code")
            // {
            //     Editable = false;
            //     ApplicationArea = All;
            // } //OA.AS Commented
            field("Source No."; Rec."Source No.")
            {
                ApplicationArea = All;
            }
        }
        addafter("Expiration Date")
        {
            field("Party Type"; Rec."Party Type")
            {
                ApplicationArea = All;
            }
            field("Party No."; Rec."Party No.")
            {
                ApplicationArea = All;
            }
        }
        // addafter("Laboratory Test")
        // {
        addafter("Job Task No.")
        {
            field("Quality Checked"; Rec."Quality Checked")
            {
                Editable = false;
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addafter("&Navigate")
        {
            action(ShowCompleteItemLedgerPage)
            {
                Caption = 'ILE With Cost';
                Enabled = ShowCompleteItemLedgerPage;
                Image = Detailed;
                RunObject = Page "Customized Value Entries";
                ApplicationArea = All;
            }
        }
    }

    var
        ShowCostInfo: Boolean;
        ShowSalesInfo: Boolean;
        ShowPurchInfo: Boolean;
        ManagementEmployee: Record "Management Employee";
        ShowCompleteItemLedgerPage: Boolean;


    //Unsupported feature: Code Insertion on "OnOpenPage".

    //trigger OnOpenPage()
    //begin
    /*
    //>>CAS-03484-N7V1P1 OA.AA 13112019
    ShowCostInfo:=ManagementEmployee.ShowCost(USERID);
    ShowSalesInfo:=ManagementEmployee.ShowSalesInfo(USERID);
    ShowPurchInfo:=ManagementEmployee.ShowPurchInfo(USERID);
    ShowCompleteItemLedgerPage:=ManagementEmployee.ShowItemLedgerPage(USERID);
    //<<CAS-03484-N7V1P1 OA.AA 13112019
    */
    //end;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        //>>CAS-03484-N7V1P1 OA.AA 13112019
        ShowCostInfo := ManagementEmployee.ShowCost(USERID);
        ShowSalesInfo := ManagementEmployee.ShowSalesInfo(USERID);
        ShowPurchInfo := ManagementEmployee.ShowPurchInfo(USERID);
        ShowCompleteItemLedgerPage := ManagementEmployee.ShowItemLedgerPage(USERID);
        //<<CAS-03484-N7V1P1 OA.AA 13112019
    end;
}

