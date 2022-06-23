tableextension 50413 "PMTLocationExt" extends Location//14
{
    // //PMT.00.14 Validation for demo & third party location
    fields
    {
        field(61001; "Registered LocationCode"; Code[20])
        {
            Description = 'PMT.REP.00.01';
        }
        field(61002; "Demo Location"; Boolean)
        {
            Description = 'PMT.00.14';

            trigger OnValidate()
            begin
                //>>PMT.00.14
                IF "Job work location" THEN
                    ERROR('You can not enter demo location  for the line ');
                //<<PMT.00.14
            end;
        }
        field(61003; "Job work location"; Boolean)
        {
            Description = 'PMT.00.14';

            trigger OnValidate()
            begin
                //>>PMT.00.14
                IF "Demo Location" THEN
                    ERROR('You can not enter third party location for the line ');
                //<<PMT.00.14
            end;
        }
        field(80001; "CD Key"; Text[30])
        {
            DataClassification = ToBeClassified;
            Description = 'E-Inv';
        }
        field(80002; "E-InvUserName"; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'E-Inv';
        }
        field(80003; "E-InvPassword"; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'E-Inv';
        }
        field(80004; EFUserName; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'E-Inv';
        }
        field(80005; EFPassword; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'E-Inv';
        }
        field(80006; "E-InvGenerateURL"; Text[200])
        {
            DataClassification = ToBeClassified;
            Description = 'E-Inv';
        }
        field(80007; "E-InvCancelURL"; Text[200])
        {
            DataClassification = ToBeClassified;
            Description = 'E-Inv';
        }
        field(80008; "E-InvPrintURL"; Text[200])
        {
            DataClassification = ToBeClassified;
            Description = 'E-Inv';
        }
    }
}

