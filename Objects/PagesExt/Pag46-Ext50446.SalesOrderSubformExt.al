pageextension 50446 "SalesOrderSubformExt" extends "Sales Order Subform"//46
{
    // PMT.00.10
    //   Added field Original Qty for Sales Order Short Closed
    // PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
    //   <COD> Code added on OnaAftergetrecord
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
        // addafter("Service Tax Group")
        // {
        addafter("IC Partner Code")
        {
            field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
            {
                ApplicationArea = All;
            }
        }
        addafter("IC Partner Reference")
        {
            field("Secondary Customer No."; Rec."Secondary Customer No.")
            {
                ApplicationArea = All;
            }
        }
        addafter("Work Type Code")
        {
            field("Original Qty"; Rec."Original Qty")
            {
                ApplicationArea = All;
            }
        }
    }


    //Unsupported feature: Code Modification on "OnAfterGetCurrRecord".

    //trigger OnAfterGetCurrRecord()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF SalesHeader.GET("Document Type","Document No.") THEN;

    DocumentTotals.SalesUpdateTotalsControls(
      Rec,TotalSalesHeader,TotalSalesLine,RefreshMessageEnabled,
      TotalAmountStyle,RefreshMessageText,InvDiscAmountEditable,CurrPage.EDITABLE,VATAmount);

    TypeChosen := HasTypeToFillMandatotyFields;
    SetLocationCodeMandatory;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5
    //>>PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
    IF (SalesHeader.Status = SalesHeader.Status::Released) OR (SalesHeader.Status = SalesHeader.Status::"Pending Approval") THEN
      InvDiscAmountEditable := FALSE;
    //<<PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
    #6..8
    */
    //end;
    var
        SalesHeader1: Record "Sales Header";

    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin
        IF SalesHeader1.GET(Rec."Document Type", Rec."Document No.") THEN;
        //>>PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
        IF (SalesHeader1.Status = SalesHeader1.Status::Released) OR (SalesHeader1.Status = SalesHeader1.Status::"Pending Approval") THEN
            InvDiscAmountEditable := FALSE;
        //<<PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
    end;
}

