xmlport 50100 "Cars Xmlport"
{
    Caption = 'Cars Xmlport';
    Direction = Export;
    Format = VariableText;



    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Car; Car)
            {

                AutoReplace = true;
                AutoUpdate = true;

                fieldelement(No; Car."No.")
                {
                }
                fieldelement(BrandCode; Car."Brand Code")
                {
                }
                fieldelement(ModelCode; Car."Model Code")
                {
                }
                fieldelement(RegistrationNo; Car."Registration No.")
                {
                }
                fieldelement(Year; Car.Year)
                {
                }
                fieldelement(EngineType; Car."Engine Type")
                {
                }
                fieldelement(EngineSize; Car."Engine Size")
                {
                }
                fieldelement(Colour; Car.Colour)
                {
                }
                fieldelement(Notes; Car.Notes)
                {
                }
                fieldelement(Value; Car."Value")
                {
                }

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
