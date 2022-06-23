pageextension 50481 "OrderProcessorRoleCenterExt" extends "Order Processor Role Center"//9006
{
    actions
    {
        addafter("Posted Purchase Invoices")
        {
            action("PostSales Invoice Line List")
            {
                Caption = 'PostSales Invoice Line List';
                Image = PostedReturnReceipt;
                RunObject = Page "PostSales Invoice Line List";
                ApplicationArea = All;
            }
            action("Posted Sales Cr. Memo- List")
            {
                Caption = 'Posted Sales Cr. Memo- List';
                Image = PostedOrder;
                RunObject = Page "Posted Sales Cr. Memo Line- Li";
                ApplicationArea = All;
            }
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
            action("Sales Order Line List")
            {
                Caption = 'Sales Order Line List';
                RunObject = Page "Sales Order Line List";
                ApplicationArea = All;
            }
        }
    }
}

