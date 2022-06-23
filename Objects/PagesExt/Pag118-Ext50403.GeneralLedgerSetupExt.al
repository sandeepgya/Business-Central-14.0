pageextension 50403 "GeneralLedgerSetupExt" extends "General Ledger Setup"//118
{
    // PMT:MOD01: Field added Activate GL Inconst. Tracking . It is used in CU 12.
    layout
    {
        addafter("Use Legacy G/L Entry Locking")
        {
            field("Activate GL Inconst. Tracking"; Rec."Activate GL Inconst. Tracking")
            {
                ApplicationArea = All;
            }
            field("Unit-Amount Rounding Precision"; Rec."Unit-Amount Rounding Precision")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addafter("Change Payment &Tolerance")
        {
            action("Inconsistency Activation")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                // SingleCU: Codeunit "Single Instance CU";
                begin
                    // IF "Activate GL Inconst. Tracking" THEN
                    //     SingleCU.RUN;
                end;
            }
            action(ManagementEmployee)
            {
                RunObject = Page "Management Employee List";
                ApplicationArea = All;
            }
        }
    }
}

