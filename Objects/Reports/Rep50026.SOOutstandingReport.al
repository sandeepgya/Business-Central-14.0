report 50026 "SO Outstanding Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/SOOutstandingReport.rdlc';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = WHERE("Document Type" = FILTER(Order), Status = FILTER(Released));
            column(DocType; "Sales Header"."Document Type")
            {
            }
            column(Docno; "Sales Header"."No.")
            {
            }
            column(Selltocustomerno; "Sales Header"."Sell-to Customer No.")
            {
            }
            column(billtoname; "Sales Header"."Bill-to Name")
            {
            }
            column(billtoname2; "Sales Header"."Bill-to Name 2")
            {
            }
            column(billtoadd; "Sales Header"."Bill-to Address")
            {
            }
            column(postingdate; "Sales Header"."Posting Date")
            {
            }
            column(locationcode; "Sales Header"."Location Code")
            {
            }
            column(shipmentDate; "Sales Header"."Shipment Date")
            {
            }
            column(CustomerNo; customer."No.")
            {
            }
            column(CUstomerState; customer."State Code")
            {
            }
            column(CustomerPONo; "Sales Header"."External Document No.")
            {
            }
            column(AgingDays; days)
            {
            }
            column(OrderDate; "Sales Header"."Order Date")
            {
            }
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                column(documentno; "Sales Line"."Document No.")
                {
                }
                column(lineno; "Sales Line"."Line No.")
                {
                }
                column(Itemno; "Sales Line"."No.")
                {
                }
                column(type; "Sales Line".Type)
                {
                }
                column(unitofmeasure; "Sales Line"."Unit of Measure")
                {
                }
                column(quantity; "Sales Line".Quantity)
                {
                }
                column(outstandingqty; "Sales Line"."Outstanding Quantity")
                {
                }
                column(unitprice; "Sales Line"."Unit Price")
                {
                }
                column(outstandingamount; "Sales Line"."Outstanding Amount")
                {
                }
                column(Description; "Sales Line".Description)
                {
                }
                column(Companyname; companyinformation.Name)
                {
                }
                column(Daterange; Daterange)
                {
                }
                column(UOM; "Sales Line"."Unit of Measure")
                {
                }
            }

            trigger OnAfterGetRecord()
            begin
                companyinformation.GET;
                customer.GET("Sales Header"."Sell-to Customer No.");
                days := (WORKDATE - "Sales Header"."Order Date");
            end;

            trigger OnPreDataItem()
            begin
                Daterange := "Sales Header".GETFILTER("Posting Date");
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

    var
        Daterange: Text;
        companyinformation: Record "Company Information";
        customer: Record Customer;
        days: Integer;
}

