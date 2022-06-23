report 50020 "Generate Role Data"
{
    /*// SauravNavRP.NAVW17.01 #Saurav Dhyani #07-05-2015
    //   # New Report Created For Generating Role and Permissions Withing Role

    Caption = 'Generate Role Data';
    Description = 'SauravNav.00.01';
    // Permissions = TableData "Permission Set For Roles" = rimd,
                //   TableData "Release Register" = rimd;
    ProcessingOnly = true;

    dataset
    {
        dataitem("Code Coverage"; "Code Coverage")
        {
            DataItemTableView = SORTING("Object Type", "Object ID", "Line No.") ORDER(Ascending);

            trigger OnAfterGetRecord()
            begin
                TempPermissionSetForRole.RESET;
                TempPermissionSetForRole.SETRANGE("Object Type", "Object Type");
                TempPermissionSetForRole.SETRANGE("Object ID", "Object ID");
                IF NOT TempPermissionSetForRole.FINDSET THEN BEGIN
                    PermissionForRole2.RESET;
                    PermissionForRole2.SETCURRENTKEY("Object Type", "Object ID");
                    PermissionForRole2.SETRANGE("Object Type", "Object Type");
                    PermissionForRole2.SETRANGE("Object ID", "Object ID");
                    IF NOT PermissionForRole2.FINDSET THEN BEGIN
                        WITH InsertPermissionForRole DO BEGIN
                            INIT;
                            "Role ID" := AddToRole;
                            "User Role Name" := RoleName;
                            "Object Type" := "Code Coverage"."Object Type";
                            "Object ID" := "Code Coverage"."Object ID";

                            IF ("Object Type" = "Object Type"::Table) THEN BEGIN    // TABLE WILL HAVE BY DEFAULT READ/INSERT/MODIFY Permission
                                "Read Permission" := "Read Permission"::Yes;
                                "Insert Permission" := "Insert Permission"::Yes;
                                "Modify Permission" := "Modify Permission"::Yes;
                                "Delete Permission" := "Delete Permission"::" ";
                                "Execute Permission" := "Execute Permission"::" ";
                            END ELSE BEGIN                                                 // EXECUTE PERMISSION FOR OTHER OBJECT TYPES
                                "Read Permission" := "Read Permission"::" ";
                                "Insert Permission" := "Insert Permission"::" ";
                                "Modify Permission" := "Modify Permission"::" ";
                                "Delete Permission" := "Delete Permission"::" ";
                                "Execute Permission" := "Execute Permission"::Yes;
                            END;
                            INSERT;
                        END;
                    END;
                END;
            end;

            trigger OnPreDataItem()
            begin
                IF AddToRole = '' THEN
                    ERROR(Error001);
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
                    field("New Role Code"; AddToRole)
                    {
                        ApplicationArea = All;
                    }
                    field("New Role Name"; RoleName)
                    {
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

    trigger OnPreReport()
    begin
        TempPermissionSetForRole.DELETEALL;

        Permission.RESET;
        Permission.SETRANGE("Role ID", AddToRole);
        IF Permission.FINDSET THEN
            REPEAT
                TempPermissionSetForRole.INIT;
                TempPermissionSetForRole.TRANSFERFIELDS(Permission);
                TempPermissionSetForRole.INSERT;
            UNTIL (Permission.NEXT = 0);

        PermissionForRole.RESET;
        IF PermissionForRole.FINDSET THEN
            REPEAT
                Permission.RESET;
                Permission.SETRANGE("Role ID", PermissionForRole."Role ID");
                IF Permission.FINDSET THEN
                    REPEAT
                        TempPermissionSetForRole.INIT;
                        TempPermissionSetForRole.TRANSFERFIELDS(Permission);
                        TempPermissionSetForRole.INSERT;
                    UNTIL (Permission.NEXT = 0);
            UNTIL (PermissionForRole.NEXT = 0);
    end;

    var
        TempPermissionSetForRole: Record Permission temporary;
        PermissionForRole: Record "Permission For Roles";
        Permission: Record Permission;
        AddToRole: Code[10];
        PermissionForRole2: Record "Permission For Roles";
        InsertPermissionForRole: Record "Permission For Roles";
        RoleName: Text[30];
        PermissionSetForRole: Record "Permission Set For Roles";
        Error001: Label 'Role Name Required.';
        */
}

