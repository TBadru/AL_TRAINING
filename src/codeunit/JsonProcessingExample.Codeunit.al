codeunit 50101 "Json Processing Example"
{
    procedure ProcessingExample()

    var
        TextData: Text;
        JsonToken: JsonToken;
        NameToken: JsonToken;


    begin
        TextData := '{"name": "name value"}';
        if (JsonToken.ReadFrom(TextData)) then begin
            if (JsonToken.SelectToken('name', NameToken)) then begin

                Message(NameToken.AsValue().AsText());
            end;
        end;
    end;

}