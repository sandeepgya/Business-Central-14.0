report 50008 "Update Purch Posting Date"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Objects/RDLC/UpdatePurchPostingDate.rdlc';
    Caption = 'Update Sales Posting Date';
    Permissions = TableData "G/L Entry" = rm,
                  TableData "Vendor Ledger Entry" = rm,
                  TableData "Item Ledger Entry" = rm,
                  TableData "Purch. Rcpt. Header" = rm,
                  TableData "Purch. Rcpt. Line" = rm,
                  TableData "Purch. Inv. Header" = rm,
                  TableData "Purch. Inv. Line" = rm,
                  TableData "Item Application Entry" = rm,
                  TableData "Detailed Vendor Ledg. Entry" = rm,
                  TableData "Value Entry" = rm,
                  TableData "GST Ledger Entry" = rm,
                  TableData "Detailed GST Ledger Entry" = rm;

    dataset
    {
        dataitem("Purch. Inv. Header"; "Purch. Inv. Header")
        {
            dataitem("Purch. Inv. Line"; "Purch. Inv. Line")
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
            dataitem("Vendor Ledger Entry"; "Vendor Ledger Entry")
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
            dataitem("Detailed Vendor Ledg. Entry"; "Detailed Vendor Ledg. Entry")
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
        dataitem("Purch. Rcpt. Header"; "Purch. Rcpt. Header")
        {
            dataitem("Purch. Rcpt. Line"; "Purch. Rcpt. Line")
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

