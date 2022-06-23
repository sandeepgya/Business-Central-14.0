report 50009 "Update Sales Posting Date"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/UpdateSalesPostingDate.rdlc';
    Caption = 'Update Sales Posting Date';
    Permissions = TableData "G/L Entry" = rm,
                  TableData "Cust. Ledger Entry" = rm,
                  TableData "Item Ledger Entry" = rm,
                  TableData "Sales Shipment Header" = rm,
                  TableData "Sales Shipment Line" = rm,
                  TableData "Sales Invoice Header" = rm,
                  TableData "Sales Invoice Line" = rm,
                  TableData "Item Application Entry" = rm,
                  TableData "Detailed Cust. Ledg. Entry" = rm,
                  TableData "Value Entry" = rm,
                  TableData "GST Ledger Entry" = rm,
                  TableData "Detailed GST Ledger Entry" = rm;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = FIELD("No.");

                trigger OnAfterGetRecord()
                begin
                    IF CorrectDate <> 0D THEN BEGIN
                        "Posting Date" := CorrectDate;
                        MODIFY
                    END;
                end;

                trigger OnPreDataItem()
                begin
                    SETRANGE("Document No.", InvoiceNo);
                end;
            }
            dataitem("G/L Entry"; "G/L Entry")
            {

                trigger OnAfterGetRecord()
                begin
                    IF CorrectDate <> 0D THEN BEGIN
                        "Posting Date" := CorrectDate;
                        MODIFY
                    END;
                end;

                trigger OnPreDataItem()
                begin
                    SETRANGE("Document No.", InvoiceNo);
                end;
            }
            dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
            {

                trigger OnAfterGetRecord()
                begin
                    IF CorrectDate <> 0D THEN BEGIN
                        "Posting Date" := CorrectDate;
                        MODIFY
                    END;
                end;

                trigger OnPreDataItem()
                begin
                    SETRANGE("Document No.", InvoiceNo);
                end;
            }
            dataitem("Detailed Cust. Ledg. Entry"; "Detailed Cust. Ledg. Entry")
            {

                trigger OnAfterGetRecord()
                begin
                    IF CorrectDate <> 0D THEN BEGIN
                        "Posting Date" := CorrectDate;
                        MODIFY
                    END;
                end;

                trigger OnPreDataItem()
                begin
                    SETRANGE("Document No.", InvoiceNo);
                end;
            }
            dataitem("Value Entry"; "Value Entry")
            {

                trigger OnAfterGetRecord()
                begin
                    IF CorrectDate <> 0D THEN BEGIN
                        "Posting Date" := CorrectDate;
                        MODIFY
                    END;
                end;

                trigger OnPreDataItem()
                begin
                    SETRANGE("Document No.", InvoiceNo);
                end;
            }
            dataitem("GST Ledger Entry"; "GST Ledger Entry")
            {

                trigger OnAfterGetRecord()
                begin
                    IF CorrectDate <> 0D THEN BEGIN
                        "Posting Date" := CorrectDate;
                        MODIFY
                    END;
                end;

                trigger OnPreDataItem()
                begin
                    SETRANGE("Document No.", InvoiceNo);
                end;
            }
            dataitem("Detailed GST Ledger Entry"; "Detailed GST Ledger Entry")
            {

                trigger OnAfterGetRecord()
                begin
                    IF CorrectDate <> 0D THEN BEGIN
                        "Posting Date" := CorrectDate;
                        MODIFY
                    END;
                end;

                trigger OnPreDataItem()
                begin
                    SETRANGE("Document No.", InvoiceNo);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                IF CorrectDate <> 0D THEN BEGIN
                    "Posting Date" := CorrectDate;
                    MODIFY
                END;
            end;

            trigger OnPreDataItem()
            begin
                SETRANGE("No.", InvoiceNo);
            end;
        }
        dataitem("Sales Shipment Header"; "Sales Shipment Header")
        {
            dataitem("Sales Shipment Line"; "Sales Shipment Line")
            {
                dataitem("Item Ledger Entry"; "Item Ledger Entry")
                {
                    dataitem("Item Application Entry"; "Item Application Entry")
                    {

                        trigger OnAfterGetRecord()
                        begin
                            IF CorrectDate <> 0D THEN BEGIN
                                "Posting Date" := CorrectDate;
                                MODIFY
                            END;
                        end;

                        trigger OnPreDataItem()
                        begin
                            SETRANGE("Item Application Entry"."Outbound Item Entry No.", "Item Ledger Entry"."Entry No.");
                        end;
                    }

                    trigger OnAfterGetRecord()
                    begin
                        IF CorrectDate <> 0D THEN BEGIN
                            "Posting Date" := CorrectDate;
                            MODIFY
                        END;
                    end;

                    trigger OnPreDataItem()
                    begin
                        SETRANGE("Document No.", ShipmentNo);
                    end;
                }
                dataitem(ILEVE; "Value Entry")
                {

                    trigger OnAfterGetRecord()
                    begin
                        IF CorrectDate <> 0D THEN BEGIN
                            "Posting Date" := CorrectDate;
                            MODIFY
                        END;
                    end;

                    trigger OnPreDataItem()
                    begin
                        SETRANGE("Document No.", ShipmentNo);
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    IF CorrectDate <> 0D THEN BEGIN
                        "Posting Date" := CorrectDate;
                        MODIFY
                    END;
                end;

                trigger OnPreDataItem()
                begin
                    SETRANGE("Document No.", ShipmentNo);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                IF CorrectDate <> 0D THEN BEGIN
                    "Posting Date" := CorrectDate;
                    MODIFY
                END;
            end;

            trigger OnPreDataItem()
            begin
                SETRANGE("No.", ShipmentNo);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(CorrectDate; CorrectDate)
                    {
                        Caption = 'Correct Date';
                        ApplicationArea = All;
                    }
                    field(InvoiceNo; InvoiceNo)
                    {
                        Caption = 'Invoice No';
                        ApplicationArea = All;
                    }
                    field(ShipmentNo; ShipmentNo)
                    {
                        Caption = 'Shipment No';
                        ApplicationArea = All;
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        CorrectDate: Date;
        DocFilter: Code[20];
        InvoiceNo: Code[20];
        ShipmentNo: Code[20];
}

