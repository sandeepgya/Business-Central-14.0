page 50009 "Sales Invoice Warranty Details"
{
    Caption = 'Sales Warranty Details';
    CardPageID = "Sales Warranty Card";
    Editable = false;
    PageType = List;
    SourceTable = "Sales Invoice Warranty Details";
    UsageCategory = History;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Uploaded By"; Rec."Uploaded By")
                {
                    ApplicationArea = All;
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    Caption = 'Sell-to Customer No.';
                    ApplicationArea = All;
                }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    Caption = 'Invoice No.';
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec."Warranty Qty")
                {
                    ApplicationArea = All;
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Warranty Start Date"; Rec."Warranty Start Date")
                {
                    ApplicationArea = All;
                }
                field("Warranty Period"; Rec."Warranty Period")
                {
                    ApplicationArea = All;
                }
                field("Warranty End Date"; Rec."Warranty End Date")
                {
                    ApplicationArea = All;
                }
                field("Warranty Status"; Rec."Warranty Status")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    Caption = 'Warehouse Location';
                    ApplicationArea = All;
                }
                field("Field Person Name"; Rec."Field Person Name")
                {
                    ApplicationArea = All;
                }
                field("Bed Serail No"; Rec."Bed Serail No.")
                {
                    Caption = 'Bed Serial No.';
                    ApplicationArea = All;
                }
                field("Replaced Against Invoice No."; Rec."Replaced Against Invoice No.")
                {
                    ApplicationArea = All;
                }
                field("Service/Installation Date"; Rec."Service/Installation Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(creation)
        {
            action("Import Sales Warranty Details")
            {
                Image = Import;
                RunObject = XMLport "Sales-Warranty";
                ApplicationArea = All;
            }
            action("Refresh Warranty Status")
            {
                Image = Refresh;
                RunObject = Report WarrantyStatus;
                ApplicationArea = All;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        IF CustomSetup.GET(USERID) THEN
            EditbaleWarranty := TRUE
        ELSE
            EditbaleWarranty := FALSE;
    end;

    trigger OnAfterGetRecord()
    begin
        IF CustomSetup.GET(USERID) THEN
            EditbaleWarranty := TRUE
        ELSE
            EditbaleWarranty := FALSE;
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        IF CustomSetup.GET(USERID) THEN
            EditbaleWarranty := TRUE
        ELSE
            EditbaleWarranty := FALSE;
    end;

    trigger OnOpenPage()
    begin
        EditbaleWarranty := FALSE;
    end;

    var
        CustomSetup: Record "Custom Setup";
        EditbaleWarranty: Boolean;
}

