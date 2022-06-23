pageextension 50483 "ProductionPlannerRoleCenterExt" extends "Production Planner Role Center"//9010
{
    actions
    {
        addfirst(Sections)
        {
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                ToolTip = 'View history for sales, shipments, and inventory.';
                action("Posted Sales Shipments")
                {
                    Caption = 'Posted Sales Shipments';
                    Image = PostedShipment;
                    RunObject = Page "Posted Sales Shipments";
                    ApplicationArea = All;
                }
                action("Posted Sales Invoices")
                {
                    Caption = 'Posted Sales Invoices';
                    Image = PostedOrder;
                    RunObject = Page "Posted Sales Invoices";
                    ApplicationArea = All;
                }
                action("Posted Return Receipts")
                {
                    Caption = 'Posted Return Receipts';
                    Image = PostedReturnReceipt;
                    RunObject = Page "Posted Return Receipts";
                    ApplicationArea = All;
                }
                action("Posted Sales Credit Memos")
                {
                    Caption = 'Posted Sales Credit Memos';
                    Image = PostedOrder;
                    RunObject = Page "Posted Sales Credit Memos";
                    ApplicationArea = All;
                }
                action("Posted Purchase Receipts")
                {
                    Caption = 'Posted Purchase Receipts';
                    RunObject = Page "Posted Purchase Receipts";
                    ApplicationArea = All;
                }
                action("Posted Purchase Invoices")
                {
                    Caption = 'Posted Purchase Invoices';
                    RunObject = Page "Posted Purchase Invoices";
                    ApplicationArea = All;
                }
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
}

