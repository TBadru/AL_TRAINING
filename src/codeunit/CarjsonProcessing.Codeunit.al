codeunit 50100 "Car json Processing"
{
    procedure ExportToJsonAndShow()
    var
        JsonText: Text;
    begin
        JsonText := ExportToJson();
        Message(JsonText);
    end;

    local procedure ExportToJson(): Text
    var
        OutText: Text;
        CarsJsonArray: JsonArray;
        CarsJsonObject: JsonObject;
        Car: Record Car;
    begin
        Car.Reset();
        if (Car.FindSet()) then
            repeat
                CarsJsonObject := ExportCarToJson(Car);
                CarsJsonArray.Add(CarsJsonObject);
            until (Car.Next() = 0);

        CarsJsonArray.WriteTo(OutText);
        exit(OutText);
    end;


    local procedure ExportCarToJson(var car: Record car): JsonObject
    var
        CarJson: JsonObject;
        CarHistoryJsonArray: JsonArray;
    begin
        CarJson.Add('no', Car."No.");
        CarJson.Add('brandCode', Car."Brand Code");
        CarJson.Add('modelCode', Car."Model Code");


        exit(CarJson);
    end;

}