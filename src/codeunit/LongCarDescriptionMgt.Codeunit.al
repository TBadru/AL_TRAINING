codeunit 50104 LongCarDescriptionMgt implements CarDescriptionMgt
{
    procedure ShowcarDescription(Car: Record Car)
    var
        DescriptionLbl: Label 'Long description: %1 %2 %3 %4';
    begin
        Message(StrSubstNo(DescriptionLbl, Car."No.", Car."Brand Code", Car."Model Code", Car."Registration No."));
    end;
}