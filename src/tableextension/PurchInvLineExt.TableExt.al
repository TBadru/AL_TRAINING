tableextension 50101 PurchInvLineExt extends "Purch. Inv. Line"
{
    fields
    {
        field(50100; "Car No."; Code[20])
        {
            Caption = 'Car No.';
            DataClassification = CustomerContent;
            TableRelation = Car;
        }


        field(50101; "Car Event Type"; Enum "Car Event Type")
        {
            Caption = 'Car Event Type';
            DataClassification = CustomerContent;
            
        }
    }
}
