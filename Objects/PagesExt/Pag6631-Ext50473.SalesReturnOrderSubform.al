pageextension 50473 "SalesReturnOrderSubform" extends "Sales Return Order Subform"//6631
{
    layout
    {
        modify("GST Place of Supply")
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
        // modify("GST Base Amount")
        // {
        //     Visible = false;
        // }
        // modify("Total GST Amount")
        // {
        //     Visible = false;
        // } //OA.AS Commented
        modify("HSN/SAC Code")
        {
            Visible = false;
        }
        modify(Exempted)
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
    }
}

