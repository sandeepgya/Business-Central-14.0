report 50027 "Sales Order Summary"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/SalesOrderSummary.rdlc';

    dataset
    {
        dataitem("Sales Header Archive"; "Sales Header Archive")
        {
            DataItemTableView = SORTING("Document Type", "No.", "Doc. No. Occurrence", "Version No.") ORDER(Descending);
            RequestFilterFields = "Posting Date", "Sell-to Customer No.", "Order Date";
            column(DateRange; DateRange)
            {
            }
            column(CompanyName; CompInfo.Name)
            {
            }
            column(Date; "Sales Header Archive"."Order Date")
            {
            }
            column(DocType; "Sales Header Archive"."Document Type")
            {
            }
            column(OrderNo; "Sales Header Archive"."No.")
            {
            }
            column(CustomerName; "Sales Header Archive"."Sell-to Customer Name")
            {
            }
            column(Location; "Sales Header Archive"."Location Code")
            {
            }
            column(SalesPersonName; SalesPersonName)
            {
            }
            column(ExtrnalDocNo; "Sales Header Archive"."External Document No.")
            {
            }
            column(BillToState; '')// "Sales Header Archive"."Bill to Customer State")
            {
            }
            column(VersionNo_SalesHeaderArchive; "Sales Header Archive"."Version No.")
            {
            }
            dataitem("Sales Line Archive"; "Sales Line Archive")
            {
                DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No."), "Version No." = FIELD("Version No.");
                DataItemTableView = SORTING("Document Type", "Document No.", "Doc. No. Occurrence", "Version No.", "Line No.");
                column(LineVersion; "Sales Line Archive"."Version No.")
                {
                }
                column(LineNo; "Sales Line Archive"."Line No.")
                {
                }
                column(No; "Sales Line Archive"."No.")
                {
                }
                column(Qty; "Sales Line Archive".Quantity)
                {
                }
                column(Desc; "Sales Line Archive".Description)
                {
                }
                column(Amount; "Sales Line Archive".Amount)
                {
                }
                column(UnitPrice; "Sales Line Archive"."Unit Price")
                {
                }
            }

            trigger OnAfterGetRecord()
            begin
                CLEAR(OrderNo);
                CLEAR(Location);
                CLEAR(CustomerName);
                CLEAR(Date);
                CLEAR(LineAmtExclTax);
                CLEAR(SalesPersonName);
                CLEAR(SalesPerson);
                IF PrevDocNo = "Sales Header Archive"."No." THEN
                    CurrReport.SKIP;
                IF "Sales Header Archive"."Salesperson Code" <> '' THEN
                    SalesPerson.GET("Sales Header Archive"."Salesperson Code");
                SalesPersonName := SalesPerson.Name;
                //CustomerName:= "Sell-to Customer Name";
                PrevDocNo := "Sales Header Archive"."No.";
                //>>OA.SK
                /*
                SalesHeaderArchive.SETRANGE("No.","Sales Header Archive"."No.");
                SalesHeaderArchive.SETASCENDING("Version No.",TRUE);
                SalesHeaderArchive.FINDLAST;
                
                IF "Sales Header Archive"."Version No." <> SalesHeaderArchive."Version No." THEN
                  CurrReport.SKIP;
                */
                //<<OA.SK

                /*
                SalesHeaderArchive.RESET;
                IF ArchiveNo <> "Sales Header Archive"."No." THEN BEGIN
                  SalesHeaderArchive.SETRANGE("No.","Sales Header Archive"."No.");
                  SalesHeaderArchive.FINDLAST;
                  OrderNo := "No.";
                  Location:= "Location Code";
                  Date:= "Order Date";
                  CustomerName:= "Sell-to Customer Name";
                  ExtrnalDocNo:= "External Document No.";
                  IF "Salesperson Code"<>'' THEN
                    SalesPerson.GET("Salesperson Code");
                  SalesPersonName:= SalesPerson.Name;
                  ArchiveNo := "No.";
                END
                */

            end;

            trigger OnPreDataItem()
            var
                SalesHeaderArchive: Record "Sales Header Archive";
            begin
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

    trigger OnPostReport()
    begin
        //ExcelBuffer.CreateBookAndOpenExcel('','FILE','sheet','','');
    end;

    trigger OnPreReport()
    begin
        DateRange := "Sales Header Archive".GETFILTER("Sales Header Archive"."Order Date");
        CompInfo.GET;
        //CLEAR(ExcelBuffer);
        //MakeHeader;
    end;

    var
        DateRange: Text;
        CompInfo: Record "Company Information";
        Date: Date;
        OrderNo: Code[20];
        CustomerName: Text;
        Customer: Record Customer;
        SalesHeaderArchive: Record "Sales Header Archive";
        SalesLineArchive: Record "Sales Line Archive";
        LineAmtExclTax: Decimal;
        Location: Code[20];
        ArchiveNo: Code[20];
        ExcelBuffer: Record "Excel Buffer" temporary;
        SalesPerson: Record "Salesperson/Purchaser";
        SalesPersonName: Text;
        ExtrnalDocNo: Text;
        ItemNo: Code[20];
        Quantity: Integer;
        UnitRate: Decimal;
        SecCustName: Text;
        Description: Text;
        PrevDocNo: Code[20];

    local procedure MakeHeader()
    begin
        /*
        ExcelBuffer.AddColumn('Company Name',FALSE,'',TRUE,FALSE,FALSE,'',ExcelBuffer."Cell Type"::Text);
        ExcelBuffer.AddColumn(COMPANYNAME,FALSE,'',TRUE,FALSE,FALSE,'',ExcelBuffer."Cell Type"::Text);
        ExcelBuffer.NewRow;
        ExcelBuffer.AddColumn('Date Range',FALSE,'',TRUE,FALSE,FALSE,'',ExcelBuffer."Cell Type"::Text);
        ExcelBuffer.AddColumn(DateRange,FALSE,'',TRUE,FALSE,FALSE,'',ExcelBuffer."Cell Type"::Text);
        */

    end;

    local procedure ExportToExcel()
    begin
    end;
}

