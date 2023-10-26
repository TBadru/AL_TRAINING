page 50102 "Car List"
{
    ApplicationArea = All;
    Caption = 'Car List';
    PageType = List;
    SourceTable = Car;
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Car Card";


    layout
    {
        area(content)
        {
            repeater(General)
            {
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
                field("Description Type"; Rec."Description Type")
                {
                    ToolTip = 'Specifies the value of the Description Type field.';
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
                field("Engine Size"; Rec."Engine Size")
                {
                    ToolTip = 'Specifies the value of the Engine Size field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(XmlExportAction)
            {
                Caption = 'Export';
                ApplicationArea = All;
                Image = Export;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = xmlport "Cars Xmlport";

            }
            action(ExportDatabaseAction)
            {
                Caption = 'Export Json';
                ApplicationArea = All;
                Image = ExportDatabase;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    JsonExport: Codeunit "Car json Processing";
                begin
                    JsonExport.ExportToJsonAndShow();
                end;
            }

            action(ImportDatabaseAction)
            {
                Caption = 'Import Json';
                ApplicationArea = All;
                Image = Import;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    JsonImport: Codeunit "Json Processing Example";
                begin
                    JsonImport.ProcessingExample();
                end;
            }

            action(InterfacesAction)
            {
                Caption = 'Test Interface';
                ApplicationArea = All;
                Image = DataEntry;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    // CarInterface: Interface CarDescriptionMgt;
                    CarInterface: Interface CarDescriptionMgt;
                // Short: Codeunit ShortCarDescriptionMgt;
                // Long: Codeunit LongCarDescriptionMgt;

                // CarDescriptionType: Enum "Car Description Type";
                begin
                    // CarInterface := Short;
                    // CarDescriptionType := CarDescriptionType::Short;
                    // CarInterface := CarDescriptionType;
                    // CarInterface.ShowCarDescription(Rec);

                    // CarInterface := Long;
                    // CarDescriptionType := CarDescriptionType::Long;
                    CarInterface := Rec."Description Type";
                    CarInterface.ShowCarDescription(Rec);
                end;
            }

        }
    }
}