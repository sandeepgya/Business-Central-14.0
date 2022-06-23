pageextension 50497 "ProdOrderComponentsExt" extends "Prod. Order Components"//99000818
{

    //Unsupported feature: Property Insertion (InsertAllowed) on ""Prod. Order Components"(Page 99000818)".


    //Unsupported feature: Property Insertion (DeleteAllowed) on ""Prod. Order Components"(Page 99000818)".


    //Unsupported feature: Property Insertion (ModifyAllowed) on ""Prod. Order Components"(Page 99000818)".

    layout
    {
        addafter("Flushing Method")
        {
            field("Available Stock"; Rec."Available Stock")
            {
                ApplicationArea = All;
            }
        }
    }
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        myInt: Integer;
    begin
        Error(Err001);
    end;

    trigger OnModifyRecord(): Boolean
    var
        myInt: Integer;
    begin
        Error(Err002);
    end;

    trigger OnDeleteRecord(): Boolean
    var
        myInt: Integer;
    begin
        Error(Err003);
    end;

    var
        Err001: TextConst ENU = 'Insertion is not allowed';
        Err002: TextConst ENU = 'Modification is not allowed';
        Err003: TextConst ENU = 'Deletion is not allowed';
}

