pageextension 50440 "SalesOrderStatisticsExt" extends "Sales Order Statistics"//402
{
    // PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
    //   <COD> Code added on OnaAftergetrecord


    //Unsupported feature: Code Modification on "OnAfterGetCurrRecord".

    //trigger OnAfterGetCurrRecord()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    DynamicEditable := CurrPage.EDITABLE;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    DynamicEditable := CurrPage.EDITABLE;
    //>>PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
    IF (Status = Status::Released) OR (Status = Status::"Pending Approval") THEN
      DynamicEditable := FALSE;
    //<<PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
    */
    //end;

    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin
        //>>PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
        IF (Rec.Status = Rec.Status::Released) OR (Rec.Status = Rec.Status::"Pending Approval") THEN
            DynamicEditable := FALSE;
        //<<PMT.CAS-00439-F7J7G7.00 04022019 OA.SK
    end;
}

