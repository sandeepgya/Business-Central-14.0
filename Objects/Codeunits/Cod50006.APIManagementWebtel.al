codeunit 50006 "API Management -Webtel"
{
    //     // http://EinvSandbox.webtel.in/v1.01/PrintEInvByIRN

    //     Permissions = TableData "Sales Invoice Header" = rm,
    //                   TableData "Sales Cr.Memo Header" = rm,
    //                   TableData "Transfer Shipment Header" = rm;

    //     trigger OnRun()
    //     begin
    //     end;

    //     var
    //         SalesInvoiceHeader: Record "Sales Invoice Header";
    //         SalesCrMemoHeader: Record "Sales Cr.Memo Header";
    //         TransferShipmentHeader: Record "Transfer Shipment Header";
    //         StringBuilder: DotNet StringBuilder;
    //         StringWriter: DotNet StringWriter;
    //         JsonTextWriter: DotNet JsonTextWriter;
    //         JsonFormatting: DotNet Formatting;
    //         GlobalNULL: Variant;
    //         IsInvoice: Boolean;
    //         IsTransferInvoice: Boolean;
    //         DocumentNo: Text[20];
    //         Json: DotNet String;
    //         HttpWebRequestMgt: Codeunit "Http Web Request Mgt.";
    //         TmpBlob: Record TempBlob;
    //         RequestStr: DotNet Stream;
    //         StringReader: DotNet StringReader;
    //         JsonTextReader: DotNet JsonTextReader;
    //         MessageText: Text;
    //         UnRegCusrErr: Label 'E-Invoicing is not applicable for Unregistered Customer.';
    //         RecIsEmptyErr: Label 'Record variable uninitialized.';
    //         SalesLinesErr: Label 'E-Invoice allowes only 100 lines per Invoice. Curent transaction is having %1 lines.', Comment = '%1 = Sales Lines count';
    //         GSTNNo: Code[20];
    //         SerialNo: Integer;
    //         GlbTrdNm: Text[100];
    //         GlbBno: Text[60];
    //         GlbBnm: Text[60];
    //         GlbFlno: Text[60];
    //         GlbLoc: Text[60];
    //         GlbDst: Text[60];
    //         GlbPin: Text[6];
    //         GlbStcd: Text[50];
    //         GlbStName: Text[50];
    //         GlbPh: Text[10];
    //         GlbEm: Text[50];
    //         IsSalesCreditMemo: Boolean;
    //         ISExport: Boolean;
    //         FileManagement: Codeunit "File Management";
    //         CurrExRate: Decimal;
    //         RecCompInfo: Record "Company Information";
    //         RecLocation: Record Location;
    //         GlbLocCode: Code[10];

    //     local procedure Initialize()
    //     begin
    //         StringBuilder := StringBuilder.StringBuilder;
    //         StringWriter := StringWriter.StringWriter(StringBuilder);
    //         JsonTextWriter := JsonTextWriter.JsonTextWriter(StringWriter);
    //         JsonTextWriter.Formatting := JsonFormatting.Indented;

    //         CLEAR(GlobalNULL);
    //     end;

    //     local procedure WriteFileHeader()
    //     begin
    //         ReadCredentials(0);

    //         JsonTextWriter.WritePropertyName('Version');
    //         JsonTextWriter.WriteValue('1.03');
    //         JsonTextWriter.WritePropertyName('Irn');
    //         JsonTextWriter.WriteValue('');
    //         JsonTextWriter.WritePropertyName('Tran_TaxSch');
    //         JsonTextWriter.WriteValue('GST');
    //     end;

    //     local procedure ReadTransDtls(GSTCustType: Option " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit"; ShipToCode: Code[12])
    //     var
    //         SalesInvoiceLine: Record "Sales Invoice Line";
    //         SalesCrMemoLine: Record "Sales Cr.Memo Line";
    //         catg: Text[6];
    //         Typ: Text[6];
    //         ECMGSTN: Text;
    //         ExpCat: Text;
    //         WithPay: Text;
    //     begin
    //         IF IsInvoice THEN BEGIN
    //             catg := 'B2B';
    //             //catg = TypeofSupp
    //             IF GSTCustType IN [SalesInvoiceHeader."GST Customer Type"::Registered, SalesInvoiceHeader."GST Customer Type"::Exempted] THEN
    //                 catg := 'B2B'
    //             ELSE BEGIN
    //                 IF GSTCustType IN [SalesInvoiceHeader."GST Customer Type"::Export, SalesInvoiceHeader."GST Customer Type"::"Deemed Export", SalesInvoiceHeader."GST Customer Type"::"SEZ Unit",
    //                     SalesInvoiceHeader."GST Customer Type"::"SEZ Development"]
    //                 THEN BEGIN
    //                     CASE SalesInvoiceHeader."GST Customer Type" OF
    //                         SalesInvoiceHeader."GST Customer Type"::Export:
    //                             ExpCat := 'DIR';
    //                         SalesInvoiceHeader."GST Customer Type"::"Deemed Export":
    //                             ExpCat := 'DEM';
    //                         SalesInvoiceHeader."GST Customer Type"::"SEZ Unit":
    //                             ExpCat := 'SEZ';
    //                         SalesInvoiceHeader."GST Customer Type"::"SEZ Development":
    //                             ExpCat := 'SED';
    //                     END;
    //                     IF SalesInvoiceHeader."GST Without Payment of Duty" THEN
    //                         WithPay := 'N'
    //                     ELSE
    //                         WithPay := 'Y';
    //                 END;
    //                 IF (ExpCat = 'DIR') AND (WithPay = 'Y') THEN
    //                     catg := 'EXPWP';
    //                 IF (ExpCat = 'DIR') AND (WithPay = 'N') THEN
    //                     catg := 'EXPWOP';
    //                 IF (ExpCat = 'SEZ') AND (WithPay = 'Y') THEN
    //                     catg := 'SEZWP';
    //                 IF (ExpCat = 'SEZ') AND (WithPay = 'N') THEN
    //                     catg := 'SEZWOP';
    //                 IF ExpCat = 'DEM' THEN
    //                     catg := 'DEXP';
    //             END;
    //             IF ShipToCode <> '' THEN BEGIN
    //                 SalesInvoiceLine.SETRANGE("Document No.", DocumentNo);
    //                 SalesInvoiceLine.SETFILTER(Quantity, '<>%1', 0);
    //                 IF SalesInvoiceLine.FINDSET THEN
    //                     REPEAT
    //                         IF SalesInvoiceLine."GST Place of Supply" <> SalesInvoiceLine."GST Place of Supply"::"Ship-to Address" THEN
    //                             Typ := 'SHP'
    //                         ELSE
    //                             Typ := 'REG';
    //                     UNTIL SalesInvoiceLine.NEXT = 0;
    //             END ELSE
    //                 Typ := 'REG';

    //         END ELSE
    //             IF IsTransferInvoice THEN BEGIN
    //                 catg := 'B2B';
    //                 Typ := 'REG';
    //             END
    //             ELSE BEGIN
    //                 IF GSTCustType IN [SalesCrMemoHeader."GST Customer Type"::Registered, SalesCrMemoHeader."GST Customer Type"::Exempted] THEN
    //                     catg := 'B2B'
    //                 ELSE BEGIN
    //                     IF GSTCustType IN [SalesCrMemoHeader."GST Customer Type"::Export, SalesCrMemoHeader."GST Customer Type"::"Deemed Export", SalesCrMemoHeader."GST Customer Type"::"SEZ Unit",
    //                       SalesCrMemoHeader."GST Customer Type"::"SEZ Development"]
    //                   THEN BEGIN
    //                         CASE SalesCrMemoHeader."GST Customer Type" OF
    //                             SalesCrMemoHeader."GST Customer Type"::Export:
    //                                 ExpCat := 'DIR';
    //                             SalesCrMemoHeader."GST Customer Type"::"Deemed Export":
    //                                 ExpCat := 'DEM';
    //                             SalesCrMemoHeader."GST Customer Type"::"SEZ Unit":
    //                                 ExpCat := 'SEZ';
    //                             SalesCrMemoHeader."GST Customer Type"::"SEZ Development":
    //                                 ExpCat := 'SED';
    //                         END;
    //                         IF SalesCrMemoHeader."GST Without Payment of Duty" THEN
    //                             WithPay := 'N'
    //                         ELSE
    //                             WithPay := 'Y';
    //                     END;
    //                     IF (ExpCat = 'DIR') AND (WithPay = 'Y') THEN
    //                         catg := 'EXPWP';
    //                     IF (ExpCat = 'DIR') AND (WithPay = 'N') THEN
    //                         catg := 'EXPWOP';
    //                     IF (ExpCat = 'SEZ') AND (WithPay = 'Y') THEN
    //                         catg := 'SEZWP';
    //                     IF (ExpCat = 'SEZ') AND (WithPay = 'N') THEN
    //                         catg := 'SEZWOP';
    //                     IF ExpCat = 'DEM' THEN
    //                         catg := 'DEXP';
    //                 END;
    //                 SalesCrMemoLine.SETRANGE("Document No.", DocumentNo);
    //                 SalesCrMemoLine.SETFILTER(Quantity, '<>%1', 0);
    //                 IF SalesCrMemoLine.FINDSET THEN
    //                     REPEAT
    //                         IF SalesCrMemoLine."GST Place of Supply" = SalesCrMemoLine."GST Place of Supply"::"Ship-to Address" THEN
    //                             Typ := 'REG'
    //                         ELSE
    //                             Typ := 'SHP';
    //                     UNTIL SalesCrMemoLine.NEXT = 0;
    //             END;
    //         IF catg IN ['EXPWP', 'EXPWOP'] THEN
    //             ISExport := TRUE;
    //         WriteTransDtls(catg, 'N', Typ, 'false', 'Y', ECMGSTN, 'N');
    //     end;

    //     local procedure WriteTransDtls(catg: Text[6]; RegRev: Text[2]; Typ: Text[6]; EcmTrnSel: Text[5]; EcmTrn: Text[1]; EcmGstin: Text[15]; IgtOnIntra: Text)
    //     begin
    //         JsonTextWriter.WritePropertyName('Tran_Typ');
    //         JsonTextWriter.WriteValue(Typ);
    //         JsonTextWriter.WritePropertyName('Tran_RegRev');
    //         JsonTextWriter.WriteValue(RegRev);
    //         JsonTextWriter.WritePropertyName('Tran_SupTyp');
    //         JsonTextWriter.WriteValue(catg);
    //         JsonTextWriter.WritePropertyName('Tran_EcmGstin');
    //         IF EcmGstin <> '' THEN
    //             JsonTextWriter.WriteValue('')
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('Tran_IgstOnIntra');
    //         IF IgtOnIntra <> '' THEN
    //             JsonTextWriter.WriteValue(IgtOnIntra)
    //         ELSE
    //             JsonTextWriter.WriteValue('N');
    //     end;

    //     local procedure ReadDocDtls()
    //     var
    //         Typ: Text[3];
    //         Dt: Text[10];
    //         OrgInvNo: Text[16];
    //     begin
    //         IF IsInvoice THEN BEGIN
    //             IF SalesInvoiceHeader."Invoice Type" = SalesInvoiceHeader."Invoice Type"::Taxable THEN
    //                 Typ := 'INV'
    //             ELSE
    //                 IF (SalesInvoiceHeader."Invoice Type" = SalesInvoiceHeader."Invoice Type"::"Debit Note") OR
    //                    (SalesInvoiceHeader."Invoice Type" = SalesInvoiceHeader."Invoice Type"::Supplementary)
    //                 THEN
    //                     Typ := 'DBN'
    //                 ELSE
    //                     Typ := 'INV';
    //             Dt := FormatDate(SalesInvoiceHeader."Posting Date");
    //         END ELSE
    //             IF IsTransferInvoice THEN BEGIN
    //                 Typ := 'INV';
    //                 Dt := FormatDate(TransferShipmentHeader."Posting Date");
    //             END ELSE BEGIN
    //                 Typ := 'CRN';
    //                 Dt := FormatDate(SalesCrMemoHeader."Posting Date");
    //             END;

    //         OrgInvNo := COPYSTR(GetRefInvNo(DocumentNo), 1, 16);

    //         WriteDocDtls(Typ, COPYSTR(DocumentNo, 1, 16), Dt, OrgInvNo);
    //     end;

    //     local procedure WriteDocDtls(Typ: Text[3]; No: Text[16]; Dt: Text[10]; OrgInvNo: Text[16])
    //     begin
    //         JsonTextWriter.WritePropertyName('Doc_Typ');
    //         JsonTextWriter.WriteValue(Typ);
    //         JsonTextWriter.WritePropertyName('Doc_No');
    //         JsonTextWriter.WriteValue(No);
    //         JsonTextWriter.WritePropertyName('Doc_Dt');
    //         JsonTextWriter.WriteValue(Dt);
    //     end;

    //     local procedure ReadExpDtls()
    //     var
    //         SalesInvoiceLine: Record "Sales Invoice Line";
    //         SalesCrMemoLine: Record "Sales Cr.Memo Line";
    //         GSTManagement: Codeunit "GST Management";
    //         ExpCat: Text[3];
    //         WithPay: Text[1];
    //         ShipBNo: Text[16];
    //         ShipBDt: Text[10];
    //         Port: Text[10];
    //         InvForCur: Decimal;
    //         ForCur: Text[3];
    //         CntCode: Text[2];
    //     begin
    //         CurrExRate := 1;
    //         IF IsInvoice THEN
    //             WITH SalesInvoiceHeader DO BEGIN
    //                 IF "GST Customer Type" IN
    //                    ["GST Customer Type"::Export,
    //                     "GST Customer Type"::"Deemed Export",
    //                     "GST Customer Type"::"SEZ Unit",
    //                     "GST Customer Type"::"SEZ Development"]
    //                 THEN BEGIN
    //                     CASE "GST Customer Type" OF
    //                         "GST Customer Type"::Export:
    //                             ExpCat := 'DIR';
    //                         "GST Customer Type"::"Deemed Export":
    //                             ExpCat := 'DEM';
    //                         "GST Customer Type"::"SEZ Unit":
    //                             ExpCat := 'SEZ';
    //                         "GST Customer Type"::"SEZ Development":
    //                             ExpCat := 'SED';
    //                     END;
    //                     IF "GST Without Payment of Duty" THEN
    //                         WithPay := 'N'
    //                     ELSE
    //                         WithPay := 'Y';
    //                     ShipBNo := COPYSTR("Bill Of Export No.", 1, 16);
    //                     ShipBDt := FormatDate("Bill Of Export Date");
    //                     Port := "Exit Point";
    //                     IF SalesInvoiceHeader."Currency Factor" <> 0 THEN
    //                         CurrExRate := 1 / SalesInvoiceHeader."Currency Factor"
    //                     ELSE
    //                         CurrExRate := 1;

    //                     SalesInvoiceLine.SETRANGE("Document No.", "No.");
    //                     IF SalesInvoiceLine.FINDSET THEN
    //                         REPEAT
    //                             IF GSTManagement.IsGSTApplicable(Structure) THEN
    //                                 InvForCur := RoundGSTInvoicePrecision(InvForCur + SalesInvoiceLine.Amount)
    //                             ELSE
    //                                 InvForCur := InvForCur + SalesInvoiceLine.Amount;
    //                         UNTIL SalesInvoiceLine.NEXT = 0;
    //                     ForCur := COPYSTR("Currency Code", 1, 3);
    //                     CntCode := COPYSTR("Bill-to Country/Region Code", 1, 2);
    //                 END ELSE
    //                     EXIT;
    //             END
    //         ELSE
    //             WITH SalesCrMemoHeader DO BEGIN
    //                 IF "GST Customer Type" IN
    //                    ["GST Customer Type"::Export,
    //                     "GST Customer Type"::"Deemed Export",
    //                     "GST Customer Type"::"SEZ Unit",
    //                     "GST Customer Type"::"SEZ Development"]
    //                 THEN BEGIN
    //                     CASE "GST Customer Type" OF
    //                         "GST Customer Type"::Export:
    //                             ExpCat := 'DIR';
    //                         "GST Customer Type"::"Deemed Export":
    //                             ExpCat := 'DEM';
    //                         "GST Customer Type"::"SEZ Unit":
    //                             ExpCat := 'SEZ';
    //                         "GST Customer Type"::"SEZ Development":
    //                             ExpCat := 'SED';
    //                     END;
    //                     IF "GST Without Payment of Duty" THEN
    //                         WithPay := 'N'
    //                     ELSE
    //                         WithPay := 'Y';
    //                     ShipBNo := COPYSTR("Bill Of Export No.", 1, 16);
    //                     ShipBDt := FormatDate("Bill Of Export Date");
    //                     Port := "Exit Point";
    //                     IF SalesCrMemoHeader."Currency Factor" <> 0 THEN
    //                         CurrExRate := 1 / SalesCrMemoHeader."Currency Factor"
    //                     ELSE
    //                         CurrExRate := 1;

    //                     SalesCrMemoLine.SETRANGE("Document No.", "No.");
    //                     IF SalesCrMemoLine.FINDSET THEN
    //                         REPEAT
    //                             IF GSTManagement.IsGSTApplicable(Structure) THEN
    //                                 InvForCur := InvForCur + SalesCrMemoLine.Amount
    //                             ELSE
    //                                 InvForCur := InvForCur + SalesCrMemoLine.Amount;
    //                         UNTIL SalesCrMemoLine.NEXT = 0;
    //                     ForCur := COPYSTR("Currency Code", 1, 3);
    //                     CntCode := COPYSTR("Bill-to Country/Region Code", 1, 2);
    //                 END ELSE
    //                     EXIT;
    //             END;

    //         WriteExpDtls(ExpCat, WithPay, ShipBNo, ShipBDt, Port, InvForCur, ForCur, CntCode);
    //     end;

    //     local procedure WriteExpDtls(ExpCat: Text[3]; WithPay: Text[1]; ShipBNo: Text[16]; ShipBDt: Text[10]; Port: Text[10]; InvForCur: Decimal; ForCur: Text[3]; CntCode: Text[2])
    //     begin
    //         JsonTextWriter.WritePropertyName('ExpDtls');
    //         JsonTextWriter.WriteStartObject;

    //         JsonTextWriter.WritePropertyName('ExpCat');
    //         IF ExpCat <> '' THEN
    //             JsonTextWriter.WriteValue(ExpCat)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //         JsonTextWriter.WritePropertyName('WithPay');
    //         IF WithPay <> '' THEN
    //             JsonTextWriter.WriteValue(WithPay)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //         JsonTextWriter.WritePropertyName('ShipBNo');
    //         IF ShipBNo <> '' THEN
    //             JsonTextWriter.WriteValue(ShipBNo)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //         JsonTextWriter.WritePropertyName('ShipBDt');
    //         IF ShipBDt <> '' THEN
    //             JsonTextWriter.WriteValue(ShipBDt)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //         JsonTextWriter.WritePropertyName('Port');
    //         IF Port <> '' THEN
    //             JsonTextWriter.WriteValue(Port)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //         JsonTextWriter.WritePropertyName('InvForCur');
    //         JsonTextWriter.WriteValue(InvForCur);
    //         JsonTextWriter.WritePropertyName('ForCur');
    //         IF ForCur <> '' THEN
    //             JsonTextWriter.WriteValue(ForCur)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //         JsonTextWriter.WritePropertyName('CntCode');
    //         IF CntCode <> '' THEN
    //             JsonTextWriter.WriteValue(CntCode)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WriteEndObject;
    //     end;

    //     local procedure ReadSellerDtls()
    //     var
    //         CompanyInformationBuff: Record "Company Information";
    //         LocationBuff: Record Location;
    //         StateBuff: Record State;
    //         Gstin: Text[15];
    //         TrdNm: Text[100];
    //         Bno: Text[60];
    //         Bnm: Text[60];
    //         Flno: Text[60];
    //         Loc: Text[60];
    //         Dst: Text[60];
    //         Pin: Text[6];
    //         Stcd: Text[50];
    //         Ph: Text[10];
    //         Em: Text[50];
    //         PinInt: Integer;
    //     begin
    //         IF IsInvoice THEN
    //             WITH SalesInvoiceHeader DO BEGIN
    //                 Gstin := "Location GST Reg. No.";// "Location GST Reg. No.";
    //                 CompanyInformationBuff.GET;
    //                 TrdNm := CompanyInformationBuff.Name;
    //                 LocationBuff.GET("Location Code");
    //                 Bno := LocationBuff.Address;
    //                 Bnm := LocationBuff."Address 2";
    //                 Flno := 'FLNo1';
    //                 Loc := LocationBuff.City;
    //                 Dst := LocationBuff.City;
    //                 LocationBuff.TESTFIELD("Post Code");
    //                 Pin := COPYSTR(LocationBuff."Post Code", 1, 6);

    //                 StateBuff.GET(LocationBuff."State Code");
    //                 Stcd := StateBuff."State Code (GST Reg. No.)";
    //                 Ph := RemoveSpecialChar(COPYSTR(LocationBuff."Phone No.", 1, 10));
    //                 Em := COPYSTR(LocationBuff."E-Mail", 1, 50);
    //             END
    //         ELSE
    //             IF IsTransferInvoice THEN
    //                 WITH TransferShipmentHeader DO BEGIN
    //                     LocationBuff.GET("Transfer-from Code");
    //                     Gstin := LocationBuff."GST Registration No.";// "Location GST Reg. No.";
    //                     CompanyInformationBuff.GET;
    //                     TrdNm := CompanyInformationBuff.Name;
    //                     Bno := LocationBuff.Address;
    //                     Bnm := LocationBuff."Address 2";
    //                     Flno := 'FLNo1';
    //                     Loc := LocationBuff.City;
    //                     Dst := LocationBuff.City;
    //                     LocationBuff.TESTFIELD("Post Code");
    //                     Pin := COPYSTR(LocationBuff."Post Code", 1, 6);

    //                     StateBuff.GET(LocationBuff."State Code");
    //                     Stcd := StateBuff."State Code (GST Reg. No.)";
    //                     Ph := RemoveSpecialChar(COPYSTR(LocationBuff."Phone No.", 1, 10));
    //                     Em := COPYSTR(LocationBuff."E-Mail", 1, 50);
    //                 END
    //             ELSE
    //                 WITH SalesCrMemoHeader DO BEGIN
    //                     Gstin := "Location GST Reg. No.";// "Location GST Reg. No.";
    //                                                      //Gstin := "Location GST Reg. No.";
    //                     CompanyInformationBuff.GET;
    //                     TrdNm := CompanyInformationBuff.Name;
    //                     LocationBuff.GET("Location Code");
    //                     Bno := LocationBuff.Address;
    //                     Bnm := LocationBuff."Address 2";
    //                     Flno := '';
    //                     Loc := LocationBuff.City;
    //                     Dst := LocationBuff.City;
    //                     Pin := COPYSTR(LocationBuff."Post Code", 1, 6);
    //                     StateBuff.GET(LocationBuff."State Code");
    //                     Stcd := StateBuff."State Code (GST Reg. No.)";
    //                     Ph := COPYSTR(LocationBuff."Phone No.", 1, 10);
    //                     Em := COPYSTR(LocationBuff."E-Mail", 1, 50);
    //                 END;
    //         EVALUATE(PinInt, Pin);
    //         WriteSellerDtls(Gstin, TrdNm, Bno, Bnm, Flno, Loc, Dst, PinInt, Stcd, Stcd, Ph, Em);
    //     end;

    //     local procedure WriteSellerDtls(Gstin: Text[15]; TrdNm: Text[100]; Bno: Text[60]; Bnm: Text[60]; Flno: Text[60]; Loc: Text[60]; Dst: Text[60]; Pin: Integer; Stcd: Text[50]; StName: Text; Ph: Text[10]; Em: Text[50])
    //     begin
    //         JsonTextWriter.WritePropertyName('BillFrom_Gstin');
    //         IF Gstin <> '' THEN
    //             JsonTextWriter.WriteValue(Gstin)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillFrom_LglNm');
    //         IF TrdNm <> '' THEN
    //             JsonTextWriter.WriteValue(TrdNm)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);


    //         JsonTextWriter.WritePropertyName('BillFrom_TrdNm');
    //         IF TrdNm <> '' THEN
    //             JsonTextWriter.WriteValue(TrdNm)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillFrom_Addr1');
    //         IF Bno <> '' THEN
    //             JsonTextWriter.WriteValue(Bno)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //         JsonTextWriter.WritePropertyName('BillFrom_Addr2');
    //         IF Bnm <> '' THEN
    //             JsonTextWriter.WriteValue(Bnm)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillFrom_Loc');
    //         IF Loc <> '' THEN
    //             JsonTextWriter.WriteValue(Loc)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillFrom_Pin');
    //         IF Pin <> 0 THEN
    //             JsonTextWriter.WriteValue(Pin)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillFrom_Stcd');
    //         IF Stcd <> '' THEN
    //             JsonTextWriter.WriteValue((Stcd))
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillFrom_State');
    //         IF Stcd <> '' THEN
    //             JsonTextWriter.WriteValue((Stcd))
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillFrom_Ph');
    //         IF Ph <> '' THEN
    //             JsonTextWriter.WriteValue(Ph)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillFrom_Em');
    //         IF Em <> '' THEN
    //             JsonTextWriter.WriteValue(Em)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //     end;

    //     local procedure ReadBuyerDtls()
    //     var
    //         Contact: Record Contact;
    //         LocationBuff: Record Location;
    //         SalesInvoiceLine: Record "Sales Invoice Line";
    //         SalesCrMemoLine: Record "Sales Cr.Memo Line";
    //         ShipToAddr: Record "Ship-to Address";
    //         StateBuff: Record State;
    //         Gstin: Text[15];
    //         TrdNm: Text[100];
    //         Bno: Text[60];
    //         Bnm: Text[60];
    //         Flno: Text[60];
    //         Loc: Text[60];
    //         Dst: Text[60];
    //         Pin: Text[6];
    //         Stcd: Text[2];
    //         STName: Text;
    //         Ph: Text[10];
    //         Em: Text[50];
    //         Customer: Record Customer;
    //     begin
    //         IF IsInvoice THEN
    //             WITH SalesInvoiceHeader DO BEGIN
    //                 Gstin := "Customer GST Reg. No.";
    //                 TrdNm := "Bill-to Name";
    //                 Bno := "Bill-to Address";
    //                 Bnm := "Bill-to Address 2";
    //                 Flno := 'F1';
    //                 Loc := "Bill-to City";
    //                 Dst := "Bill-to City";
    //                 Pin := COPYSTR("Bill-to Post Code", 1, 6);
    //                 SalesInvoiceLine.SETRANGE("Document No.", "No.");
    //                 SalesInvoiceLine.SETFILTER(Quantity, '<>%1', 0);
    //                 IF SalesInvoiceLine.FINDFIRST THEN
    //                     IF SalesInvoiceLine."GST Place of Supply" = SalesInvoiceLine."GST Place of Supply"::"Bill-to Address" THEN BEGIN
    //                         IF NOT ("GST Customer Type" = "GST Customer Type"::Export) THEN BEGIN
    //                             StateBuff.GET("GST Bill-to State Code");
    //                             Stcd := StateBuff."State Code (GST Reg. No.)";
    //                         END ELSE
    //                             Stcd := '';
    //                         Customer.GET("Bill-to Customer No.");
    //                         IF Customer."Phone No." <> '' THEN BEGIN
    //                             Ph := COPYSTR(Customer."Phone No.", 1, 10);
    //                             Em := COPYSTR(Customer."E-Mail", 1, 50);
    //                         END ELSE
    //                             IF Contact.GET("Bill-to Contact No.") THEN BEGIN
    //                                 Ph := COPYSTR(Contact."Phone No.", 1, 10);
    //                                 Em := COPYSTR(Contact."E-Mail", 1, 50);
    //                             END ELSE BEGIN
    //                                 Ph := '';
    //                                 Em := '';
    //                             END;
    //                     END ELSE
    //                         IF SalesInvoiceLine."GST Place of Supply" = SalesInvoiceLine."GST Place of Supply"::"Ship-to Address" THEN BEGIN
    //                             IF NOT ("GST Customer Type" = "GST Customer Type"::Export) THEN BEGIN
    //                                 StateBuff.GET("GST Ship-to State Code");
    //                                 Stcd := StateBuff."State Code (GST Reg. No.)";
    //                             END ELSE
    //                                 Stcd := '';
    //                             IF ShipToAddr.GET("Sell-to Customer No.", "Ship-to Code") THEN BEGIN
    //                                 Ph := COPYSTR(ShipToAddr."Phone No.", 1, 10);
    //                                 Em := COPYSTR(ShipToAddr."E-Mail", 1, 50);
    //                             END ELSE BEGIN
    //                                 Ph := '';
    //                                 Em := '';
    //                             END;
    //                         END ELSE BEGIN
    //                             Stcd := '';
    //                             Ph := '';
    //                             Em := '';
    //                         END;
    //             END
    //         ELSE
    //             IF IsTransferInvoice THEN
    //                 WITH TransferShipmentHeader DO BEGIN
    //                     LocationBuff.GET("Transfer-to Code");
    //                     Gstin := LocationBuff."GST Registration No.";
    //                     TrdNm := LocationBuff.Name;
    //                     Bno := LocationBuff.Address;
    //                     Bnm := LocationBuff."Address 2";
    //                     Flno := '';
    //                     Loc := LocationBuff.City;
    //                     Dst := LocationBuff.City;
    //                     Pin := COPYSTR(LocationBuff."Post Code", 1, 6);
    //                     StateBuff.GET(LocationBuff."State Code");
    //                     Stcd := StateBuff."State Code (GST Reg. No.)";
    //                     Ph := COPYSTR(LocationBuff."Phone No.", 1, 10);
    //                     Em := COPYSTR(LocationBuff."E-Mail", 1, 50);
    //                 END
    //             ELSE
    //                 WITH SalesCrMemoHeader DO BEGIN
    //                     IsSalesCreditMemo := TRUE;
    //                     Gstin := "Customer GST Reg. No.";
    //                     TrdNm := "Bill-to Name";
    //                     Bno := "Bill-to Address";
    //                     Bnm := "Bill-to Address 2";
    //                     Flno := '';
    //                     Loc := "Bill-to City";
    //                     Dst := "Bill-to City";
    //                     Pin := COPYSTR("Bill-to Post Code", 1, 6);
    //                     SalesCrMemoLine.SETRANGE("Document No.", "No.");
    //                     SalesCrMemoLine.SETFILTER(Quantity, '<>%1', 0);
    //                     IF SalesCrMemoLine.FINDFIRST THEN
    //                         IF SalesCrMemoLine."GST Place of Supply" = SalesCrMemoLine."GST Place of Supply"::"Bill-to Address" THEN BEGIN
    //                             IF NOT ("GST Customer Type" = "GST Customer Type"::Export) THEN BEGIN
    //                                 StateBuff.GET("GST Bill-to State Code");
    //                                 Stcd := StateBuff."State Code (GST Reg. No.)";
    //                             END ELSE
    //                                 Stcd := '';
    //                             IF Contact.GET("Bill-to Contact No.") THEN BEGIN
    //                                 Ph := COPYSTR(Contact."Phone No.", 1, 10);
    //                                 Em := COPYSTR(Contact."E-Mail", 1, 50);
    //                             END ELSE BEGIN
    //                                 Ph := '';
    //                                 Em := '';
    //                             END;
    //                         END ELSE
    //                             IF SalesCrMemoLine."GST Place of Supply" = SalesCrMemoLine."GST Place of Supply"::"Ship-to Address" THEN BEGIN
    //                                 IF NOT (SalesInvoiceHeader."GST Customer Type" = SalesInvoiceHeader."GST Customer Type"::Export) THEN BEGIN
    //                                     StateBuff.GET("GST Ship-to State Code");
    //                                     Stcd := StateBuff."State Code (GST Reg. No.)";
    //                                 END ELSE
    //                                     Stcd := '';
    //                                 IF ShipToAddr.GET("Sell-to Customer No.", "Ship-to Code") THEN BEGIN
    //                                     Ph := COPYSTR(ShipToAddr."Phone No.", 1, 10);
    //                                     Em := COPYSTR(ShipToAddr."E-Mail", 1, 50);
    //                                 END ELSE BEGIN
    //                                     Ph := '';
    //                                     Em := '';
    //                                 END;
    //                             END ELSE BEGIN
    //                                 Stcd := '';
    //                                 Ph := '';
    //                                 Em := '';
    //                             END;
    //                 END;
    //         Ph := RemoveSpecialChar(Ph);
    //         GlbTrdNm := TrdNm;
    //         GlbBno := Bno;
    //         GlbBnm := Bnm;
    //         GlbFlno := Flno;
    //         GlbLoc := Loc;
    //         GlbDst := Dst;
    //         GlbPin := Pin;
    //         GlbStcd := Stcd;
    //         GlbStName := STName;
    //         GlbPh := Ph;
    //         GlbEm := Em;

    //         IF ISExport THEN BEGIN
    //             Gstin := 'URP';
    //             Stcd := '96';
    //         END;
    //         WriteBuyerDtls(Gstin, TrdNm, Bno, Bnm, Flno, Loc, Dst, Pin, Stcd, STName, Ph, Em);
    //         //WriteBuyerDtls('07AAACW3775F1Z8',TrdNm,Bno,Bnm,Flno,Loc,Dst,Pin,Stcd,STName,Ph,Em);
    //     end;

    //     local procedure WriteBuyerDtls(Gstin: Text[15]; TrdNm: Text[100]; Bno: Text[60]; Bnm: Text[60]; Flno: Text[60]; Loc: Text[60]; Dst: Text[60]; Pin: Text[6]; Stcd: Text[2]; StName: Text; Ph: Text[10]; Em: Text[50])
    //     begin
    //         JsonTextWriter.WritePropertyName('BillTo_Gstin');
    //         IF Gstin <> '' THEN
    //             JsonTextWriter.WriteValue(Gstin)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //         JsonTextWriter.WritePropertyName('BillTo_LglNm');
    //         IF TrdNm <> '' THEN
    //             JsonTextWriter.WriteValue(TrdNm)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillTo_TrdNm');
    //         IF TrdNm <> '' THEN
    //             JsonTextWriter.WriteValue(TrdNm)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillTo_Addr1');
    //         IF Bno <> '' THEN
    //             JsonTextWriter.WriteValue(Bno)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillTo_Addr2');
    //         IF Bnm <> '' THEN
    //             JsonTextWriter.WriteValue(Bnm)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillTo_Loc');
    //         IF Loc <> '' THEN
    //             JsonTextWriter.WriteValue(Loc)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillTo_Pin');
    //         IF Pin <> '' THEN
    //             IF ConverttexttoInteger(Pin) <> 0 THEN
    //                 JsonTextWriter.WriteValue(ConverttexttoInteger(Pin))
    //             ELSE
    //                 JsonTextWriter.WriteValue(GlobalNULL)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillTo_Stcd');
    //         IF Stcd <> '' THEN
    //             JsonTextWriter.WriteValue(Stcd)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillTo_Pos');
    //         IF Stcd <> '' THEN
    //             JsonTextWriter.WriteValue(Stcd)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);


    //         JsonTextWriter.WritePropertyName('BillTo_Ph');
    //         IF Ph <> '' THEN
    //             IF ConverttexttoInteger(Ph) <> 0 THEN
    //                 JsonTextWriter.WriteValue(ConverttexttoInteger(Ph))
    //             ELSE
    //                 JsonTextWriter.WriteValue(GlobalNULL)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('BillTo_Em');
    //         IF Em <> '' THEN
    //             JsonTextWriter.WriteValue(Em)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         //JsonTextWriter.WriteEndObject;
    //     end;

    //     local procedure ReadShipDtls()
    //     var
    //         ShipToAddr: Record "Ship-to Address";
    //         LocationBuff: Record Location;
    //         StateBuff: Record State;
    //         Gstin: Text[15];
    //         TrdNm: Text[100];
    //         Bno: Text[60];
    //         Bnm: Text[60];
    //         Flno: Text[60];
    //         Loc: Text[60];
    //         Dst: Text[60];
    //         Pin: Text[6];
    //         Stcd: Text[2];
    //         Ph: Text[10];
    //         Em: Text[50];
    //     begin

    //         IF IsInvoice AND (SalesInvoiceHeader."Ship-to Code" <> '') THEN BEGIN
    //             WITH SalesInvoiceHeader DO BEGIN
    //                 ShipToAddr.GET("Sell-to Customer No.", "Ship-to Code");
    //                 Gstin := ShipToAddr."GST Registration No.";
    //                 TrdNm := "Ship-to Name";
    //                 IF "Ship-to Address" = '' THEN
    //                     Bno := ShipToAddr.Address
    //                 ELSE
    //                     Bno := "Ship-to Address";
    //                 IF "Ship-to Address 2" = '' THEN
    //                     Bnm := ShipToAddr."Address 2"
    //                 ELSE
    //                     Bnm := "Ship-to Address 2";
    //                 Flno := 'F11';
    //                 IF "Ship-to City" <> '' THEN BEGIN
    //                     Loc := "Ship-to City";
    //                     Dst := "Ship-to City";
    //                     Pin := COPYSTR("Ship-to Post Code", 1, 6);
    //                 END ELSE BEGIN
    //                     Loc := ShipToAddr.City;
    //                     Dst := ShipToAddr.City;
    //                     Pin := COPYSTR(ShipToAddr."Post Code", 1, 6);
    //                 END;

    //                 StateBuff.GET("GST Ship-to State Code");
    //                 Stcd := StateBuff."State Code (GST Reg. No.)";
    //                 Ph := COPYSTR(ShipToAddr."Phone No.", 1, 10);
    //                 Em := COPYSTR(ShipToAddr."E-Mail", 1, 50);
    //             END;
    //             IF ISExport THEN BEGIN
    //                 Gstin := 'URP';
    //                 Stcd := '96';
    //             END;
    //             WriteShipDtls(Gstin, TrdNm, Bno, Bnm, Flno, Loc, Dst, Pin, Stcd, Ph, Em);
    //         END ELSE
    //             IF IsTransferInvoice THEN
    //                 WITH TransferShipmentHeader DO BEGIN
    //                     LocationBuff.GET("Transfer-to Code");
    //                     Gstin := LocationBuff."GST Registration No.";
    //                     TrdNm := LocationBuff.Name;
    //                     Bno := LocationBuff.Address;
    //                     Bnm := LocationBuff."Address 2";
    //                     Flno := '';
    //                     Loc := LocationBuff.City;
    //                     Dst := LocationBuff.City;
    //                     Pin := COPYSTR(LocationBuff."Post Code", 1, 6);
    //                     StateBuff.GET(LocationBuff."State Code");
    //                     Stcd := StateBuff."State Code (GST Reg. No.)";
    //                     Ph := COPYSTR(LocationBuff."Phone No.", 1, 10);
    //                     Em := COPYSTR(LocationBuff."E-Mail", 1, 50);
    //                 END
    //             ELSE
    //                 IF SalesCrMemoHeader."Ship-to Code" <> '' THEN BEGIN
    //                     WITH SalesCrMemoHeader DO BEGIN
    //                         ShipToAddr.GET("Sell-to Customer No.", "Ship-to Code");
    //                         Gstin := ShipToAddr."GST Registration No.";
    //                         TrdNm := "Ship-to Name";
    //                         IF "Ship-to Address" = '' THEN
    //                             Bno := ShipToAddr.Address
    //                         ELSE
    //                             Bno := "Ship-to Address";
    //                         IF "Ship-to Address 2" = '' THEN
    //                             Bnm := ShipToAddr."Address 2"
    //                         ELSE
    //                             Bnm := "Ship-to Address 2";
    //                         Flno := 'F11';
    //                         IF "Ship-to City" <> '' THEN BEGIN
    //                             Loc := "Ship-to City";
    //                             Dst := "Ship-to City";
    //                             Pin := COPYSTR("Ship-to Post Code", 1, 6);
    //                         END ELSE BEGIN
    //                             Loc := ShipToAddr.City;
    //                             Dst := ShipToAddr.City;
    //                             Pin := COPYSTR(ShipToAddr."Post Code", 1, 6);
    //                         END;

    //                         StateBuff.GET("GST Ship-to State Code");
    //                         Stcd := StateBuff."State Code (GST Reg. No.)";
    //                         Ph := COPYSTR(ShipToAddr."Phone No.", 1, 10);
    //                         Em := COPYSTR(ShipToAddr."E-Mail", 1, 50);
    //                     END;
    //                     WriteShipDtls(Gstin, TrdNm, Bno, Bnm, Flno, Loc, Dst, Pin, Stcd, Ph, Em);
    //                 END;
    //         IF (IsSalesCreditMemo) AND (SalesCrMemoHeader."Ship-to Code" = '') THEN
    //             TrdNm := '';

    //         IF ISExport THEN BEGIN
    //             GSTNNo := 'URP';
    //             GlbStcd := '96';
    //         END;
    //         IF (TrdNm = '') THEN
    //             WriteShipDtls(GSTNNo, GlbTrdNm, GlbBno, GlbBnm, GlbFlno, GlbLoc, GlbDst, GlbPin, GlbStcd, GlbPh, GlbEm);
    //     end;

    //     local procedure WriteShipDtls(Gstin: Text[15]; TrdNm: Text[100]; Bno: Text[60]; Bnm: Text[60]; Flno: Text[60]; Loc: Text[60]; Dst: Text[60]; Pin: Text[6]; Stcd: Text[2]; Ph: Text[10]; Em: Text[50])
    //     begin
    //         JsonTextWriter.WritePropertyName('ShipTo_Gstin');
    //         IF Gstin <> '' THEN
    //             JsonTextWriter.WriteValue(Gstin)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //         JsonTextWriter.WritePropertyName('ShipTo_LglNm');
    //         IF TrdNm <> '' THEN
    //             JsonTextWriter.WriteValue(TrdNm)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('ShipTo_TrdNm');
    //         IF TrdNm <> '' THEN
    //             JsonTextWriter.WriteValue(TrdNm)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);


    //         JsonTextWriter.WritePropertyName('Bno');
    //         IF Bno <> '' THEN
    //             JsonTextWriter.WriteValue(Bno)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('ShipTo_Addr1');
    //         IF Bnm <> '' THEN
    //             JsonTextWriter.WriteValue(Bnm)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('ShipTo_Addr2');
    //         IF Flno <> '' THEN
    //             JsonTextWriter.WriteValue(Flno)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('ShipTo_Loc');
    //         IF Loc <> '' THEN
    //             JsonTextWriter.WriteValue(Loc)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('ShipTo_Pin');
    //         IF Pin <> '' THEN
    //             JsonTextWriter.WriteValue(Pin)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('ShipTo_Stcd');
    //         IF Stcd <> '' THEN
    //             JsonTextWriter.WriteValue(Stcd)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //     end;

    //     local procedure ReadValDtls()
    //     var
    //         AssVal: Decimal;
    //         CgstVal: Decimal;
    //         SgstVal: Decimal;
    //         IgstVal: Decimal;
    //         CesVal: Decimal;
    //         StCesVal: Decimal;
    //         CesNonAdval: Decimal;
    //         Disc: Decimal;
    //         OthChrg: Decimal;
    //         TotInvVal: Decimal;
    //         RndOffVal: Decimal;
    //         TCSVal: Decimal;
    //     begin
    //         GetGSTVal(AssVal, CgstVal, SgstVal, IgstVal, CesVal, StCesVal, CesNonAdval, Disc, OthChrg, RndOffVal, TCSVal, TotInvVal);
    //         WriteValDtls(AssVal, CgstVal, SgstVal, IgstVal, CesVal, StCesVal, CesNonAdval, Disc, OthChrg, RndOffVal, TCSVal, TotInvVal);
    //     end;

    //     local procedure WriteValDtls(Assval: Decimal; CgstVal: Decimal; SgstVAl: Decimal; IgstVal: Decimal; CesVal: Decimal; StCesVal: Decimal; CesNonAdVal: Decimal; Disc: Decimal; OthChrg: Decimal; RndOffVal: Decimal; TCSVal: Decimal; TotInvVal: Decimal)
    //     begin
    //         JsonTextWriter.WritePropertyName('Val_AssVal');
    //         JsonTextWriter.WriteValue(Assval);
    //         JsonTextWriter.WritePropertyName('Val_CgstVal');
    //         JsonTextWriter.WriteValue(CgstVal);
    //         JsonTextWriter.WritePropertyName('Val_SgstVal');
    //         JsonTextWriter.WriteValue(SgstVAl);
    //         JsonTextWriter.WritePropertyName('Val_IgstVal');
    //         JsonTextWriter.WriteValue(IgstVal);
    //         JsonTextWriter.WritePropertyName('Val_CesVal');
    //         JsonTextWriter.WriteValue(CesVal);
    //         JsonTextWriter.WritePropertyName('Val_StCesVal');
    //         JsonTextWriter.WriteValue(StCesVal);
    //         //JsonTextWriter.WritePropertyName('CesNonAdVal');
    //         //JsonTextWriter.WriteValue(CesNonAdVal);
    //         JsonTextWriter.WritePropertyName('Val_Discount');
    //         JsonTextWriter.WriteValue(Disc);
    //         JsonTextWriter.WritePropertyName('Val_OthChrg');
    //         JsonTextWriter.WriteValue(OthChrg + TCSVal);

    //         JsonTextWriter.WritePropertyName('Val_RndOffVal');
    //         JsonTextWriter.WriteValue(ABS(RndOffVal));

    //         JsonTextWriter.WritePropertyName('Val_TotInvVal');
    //         JsonTextWriter.WriteValue(TotInvVal);
    //     end;

    //     local procedure ReadItemList()
    //     var
    //         SalesInvoiceLine: Record "Sales Invoice Line";
    //         SalesCrMemoLine: Record "Sales Cr.Memo Line";
    //         TransferShipmentLine: Record "Transfer Shipment Line";
    //         AssAmt: Decimal;
    //         CgstRt: Decimal;
    //         SgstRt: Decimal;
    //         IgstRt: Decimal;
    //         CesRt: Decimal;
    //         CesNonAdval: Decimal;
    //         StateCes: Decimal;
    //         FreeQty: Decimal;
    //         CgstAmt: Decimal;
    //         SgstAmt: Decimal;
    //         IgstAmt: Decimal;
    //         CesAmt: Decimal;
    //         CesNonAdvalAmt: Decimal;
    //         StateCesAmt: Decimal;
    //         STCessValAmt: Decimal;
    //         DiscAmt: Decimal;
    //         DecAssAmt: Decimal;
    //         OtherChrAmt: Decimal;
    //         TotalInvValue: Decimal;
    //         NotChargeAmt: Decimal;
    //     begin
    //         IF IsInvoice THEN BEGIN
    //             SalesInvoiceLine.SETRANGE("Document No.", DocumentNo);
    //             SalesInvoiceLine.SETRANGE("System-Created Entry", FALSE);
    //             SalesInvoiceLine.SETFILTER(Quantity, '<>%1', 0);
    //             SalesInvoiceLine.SETFILTER("No.", '<>%1', '');
    //             IF SalesInvoiceLine.FINDSET THEN BEGIN
    //                 IF SalesInvoiceLine.COUNT > 1000 THEN
    //                     ERROR(SalesLinesErr, SalesInvoiceLine.COUNT);
    //                 JsonTextWriter.WritePropertyName('Data');
    //                 JsonTextWriter.WriteStartArray;
    //                 REPEAT
    //                     JsonTextWriter.WriteStartObject;
    //                     IF SalesInvoiceLine."GST Assessable Value (LCY)" <> 0 THEN
    //                         AssAmt := SalesInvoiceLine."GST Assessable Value (LCY)"
    //                     ELSE
    //                         AssAmt := SalesInvoiceLine."GST Base Amount";
    //                     IF SalesInvoiceLine."Free Supply" THEN
    //                         FreeQty := SalesInvoiceLine.Quantity
    //                     ELSE
    //                         FreeQty := 0;
    //                     CgstAmt := 0;
    //                     SgstAmt := 0;
    //                     IgstAmt := 0;
    //                     STCessValAmt := 0;
    //                     CesNonAdval := 0;
    //                     DiscAmt := 0;
    //                     OtherChrAmt := 0;
    //                     DecAssAmt := 0;
    //                     CgstRt := 0;
    //                     SgstRt := 0;
    //                     IgstRt := 0;
    //                     TotalInvValue := 0;
    //                     NotChargeAmt := 0;
    //                     //MSKS
    //                     WriteFileHeader;
    //                     ReadTransDtls(SalesInvoiceHeader."GST Customer Type", SalesInvoiceHeader."Ship-to Code");
    //                     ReadDocDtls;

    //                     ReadSellerDtls;
    //                     ReadBuyerDtls;
    //                     ReadShipDtls;
    //                     ReadExpDtls;
    //                     //MSKS
    //                     IF SalesInvoiceLine."Charges To Customer" <> 0 THEN BEGIN
    //                         IF (SalesInvoiceLine."GST Base Amount" = (SalesInvoiceLine.Amount + SalesInvoiceLine."Charges To Customer")) THEN
    //                             NotChargeAmt := SalesInvoiceLine."Charges To Customer"
    //                         ELSE
    //                             IF (SalesInvoiceLine."GST Base Amount" = (SalesInvoiceLine.Amount + SalesInvoiceLine."Charges To Customer" + (SalesInvoiceLine."GST Base Amount" - SalesInvoiceLine.Amount - SalesInvoiceLine."Charges To Customer"))) THEN
    //                                 NotChargeAmt := SalesInvoiceLine."Charges To Customer" + (SalesInvoiceLine."GST Base Amount" - SalesInvoiceLine.Amount - SalesInvoiceLine."Charges To Customer")
    //                             ELSE
    //                                 NotChargeAmt := 0;
    //                     END;
    //                     GetGSTCompRate(SalesInvoiceLine."Document No.", SalesInvoiceLine."Line No.",
    //                       CgstRt, SgstRt, IgstRt, CesRt, CesNonAdval, StateCes);
    //                     GetGSTValLine(SalesInvoiceLine."Document No.", SalesInvoiceLine."Line No.", DecAssAmt,
    //                       CgstAmt, SgstAmt, IgstAmt, CesAmt, STCessValAmt, CesNonAdvalAmt, DiscAmt, OtherChrAmt, TotalInvValue);
    //                     WriteItem(
    //                       SalesInvoiceLine.Description + SalesInvoiceLine."Description 2", (SalesInvoiceLine."GST Group Type" = SalesInvoiceLine."GST Group Type"::Service),
    //                       SalesInvoiceLine."HSN/SAC Code", '',  //rajiv
    //                                                             //'481013','9963',  //rajiv
    //                       SalesInvoiceLine.Quantity, FreeQty,
    //                       COPYSTR(GetGSTUOM(SalesInvoiceLine."Unit of Measure Code"), 1, 3),
    //                       SalesInvoiceLine."Unit Price",
    //                       SalesInvoiceLine."Line Amount" + SalesInvoiceLine."Line Discount Amount" + NotChargeAmt,
    //                       DiscAmt, OtherChrAmt,
    //                       AssAmt, CgstRt, SgstRt, IgstRt, CesRt, CesNonAdval, StateCes,
    //                       SalesInvoiceLine."Amount Including Tax" + SalesInvoiceLine."Total GST Amount" + SalesInvoiceLine."Charges To Customer",
    //                       SalesInvoiceLine."Line No.", CgstAmt, SgstAmt, IgstAmt, CesAmt, StateCesAmt);
    //                     ReadValDtls; //MSKS
    //                     JsonTextWriter.WriteEndObject;
    //                 UNTIL SalesInvoiceLine.NEXT = 0;
    //             END;
    //         END ELSE
    //             IF IsTransferInvoice THEN BEGIN
    //                 TransferShipmentLine.SETRANGE("Document No.", DocumentNo);
    //                 //TransferShipmentLine.SETRANGE("System-Created Entry",FALSE);
    //                 TransferShipmentLine.SETFILTER(Quantity, '<>%1', 0);
    //                 TransferShipmentLine.SETFILTER("Item No.", '<>%1', '');
    //                 IF TransferShipmentLine.FINDFIRST THEN BEGIN
    //                     IF TransferShipmentLine.COUNT > 1000 THEN
    //                         ERROR(SalesLinesErr, TransferShipmentLine.COUNT);
    //                     JsonTextWriter.WritePropertyName('Data');
    //                     JsonTextWriter.WriteStartArray;
    //                     REPEAT
    //                         JsonTextWriter.WriteStartObject;

    //                         CgstAmt := 0;
    //                         SgstAmt := 0;
    //                         IgstAmt := 0;
    //                         STCessValAmt := 0;
    //                         CesNonAdval := 0;
    //                         DiscAmt := 0;
    //                         OtherChrAmt := 0;
    //                         DecAssAmt := 0;
    //                         CgstRt := 0;
    //                         SgstRt := 0;
    //                         IgstRt := 0;
    //                         //MSKS
    //                         WriteFileHeader;
    //                         // ReadTransDtls(TransferShipmentHeader."GST Customer Type",TransferShipmentHeader."Ship-to Code");
    //                         ReadTransDtls(0, '');  //Rajiv
    //                         ReadDocDtls;

    //                         ReadSellerDtls;
    //                         ReadBuyerDtls;
    //                         ReadShipDtls;
    //                         ReadExpDtls; //Rajiv
    //                                      //MSKS

    //                         // Rajiv>>
    //                         GetGSTCompRate(TransferShipmentLine."Document No.", TransferShipmentLine."Line No.",
    //                           CgstRt, SgstRt, IgstRt, CesRt, CesNonAdval, StateCes);
    //                         GetGSTValLine(TransferShipmentLine."Document No.", TransferShipmentLine."Line No.", DecAssAmt,
    //                           CgstAmt, SgstAmt, IgstAmt, CesAmt, STCessValAmt, CesNonAdvalAmt, DiscAmt, OtherChrAmt, OtherChrAmt);
    //                         //Rajiv<<
    //                         /*
    //                         GetGSTCompRate(TransferShipmentLine."Document No.",TransferShipmentLine."Line No.",
    //                           CgstRt,SgstRt,IgstRt,CesRt,CesNonAdval,StateCes);
    //                         */
    //                         WriteItem(
    //                           TransferShipmentLine.Description + TransferShipmentLine."Description 2", FALSE,
    //                           TransferShipmentLine."HSN/SAC Code", '',  //Rajiv
    //                                                                     //'481013','9963',  //Rajiv
    //                           TransferShipmentLine.Quantity, FreeQty,
    //                           COPYSTR(GetGSTUOM(TransferShipmentLine."Unit of Measure Code"), 1, 3),
    //                           TransferShipmentLine."Unit Price",
    //                           TransferShipmentLine.Quantity * TransferShipmentLine."Unit Price",
    //                           0, 0,
    //                           AssAmt, CgstRt, SgstRt, IgstRt, CesRt, CesNonAdval, StateCes,
    //                           //TransferShipmentLine."Total Amount to Transfer"+TransferShipmentLine."Total GST Amount",  //Rajiv
    //                           TransferShipmentLine.Amount + TransferShipmentLine."Total GST Amount",  //Rajiv
    //                           TransferShipmentLine."Line No.", CgstAmt, SgstAmt, IgstAmt, CesAmt, StateCesAmt);
    //                         ReadValDtls; //MSKS
    //                         JsonTextWriter.WriteEndObject;

    //                     UNTIL TransferShipmentLine.NEXT = 0;
    //                 END;
    //             END
    //             ELSE BEGIN
    //                 SalesCrMemoLine.SETRANGE("Document No.", DocumentNo);
    //                 SalesCrMemoLine.SETRANGE("System-Created Entry", FALSE);
    //                 SalesCrMemoLine.SETFILTER(Quantity, '<>%1', 0);
    //                 SalesCrMemoLine.SETFILTER("No.", '<>%1', '');
    //                 IF SalesCrMemoLine.FIND('-') THEN BEGIN
    //                     IF SalesCrMemoLine.COUNT > 1000 THEN
    //                         ERROR(SalesLinesErr, SalesCrMemoLine.COUNT);
    //                     JsonTextWriter.WritePropertyName('Data');
    //                     JsonTextWriter.WriteStartArray;
    //                     REPEAT
    //                         JsonTextWriter.WriteStartObject;
    //                         CgstAmt := 0;
    //                         SgstAmt := 0;
    //                         IgstAmt := 0;
    //                         STCessValAmt := 0;
    //                         CesNonAdval := 0;
    //                         DiscAmt := 0;
    //                         OtherChrAmt := 0;
    //                         DecAssAmt := 0;
    //                         CgstRt := 0;
    //                         SgstRt := 0;
    //                         IgstRt := 0;
    //                         TotalInvValue := 0;
    //                         NotChargeAmt := 0;
    //                         //MSKS
    //                         WriteFileHeader;
    //                         ReadTransDtls(SalesCrMemoHeader."GST Customer Type", SalesCrMemoHeader."Ship-to Code");
    //                         ReadDocDtls;

    //                         ReadSellerDtls;
    //                         ReadBuyerDtls;
    //                         ReadShipDtls;
    //                         ReadExpDtls;
    //                         //MSKS

    //                         IF SalesCrMemoLine."GST Assessable Value (LCY)" <> 0 THEN
    //                             AssAmt := SalesCrMemoLine."GST Assessable Value (LCY)"
    //                         ELSE
    //                             AssAmt := SalesCrMemoLine."GST Base Amount";
    //                         IF SalesCrMemoLine."Free Supply" THEN
    //                             FreeQty := SalesCrMemoLine.Quantity
    //                         ELSE
    //                             FreeQty := 0;

    //                         IF SalesCrMemoLine."Charges To Customer" <> 0 THEN BEGIN
    //                             IF (SalesCrMemoLine."GST Base Amount" = (SalesCrMemoLine.Amount + SalesCrMemoLine."Charges To Customer")) THEN
    //                                 NotChargeAmt := SalesCrMemoLine."Charges To Customer"
    //                             ELSE
    //                                 IF (SalesCrMemoLine."GST Base Amount" = (SalesCrMemoLine.Amount + SalesCrMemoLine."Charges To Customer" + (SalesCrMemoLine."GST Base Amount" - SalesCrMemoLine.Amount - SalesCrMemoLine."Charges To Customer"))) THEN
    //                                     NotChargeAmt := SalesCrMemoLine."Charges To Customer" + (SalesCrMemoLine."GST Base Amount" - SalesCrMemoLine.Amount - SalesCrMemoLine."Charges To Customer")
    //                                 ELSE
    //                                     NotChargeAmt := 0;
    //                         END;
    //                         GetGSTCompRate(SalesCrMemoLine."Document No.", SalesCrMemoLine."Line No.",
    //                           CgstRt, SgstRt, IgstRt, CesRt, CesNonAdval, StateCes);
    //                         GetGSTValLine(SalesCrMemoLine."Document No.", SalesCrMemoLine."Line No.", DecAssAmt,
    //                           CgstAmt, SgstAmt, IgstAmt, CesAmt, STCessValAmt, CesNonAdvalAmt, DiscAmt, OtherChrAmt, TotalInvValue);

    //                         WriteItem(
    //                           SalesCrMemoLine.Description + SalesCrMemoLine."Description 2", (SalesCrMemoLine."GST Group Type" = SalesCrMemoLine."GST Group Type"::Service), //Rajiv
    //                           SalesCrMemoLine."HSN/SAC Code", '',  //Rajiv
    //                                                                //'481013','9963',  //Rajiv
    //                           SalesCrMemoLine.Quantity, FreeQty,
    //                           COPYSTR(GetGSTUOM(SalesCrMemoLine."Unit of Measure Code"), 1, 3),
    //                           SalesCrMemoLine."Unit Price",
    //                           SalesCrMemoLine."Line Amount" + SalesCrMemoLine."Line Discount Amount" + NotChargeAmt,
    //                           DiscAmt, OtherChrAmt,
    //                           AssAmt, CgstRt, SgstRt, IgstRt, CesRt, CesNonAdval, StateCes,
    //                           SalesCrMemoLine."Amount Including Tax" + SalesCrMemoLine."Total GST Amount" + SalesCrMemoLine."Charges To Customer",
    //                           SalesCrMemoLine."Line No.", CgstAmt, SgstAmt, IgstAmt, CesAmt, StateCesAmt);
    //                         ReadValDtls; //MSKS
    //                         JsonTextWriter.WriteEndObject;

    //                     UNTIL SalesCrMemoLine.NEXT = 0;
    //                 END;
    //             END;

    //     end;

    //     local procedure WriteItem(PrdNm: Text[100]; IsService: Boolean; HsnCd: Text[8]; Barcde: Text[30]; Qty: Decimal; FreeQty: Decimal; Unit: Text[3]; UnitPrice: Decimal; TotAmt: Decimal; Discount: Decimal; OthChrg: Decimal; AssAmt: Decimal; CgstRt: Decimal; SgstRt: Decimal; IgstRt: Decimal; CesRt: Decimal; CesNonAdval: Decimal; StateCes: Decimal; TotItemVal: Decimal; SILineNo: Integer; CgstAmt: Decimal; SgstAmt: Decimal; IgstAmt: Decimal; CesAmt: Decimal; StateCesAmt: Decimal)
    //     var
    //         ValueEntry: Record "Value Entry";
    //         ItemLedgerEntry: Record "Item Ledger Entry";
    //         ValueEntryRelation: Record "Value Entry Relation";
    //         ItemTrackingManagement: Codeunit "Item Tracking Management";
    //         InvoiceRowID: Text[250];
    //     begin
    //         SerialNo += 1;

    //         JsonTextWriter.WritePropertyName('Item_SlNo');
    //         JsonTextWriter.WriteValue(SerialNo);

    //         JsonTextWriter.WritePropertyName('Item_PrdDesc');
    //         IF PrdNm <> '' THEN
    //             JsonTextWriter.WriteValue(PrdNm)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         JsonTextWriter.WritePropertyName('Item_IsServc');
    //         IF IsService THEN
    //             JsonTextWriter.WriteValue('Y')
    //         ELSE
    //             JsonTextWriter.WriteValue('N');

    //         JsonTextWriter.WritePropertyName('Item_HsnCd');
    //         IF HsnCd <> '' THEN
    //             JsonTextWriter.WriteValue(HsnCd)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);

    //         IF Barcde <> '' THEN
    //             JsonTextWriter.WritePropertyName('Item_Barcde');
    //         IF Barcde <> '' THEN
    //             JsonTextWriter.WriteValue(Barcde);

    //         JsonTextWriter.WritePropertyName('Item_Qty');
    //         JsonTextWriter.WriteValue(Qty);
    //         JsonTextWriter.WritePropertyName('Item_FreeQty');
    //         JsonTextWriter.WriteValue(FreeQty);

    //         JsonTextWriter.WritePropertyName('Item_Unit');
    //         IF Unit <> '' THEN
    //             JsonTextWriter.WriteValue(Unit)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //         JsonTextWriter.WritePropertyName('Item_UnitPrice');
    //         JsonTextWriter.WriteValue(ROUND(UnitPrice * CurrExRate, 0.01, '='));
    //         JsonTextWriter.WritePropertyName('Item_TotAmt');
    //         JsonTextWriter.WriteValue(ROUND(TotAmt * CurrExRate, 0.01, '='));
    //         JsonTextWriter.WritePropertyName('Item_Discount');
    //         JsonTextWriter.WriteValue(Discount);
    //         JsonTextWriter.WritePropertyName('Item_OthChrg');
    //         JsonTextWriter.WriteValue(ROUND(OthChrg * CurrExRate, 0.01, '='));
    //         JsonTextWriter.WritePropertyName('Item_AssAmt');
    //         JsonTextWriter.WriteValue(AssAmt * CurrExRate);
    //         /*
    //         JsonTextWriter.WritePropertyName('CgstRt');
    //         JsonTextWriter.WriteValue(CgstRt);
    //         JsonTextWriter.WritePropertyName('SgstRt');
    //         JsonTextWriter.WriteValue(SgstRt);*/
    //         JsonTextWriter.WritePropertyName('Item_GstRt');
    //         JsonTextWriter.WriteValue(IgstRt + CgstRt + SgstRt);
    //         JsonTextWriter.WritePropertyName('Item_CesRt');
    //         JsonTextWriter.WriteValue(CesRt);
    //         JsonTextWriter.WritePropertyName('Item_IgstAmt');
    //         JsonTextWriter.WriteValue(IgstAmt);
    //         JsonTextWriter.WritePropertyName('Item_CgstAmt');
    //         JsonTextWriter.WriteValue(CgstAmt);
    //         JsonTextWriter.WritePropertyName('Item_SgstAmt');
    //         JsonTextWriter.WriteValue(SgstAmt);

    //         JsonTextWriter.WritePropertyName('Item_CesAmt');
    //         JsonTextWriter.WriteValue(CesAmt);
    //         JsonTextWriter.WritePropertyName('Item_CesNonAdval');
    //         JsonTextWriter.WriteValue(CesNonAdval);
    //         JsonTextWriter.WritePropertyName('Item_StateCesRt');
    //         JsonTextWriter.WriteValue(StateCes);
    //         JsonTextWriter.WritePropertyName('Item_TotItemVal');
    //         //JsonTextWriter.WriteValue(TotItemVal*CurrExRate); // STOP MSDJ 071020
    //         JsonTextWriter.WriteValue(ROUND(TotItemVal * CurrExRate, 0.01, '=')); // MSDJ 071020
    //         /*
    //         IF IsInvoice THEN
    //           InvoiceRowID := ItemTrackingManagement.ComposeRowID(DATABASE::"Sales Invoice Line",0,DocumentNo,'',0,SILineNo)
    //         ELSE
    //           InvoiceRowID := ItemTrackingManagement.ComposeRowID(DATABASE::"Sales Cr.Memo Line",0,DocumentNo,'',0,SILineNo);
    //         ValueEntryRelation.SETCURRENTKEY("Source RowId");
    //         ValueEntryRelation.SETRANGE("Source RowId",InvoiceRowID);
    //         IF ValueEntryRelation.FINDSET THEN BEGIN
    //           JsonTextWriter.WritePropertyName('BchDtls');
    //           JsonTextWriter.WriteStartObject;
    //           REPEAT
    //             ValueEntry.GET(ValueEntryRelation."Value Entry No.");
    //             ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.");
    //             WriteBchDtls(
    //               COPYSTR(ItemLedgerEntry."Lot No." + ItemLedgerEntry."Serial No.",1,20),
    //               FORMAT(ItemLedgerEntry."Expiration Date",0,'<Year4>-<Month,2>-<Day,2>'),
    //               FORMAT(ItemLedgerEntry."Warranty Date",0,'<Year4>-<Month,2>-<Day,2>'));
    //           UNTIL ValueEntryRelation.NEXT = 0;
    //           JsonTextWriter.WriteEndObject;
    //         END;
    //         */

    //     end;

    //     local procedure WriteBchDtls(Nm: Text[20]; ExpDt: Text[10]; WrDt: Text[10])
    //     begin
    //         JsonTextWriter.WritePropertyName('Nm');
    //         IF Nm <> '' THEN
    //             JsonTextWriter.WriteValue(Nm)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //         JsonTextWriter.WritePropertyName('ExpDt');
    //         IF ExpDt <> '' THEN
    //             JsonTextWriter.WriteValue(ExpDt)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //         JsonTextWriter.WritePropertyName('WrDt');
    //         IF WrDt <> '' THEN
    //             JsonTextWriter.WriteValue(WrDt)
    //         ELSE
    //             JsonTextWriter.WriteValue(GlobalNULL);
    //     end;

    //     local procedure ExportAsJson(FileName: Text[20])
    //     var
    //         TempFile: File;
    //         ToFile: Variant;
    //         NewStream: InStream;
    //     begin
    //         TempFile.CREATETEMPFILE;
    //         TempFile.WRITE(StringBuilder.ToString);
    //         TempFile.CREATEINSTREAM(NewStream);
    //         ToFile := FileName + '.json';
    //         DOWNLOADFROMSTREAM(NewStream, 'e-Invoice', '', 'JSON files|*.json|All files (*.*)|*.*', ToFile);
    //         TempFile.CLOSE;
    //     end;

    //     [Scope('Internal')]
    //     procedure SetTransferShipHeader(TransShipmentHeaderBuff: Record "Transfer Shipment Header")
    //     begin
    //         TransferShipmentHeader := TransShipmentHeaderBuff;
    //         GlbLocCode := TransferShipmentHeader."Transfer-from Code";
    //         IsTransferInvoice := TRUE;
    //     end;

    //     [Scope('Internal')]
    //     procedure SetSalesInvHeader(SalesInvoiceHeaderBuff: Record "Sales Invoice Header")
    //     begin
    //         SalesInvoiceHeader := SalesInvoiceHeaderBuff;
    //         GlbLocCode := SalesInvoiceHeader."Location Code";
    //         IsInvoice := TRUE;
    //     end;

    //     [Scope('Internal')]
    //     procedure SetCrMemoHeader(SalesCrMemoHeaderBuff: Record "Sales Cr.Memo Header")
    //     begin
    //         SalesCrMemoHeader := SalesCrMemoHeaderBuff;
    //         GlbLocCode := SalesCrMemoHeader."Location Code";
    //         IsSalesCreditMemo := TRUE;  //Rajiv
    //         //IsInvoice := FALSE;
    //     end;

    //     local procedure GetRefInvNo(DocNo: Code[20]) RefInvNo: Code[20]
    //     var
    //         ReferenceInvoiceNo: Record "Reference Invoice No.";
    //     begin
    //         ReferenceInvoiceNo.SETRANGE("Document No.", DocNo);
    //         IF ReferenceInvoiceNo.FINDFIRST THEN
    //             RefInvNo := ReferenceInvoiceNo."Reference Invoice Nos."
    //         ELSE
    //             RefInvNo := RemoveSpecialChar(DocNo); //MSKS
    //     end;

    //     local procedure GetGSTCompRate(DocNo: Code[20]; LineNo: Integer; var CgstRt: Decimal; var SgstRt: Decimal; var IgstRt: Decimal; var CesRt: Decimal; var CesNonAdval: Decimal; var StateCes: Decimal)
    //     var
    //         DetailedGSTLedgerEntry: Record "Detailed GST Ledger Entry";
    //         GSTComponent: Record "GST Component";
    //     begin
    //         DetailedGSTLedgerEntry.SETRANGE("Document No.", DocNo);
    //         DetailedGSTLedgerEntry.SETRANGE("Document Line No.", LineNo);

    //         DetailedGSTLedgerEntry.SETRANGE("GST Component Code", 'CGST');
    //         IF DetailedGSTLedgerEntry.FINDFIRST THEN
    //             CgstRt := DetailedGSTLedgerEntry."GST %"
    //         ELSE
    //             CgstRt := 0;

    //         DetailedGSTLedgerEntry.SETRANGE("GST Component Code", 'SGST');
    //         IF DetailedGSTLedgerEntry.FINDFIRST THEN
    //             SgstRt := DetailedGSTLedgerEntry."GST %"
    //         ELSE
    //             SgstRt := 0;

    //         DetailedGSTLedgerEntry.SETRANGE("GST Component Code", 'IGST');
    //         IF DetailedGSTLedgerEntry.FINDFIRST THEN
    //             IgstRt := DetailedGSTLedgerEntry."GST %"
    //         ELSE
    //             IgstRt := 0;

    //         CesRt := 0;
    //         CesNonAdval := 0;
    //         DetailedGSTLedgerEntry.SETFILTER("GST Component Code", '%1|%2', 'CESS', 'CESS1');
    //         IF DetailedGSTLedgerEntry.FINDFIRST THEN
    //             IF DetailedGSTLedgerEntry."GST %" > 0 THEN
    //                 CesRt := DetailedGSTLedgerEntry."GST %"
    //             ELSE
    //                 CesNonAdval := ABS(DetailedGSTLedgerEntry."GST Amount");

    //         DetailedGSTLedgerEntry.SETRANGE("GST Component Code", 'INTERCESS');
    //         IF DetailedGSTLedgerEntry.FINDFIRST THEN
    //             CesRt := DetailedGSTLedgerEntry."GST %";

    //         StateCes := 0;
    //         DetailedGSTLedgerEntry.SETRANGE("GST Component Code");
    //         IF DetailedGSTLedgerEntry.FINDSET THEN
    //             REPEAT
    //                 IF NOT (DetailedGSTLedgerEntry."GST Component Code" IN ['CGST', 'SGST', 'IGST', 'CESS', 'INTERCESS'])
    //                 THEN
    //                     IF GSTComponent.GET(DetailedGSTLedgerEntry."GST Component Code") THEN
    //                         IF GSTComponent."Exclude from Reports" THEN
    //                             StateCes := DetailedGSTLedgerEntry."GST %";
    //             UNTIL DetailedGSTLedgerEntry.NEXT = 0;
    //     end;

    //     local procedure GetGSTVal(var AssVal: Decimal; var CgstVal: Decimal; var SgstVal: Decimal; var IgstVal: Decimal; var CesVal: Decimal; var StCesVal: Decimal; var CesNonAdval: Decimal; var Disc: Decimal; var OthChrg: Decimal; var RndOffVal: Decimal; var TCSVal: Decimal; var TotInvVal: Decimal)
    //     var
    //         SalesInvoiceLine: Record "Sales Invoice Line";
    //         SalesCrMemoLine: Record "Sales Cr.Memo Line";
    //         GSTLedgerEntry: Record "GST Ledger Entry";
    //         DetailedGSTLedgerEntry: Record "Detailed GST Ledger Entry";
    //         CurrExchRate: Record "Currency Exchange Rate";
    //         CustLedgerEntry: Record "Cust. Ledger Entry";
    //         GSTComponent: Record "GST Component";
    //         TotGSTAmt: Decimal;
    //     begin
    //         GSTLedgerEntry.SETRANGE("Document No.", DocumentNo);

    //         GSTLedgerEntry.SETRANGE("GST Component Code", 'CGST');
    //         IF GSTLedgerEntry.FINDSET THEN BEGIN
    //             REPEAT
    //                 CgstVal += ABS(GSTLedgerEntry."GST Amount");
    //             UNTIL GSTLedgerEntry.NEXT = 0;
    //         END ELSE
    //             CgstVal := 0;

    //         GSTLedgerEntry.SETRANGE("GST Component Code", 'SGST');
    //         IF GSTLedgerEntry.FINDSET THEN BEGIN
    //             REPEAT
    //                 SgstVal += ABS(GSTLedgerEntry."GST Amount")
    //             UNTIL GSTLedgerEntry.NEXT = 0;
    //         END ELSE
    //             SgstVal := 0;

    //         GSTLedgerEntry.SETRANGE("GST Component Code", 'IGST');
    //         IF GSTLedgerEntry.FINDSET THEN BEGIN
    //             REPEAT
    //                 IgstVal += ABS(GSTLedgerEntry."GST Amount")
    //             UNTIL GSTLedgerEntry.NEXT = 0;
    //         END ELSE
    //             IgstVal := 0;

    //         CesVal := 0;
    //         CesNonAdval := 0;

    //         GSTLedgerEntry.SETRANGE("GST Component Code", 'INTERCESS');
    //         IF GSTLedgerEntry.FINDSET THEN
    //             REPEAT
    //                 CesVal += ABS(GSTLedgerEntry."GST Amount")
    //             UNTIL GSTLedgerEntry.NEXT = 0;

    //         DetailedGSTLedgerEntry.SETRANGE("Document No.", DocumentNo);
    //         DetailedGSTLedgerEntry.SETFILTER("GST Component Code", '%1|%2', 'CESS', 'CESS1');
    //         IF DetailedGSTLedgerEntry.FINDFIRST THEN
    //             REPEAT
    //                 IF DetailedGSTLedgerEntry."GST %" > 0 THEN
    //                     CesVal += ABS(DetailedGSTLedgerEntry."GST Amount")
    //                 ELSE
    //                     CesNonAdval += ABS(DetailedGSTLedgerEntry."GST Amount");
    //             UNTIL DetailedGSTLedgerEntry.NEXT = 0;

    //         GSTLedgerEntry.SETFILTER("GST Component Code", '<>CGST&<>SGST&<>IGST&<>CESS&<>INTERCESS');
    //         IF GSTLedgerEntry.FINDSET THEN BEGIN
    //             REPEAT
    //                 IF GSTComponent.GET(GSTLedgerEntry."GST Component Code") THEN
    //                     IF GSTComponent."Exclude from Reports" THEN
    //                         StCesVal += ABS(GSTLedgerEntry."GST Amount");
    //             UNTIL GSTLedgerEntry.NEXT = 0;
    //         END;


    //         IF IsInvoice THEN BEGIN
    //             SalesInvoiceLine.SETRANGE("Document No.", DocumentNo);
    //             SalesInvoiceLine.SETFILTER(Quantity, '<>%1', 0);  //RK150421
    //             IF SalesInvoiceLine.FINDSET THEN BEGIN
    //                 REPEAT
    //                     IF SalesInvoiceLine."GST Assessable Value (LCY)" <> 0 THEN
    //                         AssVal += SalesInvoiceLine."GST Assessable Value (LCY)"
    //                     ELSE
    //                         AssVal += SalesInvoiceLine."GST Base Amount";
    //                     //AssVal += SalesInvoiceLine.Amount;
    //                     TotGSTAmt += SalesInvoiceLine."Total GST Amount";
    //                     Disc += SalesInvoiceLine."Inv. Discount Amount";
    //                     TCSVal += SalesInvoiceLine."Total TDS/TCS Incl. SHE CESS";
    //                 UNTIL SalesInvoiceLine.NEXT = 0;
    //             END;
    //             //Rajiv>>
    //             RndOffVal := 0;
    //             SalesInvoiceLine.SETRANGE("Document No.", DocumentNo);
    //             SalesInvoiceLine.SETRANGE("System-Created Entry", TRUE);
    //             IF SalesInvoiceLine.FINDSET THEN BEGIN
    //                 RndOffVal += SalesInvoiceLine.Amount;
    //             END;
    //             //Rajiv<<
    //             AssVal := ROUND(
    //                 CurrExchRate.ExchangeAmtFCYToLCY(
    //                   WORKDATE, SalesInvoiceHeader."Currency Code", AssVal, SalesInvoiceHeader."Currency Factor"), 0.01, '=');
    //             TotGSTAmt := ROUND(
    //                 CurrExchRate.ExchangeAmtFCYToLCY(
    //                   WORKDATE, SalesInvoiceHeader."Currency Code", TotGSTAmt, SalesInvoiceHeader."Currency Factor"), 0.01, '=');
    //             Disc := ROUND(
    //                 CurrExchRate.ExchangeAmtFCYToLCY(
    //                   WORKDATE, SalesInvoiceHeader."Currency Code", Disc, SalesInvoiceHeader."Currency Factor"), 0.01, '=');
    //         END ELSE BEGIN
    //             SalesCrMemoLine.SETRANGE("Document No.", DocumentNo);
    //             IF SalesCrMemoLine.FINDSET THEN BEGIN
    //                 REPEAT
    //                     IF SalesCrMemoLine."GST Assessable Value (LCY)" <> 0 THEN
    //                         AssVal += SalesCrMemoLine."GST Assessable Value (LCY)"
    //                     ELSE
    //                         AssVal += SalesCrMemoLine."GST Base Amount";
    //                     TotGSTAmt += SalesCrMemoLine."Total GST Amount";
    //                     Disc += SalesCrMemoLine."Inv. Discount Amount";
    //                     TCSVal += SalesCrMemoLine."Total TDS/TCS Incl SHE CESS";
    //                 UNTIL SalesCrMemoLine.NEXT = 0;
    //             END;
    //             //Rajiv>>
    //             RndOffVal := 0;
    //             SalesCrMemoLine.SETRANGE("Document No.", DocumentNo);
    //             SalesCrMemoLine.SETRANGE("System-Created Entry", TRUE);
    //             IF SalesCrMemoLine.FINDSET THEN BEGIN
    //                 RndOffVal += SalesCrMemoLine.Amount;
    //             END;
    //             //rajiv<<
    //             AssVal := ROUND(
    //                 CurrExchRate.ExchangeAmtFCYToLCY(
    //                   WORKDATE, SalesCrMemoHeader."Currency Code", AssVal, SalesCrMemoHeader."Currency Factor"), 0.01, '=');
    //             TotGSTAmt := ROUND(
    //                 CurrExchRate.ExchangeAmtFCYToLCY(
    //                   WORKDATE, SalesCrMemoHeader."Currency Code", TotGSTAmt, SalesCrMemoHeader."Currency Factor"), 0.01, '=');
    //             Disc := ROUND(
    //                 CurrExchRate.ExchangeAmtFCYToLCY(
    //                   WORKDATE, SalesCrMemoHeader."Currency Code", Disc, SalesCrMemoHeader."Currency Factor"), 0.01, '=');
    //         END;

    //         CustLedgerEntry.SETCURRENTKEY("Document No.");
    //         CustLedgerEntry.SETRANGE("Document No.", DocumentNo);
    //         IF IsInvoice THEN BEGIN
    //             CustLedgerEntry.SETRANGE("Document Type", CustLedgerEntry."Document Type"::Invoice);
    //             CustLedgerEntry.SETRANGE("Customer No.", SalesInvoiceHeader."Bill-to Customer No.");
    //         END ELSE BEGIN
    //             CustLedgerEntry.SETRANGE("Document Type", CustLedgerEntry."Document Type"::"Credit Memo");
    //             CustLedgerEntry.SETRANGE("Customer No.", SalesCrMemoHeader."Bill-to Customer No.");
    //         END;
    //         IF CustLedgerEntry.FINDFIRST THEN BEGIN
    //             CustLedgerEntry.CALCFIELDS("Amount (LCY)");
    //             TotInvVal := ABS(CustLedgerEntry."Amount (LCY)");
    //         END;

    //         OthChrg := 0;
    //         Disc := 0;
    //     end;

    //     local procedure ReadCredentials(RequestType: Option CreateRequest,CancelRequest)
    //     var
    //         GSTIN: Code[20];
    //         CDKey: Text;
    //         EInvUserName: Text;
    //         EInvPassword: Text;
    //         EFUserName: Text;
    //         EFPassword: Text;
    //         RecCompInfo: Record "Company Information";
    //         RecLocation: Record Location;
    //     begin
    //         RecLocation.GET(GlbLocCode);
    //         RecLocation.TESTFIELD("GST Registration No.");
    //         RecLocation.TESTFIELD("CD Key");
    //         RecLocation.TESTFIELD(EFPassword);
    //         RecLocation.TESTFIELD(EFUserName);
    //         RecLocation.TESTFIELD("E-InvUserName");
    //         RecLocation.TESTFIELD("E-InvPassword");

    //         GSTIN := RecLocation."GST Registration No.";
    //         CDKey := RecLocation."CD Key";
    //         EInvUserName := RecLocation."E-InvUserName";
    //         EInvPassword := RecLocation."E-InvPassword";
    //         EFUserName := RecLocation.EFUserName;
    //         EFPassword := RecLocation.EFPassword;

    //         /*GSTIN := '27AAACW3775F007';
    //         CDKey := '1000687';
    //         EInvUserName := '27AAACW3775F007';
    //         EInvPassword := 'Admin!23';
    //         EFUserName := '29AAACW3775F000';
    //         EFPassword := 'Admin!23..';*/

    //         WriteCredentials(RequestType, GSTIN, CDKey, EInvUserName, EInvPassword, EFUserName, EFPassword);

    //     end;

    //     local procedure WriteCredentials(RequestType: Option CreateRequest,CancelRequest; GSTIN: Code[20]; CDKey: Text; EInvUserName: Text; EInvPassword: Text; EFUserName: Text; EFPassword: Text)
    //     begin
    //         JsonTextWriter.WritePropertyName('GSTIN');
    //         JsonTextWriter.WriteValue(GSTIN);

    //         JsonTextWriter.WritePropertyName('CDKey');
    //         JsonTextWriter.WriteValue(CDKey);
    //         JsonTextWriter.WritePropertyName('EInvUserName');
    //         JsonTextWriter.WriteValue(EInvUserName);
    //         JsonTextWriter.WritePropertyName('EInvPassword');
    //         JsonTextWriter.WriteValue(EInvPassword);
    //         JsonTextWriter.WritePropertyName('EFUserName');
    //         JsonTextWriter.WriteValue(EFUserName);
    //         JsonTextWriter.WritePropertyName('EFPassword');
    //         JsonTextWriter.WriteValue(EFPassword);

    //         IF RequestType = RequestType::CreateRequest THEN BEGIN
    //             JsonTextWriter.WritePropertyName('GetQRImg');
    //             JsonTextWriter.WriteValue(0);

    //             JsonTextWriter.WritePropertyName('GetSignedInvoice');
    //             JsonTextWriter.WriteValue(1);
    //         END;
    //     end;

    //     local procedure RemoveSpecialChar(TxtDoc: Text): Text
    //     begin
    //         EXIT(DELCHR(TxtDoc, '=', './,-\!@#$%^&*()+ '));
    //     end;

    //     local procedure ConverttexttoInteger(text: Text) inttext: BigInteger
    //     begin
    //         EVALUATE(inttext, text);
    //     end;

    //     local procedure GetJason()
    //     begin
    //         Json := StringBuilder.ToString;
    //     end;

    //     local procedure GetClientFile(): Text
    //     var
    //         ClientAppFile: DotNet Path;
    //     begin
    //         EXIT(ClientAppFile.GetTempPath);
    //         //    EXIT('D:\')
    //     end;

    //     [Scope('Internal')]
    //     procedure ReadJSon(var String: DotNet String; var TempPostingExchField: Record "Data Exch. Field" temporary)
    //     var
    //         JsonToken: DotNet JsonToken;
    //         PrefixArray: DotNet Array;
    //         PrefixString: DotNet String;
    //         PropertyName: Text;
    //         ColumnNo: Integer;
    //         InArray: array[1000] of Boolean;
    //         LineNo: Integer;
    //         NewLn: Integer;
    //         T1221_L: Record "Data Exch. Field";
    //         Intn: Integer;
    //     begin
    //         PrefixArray := PrefixArray.CreateInstance(GETDOTNETTYPE(String), 250);
    //         StringReader := StringReader.StringReader(String);
    //         JsonTextReader := JsonTextReader.JsonTextReader(StringReader);
    //         LineNo := 0;
    //         //
    //         T1221_L.DELETEALL;
    //         TempPostingExchField.RESET;
    //         CLEAR(TempPostingExchField);
    //         TempPostingExchField.DELETEALL;
    //         //new code for delete all data from temp table

    //         WHILE JsonTextReader.Read DO
    //             CASE TRUE OF
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.StartObject) = 0:
    //                     ;
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.StartArray) = 0:
    //                     BEGIN
    //                         InArray[JsonTextReader.Depth + 1] := TRUE;
    //                         //ColumnNo := 0;
    //                     END;
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.StartConstructor) = 0:
    //                     ;
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.PropertyName) = 0:
    //                     BEGIN
    //                         PrefixArray.SetValue(JsonTextReader.Value, JsonTextReader.Depth - 1);
    //                         IF JsonTextReader.Depth > 1 THEN BEGIN
    //                             PrefixString := PrefixString.Join('.', PrefixArray, 0, JsonTextReader.Depth - 1);
    //                             IF PrefixString.Length > 0 THEN
    //                                 PropertyName := PrefixString.ToString + '.' + FORMAT(JsonTextReader.Value, 0, 9)
    //                             ELSE
    //                                 PropertyName := FORMAT(JsonTextReader.Value, 0, 9);
    //                         END ELSE
    //                             PropertyName := FORMAT(JsonTextReader.Value, 0, 9);
    //                     END;
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.String) = 0,
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.Integer) = 0,
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.Float) = 0,
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.Boolean) = 0,
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.Date) = 0,
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.Bytes) = 0:
    //                     BEGIN
    //                         TempPostingExchField."Data Exch. No." := JsonTextReader.Depth;
    //                         TempPostingExchField."Line No." := JsonTextReader.LineNumber;

    //                         TempPostingExchField."Column No." := ColumnNo;
    //                         TempPostingExchField."Node ID" := PropertyName;
    //                         Intn += 1;
    //                         TempPostingExchField.Value := COPYSTR(FORMAT(JsonTextReader.Value, 0, 9), 1, 250);
    //                         TempPostingExchField."Data Exch. Line Def Code" := JsonTextReader.TokenType.ToString;
    //                         TempPostingExchField.INSERT;
    //                         COMMIT;

    //                     END;
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.EndConstructor) = 0:
    //                     ;
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.EndArray) = 0:
    //                     InArray[JsonTextReader.Depth + 1] := FALSE;
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.EndObject) = 0:
    //                     IF JsonTextReader.Depth > 0 THEN
    //                         IF InArray[JsonTextReader.Depth] THEN ColumnNo += 1;
    //             END;
    //     end;

    //     [Scope('Internal')]
    //     procedure ReadFirstJSonValue(var String: DotNet String; ParameterName: Text) ParameterValue: Text
    //     var
    //         JsonToken: DotNet JsonToken;
    //         PropertyName: Text;
    //     begin
    //         StringReader := StringReader.StringReader(String);
    //         JsonTextReader := JsonTextReader.JsonTextReader(StringReader);
    //         WHILE JsonTextReader.Read DO
    //             CASE TRUE OF
    //                 JsonTextReader.TokenType.CompareTo(JsonToken.PropertyName) = 0:
    //                     PropertyName := FORMAT(JsonTextReader.Value, 0, 9);
    //                 NOT ISNULL(JsonTextReader.Value):
    //                     //JsonTextReader.TokenType.CompareTo(JsonToken.) = 0 :
    //                     BEGIN
    //                         ParameterValue := FORMAT(JsonTextReader.Value, 0, 9);
    //                         EXIT;
    //                     END;
    //             END;
    //     end;

    //     local procedure GetJsonNodeValue(NodeId: Text[30]): Text
    //     var
    //         DataExch: Record "Data Exch. Field";
    //     begin
    //         CLEAR(MessageText);
    //         DataExch.RESET;
    //         DataExch.SETRANGE("Node ID", NodeId);
    //         IF DataExch.FINDFIRST THEN
    //             MessageText := DataExch.Value;
    //         EXIT(MessageText);
    //     end;

    //     [Scope('Internal')]
    //     procedure GetIRNNo()
    //     var
    //         FL: File;
    //         ResponseInStream_L: InStream;
    //         HttpStatusCode_L: DotNet HttpStatusCode;
    //         ResponseHeaders_L: DotNet NameValueCollection;
    //         ResponseText: Text;
    //         JString: Text;
    //         OutStrm: OutStream;
    //         DataExch: Record "Data Exch. Field";
    //         IRNNo: Text[30];
    //         EWayBillDateTime: Variant;
    //         EWayExpiryDateTime: Variant;
    //         SalesInvoiceHeader: Record "Sales Invoice Header";
    //         TempBlob: Record TempBlob temporary;
    //         BText: BigText;
    //         InStream: InStream;
    //         OutStream1: OutStream;
    //         OutStream2: OutStream;
    //         JSONManagement: Codeunit "JSON Management";
    //         QRTempBlob: Record TempBlob temporary;
    //     begin

    //         GetJason;
    //         IF FILE.EXISTS(GetClientFile + 'J.txt') THEN
    //             ERASE(GetClientFile + 'J.txt');
    //         MESSAGE('%1', Json);//Rajiv
    //         FL.CREATE(GetClientFile + 'J.txt');
    //         FL.CREATEOUTSTREAM(OutStrm);
    //         OutStrm.WRITETEXT('{');
    //         OutStrm.WRITETEXT(FORMAT(Json));
    //         OutStrm.WRITETEXT('}');
    //         FL.CLOSE;

    //         //IF USERID='WADEKAR' THEN BEGIN
    //         HYPERLINK(GetClientFile + 'J.txt');  //Rajiv
    //         //END;
    //         RecLocation.GET(GlbLocCode);
    //         RecLocation.TESTFIELD("E-InvGenerateURL");
    //         HttpWebRequestMgt.Initialize(RecLocation."E-InvGenerateURL");
    //         //HttpWebRequestMgt.Initialize('http://einvSandbox.webtel.in/v1.03/GenIRN');
    //         HttpWebRequestMgt.DisableUI;
    //         HttpWebRequestMgt.SetMethod('POST');
    //         HttpWebRequestMgt.SetReturnType('application/json');
    //         HttpWebRequestMgt.SetContentType('application/json');
    //         HttpWebRequestMgt.AddBody(GetClientFile + 'J.txt');
    //         CLEAR(JSONManagement);
    //         TmpBlob.INIT;
    //         TmpBlob.Blob.CREATEINSTREAM(ResponseInStream_L);
    //         IF HttpWebRequestMgt.GetResponse(ResponseInStream_L, HttpStatusCode_L, ResponseHeaders_L) THEN BEGIN
    //             ResponseInStream_L.READ(ResponseText);
    //             Json := ResponseText;
    //             //MESSAGE(ResponseText);
    //             ReadJSon(Json, DataExch);
    //             //Added
    //             IF (ResponseText = '') OR (ResponseText = '[]') THEN
    //                 EXIT;
    //             JSONManagement.InitializeObject(RemoveArrayChar(ResponseText));

    //             //Added

    //         END;
    //         IF GetJsonNodeValue('Irn') <> '' THEN BEGIN
    //             IF IsInvoice THEN BEGIN
    //                 SalesInvoiceHeader.RESET;
    //                 SalesInvoiceHeader.SETRANGE("No.", DocumentNo);
    //                 IF SalesInvoiceHeader.FINDFIRST THEN BEGIN
    //                     SalesInvoiceHeader."IRN Hash" := GetJsonNodeValue('Irn');
    //                     //SalesInvoiceHeader."Acknowledgement No." := GetJsonNodeValue('AckNo');
    //                     SalesInvoiceHeader."Ack No." := GetJsonNodeValue('AckNo');
    //                     //SalesInvoiceHeader."Acknowledgement Date" := GetJsonNodeValue('AckDate');
    //                     SalesInvoiceHeader."Ack./Cancel Date" := GetJsonNodeValue('AckDate');
    //                     CLEAR(OutStream1);
    //                     //      BText.ADDTEXT(GetJsonNodeValue('SignedQRCode'));
    //                     //     SalesInvoiceHeader."QR Code".CREATEOUTSTREAM(OutStream1);
    //                     //      BText.WRITE(OutStream1);
    //                     //BText.ADDTEXT(JSONManagement.GetValue('SignedQRCode'));
    //                     CLEAR(QRTempBlob);
    //                     QRTempBlob.CALCFIELDS(Blob);
    //                     // MESSAGE(JSONManagement.GetValue('SignedQRCode'));
    //                     GenrateQRCode(JSONManagement.GetValue('SignedQRCode'), QRTempBlob);
    //                     //SalesInvoiceHeader."QR Code".CREATEOUTSTREAM(OutStream1);
    //                     SalesInvoiceHeader."QR Code" := QRTempBlob.Blob;
    //                     //      CLEAR(OutStream2);

    //                     //  SalesInvoiceHeader."QR Code".CREATEOUTSTREAM(OutStream2);
    //                     //  OutStream2.WRITETEXT(GetJsonNodeValue('SignedInvoice'));
    //                     SalesInvoiceHeader.MODIFY;
    //                 END;
    //             END ELSE
    //                 IF IsTransferInvoice THEN BEGIN
    //                     TransferShipmentHeader.RESET;
    //                     TransferShipmentHeader.SETRANGE("No.", DocumentNo);
    //                     IF TransferShipmentHeader.FINDFIRST THEN BEGIN
    //                         TransferShipmentHeader."IRN Hash" := GetJsonNodeValue('Irn');  //Rajiv Open
    //                                                                                        //TransferShipmentHeader."Acknowledgement No.":= GetJsonNodeValue('AckNo');
    //                         TransferShipmentHeader."Ack No." := GetJsonNodeValue('AckNo');
    //                         TransferShipmentHeader."Ack./Cancel Date" := GetJsonNodeValue('AckDate');
    //                         CLEAR(OutStream1);
    //                         /*
    //                            BText.ADDTEXT(GetJsonNodeValue('SignedQRCode'));
    //                            TransferShipmentHeader."QR Code".CREATEOUTSTREAM(OutStream1);
    //                            BText.WRITE(OutStream1);
    //                          */
    //                         CLEAR(QRTempBlob);
    //                         QRTempBlob.CALCFIELDS(Blob);
    //                         GenrateQRCode(JSONManagement.GetValue('SignedQRCode'), QRTempBlob);
    //                         //SalesInvoiceHeader."QR Code".CREATEOUTSTREAM(OutStream1);
    //                         TransferShipmentHeader."QR Code" := QRTempBlob.Blob;
    //                         TransferShipmentHeader.MODIFY;
    //                     END;
    //                 END ELSE //BEGIN
    //                     IF IsSalesCreditMemo THEN BEGIN
    //                         SalesCrMemoHeader.RESET;
    //                         SalesCrMemoHeader.SETRANGE("No.", DocumentNo);
    //                         IF SalesCrMemoHeader.FINDFIRST THEN BEGIN
    //                             SalesCrMemoHeader."IRN Hash" := GetJsonNodeValue('Irn');
    //                             //SalesCrMemoHeader."Acknowledgement No.":= GetJsonNodeValue('AckNo');
    //                             SalesCrMemoHeader."Ack No." := GetJsonNodeValue('AckNo');
    //                             //SalesCrMemoHeader."Acknowledgement Date":= GetJsonNodeValue('AckDate');
    //                             SalesCrMemoHeader."Ack./Cancel Date" := GetJsonNodeValue('AckDate');
    //                             CLEAR(OutStream1);
    //                             /*
    //                               BText.ADDTEXT(GetJsonNodeValue('SignedQRCode'));
    //                               SalesCrMemoHeader."QR Code".CREATEOUTSTREAM(OutStream1);
    //                               BText.WRITE(OutStream1);
    //                             */
    //                             QRTempBlob.CALCFIELDS(Blob);
    //                             GenrateQRCode(JSONManagement.GetValue('SignedQRCode'), QRTempBlob);
    //                             //SalesInvoiceHeader."QR Code".CREATEOUTSTREAM(OutStream1);
    //                             SalesCrMemoHeader."QR Code" := QRTempBlob.Blob;
    //                             SalesCrMemoHeader.MODIFY;
    //                         END;
    //                     END;
    //             MESSAGE('IRN Updated')
    //         END ELSE BEGIN
    //             ERROR('%1', GetJsonNodeValue('ErrorMessage'));
    //         END;

    //     end;

    //     local procedure GenerateCancelRequest(IRNNo: Text)
    //     begin
    //         IF ISNULL(StringBuilder) THEN
    //             Initialize;
    //         JsonTextWriter.WriteStartObject;
    //         ReadCredentials(1);
    //         JsonTextWriter.WritePropertyName('Irn');
    //         JsonTextWriter.WriteValue(IRNNo);
    //         JsonTextWriter.WritePropertyName('CnlRsn');
    //         JsonTextWriter.WriteValue('1');
    //         JsonTextWriter.WritePropertyName('CnlRem');
    //         JsonTextWriter.WriteValue('Wrong Entry');
    //         JsonTextWriter.WriteEndObject;
    //         JsonTextWriter.Flush;
    //     end;

    //     [Scope('Internal')]
    //     procedure CancelSalesIRNNo(var SalesInvoiceHeader: Record "Sales Invoice Header")
    //     var
    //         FL: File;
    //         ResponseInStream_L: InStream;
    //         HttpStatusCode_L: DotNet HttpStatusCode;
    //         ResponseHeaders_L: DotNet NameValueCollection;
    //         ResponseText: Text;
    //         JString: Text;
    //         OutStrm: OutStream;
    //         DataExch: Record "Data Exch. Field";
    //         IRNNo: Text[30];
    //     begin
    //         IF SalesInvoiceHeader."IRN Hash" = '' THEN
    //             EXIT;
    //         GenerateCancelRequest(SalesInvoiceHeader."IRN Hash");
    //         GetJason;
    //         IF FILE.EXISTS(GetClientFile + 'J.txt') THEN
    //             ERASE(GetClientFile + 'J.txt');
    //         FL.CREATE(GetClientFile + 'J.txt');
    //         FL.CREATEOUTSTREAM(OutStrm);
    //         OutStrm.WRITETEXT(BeginWTRequest);
    //         OutStrm.WRITETEXT(FORMAT(Json));
    //         OutStrm.WRITETEXT(EndWTRequest);
    //         FL.CLOSE;
    //         //HYPERLINK(GetClientFile + 'J.txt');

    //         RecLocation.GET(GlbLocCode);
    //         RecLocation.TESTFIELD("E-InvCancelURL");
    //         HttpWebRequestMgt.Initialize(RecLocation."E-InvCancelURL");
    //         //HttpWebRequestMgt.Initialize('http://EinvSandbox.webtel.in/v1.0/CanIRN');
    //         HttpWebRequestMgt.DisableUI;
    //         HttpWebRequestMgt.SetMethod('POST');
    //         HttpWebRequestMgt.SetReturnType('application/json');
    //         HttpWebRequestMgt.SetContentType('application/json');
    //         HttpWebRequestMgt.AddBody(GetClientFile + 'J.txt');

    //         TmpBlob.INIT;
    //         TmpBlob.Blob.CREATEINSTREAM(ResponseInStream_L);
    //         IF HttpWebRequestMgt.GetResponse(ResponseInStream_L, HttpStatusCode_L, ResponseHeaders_L) THEN BEGIN
    //             ResponseInStream_L.READ(ResponseText);
    //             Json := ResponseText;
    //             ReadJSon(Json, DataExch);
    //         END;

    //         IF GetJsonNodeValue('ErrorCode') = '' THEN BEGIN
    //             SalesInvoiceHeader."IRN Hash" := '';
    //             //SalesInvoiceHeader."Acknowledgement No.":='';
    //             SalesInvoiceHeader."Ack No." := '';
    //             //SalesInvoiceHeader."Acknowledgement Date":= GetJsonNodeValue('CancelDate');
    //             SalesInvoiceHeader."Ack./Cancel Date" := GetJsonNodeValue('CancelDate');
    //             SalesInvoiceHeader.MODIFY;
    //             MESSAGE('IRN Cancelled')
    //         END ELSE BEGIN
    //             ERROR('%1', GetJsonNodeValue('ErrorMessage'));
    //         END;
    //     end;

    //     [Scope('Internal')]
    //     procedure CancelSalesCreditIRNNo(var SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    //     var
    //         FL: File;
    //         ResponseInStream_L: InStream;
    //         HttpStatusCode_L: DotNet HttpStatusCode;
    //         ResponseHeaders_L: DotNet NameValueCollection;
    //         ResponseText: Text;
    //         JString: Text;
    //         OutStrm: OutStream;
    //         DataExch: Record "Data Exch. Field";
    //         IRNNo: Text[30];
    //     begin
    //         IF SalesCrMemoHeader."IRN Hash" = '' THEN
    //             EXIT;
    //         GenerateCancelRequest(SalesCrMemoHeader."IRN Hash");
    //         GetJason;
    //         IF FILE.EXISTS(GetClientFile + 'J.txt') THEN
    //             ERASE(GetClientFile + 'J.txt');
    //         FL.CREATE(GetClientFile + 'J.txt');
    //         FL.CREATEOUTSTREAM(OutStrm);
    //         OutStrm.WRITETEXT(BeginWTRequest);
    //         OutStrm.WRITETEXT(FORMAT(Json));
    //         OutStrm.WRITETEXT(EndWTRequest);
    //         FL.CLOSE;
    //         //HYPERLINK(GetClientFile + 'J.txt');

    //         //RecLocation.GET();
    //         RecLocation.GET(GlbLocCode);
    //         RecLocation.TESTFIELD("E-InvCancelURL");
    //         HttpWebRequestMgt.Initialize(RecLocation."E-InvCancelURL");
    //         //HttpWebRequestMgt.Initialize('http://EinvSandbox.webtel.in/v1.0/CanIRN');
    //         HttpWebRequestMgt.DisableUI;
    //         HttpWebRequestMgt.SetMethod('POST');
    //         HttpWebRequestMgt.SetReturnType('application/json');
    //         HttpWebRequestMgt.SetContentType('application/json');
    //         HttpWebRequestMgt.AddBody(GetClientFile + 'J.txt');

    //         TmpBlob.INIT;
    //         TmpBlob.Blob.CREATEINSTREAM(ResponseInStream_L);
    //         IF HttpWebRequestMgt.GetResponse(ResponseInStream_L, HttpStatusCode_L, ResponseHeaders_L) THEN BEGIN
    //             ResponseInStream_L.READ(ResponseText);
    //             Json := ResponseText;
    //             ReadJSon(Json, DataExch);
    //         END;

    //         IF GetJsonNodeValue('ErrorCode') = '' THEN BEGIN
    //             SalesCrMemoHeader."IRN Hash" := '';
    //             SalesCrMemoHeader."Ack No." := '';
    //             SalesCrMemoHeader."Ack./Cancel Date" := GetJsonNodeValue('CancelDate');
    //             SalesCrMemoHeader.MODIFY;
    //             MESSAGE('IRN Cancelled')
    //         END ELSE BEGIN
    //             ERROR('%1', GetJsonNodeValue('ErrorMessage'));
    //         END;
    //     end;

    //     [Scope('Internal')]
    //     procedure CancelTrfShipIRNNo(var TransferShipmentHeader: Record "Transfer Shipment Header")
    //     var
    //         FL: File;
    //         ResponseInStream_L: InStream;
    //         HttpStatusCode_L: DotNet HttpStatusCode;
    //         ResponseHeaders_L: DotNet NameValueCollection;
    //         ResponseText: Text;
    //         JString: Text;
    //         OutStrm: OutStream;
    //         DataExch: Record "Data Exch. Field";
    //         IRNNo: Text[30];
    //     begin
    //         IF TransferShipmentHeader."IRN Hash" = '' THEN
    //             EXIT;
    //         GenerateCancelRequest(TransferShipmentHeader."IRN Hash");
    //         GetJason;
    //         IF FILE.EXISTS(GetClientFile + 'J.txt') THEN
    //             ERASE(GetClientFile + 'J.txt');
    //         FL.CREATE(GetClientFile + 'J.txt');
    //         FL.CREATEOUTSTREAM(OutStrm);
    //         OutStrm.WRITETEXT(BeginWTRequest);
    //         OutStrm.WRITETEXT(FORMAT(Json));
    //         OutStrm.WRITETEXT(EndWTRequest);
    //         FL.CLOSE;
    //         //HYPERLINK(GetClientFile + 'J.txt');

    //         RecLocation.GET(GlbLocCode);
    //         RecLocation.TESTFIELD("E-InvCancelURL");
    //         HttpWebRequestMgt.Initialize(RecLocation."E-InvCancelURL");
    //         //HttpWebRequestMgt.Initialize('http://EinvSandbox.webtel.in/v1.0/CanIRN');
    //         HttpWebRequestMgt.DisableUI;
    //         HttpWebRequestMgt.SetMethod('POST');
    //         HttpWebRequestMgt.SetReturnType('application/json');
    //         HttpWebRequestMgt.SetContentType('application/json');
    //         HttpWebRequestMgt.AddBody(GetClientFile + 'J.txt');

    //         TmpBlob.INIT;
    //         TmpBlob.Blob.CREATEINSTREAM(ResponseInStream_L);
    //         IF HttpWebRequestMgt.GetResponse(ResponseInStream_L, HttpStatusCode_L, ResponseHeaders_L) THEN BEGIN
    //             ResponseInStream_L.READ(ResponseText);
    //             Json := ResponseText;
    //             ReadJSon(Json, DataExch);
    //         END;

    //         IF GetJsonNodeValue('ErrorCode') = '' THEN BEGIN
    //             TransferShipmentHeader."IRN Hash" := '';
    //             //TransferShipmentHeader."Acknowledgement No.":='';
    //             TransferShipmentHeader."Ack No." := '';
    //             //TransferShipmentHeader."Acknowledgement Date" := GetJsonNodeValue('CancelDate');
    //             TransferShipmentHeader."Ack./Cancel Date" := GetJsonNodeValue('CancelDate');
    //             TransferShipmentHeader.MODIFY;
    //             MESSAGE('IRN Cancelled')
    //         END ELSE BEGIN
    //             ERROR('%1', GetJsonNodeValue('ErrorMessage'));
    //         END;
    //     end;

    //     local procedure GeneratePrintingRequest(IRNNo: Text)
    //     begin
    //         IF ISNULL(StringBuilder) THEN
    //             Initialize;
    //         JsonTextWriter.WriteStartObject;
    //         ReadCredentials(1);
    //         JsonTextWriter.WritePropertyName('Irn');
    //         JsonTextWriter.WriteValue(IRNNo);
    //         JsonTextWriter.WriteEndObject;
    //         JsonTextWriter.Flush;
    //     end;

    //     [Scope('Internal')]
    //     procedure PrintSalesIRNNo(var SalesInvoiceHeader: Record "Sales Invoice Header")
    //     var
    //         FL: File;
    //         ResponseInStream_L: InStream;
    //         HttpStatusCode_L: DotNet HttpStatusCode;
    //         ResponseHeaders_L: DotNet NameValueCollection;
    //         ResponseText: Text;
    //         JString: Text;
    //         OutStrm: OutStream;
    //         DataExch: Record "Data Exch. Field";
    //         IRNNo: Text[30];
    //     begin
    //         IF SalesInvoiceHeader."IRN Hash" = '' THEN
    //             EXIT;
    //         GeneratePrintingRequest(SalesInvoiceHeader."IRN Hash");
    //         GetJason;
    //         IF FILE.EXISTS(GetClientFile + 'J.txt') THEN
    //             ERASE(GetClientFile + 'J.txt');
    //         FL.CREATE(GetClientFile + 'J.txt');
    //         FL.CREATEOUTSTREAM(OutStrm);
    //         //OutStrm.WRITETEXT(BeginWTRequest);
    //         OutStrm.WRITETEXT(FORMAT(Json));
    //         //OutStrm.WRITETEXT(EndWTRequest);
    //         FL.CLOSE;
    //         //HYPERLINK(GetClientFile + 'J.txt');
    //         RecLocation.GET;
    //         RecLocation.TESTFIELD("E-InvPrintURL");
    //         HttpWebRequestMgt.Initialize(RecLocation."E-InvPrintURL");
    //         HttpWebRequestMgt.DisableUI;
    //         HttpWebRequestMgt.SetMethod('POST');
    //         HttpWebRequestMgt.SetReturnType('application/json');
    //         HttpWebRequestMgt.SetContentType('application/json');
    //         HttpWebRequestMgt.AddBody(GetClientFile + 'J.txt');

    //         TmpBlob.INIT;
    //         TmpBlob.Blob.CREATEINSTREAM(ResponseInStream_L);
    //         IF HttpWebRequestMgt.GetResponse(ResponseInStream_L, HttpStatusCode_L, ResponseHeaders_L) THEN BEGIN
    //             ResponseInStream_L.READ(ResponseText);
    //             Json := ResponseText;
    //             ReadJSon(Json, DataExch);
    //         END;

    //         IF GetJsonNodeValue('Status') = '1' THEN BEGIN
    //             HYPERLINK(GetJsonNodeValue('File'));
    //         END ELSE BEGIN
    //             ERROR('%1', GetJsonNodeValue('ErrorMessage'));
    //         END;
    //     end;

    //     [Scope('Internal')]
    //     procedure PrintSalesCreditIRNNo(var SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    //     var
    //         FL: File;
    //         ResponseInStream_L: InStream;
    //         HttpStatusCode_L: DotNet HttpStatusCode;
    //         ResponseHeaders_L: DotNet NameValueCollection;
    //         ResponseText: Text;
    //         JString: Text;
    //         OutStrm: OutStream;
    //         DataExch: Record "Data Exch. Field";
    //         IRNNo: Text[30];
    //     begin
    //         IF SalesCrMemoHeader."IRN Hash" = '' THEN
    //             EXIT;
    //         GeneratePrintingRequest(SalesCrMemoHeader."IRN Hash");
    //         GetJason;
    //         IF FILE.EXISTS(GetClientFile + 'J.txt') THEN
    //             ERASE(GetClientFile + 'J.txt');
    //         FL.CREATE(GetClientFile + 'J.txt');
    //         FL.CREATEOUTSTREAM(OutStrm);
    //         //OutStrm.WRITETEXT(BeginWTRequest);
    //         OutStrm.WRITETEXT(FORMAT(Json));
    //         //OutStrm.WRITETEXT(EndWTRequest);
    //         FL.CLOSE;
    //         //HYPERLINK(GetClientFile + 'J.txt');
    //         RecLocation.GET;
    //         RecLocation.TESTFIELD("E-InvPrintURL");
    //         HttpWebRequestMgt.Initialize(RecLocation."E-InvPrintURL");
    //         //HttpWebRequestMgt.Initialize('http://EinvSandbox.webtel.in/v1.03/PrintEInvByIRN');
    //         HttpWebRequestMgt.DisableUI;
    //         HttpWebRequestMgt.SetMethod('POST');
    //         HttpWebRequestMgt.SetReturnType('application/json');
    //         HttpWebRequestMgt.SetContentType('application/json');
    //         HttpWebRequestMgt.AddBody(GetClientFile + 'J.txt');

    //         TmpBlob.INIT;
    //         TmpBlob.Blob.CREATEINSTREAM(ResponseInStream_L);
    //         IF HttpWebRequestMgt.GetResponse(ResponseInStream_L, HttpStatusCode_L, ResponseHeaders_L) THEN BEGIN
    //             ResponseInStream_L.READ(ResponseText);
    //             Json := ResponseText;
    //             ReadJSon(Json, DataExch);
    //         END;

    //         IF GetJsonNodeValue('Status') = '1' THEN BEGIN
    //             HYPERLINK(GetJsonNodeValue('File'));
    //         END ELSE BEGIN
    //             ERROR('%1', GetJsonNodeValue('ErrorMessage'));
    //         END;
    //     end;

    //     local procedure BeginWTRequest(): Text
    //     begin
    //         EXIT(' {   "Push_Data_List": {     "Data": [ ');
    //     end;

    //     local procedure EndWTRequest(): Text
    //     begin
    //         EXIT(' ]  } }');
    //     end;

    //     local procedure GetGSTNNo(LocationCode: Code[10]): Text
    //     var
    //         Location: Record Location;
    //         CompanyInformation: Record "Company Information";
    //     begin
    //         //EXIT('27AAACW3775F007');
    //         CompanyInformation.GET;
    //         IF Location.GET(LocationCode) THEN
    //             IF Location."GST Registration No." <> '' THEN
    //                 EXIT(Location."GST Registration No.")
    //             ELSE BEGIN
    //                 EXIT(CompanyInformation."GST Registration No.");
    //             END ELSE BEGIN
    //             EXIT(CompanyInformation."GST Registration No.");
    //         END;
    //     end;

    //     [Scope('Internal')]
    //     procedure GenerateSalesInvJSONSchema(SalesInvoiceHeader: Record "Sales Invoice Header")
    //     begin
    //         IF (GetGSTNNo(SalesInvoiceHeader."Location Code") <> '') THEN
    //             GSTNNo := GetGSTNNo(SalesInvoiceHeader."Location Code"); //MSKS

    //         DocumentNo := SalesInvoiceHeader."No.";
    //         IF ISNULL(StringBuilder) THEN
    //             Initialize;
    //         JsonTextWriter.WritePropertyName('Push_Data_List');
    //         JsonTextWriter.WriteStartObject;
    //         //ReadCredentials(1);
    //         /*
    //         WriteFileHeader;
    //         ReadTransDtls(SalesInvoiceHeader."GST Customer Type",SalesInvoiceHeader."Ship-to Code");
    //         ReadDocDtls;

    //         ReadSellerDtls;
    //         ReadBuyerDtls;
    //         ReadShipDtls;
    //         */
    //         ReadItemList();

    //         //ReadValDtls;
    //         JsonTextWriter.WriteEndObject;
    //         JsonTextWriter.Flush;

    //         GetIRNNo();

    //     end;

    //     [Scope('Internal')]
    //     procedure GenerateSalesCreditJSONSchema(var SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    //     begin
    //         IF (GetGSTNNo(SalesCrMemoHeader."Location Code") <> '') THEN
    //             GSTNNo := GetGSTNNo(SalesCrMemoHeader."Location Code"); //MSKS

    //         DocumentNo := SalesCrMemoHeader."No.";
    //         IF ISNULL(StringBuilder) THEN
    //             Initialize;
    //         JsonTextWriter.WritePropertyName('Push_Data_List');
    //         JsonTextWriter.WriteStartObject;

    //         //ReadCredentials(1);
    //         /*
    //         WriteFileHeader;
    //         ReadTransDtls(SalesCrMemoHeader."GST Customer Type",SalesCrMemoHeader."Ship-to Code");
    //         ReadDocDtls;

    //         ReadSellerDtls;
    //         ReadBuyerDtls;
    //         ReadShipDtls;
    //         */
    //         ReadItemList();
    //         //ReadValDtls;
    //         JsonTextWriter.WriteEndObject;
    //         JsonTextWriter.Flush;

    //         GetIRNNo();

    //     end;

    //     local procedure FormatDate(PostDate: Date): Text
    //     begin
    //         EXIT(FORMAT(PostDate, 0, '<Day,2>/<Month,2>/<Year4>'));
    //     end;

    //     [Scope('Internal')]
    //     procedure GenerateTransferInvoiceJSONSchema(var TransferShipmentHeader: Record "Transfer Shipment Header")
    //     begin
    //         IF (GetGSTNNo(TransferShipmentHeader."Transfer-from Code") <> '') THEN
    //             GSTNNo := GetGSTNNo(TransferShipmentHeader."Transfer-from Code"); //MSKS

    //         DocumentNo := TransferShipmentHeader."No.";
    //         IF ISNULL(StringBuilder) THEN
    //             Initialize;
    //         JsonTextWriter.WritePropertyName('Push_Data_List');
    //         JsonTextWriter.WriteStartObject;

    //         //  JsonTextWriter.WriteStartObject;
    //         //ReadCredentials(1);
    //         /*
    //         WriteFileHeader;
    //         ReadTransDtls(0,'');
    //         ReadDocDtls;

    //         ReadSellerDtls;
    //         ReadBuyerDtls;
    //         ReadShipDtls;
    //         */
    //         ReadItemList();
    //         //ReadValDtls;
    //         JsonTextWriter.WriteEndObject;
    //         JsonTextWriter.Flush;

    //         GetIRNNo();

    //     end;

    //     [Scope('Internal')]
    //     procedure CreateQRCode(QRCodeInput: Text[1024]; var TempBLOB: Record TempBlob)
    //     var
    //         QRCodeFileName: Text[1024];
    //     begin
    //         CLEAR(TempBLOB);
    //         QRCodeFileName := GetQRCode(QRCodeInput);
    //         UploadFileBLOBImportandDeleteServerFile(TempBLOB, QRCodeFileName);
    //     end;

    //     [Scope('Internal')]
    //     procedure UploadFileBLOBImportandDeleteServerFile(var TempBlob: Record TempBlob; FileName: Text[1024])
    //     var
    //         FileManagement: Codeunit "File Management";
    //     begin
    //         FileName := FileManagement.UploadFileSilent(FileName);
    //         FileManagement.BLOBImportFromServerFile(TempBlob, FileName);
    //         DeleteServerFile(FileName);
    //     end;

    //     local procedure DeleteServerFile(ServerFileName: Text)
    //     begin
    //         IF ERASE(ServerFileName) THEN;
    //     end;

    //     local procedure GetQRCode(QRCodeInput: Text[1024]) QRCodeFileName: Text[1024]
    //     var
    //         [RunOnClient]
    //         IBarCodeProvider: DotNet IBarcodeProvider;
    //     begin
    //         GetBarCodeProvider(IBarCodeProvider);
    //         QRCodeFileName := IBarCodeProvider.GetBarcode(QRCodeInput);
    //     end;

    //     [Scope('Internal')]
    //     procedure GetBarCodeProvider(var IBarCodeProvider: DotNet QRCodeProvider)
    //     var
    //         [RunOnClient]
    //         QRCodeProvider: DotNet QRCodeProvider;
    //     begin
    //         IF ISNULL(IBarCodeProvider) THEN
    //             IBarCodeProvider := QRCodeProvider.QRCodeProvider;
    //     end;

    //     local procedure GetGSTValLine(DocumentNo: Code[20]; DocumentLineNo: Integer; var AssVal: Decimal; var CgstVal: Decimal; var SgstVal: Decimal; var IgstVal: Decimal; var CesVal: Decimal; var StCesVal: Decimal; var CesNonAdval: Decimal; var Disc: Decimal; var OthChrg: Decimal; var TotInvVal: Decimal)
    //     var
    //         SalesInvoiceLine: Record "Sales Invoice Line";
    //         SalesCrMemoLine: Record "Sales Cr.Memo Line";
    //         GSTLedgerEntry: Record "GST Ledger Entry";
    //         DetailedGSTLedgerEntry: Record "Detailed GST Ledger Entry";
    //         CurrExchRate: Record "Currency Exchange Rate";
    //         CustLedgerEntry: Record "Cust. Ledger Entry";
    //         GSTComponent: Record "GST Component";
    //         TotGSTAmt: Decimal;
    //     begin
    //         DetailedGSTLedgerEntry.SETRANGE("Document No.", DocumentNo);
    //         DetailedGSTLedgerEntry.SETRANGE("Document Line No.", DocumentLineNo);
    //         DetailedGSTLedgerEntry.SETRANGE("GST Component Code", 'CGST');
    //         IF DetailedGSTLedgerEntry.FINDSET THEN BEGIN
    //             REPEAT
    //                 CgstVal += ABS(DetailedGSTLedgerEntry."GST Amount");
    //             UNTIL DetailedGSTLedgerEntry.NEXT = 0;
    //         END ELSE
    //             CgstVal := 0;

    //         DetailedGSTLedgerEntry.SETRANGE("GST Component Code", 'SGST');
    //         IF DetailedGSTLedgerEntry.FINDSET THEN BEGIN
    //             REPEAT
    //                 SgstVal += ABS(DetailedGSTLedgerEntry."GST Amount")
    //             UNTIL DetailedGSTLedgerEntry.NEXT = 0;
    //         END ELSE
    //             SgstVal := 0;

    //         DetailedGSTLedgerEntry.SETRANGE("GST Component Code", 'IGST');
    //         IF DetailedGSTLedgerEntry.FINDSET THEN BEGIN
    //             REPEAT
    //                 IgstVal += ABS(DetailedGSTLedgerEntry."GST Amount")
    //             UNTIL DetailedGSTLedgerEntry.NEXT = 0;
    //         END ELSE
    //             IgstVal := 0;

    //         CesVal := 0;
    //         CesNonAdval := 0;

    //         DetailedGSTLedgerEntry.SETRANGE("GST Component Code", 'INTERCESS');
    //         IF DetailedGSTLedgerEntry.FINDSET THEN
    //             REPEAT
    //                 CesVal += ABS(DetailedGSTLedgerEntry."GST Amount")
    //             UNTIL DetailedGSTLedgerEntry.NEXT = 0;

    //         DetailedGSTLedgerEntry.SETFILTER("GST Component Code", '%1|%2', 'CESS', 'CESS1');
    //         IF DetailedGSTLedgerEntry.FINDFIRST THEN
    //             REPEAT
    //                 IF DetailedGSTLedgerEntry."GST %" > 0 THEN
    //                     CesVal += ABS(DetailedGSTLedgerEntry."GST Amount")
    //                 ELSE
    //                     CesNonAdval += ABS(DetailedGSTLedgerEntry."GST Amount");
    //             UNTIL DetailedGSTLedgerEntry.NEXT = 0;

    //         DetailedGSTLedgerEntry.SETFILTER("GST Component Code", '<>CGST|<>SGST|<>IGST|<>CESS|<>INTERCESS');
    //         IF DetailedGSTLedgerEntry.FINDSET THEN BEGIN
    //             REPEAT
    //                 IF GSTComponent.GET(DetailedGSTLedgerEntry."GST Component Code") THEN
    //                     IF GSTComponent."Exclude from Reports" THEN
    //                         StCesVal += ABS(DetailedGSTLedgerEntry."GST Amount");
    //             UNTIL DetailedGSTLedgerEntry.NEXT = 0;
    //         END;

    //         IF IsInvoice THEN BEGIN
    //             SalesInvoiceLine.SETRANGE("Document No.", DocumentNo);
    //             SalesInvoiceLine.SETRANGE("Line No.", DocumentLineNo);
    //             IF SalesInvoiceLine.FINDSET THEN BEGIN
    //                 REPEAT
    //                     AssVal += SalesInvoiceLine.Amount;
    //                     TotGSTAmt += SalesInvoiceLine."Total GST Amount";
    //                     Disc += SalesInvoiceLine."Inv. Discount Amount" + SalesInvoiceLine."Line Discount Amount";
    //                     IF SalesInvoiceLine."Charges To Customer" <> 0 THEN BEGIN
    //                         IF (SalesInvoiceLine."GST Base Amount" = (SalesInvoiceLine.Amount + SalesInvoiceLine."Charges To Customer" + (SalesInvoiceLine."GST Base Amount" - SalesInvoiceLine.Amount - SalesInvoiceLine."Charges To Customer"))) THEN
    //                             OthChrg += (-SalesInvoiceLine."GST Base Amount" + SalesInvoiceLine.Amount + SalesInvoiceLine."Charges To Customer")
    //                         ELSE
    //                             IF SalesInvoiceLine."GST Base Amount" <> SalesInvoiceLine.Amount + SalesInvoiceLine."Charges To Customer" THEN
    //                                 OthChrg += SalesInvoiceLine."Charges To Customer"
    //                             ELSE
    //                                 OthChrg += 0;
    //                     END;
    //                 UNTIL SalesInvoiceLine.NEXT = 0;
    //             END;

    //             AssVal := ROUND(
    //                 CurrExchRate.ExchangeAmtFCYToLCY(
    //                   WORKDATE, SalesInvoiceHeader."Currency Code", AssVal, SalesInvoiceHeader."Currency Factor"), 0.01, '=');
    //             TotGSTAmt := ROUND(
    //                 CurrExchRate.ExchangeAmtFCYToLCY(
    //                   WORKDATE, SalesInvoiceHeader."Currency Code", TotGSTAmt, SalesInvoiceHeader."Currency Factor"), 0.01, '=');
    //             Disc := ROUND(
    //                 CurrExchRate.ExchangeAmtFCYToLCY(
    //                   WORKDATE, SalesInvoiceHeader."Currency Code", Disc, SalesInvoiceHeader."Currency Factor"), 0.01, '=');
    //         END ELSE BEGIN
    //             SalesCrMemoLine.SETRANGE("Document No.", DocumentNo);
    //             SalesCrMemoLine.SETRANGE("Line No.", DocumentLineNo);
    //             IF SalesCrMemoLine.FINDSET THEN BEGIN
    //                 REPEAT
    //                     AssVal += SalesCrMemoLine.Amount;
    //                     TotGSTAmt += SalesCrMemoLine."Total GST Amount";
    //                     Disc += SalesCrMemoLine."Inv. Discount Amount" + SalesCrMemoLine."Line Discount Amount";
    //                     IF SalesCrMemoLine."Charges To Customer" <> 0 THEN BEGIN
    //                         IF (SalesCrMemoLine."GST Base Amount" = (SalesCrMemoLine.Amount + SalesCrMemoLine."Charges To Customer" + (SalesCrMemoLine."GST Base Amount" - SalesCrMemoLine.Amount - SalesCrMemoLine."Charges To Customer"))) THEN
    //                             OthChrg += (-SalesCrMemoLine."GST Base Amount" + SalesCrMemoLine.Amount + SalesCrMemoLine."Charges To Customer")
    //                         ELSE
    //                             IF SalesCrMemoLine."GST Base Amount" <> SalesCrMemoLine.Amount + SalesCrMemoLine."Charges To Customer" THEN
    //                                 OthChrg += SalesCrMemoLine."Charges To Customer"
    //                             ELSE
    //                                 OthChrg += 0;
    //                     END;
    //                 UNTIL SalesCrMemoLine.NEXT = 0;
    //             END;

    //             AssVal := ROUND(
    //                 CurrExchRate.ExchangeAmtFCYToLCY(
    //                   WORKDATE, SalesCrMemoHeader."Currency Code", AssVal, SalesCrMemoHeader."Currency Factor"), 0.01, '=');
    //             TotGSTAmt := ROUND(
    //                 CurrExchRate.ExchangeAmtFCYToLCY(
    //                   WORKDATE, SalesCrMemoHeader."Currency Code", TotGSTAmt, SalesCrMemoHeader."Currency Factor"), 0.01, '=');
    //             Disc := ROUND(
    //                 CurrExchRate.ExchangeAmtFCYToLCY(
    //                   WORKDATE, SalesCrMemoHeader."Currency Code", Disc, SalesCrMemoHeader."Currency Factor"), 0.01, '=');
    //         END;

    //         CustLedgerEntry.SETCURRENTKEY("Document No.");
    //         CustLedgerEntry.SETRANGE("Document No.", DocumentNo);
    //         IF IsInvoice THEN BEGIN
    //             CustLedgerEntry.SETRANGE("Document Type", CustLedgerEntry."Document Type"::Invoice);
    //             CustLedgerEntry.SETRANGE("Customer No.", SalesInvoiceHeader."Bill-to Customer No.");
    //         END ELSE BEGIN
    //             CustLedgerEntry.SETRANGE("Document Type", CustLedgerEntry."Document Type"::"Credit Memo");
    //             CustLedgerEntry.SETRANGE("Customer No.", SalesCrMemoHeader."Bill-to Customer No.");
    //         END;
    //         IF CustLedgerEntry.FINDFIRST THEN BEGIN
    //             CustLedgerEntry.CALCFIELDS("Amount (LCY)");
    //             TotInvVal := ABS(CustLedgerEntry."Amount (LCY)");
    //         END;

    //         //OthChrg := 0;
    //     end;

    //     local procedure GetGSTUOM(ERPUOM: Code[20]): Code[10]
    //     var
    //         UnitofMeasure: Record "Unit of Measure";
    //     begin
    //         IF ERPUOM = '' THEN
    //             EXIT;
    //         UnitofMeasure.RESET;
    //         UnitofMeasure.SETFILTER(Code, '%1', ERPUOM);
    //         IF UnitofMeasure.FINDFIRST THEN
    //             EXIT(UnitofMeasure."E-Invoice GST UOM")
    //         ELSE
    //             ERROR('Please update E-Invoice GST UOM on UOM Card for UOM %1', ERPUOM);
    //     end;

    //     local procedure GenrateQRCode(QRCodeTxt: Text; var TempBlob: Record TempBlob)
    //     var
    //         FieldRef: FieldRef;
    //         QRCodeInput: Text;
    //         QRCodeFileName: Text;
    //     begin
    //         // Save a QR code image into a file in a temporary folder.
    //         QRCodeInput := QRCodeTxt;
    //         QRCodeFileName := GetQRCode(QRCodeInput);
    //         QRCodeFileName := MoveToMagicPath(QRCodeFileName); // To avoid confirmation dialogue on RTC.

    //         // Load the image from file into the BLOB field.
    //         CLEAR(TempBlob);
    //         TempBlob.CALCFIELDS(Blob);
    //         FileManagement.BLOBImport(TempBlob, QRCodeFileName);

    //         // Erase the temporary file.
    //         IF NOT ISSERVICETIER THEN
    //             IF EXISTS(QRCodeFileName) THEN
    //                 ERASE(QRCodeFileName);
    //     end;

    //     [Scope('Internal')]
    //     procedure MoveToMagicPath(SourceFileName: Text) DestinationFileName: Text[1024]
    //     var
    //         FileSystemObject: Automation;
    //     begin
    //         // User Temp Path
    //         DestinationFileName := COPYSTR(FileManagement.ClientTempFileName(''), 1, 1024);
    //         IF ISCLEAR(FileSystemObject) THEN
    //             CREATE(FileSystemObject, TRUE, TRUE);
    //         FileSystemObject.MoveFile(SourceFileName, DestinationFileName);
    //     end;

    //     local procedure ConvertAckDt(AckDt2: Text) DateTime: Text
    //     var
    //         YYYY: Text[4];
    //         MM: Text[2];
    //         DD: Text[2];
    //     begin
    //         YYYY := COPYSTR(AckDt2, 1, 4);
    //         MM := COPYSTR(AckDt2, 6, 2);
    //         DD := COPYSTR(AckDt2, 9, 2);

    //         // TIME := COPYSTR(AckDt2,12,8);

    //         DateTime := DD + '-' + MM + '-' + YYYY + ' ' + COPYSTR(AckDt2, 12, 8);
    //     end;

    //     local procedure RemoveArrayChar(JSONtxt: Text) result: Text
    //     begin
    //         IF COPYSTR(JSONtxt, 1, 1) = '[' THEN BEGIN
    //             result := COPYSTR(JSONtxt, 2, STRLEN(JSONtxt) - 2);

    //         END ELSE
    //             result := JSONtxt;
    //     end;
}
//OA.AS Commented

