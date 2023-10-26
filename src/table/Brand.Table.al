table 50100 Brand
{
    Caption = 'Brand';
    DataClassification = CustomerContent;
    LookupPageId = Brands;
    DrillDownPageId = Brands;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
