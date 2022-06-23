page 50023 "Sales Warranty Card"
{
    DeleteAllowed = false;
    Editable = true;
    PageType = Card;
    SourceTable = "Sales Invoice Warranty Details";
    UsageCategory = Documents;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            group(General)
            {
                field("Field Person Name"; Rec."Field Person Name")
                {
                    Editable = EditbaleWarranty;
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    Caption = 'Invoice No.';
                    Editable = EditbaleWarranty;
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    Editable = EditbaleWarranty;
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Warranty Qty"; Rec."Warranty Qty")
                {
                    Caption = 'Quantity';
                    ApplicationArea = All;
                }
                field("Bed Serail No."; Rec."Bed Serail No.")
                {
                    Editable = EditbaleWarranty;
                    ApplicationArea = All;
                }
                field("Warranty Start Date"; Rec."Warranty Start Date")
                {
                    Editable = EditbaleWarranty;
                    ApplicationArea = All;
                }
                field("Warranty End Date"; Rec."Warranty End Date")
                {
                    Editable = EditbaleWarranty;
                    ApplicationArea = All;
                }
                field("Replaced Against Invoice No."; Rec."Replaced Against Invoice No.")
                {
                    Editable = EditbaleWarranty;
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
                field(Type; Rec.Type)
                {
                    Editable = false;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Uploaded By"; Rec."Uploaded By")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Warranty Period"; Rec."Warranty Period")
                {
                    ApplicationArea = All;
                }
                field("Warranty Status"; Rec."Warranty Status")
                {
                    ApplicationArea = All;
                }
                field("Service/Installation Date"; Rec."Service/Installation Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetCurrRecord()
    begin
        IF CustomSetup.GET(USERID) THEN
            IF CustomSetup."Modify Sales Warranty" THEN
                EditbaleWarranty := TRUE
            ELSE
                EditbaleWarranty := FALSE;
    end;

    trigger OnAfterGetRecord()
    begin
        IF CustomSetup.GET(USERID) THEN
            IF CustomSetup."Modify Sales Warranty" THEN
                EditbaleWarranty := TRUE
            ELSE
                EditbaleWarranty := FALSE;
    end;

    trigger OnDeleteRecord(): Boolean
    begin
        IF CustomSetup.GET(USERID) THEN
            IF CustomSetup."Modify Sales Warranty" THEN
                EditbaleWarranty := TRUE
            ELSE
                EditbaleWarranty := FALSE;
    end;

    trigger OnModifyRecord(): Boolean
    begin
        IF CustomSetup.GET(USERID) THEN
            IF CustomSetup."Modify Sales Warranty" THEN
                EditbaleWarranty := TRUE
            ELSE
                EditbaleWarranty := FALSE;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        IF CustomSetup.GET(USERID) THEN
            IF CustomSetup."Modify Sales Warranty" THEN
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

