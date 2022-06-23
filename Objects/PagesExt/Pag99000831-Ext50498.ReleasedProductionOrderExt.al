pageextension 50498 "ReleasedProductionOrderExt" extends "Released Production Order"//99000831
{
    // PMT.00.01
    //   Added Report Quantity Explosion BOM.
    layout
    {
        modify(Posting)
        {
            Visible = false;
        }
        // modify("Inventory Posting Group")
        // {
        //     Visible = false;
        // }
        // modify("Gen. Prod. Posting Group")
        // {
        //     Visible = false;
        // }
        // modify("Shortcut Dimension 1 Code")
        // {
        //     Visible = false;
        // }
        // modify("Shortcut Dimension 2 Code")
        // {
        //     Visible = false;
        // }
        // modify("Location Code")
        // {
        //     Visible = false;
        // }
        // addafter("Last Date Modified")
        // {
        //     field("Inventory Posting Group"; Rec."Inventory Posting Group")
        //     {
        //         Importance = Promoted;
        //         Visible = false;
        //         ApplicationArea = All;
        //     }
        //     field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
        //     {
        //         Visible = false;
        //         ApplicationArea = All;
        //     }
        //     field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
        //     {
        //         ShowMandatory = true;
        //         ApplicationArea = All;

        //         trigger OnValidate()
        //         begin
        //             ShortcutDimension1CodeOnAfterV;
        //         end;
        //     }
        //     field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
        //     {
        //         ShowMandatory = true;
        //         ApplicationArea = All;

        //         trigger OnValidate()
        //         begin
        //             ShortcutDimension2CodeOnAfterV;
        //         end;
        //     }
        //     field("Location Code"; Rec."Location Code")
        //     {
        //         Importance = Promoted;
        //         ShowMandatory = true;
        //         ApplicationArea = All;
        //     }
        // }//Already defined by Base Application
    }
    // actions
    // {
    //     addafter("Subcontractor - Dispatch List")
    //     {
    //         action("Quantity Explosion of BOM")
    //         {
    //             Image = "Report";
    //             RunObject = Report Report61065;
    //             ApplicationArea = All;
    //         }
    //     }
    // }
}

