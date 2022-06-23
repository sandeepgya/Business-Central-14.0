pageextension 50459 "LocationCardExt" extends "Location Card"//5703
{
    // PMT.00.14
    //   Added fields Demo Location & Third Party Location for Transfer Order Changes
    layout
    {
        addafter("Use As In-Transit")
        {
            field("Demo Location"; Rec."Demo Location")
            {
                ApplicationArea = All;
            }
            field("Job work location"; Rec."Job work location")
            {
                ApplicationArea = All;
            }
        }
        // addafter(Control1500004)
        // {
        //     field("CD Key"; Rec."CD Key")
        //     {
        //         ApplicationArea = All;
        //     }
        //     field("E-InvUserName"; Rec."E-InvUserName")
        //     {
        //         ApplicationArea = All;
        //     }
        //     field("E-InvPassword"; Rec."E-InvPassword")
        //     {
        //         ApplicationArea = All;
        //     }
        //     field(EFUserName; Rec.EFUserName)
        //     {
        //         ApplicationArea = All;
        //     }
        //     field(EFPassword; Rec.EFPassword)
        //     {
        //         ApplicationArea = All;
        //     }
        //     field("E-InvGenerateURL"; Rec."E-InvGenerateURL")
        //     {
        //         ApplicationArea = All;
        //     }
        //     field("E-InvCancelURL"; Rec."E-InvCancelURL")
        //     {
        //         ApplicationArea = All;
        //     }
        //     field("E-InvPrintURL"; Rec."E-InvPrintURL")
        //     {
        //         ApplicationArea = All;
        //     }
        addafter("Bonded warehouse")
        {
            field("CD Key"; Rec."CD Key")
            {
                ApplicationArea = All;
            }
            field("E-InvUserName"; Rec."E-InvUserName")
            {
                ApplicationArea = All;
            }
            field("E-InvPassword"; Rec."E-InvPassword")
            {
                ApplicationArea = All;
            }
            field(EFUserName; Rec.EFUserName)
            {
                ApplicationArea = All;
            }
            field(EFPassword; Rec.EFPassword)
            {
                ApplicationArea = All;
            }
            field("E-InvGenerateURL"; Rec."E-InvGenerateURL")
            {
                ApplicationArea = All;
            }
            field("E-InvCancelURL"; Rec."E-InvCancelURL")
            {
                ApplicationArea = All;
            }
            field("E-InvPrintURL"; Rec."E-InvPrintURL")
            {
                ApplicationArea = All;
            }
        }
    }
}

