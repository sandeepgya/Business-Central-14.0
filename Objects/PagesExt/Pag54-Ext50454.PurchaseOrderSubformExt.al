pageextension 50454 "PurchaseOrderSubformExt" extends "Purchase Order Subform"//54
{
    // PMT.00.09
    //   Added Fields Original Qty., Short Qty., Excess Qty. & Actual Qty. for Short Closed Purchase Order.
    layout
    {
        modify("Custom Duty Amount")
        {
            Visible = false;
        }
        modify("GST Group Code")
        {
            Visible = false;
        }
        modify("GST Group Type")
        {
            Visible = false;
        }
        modify("HSN/SAC Code")
        {
            Visible = false;
        }
        modify(Exempted)
        {
            Visible = false;
        }
        // modify("GST Base Amount")
        // {
        //     Visible = false;
        // }
        // modify("Total GST Amount")
        // {
        //     Visible = false;
        // } //OA.AS Commented
        modify("Deferral Code")
        {
            Visible = false;
        }
        addafter("No.")
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
        }
        addafter("IC Partner Code")
        {
            // field("TDS Nature of Deduction"; Rec."TDS Nature of Deduction")
            // {
            //     ApplicationArea = All;
            // } //OA.AS Commented
        }
        addafter(Nonstock)
        {
            field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
            {
                ApplicationArea = All;
            }
        }
        // addafter("ShortcutDimCode[8]")
        // {
        addafter(ShortcutDimCode8)
        {
            field("Original Qty"; Rec."Original Qty")
            {
                ApplicationArea = All;
            }
            field("Short Qty"; Rec."Short Qty")
            {
                Visible = false;
                ApplicationArea = All;
            }
            field("Excess Qty"; Rec."Excess Qty")
            {
                Visible = false;
                ApplicationArea = All;
            }
            field("Actual Qty"; Rec."Actual Qty")
            {
                Visible = false;
                ApplicationArea = All;
            }
        }
    }
}

