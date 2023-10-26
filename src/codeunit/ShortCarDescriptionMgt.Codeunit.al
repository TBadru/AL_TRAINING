codeunit 50103 ShortCarDescriptionMgt implements CarDescriptionMgt
{
    procedure ShowcarDescription(Car: Record Car)
    var
        DescriptionLbl: Label 'Short description: %1 %2';
    begin
        Message(StrSubstNo(DescriptionLbl, Car."No.", Car."Registration No."));
    end;
}