codeunit 50002 "UserTemplateAccess"
{
    // // OA:PC-050118 - For Template & Batch Access Permission


    trigger OnRun()
    begin
    end;

    [Scope('Cloud')]
    procedure UserTemplateAccess(UserId: Code[35]; TempateName: Code[35]; BatchName: Code[35])
    var
        UserTemplate: Record "User Template Batch Access";
    begin
        IF NOT UserTemplate.GET(UserId, TempateName, BatchName) THEN
            ERROR('You do not have permission of accessing current Batch %1', BatchName);
    end;
}

