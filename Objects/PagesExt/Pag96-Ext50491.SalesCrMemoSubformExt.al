pageextension 50491 "SalesCrMemoSubformExt" extends "Sales Cr. Memo Subform"//96
{
    // PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
    //   <COD> Code added on OnaAftergetrecord
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

    TypeChosen := HasTypeToFillMandatotyFields;
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

