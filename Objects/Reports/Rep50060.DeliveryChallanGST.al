report 50060 "Delivery Challan_GST"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/DeliveryChallanGST.rdlc';

    dataset
    {
        dataitem("Transfer Shipment Header"; "Transfer Shipment Header")
        {
            RequestFilterFields = "No.";
            column(CompanyName; recCompany.Name)
            {
            }
            column(TransferFromName; "Transfer Shipment Header"."Transfer-from Name")
            {
            }
            column(TransferFromAddress; "Transfer Shipment Header"."Transfer-from Address")
            {
            }
            column(TransferFromAddress2; "Transfer Shipment Header"."Transfer-from Address 2")
            {
            }
            column(PostingDate; FORMAT("Transfer Shipment Header"."Posting Date"))
            {
            }
            column(LocationTin; FORMAT(LocationTin))
            {
            }
            column(STNNo; "Transfer Shipment Header"."Transfer Order No.")
            {
            }
            column(ShipmentNo; "Transfer Shipment Header"."Transfer Shipment")
            {
            }
            column(SINVNo; "Transfer Shipment Header"."No.")
            {
            }
            column(CompName1; CompanyName1)
            {
            }
            column(CompAdd1; CompanyAdd1)
            {
            }
            column(CompAdd2; CompanyAdd2)
            {
            }
            column(CompCity; CompanyCity)
            {
            }
            column(CompPin; CompanyPin)
            {
            }
            column(CompTin; CompanyTin)
            {
            }
            column(CompGST; CompanyGST)
            {
            }
            column(CompanyEmail; CompanyEmail)
            {
            }
            column(CompanyPhone; CompanyPhone)
            {
            }
            column(CompanyPhone2; CompanyPhone2)
            {
            }
            column(CompName; CompName)
            {
            }
            column(TransferToName; "Transfer Shipment Header"."Transfer-to Name")
            {
            }
            column(TransferToAdd; "Transfer Shipment Header"."Transfer-to Address")
            {
            }
            column(TransferToAdd2; "Transfer Shipment Header"."Transfer-to Address 2")
            {
            }
            column(TransferToCity; "Transfer Shipment Header"."Transfer-to City")
            {
            }
            column(LocToCodeTIN; LocationToCodeTINNo)
            {
            }
            column(VehicleNo; "Transfer Shipment Header"."Vehicle No.")
            {
            }
            column(MaxLines; intMaxLines)
            {
            }
            column(intLine; intLine)
            {
            }
            column(Picture; recCompany.Picture)
            {
            }
            column(Text001; Text001)
            {
            }
            column(Text002; Text002)
            {
            }
            column(ConsignerAdd1; ConsignerAdd1)
            {
            }
            column(ConsignerAdd2; ConsignerAdd2)
            {
            }
            column(ConsignerPhone; ConsignerPhone)
            {
            }
            column(ConsignerState; ConsignerState)
            {
            }
            column(ConsignerStateCode; ConsignerStateCode)
            {
            }
            column(ConsignerGST; ConsignerGST)
            {
            }
            column(ConsigneAdd1; ConsigneAdd1)
            {
            }
            column(ConsigneAdd2; ConsigneAdd2)
            {
            }
            column(ConsignePhone; ConsignePhone)
            {
            }
            column(ConsigneState; ConsigneState)
            {
            }
            column(ConsigneStateCode; ConsigneStateCode)
            {
            }
            column(ConsigneGST; ConsigneGST)
            {
            }
            column(ConsignerPin; ConsignerPin)
            {
            }
            column(ConsignePin; ConsignePin)
            {
            }
            column(ConsigneName; ConsigneName)
            {
            }
            column(ConsignerName; ConsignerName)
            {
            }
            column(ReportHeading; ReportHeading)
            {
            }
            dataitem("Transfer Shipment Line"; "Transfer Shipment Line")
            {
                UseTemporary = true;
                column(SRNO; SrNo)
                {
                }
                column(Desc; "Transfer Shipment Line".Description)
                {
                }
                column(HSNSACCode; HSNSACCode)
                {
                }
                column(ItemNo; "Transfer Shipment Line"."Item No.")
                {
                }
                column(TSLQty; "Transfer Shipment Line".Quantity)
                {
                }
                column(UnitPrice; UnitPrice)
                {
                }
                column(AMt; Amt)
                {
                }
                column(Qty; Qty)
                {
                }
                column(TotAmount; TotAmount)
                {
                }
                column(TExInWords; TExInWords[1])
                {
                }
                column(AmtInwords; AmtInwords)
                {
                }
                column(GSTCompAmount1; ABS(GSTCompAmount[1]))
                {
                }
                column(GSTCompAmount2; ABS(GSTCompAmount[2]))
                {
                }
                column(GSTCompAmount3; ABS(GSTCompAmount[3]))
                {
                }
                column(GSTCompAmount4; ABS(GSTCompAmount[4]))
                {
                }
                column(GSTCompAmount5; ABS(GSTCompAmount[5]))
                {
                }
                column(GSTCompRate1; GSTCompRate[1])
                {
                }
                column(GSTCompRate2; GSTCompRate[2])
                {
                }
                column(GSTCompRate3; GSTCompRate[3])
                {
                }
                column(GSTCompRate4; GSTCompRate[4])
                {
                }
                column(GSTCompRate5; GSTCompRate[5])
                {
                }
                column(TotalGSTCompAmount1; ABS(TotalGSTCompAmount[1]))
                {
                }
                column(TotalGSTCompAmount2; ABS(TotalGSTCompAmount[2]))
                {
                }
                column(TotalGSTCompAmount3; ABS(TotalGSTCompAmount[3]))
                {
                }
                column(TotalValue; TotalValue)
                {
                }
                column(CurrencyCode_TransferShipLine; 'Amount in Words : RUPEES ' + COPYSTR(descrptionline[1], 5))
                {
                }
                column(DescriptionLine2; descrptionline[2])
                {
                }

                trigger OnAfterGetRecord()
                var
                    PageBraek: Decimal;
                begin

                    UnitPrice := 0;
                    Amt := 0;

                    //ValueEntry.RESET;
                    //ValueEntry.SETRANGE(ValueEntry."Document Type",ValueEntry."Document Type"::"Transfer Shipment");
                    //ValueEntry.SETRANGE(ValueEntry."Document No.","Transfer Shipment Header"."No.");
                    //ValueEntry.SETRANGE(ValueEntry."Document Line No.","Transfer Shipment Line"."Line No.");
                    //ValueEntry.SETRANGE(ValueEntry."Location Code","Transfer Shipment Header"."Transfer-from Code");
                    //IF ValueEntry.FINDFIRST THEN BEGIN
                    //  REPEAT
                    //    UnitPrice += ValueEntry."Cost per Unit";
                    //    Amt += ABS(ValueEntry."Cost Amount (Actual)"+ValueEntry."Cost Amount (Expected)");
                    //  UNTIL ValueEntry.NEXT=0;
                    // END;

                    UnitPrice := "Transfer Shipment Line"."Unit Price";
                    Amt := "Transfer Shipment Line"."Unit Price" * "Transfer Shipment Line".Quantity;

                    SrNo += 1;
                    Qty += Quantity;
                    //TotAmount+=Amount;
                    TotAmount += Amt;

                    IF "Item No." <> '' THEN
                        intLine += 1;

                    //>> OA.PT
                    CLEAR(GSTCompAmount);
                    CLEAR(GSTCompRate);
                    CLEAR(TotalValue);
                    IF Item.GET("Transfer Shipment Line"."Item No.") THEN
                        HSNSACCode := Item."HSN/SAC Code";
                    // IF ((IsGSTApplicable) AND ("Transfer Shipment Line"."GST %" <> 0)) THEN BEGIN
                    //     DetailedGSTLedgerEntry.RESET;
                    //     DetailedGSTLedgerEntry.SETCURRENTKEY("Transaction Type", "Document Type", "Document No.", "Document Line No.");
                    //     DetailedGSTLedgerEntry.SETRANGE("Transaction Type", DetailedGSTLedgerEntry."Transaction Type"::Sales);
                    //     DetailedGSTLedgerEntry.SETRANGE("Document No.", "Document No.");
                    //     DetailedGSTLedgerEntry.SETRANGE("Document Line No.", "Line No.");
                    //     IF DetailedGSTLedgerEntry.FINDSET THEN BEGIN
                    //         REPEAT
                    //             IF DetailedGSTLedgerEntry."GST Component Code" = 'CGST' THEN
                    //                 J := 1;
                    //             IF DetailedGSTLedgerEntry."GST Component Code" = 'SGST' THEN
                    //                 J := 2;
                    //             IF DetailedGSTLedgerEntry."GST Component Code" = 'IGST' THEN
                    //                 J := 3;
                    //             IF DetailedGSTLedgerEntry."GST Component Code" = 'CESS-L' THEN
                    //                 J := 4;
                    //             IF DetailedGSTLedgerEntry."GST Component Code" = 'CESS-C' THEN
                    //                 J := 5;
                    //             GSTCompAmount[J] := DetailedGSTLedgerEntry."GST Amount";
                    //             GSTCompRate[J] := DetailedGSTLedgerEntry."GST %";
                    //             TotalGSTCompAmount[J] += DetailedGSTLedgerEntry."GST Amount";
                    //         UNTIL DetailedGSTLedgerEntry.NEXT = 0;
                    //     END;
                    // END; //OA.AS Commented
                    TotalValue := Amt + ABS(GSTCompAmount[1]) + ABS(GSTCompAmount[2]) + ABS(GSTCompAmount[3]) + ABS(GSTCompAmount[4]) + ABS(GSTCompAmount[5]);
                    TotalInvoiceValue += TotalValue;

                    repCheckPrint.InitTextVariable;
                    repCheckPrint.FormatNoText(descrptionline, ROUND(TotalInvoiceValue, 0.01, '='), '');
                    // repCheckPrint.InitTextVariable();
                    // repCheckPrint.FormatNoText(TExInWords,TotalInvoiceValue,'');
                    // AmtInwords := TExInWords[1];
                    //<< OA.PT
                end;

                trigger OnPreDataItem()
                var
                    LineNo: Integer;
                begin
                    TransferShipmentLine.SETRANGE("Document No.", "Transfer Shipment Header"."No.");
                    IF TransferShipmentLine.FINDSET THEN
                        REPEAT
                            "Transfer Shipment Line".TRANSFERFIELDS(TransferShipmentLine);
                            "Transfer Shipment Line".INSERT;
                        UNTIL TransferShipmentLine.NEXT = 0;

                    SrNo := 0;
                    Qty := 0;
                    TotAmount := 0;
                    /*
                    CLEAR(BlankLines);
                    IF "Transfer Shipment Line".COUNT > intMaxLines THEN BEGIN
                      BlankLines := intMaxLines - ("Transfer Shipment Line".COUNT MOD intMaxLines);
                    END ELSE
                      BlankLines := intMaxLines - "Transfer Shipment Line".COUNT;
                    */
                    /*
                    CLEAR(BlankLines);
                    IF "Transfer Shipment Line".COUNT < intMaxLines THEN
                      BlankLines := intMaxLines - "Transfer Shipment Line".COUNT;
                    LineNo := "Transfer Shipment Line"."Line No.";
                    WHILE BlankLines <> 0 DO BEGIN
                      "Transfer Shipment Line".INIT;
                      LineNo += 10000;
                      "Transfer Shipment Line"."Document No." := "Transfer Shipment Header"."No.";
                      "Transfer Shipment Line"."Line No." :=  LineNo;
                      "Transfer Shipment Line".INSERT;
                       BlankLines -= 1;
                    END;
                    */

                end;
            }

            trigger OnAfterGetRecord()
            begin

                recLocation.RESET;
                recLocation.SETRANGE(Code, "Transfer-from Code");
                IF recLocation.FINDFIRST THEN BEGIN
                    LocationTin := '';//recLocation."T.I.N. No.";
                    ConsignerName := recLocation.Name;
                    ConsignerAdd1 := recLocation.Address;
                    ConsignerAdd2 := recLocation."Address 2";
                    ConsignerPhone := recLocation."Phone No.";
                    ConsignerGST := recLocation."GST Registration No.";
                    IF State.GET(recLocation."State Code") THEN BEGIN
                        ConsignerState := State.Description;
                        ConsignerStateCode := State."State Code (GST Reg. No.)";
                    END;
                END;

                recCompany.GET;
                IF RegLocation.GET(recLocation."Registered LocationCode") THEN BEGIN
                    CompanyAdd1 := RegLocation.Address;
                    CompanyAdd2 := RegLocation."Address 2";
                    CompanyName1 := RegLocation.Name;    // OA.PT
                    CompanyCity := RegLocation.City;
                    CompanyPin := RegLocation."Post Code";
                    CompanyTin := '';//RegLocation."T.I.N. No.";
                    CompanyGST := RegLocation."GST Registration No.";
                    CompanyEmail := RegLocation."E-Mail";
                    CompanyPhone := RegLocation."Phone No.";
                    CompanyPhone2 := RegLocation."Phone No. 2";
                END;

                IF recLocation.GET("Transfer-to Code") THEN BEGIN
                    LocationToCodeTINNo := '';//recLocation."T.I.N. No.";
                    ConsigneName := recLocation.Name;
                    ConsigneAdd1 := recLocation.Address;
                    ConsigneAdd2 := recLocation."Address 2";
                    ConsignePhone := recLocation."Phone No.";
                    ConsigneGST := recLocation."GST Registration No.";
                    IF State.GET(recLocation."State Code") THEN BEGIN
                        ConsigneState := State.Description;
                        ConsigneStateCode := State."State Code (GST Reg. No.)";
                    END;
                END;

                FixedLength := 0;

                recCompany.GET;
                CompName := recCompany.Name;
                //OA.PT
                // CompanyAdd1:=recCompany.Address;
                // CompanyAdd2:=recCompany."Address 2";
                // CompanyName1:=recCompany.Name;
                // CompanyCity:=recCompany.City;
                // CompanyPin:=recCompany."Post Code";
                // CompanyTin:=recCompany."T.I.N. No.";
                //OA.PT
                recCompany.CALCFIELDS(Picture);
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        Selection := STRMENU(Text003, 1);
        IF Selection = 1 THEN ReportHeading := 'ORIGINAL FOR CONSIGNEE';
        IF Selection = 2 THEN ReportHeading := 'DUPLICATE FOR TRANSPORTER';
        IF Selection = 3 THEN BEGIN
            ReportHeading := 'TRIPLICATE FOR CONSIGNOR';
            IsTaxInvoice := TRUE;
        END;
    end;

    trigger OnPreReport()
    begin

        //intMaxLines:=14;
    end;

    var
        CompanyAdd1: Text[100];
        CompanyAdd2: Text[100];
        LocationTin: Text[30];
        recLocation: Record Location;
        CompanyName1: Text[100];
        CompanyCity: Text[30];
        CompanyPin: Text[30];
        CompanyTin: Text[30];
        CompanyGST: Text[15];
        CompanyEmail: Text;
        CompanyPhone: Text;
        CompanyPhone2: Text;
        recCompany: Record "Company Information";
        SrNo: Integer;
        Qty: Decimal;
        TotAmount: Decimal;
        repCheckPrint: Report Check;
        intMaxLines: Integer;
        intLine: Integer;
        "--TEC--": Integer;
        ValueEntry: Record "Value Entry";
        UnitPrice: Decimal;
        Amt: Decimal;
        LocationToCodeTINNo: Text[30];
        RegLocation: Record Location;
        FixedLength: Integer;
        TransferShipmentLine: Record "Transfer Shipment Line";
        BlankLines: Integer;
        LastLineNo: Integer;
        Text001: Label 'DELIVERY CHALLAN';
        Text002: Label '(Under Section 31)';
        CompName: Text;
        ConsignerAdd1: Text;
        ConsignerAdd2: Text;
        ConsignerPhone: Code[10];
        ConsignerState: Text;
        ConsignerStateCode: Code[20];
        ConsignerGST: Code[15];
        ConsignerPin: Code[20];
        State: Record State;
        ConsigneName: Text;
        ConsignerName: Text;
        ConsigneAdd1: Text;
        ConsigneAdd2: Text;
        ConsignePhone: Code[10];
        ConsigneState: Text;
        ConsigneStateCode: Code[20];
        ConsigneGST: Code[15];
        ConsignePin: Code[20];
        TExInWords: array[2] of Text[200];
        AmtInwords: Text[200];
        Selection: Integer;
        ReportHeading: Text[30];
        IsTaxInvoice: Boolean;
        Text003: Label 'ORIGINAL FOR CONSIGNEE,DUPLICATE FOR TRANSPORTER,TRIPLICATE FOR CONSIGNOR';
        GSTCompAmount: array[20] of Decimal;
        GSTCompRate: array[20] of Decimal;
        TotalValue: Decimal;
        IsGSTApplicable: Boolean;
        // GSTManagement: Codeunit "GST Management";
        DetailedGSTLedgerEntry: Record "Detailed GST Ledger Entry";
        TotalGSTCompAmount: array[20] of Decimal;
        J: Integer;
        TotalInvoiceValue: Decimal;
        HSNSACCode: Code[8];
        Item: Record Item;
        descrptionline: array[2] of Text[100];

    local procedure GetLastLineNo(): Integer
    begin
        IF "Transfer Shipment Line".FINDLAST THEN
            LastLineNo := "Transfer Shipment Line"."Line No.";
        EXIT(LastLineNo);
    end;
}

