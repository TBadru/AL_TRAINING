page 50101 Models
{
    ApplicationArea = All;
    Caption = 'Models';
    PageType = List;
    SourceTable = Model;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Brand Code"; Rec."Brand Code")
                {
                    ToolTip = 'Specifies the value of the Brand Code field.';
                }
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Total Value"; Rec."Total Value")
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
            }
        }
    }
}
