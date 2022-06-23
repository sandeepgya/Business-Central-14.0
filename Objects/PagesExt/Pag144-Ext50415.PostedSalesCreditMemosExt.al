pageextension 50415 "PostedSalesCreditMemosExt" extends "Posted Sales Credit Memos"//144
{
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
            field("IRN Hash"; Rec."IRN Hash")
            {
                ApplicationArea = All;
            }
            field("QR Code"; Rec."QR Code")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        /*addafter("Non GST")
        {
            group("E-Invoice")
            {
                action("Generate E-Invoice")
                {
                    Caption = 'Generate E-Invoice';
                    Image = ElectronicBanking;
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
                        APIManagement: Codeunit "API Management -Webtel";
                        IRNError: Label 'IRN Already Generated.';
                    begin
                        CLEAR(APIManagement);
                        SalesCrMemoHeader.RESET;
                        SalesCrMemoHeader.SETRANGE("No.", "No.");
                        IF SalesCrMemoHeader.FINDFIRST THEN BEGIN
                            IF SalesCrMemoHeader."IRN Hash" <> '' THEN BEGIN
                                ERROR(IRNError);
                            END ELSE BEGIN
                                APIManagement.SetCrMemoHeader(SalesCrMemoHeader);
                                APIManagement.GenerateSalesCreditJSONSchema(SalesCrMemoHeader);
                            END;
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
                        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
                        APIManagement: Codeunit "API Management -Webtel";
                    begin
                        SalesCrMemoHeader.RESET;
                        SalesCrMemoHeader.SETRANGE("No.", "No.");
                        IF SalesCrMemoHeader.FINDFIRST THEN BEGIN
                            APIManagement.SetCrMemoHeader(SalesCrMemoHeader);
                            APIManagement.CancelSalesCreditIRNNo(SalesCrMemoHeader);
                        END;
                    end;
                }
            }
        }*/ //OA.AS Commented
    }
}

