table 50103 "Car History Entry"
{
    Caption = 'Car History Entry';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;

        }
        field(2; "Car No."; Code[20])
        {
            Caption = 'Car No.';
            TableRelation = Car;

        }
        field(3; "Event Type"; enum "Car Event Type")
        {
            Caption = 'Event Type';
        }
        field(4; "Date"; Date)
        {
            Caption = 'Date';
        }
        field(5; Notes; Text[250])
        {
            Caption = 'Notes';
        }
        field(6; Cost; Decimal)
        {
            Caption = 'Cost';
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
