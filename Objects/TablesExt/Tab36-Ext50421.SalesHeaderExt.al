tableextension 50421 "SalesHeaderExt" extends "Sales Header"//36
{
    // PMT.00.23
    //   -Added new field Service/Installation Date.
    //   -Created a new function ChangeDueDate.
    // CAS-05925-Z8Y7X11 3112020 OA.SB
    //   <COD> Code commented
    fields
    {


        //Unsupported feature: Code Modification on ""Sell-to Customer No."(Field 2).OnValidate".

        //trigger "(Field 2)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckCreditLimitIfLineNotInsertedYet;
        TESTFIELD(Status,Status::Open);
        IF ("Sell-to Customer No." <> xRec."Sell-to Customer No.") AND
        #4..122

        IF( "GST Customer Type" <>  "GST Customer Type"::" ") AND (xRec."Sell-to Customer No." <> "Sell-to Customer No.") THEN
          VALIDATE("Invoice Type");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..125

        //<< PMT
        IF "Sell-to Customer No."<>'' THEN
           "Assigned User ID" := USERID;
        // >>PMT
        */
        //end;


        //Unsupported feature: Code Modification on ""Payment Terms Code"(Field 23).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF ("Payment Terms Code" <> '') AND ("Document Date" <> 0D) THEN BEGIN
          PaymentTerms.GET("Payment Terms Code");
          IF (("Document Type" IN ["Document Type"::"Return Order","Document Type"::"Credit Memo"]) AND
        #4..23
            "Prepayment Due Date" := CALCDATE(PaymentTerms."Due Date Calculation","Document Date");
          VALIDATE("Prepmt. Payment Terms Code","Payment Terms Code");
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..26
        //>>PMT.00.23
        IF "Service/Installation Date" = 0D THEN BEGIN
          IF "Requested Delivery Date" <> 0D THEN
            ChangeDueDate("Requested Delivery Date")
          ELSE IF "Posting Date" <> 0D THEN
            ChangeDueDate("Posting Date")
          ELSE
            ChangeDueDate("Document Date");
        END ELSE ChangeDueDate("Service/Installation Date");
        //<<PMT.00.23
        */
        //end;


        //Unsupported feature: Code Modification on ""Requested Delivery Date"(Field 5790).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Status,Status::Open);
        IF "Promised Delivery Date" <> 0D THEN
          ERROR(
        #4..6

        IF "Requested Delivery Date" <> xRec."Requested Delivery Date" THEN
          UpdateSalesLines(FIELDCAPTION("Requested Delivery Date"),CurrFieldNo <> 0);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..9

        //>>PMT.00.23
        IF "Service/Installation Date" = 0D THEN BEGIN
          IF "Requested Delivery Date" <> 0D THEN
            ChangeDueDate("Requested Delivery Date")
          ELSE IF "Posting Date" <> 0D THEN
            ChangeDueDate("Posting Date")
          ELSE
            ChangeDueDate("Document Date");
        END ELSE ChangeDueDate("Service/Installation Date");
        //<<PMT.00.23
        */
        //end;
        field(61000; "Secondary Customer No."; Code[20])
        {
            Caption = 'Secondary Customer No.';
            Description = 'PMT.00.05';
            Editable = true;
            TableRelation = "Secondary Customer"."No.";

            trigger OnValidate()
            begin
                TESTFIELD(Status, Status::Open);
            end;
        }
        field(61002; "Short Closed"; Boolean)
        {
            Description = 'PMT.00.10';
        }
        field(61003; "Service/Installation Date"; Date)
        {
            Description = 'PMT.00.23';

            trigger OnValidate()
            begin
                IF "Service/Installation Date" = 0D THEN BEGIN
                    IF "Requested Delivery Date" <> 0D THEN
                        ChangeDueDate("Requested Delivery Date")
                    ELSE
                        IF "Posting Date" <> 0D THEN
                            ChangeDueDate("Posting Date")
                        ELSE
                            ChangeDueDate("Document Date");
                END ELSE
                    ChangeDueDate("Service/Installation Date");
            end;
        }
        field(61004; "Sales Invoice Type"; Option)
        {
            Description = 'PMT.00.21';
            OptionMembers = "Sales Invoice","Service Invoice";

            trigger OnValidate()
            begin
                //UpdateSalesLines(FIELDCAPTION("Sales Invoice Type"),CurrFieldNo <> 0); // PMT.00.21
            end;
        }
        field(61005; Distributor; Boolean)
        {
            Caption = 'Distributor';
            Description = 'PMT.00.05';
        }
        field(61006; "Archived First"; Boolean)
        {
            Description = 'PMT';
        }
    }


    //Unsupported feature: Code Modification on "MessageIfSalesLinesExist(PROCEDURE 5)".

    //procedure MessageIfSalesLinesExist();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF SalesLinesExist AND NOT HideValidationDialog THEN BEGIN
      MessageText := STRSUBSTNO(LinesNotUpdatedMsg,ChangedFieldName);
      MessageText := STRSUBSTNO(SplitMessageTxt,MessageText,Text019);
      MESSAGE(MessageText);
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    IF SalesLinesExist AND NOT HideValidationDialog THEN BEGIN
      //MessageText := STRSUBSTNO(LinesNotUpdatedMsg,ChangedFieldName); CAS-05925-Z8Y7X11 3112020 OA.SB
    #3..5
    */
    //end;


    //Unsupported feature: Code Modification on "UpdateSalesLines(PROCEDURE 15)".

    //procedure UpdateSalesLines();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF NOT SalesLinesExist THEN
      EXIT;

    #4..77
              SalesLine.VALIDATE("Form Code","Form Code");
              SalesLine.VALIDATE("Form No.","Form No.");
            END;
        END;
        SalesLineReserve.AssignForPlanning(SalesLine);
        SalesLine.MODIFY(TRUE);
      UNTIL SalesLine.NEXT = 0;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..80
          //>>PMT.00.21
          FIELDCAPTION("Sales Invoice Type"):
            BEGIN
             IF "Sales Invoice Type"="Sales Invoice Type"::"Service Invoice" THEN BEGIN
               IF SalesLine.Type=SalesLine.Type::Item THEN BEGIN
                IF Item.GET(SalesLine."No.") THEN BEGIN
                  Item.TESTFIELD("Service  Prod. Posting Group");
                  SalesLine."Gen. Prod. Posting Group" := Item."Service  Prod. Posting Group";
        END;
               END;
             END ELSE IF "Sales Invoice Type" = "Sales Invoice Type"::"Sales Invoice" THEN BEGIN
              IF SalesLine.Type=SalesLine.Type::Item THEN BEGIN
                IF Item.GET(SalesLine."No.") THEN BEGIN
                  Item.TESTFIELD("Gen. Prod. Posting Group");
                  SalesLine."Gen. Prod. Posting Group" := Item."Gen. Prod. Posting Group";
                END;
                END;
              END;
            END;
          //<<PMT.00.21
    #81..84
    */
    //end;


    //Unsupported feature: Code Modification on "InitSellToCustFromCustomer(PROCEDURE 1500010)".

    //procedure InitSellToCustFromCustomer();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    WITH SalesHeader DO BEGIN
      Cust.CheckBlockedCustOnDocs(Cust,"Document Type",FALSE,FALSE);
      Cust.TESTFIELD("Gen. Bus. Posting Group");
    #4..30
      "Excise Bus. Posting Group" := Cust."Excise Bus. Posting Group";
      CheckShipToCustomer;
      CheckShipToCode;
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..33
      Distributor := Cust.Distributor; // PMT.00.05

    END;
    */
    //end;


    //Unsupported feature: Code Modification on "RoundGSTInvoicePrecision(PROCEDURE 1500121)".

    //procedure RoundGSTInvoicePrecision();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF GSTAmount = 0 THEN
      EXIT(0);

    IF "GST Inv. Rounding Precision" = 0 THEN
      EXIT;

    #7..13
    END;
    GSTRoundingPrecision := "GST Inv. Rounding Precision";
    EXIT(ROUND(GSTAmount,GSTRoundingPrecision,GSTRoundingDirection));
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    //>>PMT
    GLSetup.GET;//PMT
    IF "GST Inv. Rounding Precision" = 0 THEN
      "GST Inv. Rounding Precision" := GLSetup."GST Rounding Precision";
    //<<PMT


    #4..16
    */
    //end;

    local procedure "-----PMT------"()
    begin
    end;

    local procedure Archival()
    var
        Archive: Codeunit 5063;
        flag: Boolean;
    begin
        //>>PMT.00.08
        CLEAR(flag);
        IF flag <> TRUE THEN BEGIN
            Archive.StoreSalesDocument(Rec, FALSE);
            flag := TRUE;
        END;
        //<<PMT.00.08
    end;

    procedure SalesOrderShortClosed()
    var
        SalesLine: Record "Sales Line";
        "SO Short Closed": Boolean;
        RecInvMatched: Boolean;
        SalesHeader: Record "Sales Header";
        Text001: Label 'Sales Order has been short closed';
        default: Label 'Do you want to short close the order.';
        ok: Boolean;
    begin
        //>>PMT.00.10
        ok := DIALOG.CONFIRM(default, FALSE, TRUE);
        IF "Document Type" = "Document Type"::Order THEN BEGIN
            RecInvMatched := TRUE;
            SalesLine.RESET;
            SalesLine.SETRANGE(SalesLine."Document No.", "No.");
            SalesLine.SETRANGE(SalesLine.Type, SalesLine.Type::Item);
            IF SalesLine.FIND('-') THEN
                REPEAT
                    IF SalesLine."Qty. Shipped (Base)" <> SalesLine."Quantity Invoiced" THEN BEGIN
                        RecInvMatched := FALSE;
                        ERROR('The Order Cannot be short closed as Qty Shipped not matching Qty Invoiced for Line %1', SalesLine."Line No.");
                    END
                    ELSE BEGIN
                        SalesLine."Original Qty" := SalesLine.Quantity;
                        SalesLine.VALIDATE(Quantity, SalesLine."Quantity Shipped");
                        SalesLine.MODIFY;
                        MESSAGE('%1', Text001);
                    END;
                UNTIL SalesLine.NEXT = 0;
            IF RecInvMatched THEN BEGIN
                "SO Short Closed" := TRUE;
                MODIFY();
            END;
        END;
        IF SalesHeader.GET("Document Type", SalesLine."Document No.") THEN
            SalesHeader."Short Closed" := "SO Short Closed";
        SalesHeader.MODIFY;
        //<<>PMT.00.10
    end;

    procedure ArchivalFirst()
    var
        Archived: Boolean;
        SalesHeaderArchive: Record "Sales Header Archive";
    begin
        //>>PMT.00.08
        IF NOT Archived THEN BEGIN
            Archival;
            Archived := TRUE;
        END;
        SalesHeaderArchive.RESET;
        SalesHeaderArchive.SETRANGE("No.", Rec."No.");
        IF SalesHeaderArchive.FINDFIRST THEN BEGIN
            SalesHeaderArchive."Sales Archived  Release" := Archived;
            SalesHeaderArchive.MODIFY;
        END;
        //<<PMT.00.08
    end;

    local procedure "---PMT---"()
    begin
    end;

    local procedure ChangeDueDate(DueDateCalc: Date)
    var
        PaymentTerms: Record "Payment Terms";
    begin
        //>>PMT.00.23
        //IF CONFIRM(ConfirmDueDateChange,FALSE) THEN BEGIN
        IF DueDateCalc <> 0D THEN BEGIN

            IF DueDateCalc < "Posting Date" THEN
                ERROR(ErrorLessThanPostingDate);

            PaymentTerms.GET("Payment Terms Code");
            "Due Date" := CALCDATE(PaymentTerms."Due Date Calculation", DueDateCalc);
            EXIT;

        END;
        //END ELSE ERROR('User cancelled Activity.');
        //<<PMT.00.23
    end;

    var
        // "--PMT--": ;
        ConfirmDueDateChange: Label 'Due Date will be recalculated.Are you sure you want to perform this activity?';
        ErrorLessThanPostingDate: Label 'Service/Installation Date or Requested Delivery Date cannot be before Posting Date.';
        "Sales-Line": Record "Sales Line";
        Item: Record Item;
}

