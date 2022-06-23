pageextension 50470 "ApprovalEntriesExt" extends "Approval Entries"//658
{
    // OA.TG CAS-03638-Q2X2T9 20191219
    //   - Changed done for Transfer Order Workflow Process.


    //Unsupported feature: Code Modification on "Setfilters(PROCEDURE 1)".

    //procedure Setfilters();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF TableId <> 0 THEN BEGIN
      FILTERGROUP(2);
      SETCURRENTKEY("Table ID","Document Type","Document No.");
      SETRANGE("Table ID",TableId);
      SETRANGE("Document Type",DocumentType);
      IF DocumentNo <> '' THEN
        SETRANGE("Document No.",DocumentNo);
      FILTERGROUP(0);
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..4
      IF TableId <> DATABASE::"Transfer Header" THEN //OA.TG CAS-03638-Q2X2T9 20191217
    #5..9
    */
    //end;
}

