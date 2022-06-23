pageextension 50411 "PostedPurchaseRcptSubformExt" extends "Posted Purchase Rcpt. Subform"//137
{
    // PMT.00.12
    //  Added field Quality Checked for QC Process GRN
    layout
    {
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
        addafter("Return Reason Code")
        {
            field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
            {
                ApplicationArea = All;
            }
        }
        addafter(Correction)
        {
            field("Quality Checked"; Rec."Quality Checked")
            {
                ApplicationArea = All;

                trigger OnValidate()
                begin
                    CurrPage.UPDATE(TRUE);
                end;
            }
        }
    }
    actions
    {
        addafter(ItemInvoiceLines)
        {
            action(QualityCheck)
            {
                Caption = 'Quality Check';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    //>>PMT.00.12
                    Rec.ShowQualityLine;
                    CurrPage.UPDATE(TRUE);
                    //>>PMT.00.12
                end;
            }
        }
    }
}

