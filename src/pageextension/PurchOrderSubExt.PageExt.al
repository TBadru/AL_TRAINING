pageextension 50100 PurchOrderSubExt extends "Purchase Order Subform"
{

    layout
    {
        addafter(Description)
        {

            field("Car No."; Rec."Car No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Car No. field.';
            }
            field("Car Event Type"; Rec."Car Event Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Car Event Type field.';
            }
        }
    }
}
