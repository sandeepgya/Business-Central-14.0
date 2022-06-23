report 50028 "Purchase Order Oustanding"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/PurchaseOrderOustanding.rdlc';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = WHERE("Document Type" = FILTER(Order), Status = FILTER(Released));
            RequestFilterFields = "Posting Date", "Order Date", "No.";
            column(DocType; "Purchase Header"."Document Type")
            {
            }
            column(OrderNo; "Purchase Header"."No.")
            {
            }
            column(VendorNo; "Purchase Header"."Buy-from Vendor No.")
            {
            }
            column(VendorName; "Purchase Header"."Buy-from Vendor Name")
            {
            }
            column(PostingDate; "Purchase Header"."Posting Date")
            {
            }
            column(OrderDate; "Purchase Header"."Order Date")
            {
            }
            column(CurrencyCode; "Purchase Header"."Currency Code")
            {
            }
            column(DateRange01; DateRange01)
            {
            }
            column(VendorState; VendorState)
            {
            }
            column(VendorInvoiceNo; "Purchase Header"."Vendor Invoice No.")
            {
            }
            column(CompName01; CompName01)
            {
            }
            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                column(LineNo; "Purchase Line"."Line No.")
                {
                }
                column(Type; "Purchase Line".Type)
                {
                }
                column(ItemNo; "Purchase Line"."No.")
                {
                }
                column(LocationCode; "Purchase Line"."Location Code")
                {
                }
                column(Description; "Purchase Line".Description)
                {
                }
                column(Quantity; "Purchase Line".Quantity)
                {
                }
                column(OutstandingQty; "Purchase Line"."Outstanding Quantity")
                {
                }
                column(Rate; "Purchase Line"."Direct Unit Cost")
                {
                }
                column(OutstandingAmount; "Purchase Line"."Outstanding Amount")
                {
                }
                column(OutstandingAmountLCY; "Purchase Line"."Outstanding Amount (LCY)")
                {
                }
                column(UOM; "Purchase Line"."Unit of Measure")
                {
                }
            }

            trigger OnAfterGetRecord()
            begin
                CLEAR(Vendor);
                IF "Purchase Header"."Buy-from Vendor No." <> '' THEN
                    Vendor.GET("Purchase Header"."Buy-from Vendor No.");
                VendorState := Vendor."State Code";
            end;

            trigger OnPreDataItem()
            begin
                CLEAR(DateRange01);
                CLEAR(CompName01);

                DateRange01 := "Purchase Header".GETFILTER("Purchase Header"."Order Date");
                CompName01 := COMPANYNAME;
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
        DateRange01: Text;
        CompName01: Text;
        Vendor: Record Vendor;
        VendorState: Text;
}

