report 50100 "Cars Report"
{
    ApplicationArea = All;
    Caption = 'Cars Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Word;
    WordLayout = 'CarsReport.docx';

    dataset
    {
        dataitem(car; car)
        {

            DataItemTableView = sorting("Brand Code", "Model Code", Year);
            RequestFilterFields = "No.", "Brand Code";


            column(No; "No.")
            {
            }
            column(BrandCode; "Brand Code")
            {
            }
            column(ModelCode; "Model Code")
            {
            }
            column(EngineType; "Engine Type")
            {
            }
            column(EngineSize; "Engine Size")
            {
            }

        }

    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
