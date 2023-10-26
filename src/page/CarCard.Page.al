page 50103 "Car Card"
{
    ApplicationArea = All;
    Caption = 'Car Card';
    PageType = Card;
    SourceTable = Car;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("Brand Code"; Rec."Brand Code")
                {
                    ToolTip = 'Specifies the value of the Brand Code field.';
                }
                field("Model Code"; Rec."Model Code")
                {
                    ToolTip = 'Specifies the value of the Model Code field.';
                }
                field("Value"; Rec."Value")
                {
                    ToolTip = 'Specifies the value of the value field.';
                }
                field("Registration No."; Rec."Registration No.")
                {
                    ToolTip = 'Specifies the value of the Registration No. field.';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.';
                }
                field("Engine Type"; Rec."Engine Type")
                {
                    ToolTip = 'Specifies the value of the Engine Type field.';
                }
                field("Description Type"; Rec."Description Type")
                {
                    ToolTip = 'Specifies the value of the Description Type field.';
                }
                field("Engine Size"; Rec."Engine Size")
                {
                    ToolTip = 'Specifies the value of the Engine Size field.';
                }
            }
            group(Other)
            {
                Caption = 'Other';

                field(Colour; Rec.Colour)
                {
                    ToolTip = 'Specifies the value of the Colour field.';
                }
                field(Notes; Rec.Notes)
                {
                    ToolTip = 'Specifies the value of the Notes field.';
                }
            }

            part(HistoryEntriesPart; "Car Card Subp.")
            {
                Caption = 'History Entries';
                SubPageLink = "Car No." = field("No.");
            }
        }
    }
}
