pageextension 50467 "PostedTransferShipmentsExt" extends "Posted Transfer Shipments"//5743
{
    // // PMT.00.01
    //  Added Report for Stock Transfer
    layout
    {
        addafter("No.")
        {
            field("Ack No."; Rec."Ack No.")
            {
                ApplicationArea = All;
            }
            field("Ack./Cancel Date"; Rec."Ack./Cancel Date")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        modify("&Print")
        {
            Visible = false;
        }
        addafter("&Navigate")
        {
            action("Stock Transfer")
            {
                Image = Stock;
                ApplicationArea = All;

                trigger OnAction()
                var
                    TransShipHeader: Record "Transfer Shipment Header";
                begin
                    // >> PMT.00.01
                    TransShptHeader.RESET;
                    TransShptHeader.SETRANGE("No.", Rec."No.");
                    //>> OA.PA
                    ManagementEmployee.RESET;
                    ManagementEmployee.SETRANGE("User ID", USERID);
                    ManagementEmployee.SETRANGE("Show Cost", TRUE);
                    IF ManagementEmployee.FINDSET THEN
                        REPORT.RUNMODAL(REPORT::"Stock Transfer Shipment", TRUE, TRUE, TransShptHeader)
                    ELSE
                        REPORT.RUNMODAL(REPORT::"Stock Transfer Shipment No cos", TRUE, TRUE, TransShptHeader);
                    // << PMT.00.01
                end;
            }
            group("E-Invoice")
            {
                action("Generate E-Invoice")
                {
                    Caption = 'Generate E-Invoice';
                    Image = ElectronicBanking;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        TransferShipmentHeader: Record "Transfer Shipment Header";
                        APIManagement: Codeunit "API Management -Webtel";
                        INRError: Label 'IRN Already Generated.';
                    begin
                        CLEAR(APIManagement);
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETRANGE("No.", Rec."No.");
                        IF TransferShipmentHeader.FINDFIRST THEN BEGIN
                            //IF TransferShipmentHeader."IRN Hash" <> '' THEN BEGIN
                            //    ERROR(INRError);
                            //END ELSE BEGIN
                            // APIManagement.SetTransferShipHeader(TransferShipmentHeader);
                            // APIManagement.GenerateTransferInvoiceJSONSchema(TransferShipmentHeader); //OA.AS Commented
                            //END;
                        END;
                    end;
                }
                action("Cancel E-Invoice")
                {
                    Caption = 'Cancel E-Invoice';
                    Image = ElectronicBanking;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        TransferShipmentHeader: Record "Transfer Shipment Header";
                        APIManagement: Codeunit "API Management -Webtel";
                    begin
                        TransferShipmentHeader.RESET;
                        TransferShipmentHeader.SETRANGE("No.", Rec."No.");
                        IF TransferShipmentHeader.FINDFIRST THEN BEGIN
                            // APIManagement.SetTransferShipHeader(TransferShipmentHeader);
                            // APIManagement.CancelTrfShipIRNNo(TransferShipmentHeader); //OA.AS Commented
                        END;
                    end;
                }
            }
        }
    }

    var
        ManagementEmployee: Record "Management Employee";
        TransShptHeader: Record "Transfer Shipment Header";
}

