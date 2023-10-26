page 50104 "Car Card Subp."
{
    ApplicationArea = All;
    Caption = 'Car Card Subp.';
    PageType = ListPart;
    SourceTable = "Car History Entry";
    PopulateAllFields   = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Event Type"; Rec."Event Type")
                {
                    ToolTip = 'Specifies the value of the Event Type field.';
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Date field.';
                }
                field(Notes; Rec.Notes)
                {
                    ToolTip = 'Specifies the value of the Notes field.';
                }
                field(Cost; Rec.Cost)
                {
                    ToolTip = 'Specifies the value of the Cost field.';
                }
            }
        }
    }
}
