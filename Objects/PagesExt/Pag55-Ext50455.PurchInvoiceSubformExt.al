pageextension 50455 "PurchInvoiceSubformExt" extends "Purch. Invoice Subform"//55
{
    layout
    {

        //Unsupported feature: Property Modification (Name) on ""TDS Amount"(Control 1000000000)".


        //Unsupported feature: Property Modification (SourceExpr) on ""TDS Amount"(Control 1000000000)".


        //Unsupported feature: Property Modification (ImplicitType) on ""TDS Amount"(Control 1000000000)".

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
        // modify("GST Base Amount")
        // {
        //     Visible = false;
        // }
        // modify("Total GST Amount")
        // {
        //     Visible = false;
        // } //OA.AS Commented
        modify(Exempted)
        {
            Visible = false;
        }
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
        // addafter("VAT able Purchase Tax Amount")
        // {
        //     field("TDS Amount"; Rec."TDS Amount")
        //     {
        //         ApplicationArea = All;
        //     }
        // }
        // addafter("Non-GST Line")
        // {
        //     field("Assessee Code"; Rec."Assessee Code")
        //     {
        //         ApplicationArea = All;
        //     }
        // }
        // moveafter("VAT able Purchase Tax Amount"; Rec."TDS %") //OA.AS Commented
    }
}

