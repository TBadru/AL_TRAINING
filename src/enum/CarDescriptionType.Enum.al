enum 50103 "Car Description Type" implements CarDescriptionMgt
{
    Extensible = true;

    value(0; Short)
    {
        Caption = 'Short';
        Implementation = CarDescriptionMgt = ShortCarDescriptionMgt;
    }
    value(1; Long)
    {
        Caption = 'Long';
        Implementation = CarDescriptionMgt = LongCarDescriptionMgt;
    }
}
