pageextension 50482 "PurchasingAgentRoleCenterExt" extends "Purchasing Agent Role Center"//9007
{
    actions
    {
        addafter("Posted Assembly Orders")
        {
            action("Posted Purch. Invoice- List")
            {
                Caption = 'Posted Purch. Invoice- List';
                RunObject = Page "Posted Purch. Invoice Line- Li";
                ApplicationArea = All;
            }
            action("Posted Pur-. Cr. Memo List")
            {
                Caption = 'Posted Pur-. Cr. Memo List';
                RunObject = Page "Posted Pur-. Cr. Memo Line Lis";
                ApplicationArea = All;
            }
        }
    }
}

