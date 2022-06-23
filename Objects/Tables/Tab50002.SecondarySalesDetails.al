table 50002 "Secondary Sales Details"
{
    Caption = 'Secondary Sales Details';

    fields
    {
        field(2; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            Editable = false;
            TableRelation = Customer;

            trigger OnValidate()
            begin
                IF Customer.GET("Sell-to Customer No.") THEN BEGIN
                    "Sell-to Customer Name" := Customer.Name;
                    "Sell-to Address" := Customer.Address;
                    "Sell-to Address 2" := Customer."Address 2";
                    "Sell-to City" := Customer.City;
                    "Sell-to Contact" := Customer.Contact;
                    "E-Mail" := Customer."E-Mail";
                    "Phone No." := Customer."Phone No.";
                    IF CustState.GET(Customer."State Code") THEN
                        "Sell To State Name" := CustState.Description;
                END;
            end;
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)';
            OptionMembers = " ","G/L Account",Item,Resource,"Fixed Asset","Charge (Item)";
        }
        field(6; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST("G/L Account")) "G/L Account" ELSE
            IF (Type = CONST(Item)) Item ELSE
            IF (Type = CONST(Resource)) Resource ELSE
            IF (Type = CONST("Fixed Asset")) "Fixed Asset" ELSE
            IF (Type = CONST("Charge (Item)")) "Item Charge";
        }
        field(7; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(12; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(13; "Unit of Measure"; Text[10])
        {
            Caption = 'Unit of Measure';
        }
        field(15; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(19; "Order Date"; Date)
        {
            Caption = 'Order Date';
        }
        field(22; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
        }
        field(23; "Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost (LCY)';
        }
        field(27; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(28; "Line Discount Amount"; Decimal)
        {
            Caption = 'Line Discount Amount';
        }
        field(29; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(30; "Amount Including VAT"; Decimal)
        {
            Caption = 'Amount Including VAT';
        }
        field(32; "Allow Invoice Disc."; Boolean)
        {
            Caption = 'Allow Invoice Disc.';
            InitValue = true;
        }
        field(40; "Shortcut Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,2,1';
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(41; "Shortcut Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,2,2';
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(42; "Department Code"; Code[20])
        {
            Caption = 'Department Code';
        }
        field(43; "Salesperson Code"; Code[10])
        {
            Caption = 'Salesperson Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(44; "Order No."; Code[20])
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Order No.';
        }
        field(68; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            Editable = false;
            TableRelation = Customer;

            trigger OnValidate()
            begin
                IF Customer.GET("Bill-to Customer No.") THEN BEGIN
                    "Bill-to Name" := Customer.Name;
                    "Bill-to Address" := Customer.Address;
                    "Bill-to Address 2" := Customer."Address 2";
                    "Bill-to City" := Customer.City;
                    "Bill-to Contact" := Customer.Contact;
                    "Bill To Phone No." := Customer."Phone No.";
                    "Bill To E-Mail" := Customer."E-Mail";
                    IF CustState.GET(Customer."State Code") THEN
                        "Bill To State Name" := CustState.Description;
                END;
            end;
        }
        field(69; "Inv. Discount Amount"; Decimal)
        {
            Caption = 'Inv. Discount Amount';
        }
        field(102; "E-Mail"; Text[80])
        {
            Caption = 'Sell To E-Mail';
            ExtendedDatatype = EMail;
        }
        field(103; "Line Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Amount';
        }
        field(131; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(151; "Quote No."; Code[20])
        {
            Caption = 'Quote No.';
            Editable = false;
        }
        field(5402; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST(Item)) "Item Variant".Code WHERE("Item No." = FIELD("No."));
        }
        field(5407; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No.")) ELSE
            "Unit of Measure";
        }
        field(5415; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5709; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = IF (Type = CONST(Item)) "Item Category";
        }
        field(5711; "Purchasing Code"; Code[10])
        {
            Caption = 'Purchasing Code';
            TableRelation = Purchasing;
        }
        field(5712; "Product Group Code"; Code[10])
        {
            Caption = 'Product Group Code';
            // TableRelation = "Product Group".Code WHERE("Item Category Code" = FIELD("Item Category Code")); //OA.AS Commented
        }
        field(6500; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(6501; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(6608; "Return Reason Code"; Code[10])
        {
            Caption = 'Return Reason Code';
            TableRelation = "Return Reason";
        }
        field(7001; "Allow Line Disc."; Boolean)
        {
            Caption = 'Allow Line Disc.';
            InitValue = true;
        }
        field(13798; State; Code[10])
        {
            Caption = 'State';
            TableRelation = State;
        }
        field(16340; "Amount To Customer"; Decimal)
        {
            Caption = 'Amount To Customer';
            Editable = false;
        }
        field(16600; "GST Registration No."; Code[15])
        {
            Caption = 'GST Registration No.';

            trigger OnValidate()
            var
                GSTRegistrationNos: Record "GST Registration Nos.";
            begin
            end;
        }
        field(16601; "GST Place of Supply"; Option)
        {
            Caption = 'GST Place of Supply';
            OptionCaption = ' ,Bill-to Address,Ship-to Address,Location Address ';
            OptionMembers = " ","Bill-to Address","Ship-to Address","Location Address ";
        }
        field(16602; "GST Group Code"; Code[20])
        {
            Caption = 'GST Group Code';
            TableRelation = "GST Group";
        }
        field(16603; "GST Group Type"; Option)
        {
            Caption = 'GST Group Type';
            OptionCaption = 'Goods,Service';
            OptionMembers = Goods,Service;
        }
        field(16604; "GST Base Amount"; Decimal)
        {
            Caption = 'GST Base Amount';
            Editable = false;
        }
        field(16605; "GST %"; Decimal)
        {
            Caption = 'GST %';
            Editable = false;
        }
        field(16606; "Total GST Amount"; Decimal)
        {
            Caption = 'Total GST Amount';
            Editable = false;
        }
        field(16607; "HSN/SAC Code"; Code[8])
        {
            Caption = 'HSN/SAC Code';
            TableRelation = "HSN/SAC".Code WHERE("GST Group Code" = FIELD("GST Group Code"));
        }
        field(16608; "GST Jurisdiction Type"; Option)
        {
            Caption = 'GST Jurisdiction Type';
            Editable = false;
            OptionCaption = 'Intrastate,Interstate';
            OptionMembers = Intrastate,Interstate;
        }
        field(16609; "Invoice Type"; Option)
        {
            Caption = 'Invoice Type';
            Editable = false;
            OptionCaption = ' ,Bill of Supply,Export,Supplementary,Debit Note,Non-GST,Taxable';
            OptionMembers = " ","Bill of Supply",Export,Supplementary,"Debit Note","Non-GST",Taxable;
        }
        field(16610; Exempted; Boolean)
        {
            Caption = 'Exempted';
        }
        field(16611; "GST Customer Type"; Option)
        {
            Caption = 'GST Customer Type';
            OptionCaption = ' ,Registered,Unregistered,Export,Deemed Export,Exempted,SEZ Development,SEZ Unit';
            OptionMembers = " ",Registered,Unregistered,Export,"Deemed Export",Exempted,"SEZ Development","SEZ Unit";

            trigger OnValidate()
            var
                GSTRegistrationNos: Record "GST Registration Nos.";
            begin
            end;
        }
        field(50009; "Phone No."; Text[30])
        {
            Caption = 'Sell To Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(50032; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(50035; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(50079; "Sell-to Customer Name"; Text[50])
        {
            Caption = 'Sell-to Customer Name';
        }
        field(50081; "Sell-to Address"; Text[50])
        {
            Caption = 'Sell-to Address';
        }
        field(50082; "Sell-to Address 2"; Text[50])
        {
            Caption = 'Sell-to Address 2';
        }
        field(50083; "Sell-to City"; Text[30])
        {
            Caption = 'Sell-to City';
            TableRelation = "Post Code".City;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(50084; "Sell-to Contact"; Text[50])
        {
            Caption = 'Sell-to Contact';
        }
        field(50085; "Sell To State Name"; Text[50])
        {
        }
        field(50131; "Warranty Start Date"; Date)
        {
            Caption = 'Warranty Start Date';
        }
        field(50132; "Warranty End Date"; Date)
        {
            Caption = 'Warranty End Date';
        }
        field(50133; "Warranty Period"; DateFormula)
        {
            Caption = 'Warranty Period';
        }
        field(50134; "Warranty Status"; Code[20])
        {
            Caption = 'Warranty Period';
        }
        field(50135; "No. of Visits"; Integer)
        {
        }
        field(60000; "Secondary Customer No."; Code[20])
        {
            Caption = 'Secondary Customer No.';
            Editable = false;
            TableRelation = "Secondary Customer";

            trigger OnValidate()
            begin
                UpdateSecondaryCustDetails;
            end;
        }
        field(60001; "Secondary Cust. Customer Name"; Text[50])
        {
            Caption = 'Secondary Customer Customer Name';
        }
        field(60003; "Secondary Cust. Address"; Text[50])
        {
            Caption = 'Secondary Customer Address';
        }
        field(60004; "Secondary Cust. Address 2"; Text[50])
        {
            Caption = 'Secondary Customer Address 2';
        }
        field(60005; "Secondary Cust. City"; Text[30])
        {
            Caption = 'Secondary Customer City';
            TableRelation = "Post Code".City;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(60006; "Secondary Cust. Contact"; Text[50])
        {
            Caption = 'Secondary Customer Contact';
        }
        field(60007; "Secondary Cust. Country Code"; Code[10])
        {
            Caption = 'Secondary Customer Country Code';
            TableRelation = "Country/Region";
        }
        field(60008; EntryNo; Integer)
        {
        }
        field(60009; "Bill-to Name"; Text[50])
        {
            Caption = 'Bill-to Name';
        }
        field(60010; "Bill-to Name 2"; Text[50])
        {
            Caption = 'Bill-to Name 2';
        }
        field(60011; "Bill-to Address"; Text[50])
        {
            Caption = 'Bill-to Address';
        }
        field(60012; "Bill-to Address 2"; Text[50])
        {
            Caption = 'Bill-to Address 2';
        }
        field(60013; "Bill-to City"; Text[30])
        {
            Caption = 'Bill-to City';
            TableRelation = "Post Code".City;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(60014; "Bill-to Contact"; Text[50])
        {
            Caption = 'Bill-to Contact';
        }
        field(60015; "Bill To State Name"; Text[50])
        {
        }
        field(60016; "Bill To Phone No."; Text[30])
        {
            Caption = 'Bill To Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(60017; "Bill To E-Mail"; Text[80])
        {
            Caption = 'Bill To E-Mail';
            ExtendedDatatype = EMail;
        }
        field(60018; "Secondary Cust Email"; Text[80])
        {
        }
        field(60019; "Secondary Cust Phone No."; Text[30])
        {
        }
    }

    keys
    {
        key(Key1; EntryNo)
        {
            Clustered = true;
            MaintainSIFTIndex = false;
            SumIndexFields = Amount, "Amount Including VAT";
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    var
        SalesDocLineComments: Record "Sales Comment Line";
        PostedDeferralHeader: Record "Posted Deferral Header";
    begin
    end;

    var
        Customer: Record Customer;
        CustState: Record State;
        SecondaryCust: Record "Secondary Customer";

    local procedure UpdateSecondaryCustDetails()
    var
        Cust: Record "Secondary Customer";
    begin
        IF Cust.GET(Rec."Secondary Customer No.") THEN BEGIN
            "Secondary Cust. Customer Name" := Cust.Name;
            "Secondary Cust. Address" := Cust.Address;
            "Secondary Cust. Address 2" := Cust."Address 2";
            "Secondary Cust. City" := Cust.City;
            "Secondary Cust. Contact" := Cust.Contact;
            "Secondary Cust. Country Code" := Cust."Country/Region Code";
            "Secondary Cust Email" := Cust."E-Mail";
            "Secondary Cust Phone No." := Cust."Phone No.";
        END;
    end;

    [Scope('Cloud')]
    procedure GetLastEntryNo(): Integer
    var
        SecondarySalesDetails: Record "Secondary Sales Details";
    begin
        IF SecondarySalesDetails.FINDLAST THEN
            EXIT(SecondarySalesDetails.EntryNo)
        ELSE
            EXIT(0);
    end;
}

