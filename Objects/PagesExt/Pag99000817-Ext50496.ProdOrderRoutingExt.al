pageextension 50496 "ProdOrderRoutingExt" extends "Prod. Order Routing"//99000817
{

    //Unsupported feature: Property Insertion (InsertAllowed) on ""Prod. Order Routing"(Page 99000817)".


    //Unsupported feature: Property Insertion (DeleteAllowed) on ""Prod. Order Routing"(Page 99000817)".


    //Unsupported feature: Property Insertion (ModifyAllowed) on ""Prod. Order Routing"(Page 99000817)".

    layout
    {

        //Unsupported feature: Property Modification (ImplicitType) on ""Previous Operation No."(Control 22)".


        //Unsupported feature: Property Modification (ImplicitType) on ""Next Operation No."(Control 18)".

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

