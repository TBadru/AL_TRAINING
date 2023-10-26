codeunit 50102 "Car Processing Suscribers"

{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnAfterPostPurchLine', '', false, false)]
    local procedure OnAfterPostPurchLine(var PurchaseHeader: Record "Purchase Header"; var PurchaseLine: Record "Purchase Line"; CommitIsSupressed: Boolean; var PurchInvLine: Record "Purch. Inv. Line"; var PurchCrMemoLine: Record "Purch. Cr. Memo Line"; var PurchInvHeader: Record "Purch. Inv. Header"; var PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr."; var PurchLineACY: Record "Purchase Line"; GenJnlLineDocType: Enum "Gen. Journal Document Type"; GenJnlLineDocNo: Code[20]; GenJnlLineExtDocNo: Code[35]; SrcCode: Code[10]; xPurchaseLine: Record "Purchase Line");
    var
        CarHistoryEntry: Record "Car History Entry";
    begin

        if (PurchaseLine."Car No." <> '') then begin

            CarHistoryEntry.Init();
            CarHistoryEntry."Entry No." := 0;
            CarHistoryEntry.Insert(true);
            CarHistoryEntry.Validate("Car No.", PurchaseLine."Car No.");
            CarHistoryEntry.Validate("Event Type", PurchaseLine."Car Event Type");
            CarHistoryEntry.Validate("Date", PurchaseHeader."Posting Date");
            CarHistoryEntry.Validate("Cost", PurchaseLine."Line Amount");
            CarHistoryEntry.Modify(true);

        end;
    end;

}