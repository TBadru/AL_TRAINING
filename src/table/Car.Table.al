table 50102 Car
{
    Caption = 'Car';
    DataClassification = CustomerContent;
    LookupPageId = "Car List";
    DrillDownPageId = "Car List";

    fields

    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; "Brand Code"; Code[20])
        {
            Caption = 'Brand Code';
            TableRelation = Brand;

            trigger OnValidate()
            begin

                if (xRec."Brand Code" <> "Brand Code") then
                    Validate("Model Code", '');
            end;
        }
        field(3; "Model Code"; Code[20])
        {
            Caption = 'Model Code';
            TableRelation = Model.Code where("Brand Code" = field("Brand Code"));
        }
        field(4; "Registration No."; Text[20])
        {
            Caption = 'Registration No.';
        }
        field(5; Year; Integer)
        {
            Caption = 'Year';
            InitValue = 2020;
        }
        field(6; "Engine Type"; Enum "Engine Type")
        {
            Caption = 'Engine Type';
        }
        field(7; "Engine Size"; Decimal)
        {
            Caption = 'Engine Size';
        }
        field(8; Colour; Text[20])
        {
            Caption = 'Colour';
        }
        field(9; Notes; Text[250])
        {
            Caption = 'Notes';
        }

        field(10; Value; Decimal)
        {
            Caption = 'value';

        }

        field(11; "Description Type"; Enum "Car Description Type")
        {
            Caption = 'Description Type';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(key2; "Brand Code", "Model Code", Year)

        {
            SumIndexFields = Value;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Brand Code", "Model Code", "Registration No.")
        {

        }
    }

    trigger OnDelete()
    var
        CarHistoryEntry: Record "Car History Entry";
    begin
        CarHistoryEntry.Reset();
        CarHistoryEntry.SetRange("Car No.", "No.");
        CarHistoryEntry.DeleteAll(true);

    end;
}
