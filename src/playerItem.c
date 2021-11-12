#include "global.h"
#include "functions.h"

extern void PlayerItemSword();
extern void PlayerItemBomb();
extern void PlayerItem3();
extern void PlayerItemBow();
extern void PlayerItemShield();
extern void PlayerItemLantern();
extern void PlayerItemNulled();
extern void PlayerItemGustJar();
extern void PlayerItemPacciCane();
extern void PlayerItemC();
extern void PlayerItemCellOverwriteSet();
extern void PlayerItemSwordSpin();
extern void PlayerItemSwordBeam();
extern void PlayerItem10();
extern void PlayerItem11();
extern void PlayerItem12();
extern void PlayerItem13();
extern void PlayerItem14();
extern void PlayerItem15();
extern void PlayerItemNulled2();

void (*const gPlayerItemFunctions[])() = { DeleteEntity,
                                           PlayerItemSword,
                                           PlayerItemBomb,
                                           PlayerItem3,
                                           PlayerItemBow,
                                           PlayerItemShield,
                                           PlayerItemLantern,
                                           PlayerItemNulled,
                                           PlayerItemGustJar,
                                           PlayerItemPacciCane,
                                           DeleteEntity,
                                           DeleteEntity,
                                           PlayerItemC,
                                           PlayerItemCellOverwriteSet,
                                           PlayerItemSwordSpin,
                                           PlayerItemSwordBeam,
                                           PlayerItem10,
                                           PlayerItem11,
                                           PlayerItem12,
                                           PlayerItem13,
                                           PlayerItem14,
                                           PlayerItem15,
                                           PlayerItemSwordBeam,
                                           PlayerItemNulled2,
                                           PlayerItemCellOverwriteSet };

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 unk6;
} ItemFrame;
extern ItemFrame gUnk_08126DA8[];
extern ItemFrame* gUnk_08126ED8[3];

void ItemInit(Entity*);

void ItemUpdate(Entity* this) {
    if ((this->flags & ENT_DID_INIT) == 0 && this->action == 0 && this->subAction == 0)
        ItemInit(this);

    if (!CheckDontUpdate(this)) {
        gPlayerItemFunctions[this->id](this);
        this->bitfield &= ~0x80;
        if (this->iframes != 0) {
            if (this->iframes > 0)
                this->iframes--;
            else
                this->iframes++;
        }
    }
    DrawEntity(this);
}

// tiny regalloc
NONMATCH("asm/non_matching/arm_proxy/ItemInit.inc", void ItemInit(Entity* this)) {
    ItemFrame* entry;

    entry = &gUnk_08126DA8[this->id];
    if (entry->unk0 == 0xff) {
        u32 temp = entry->unk2;
        ItemFrame* temp2 = gUnk_08126ED8[entry->unk1];
        entry = &temp2[this->field_0x68.HALF.LO - temp];
    }

    this->palette.raw = ((entry->unk0 & 0xf) << 4) | entry->unk0;
    this->damage = entry->unk1;
    this->hurtType = entry->unk3;
    this->hitType = entry->unk4;
    this->spriteIndex = entry->unk5;
    if (entry->unk6 == 0)
        this->spriteVramOffset = gPlayerEntity.spriteVramOffset;
    else
        this->spriteVramOffset = entry->unk6 & 0x3ff;

    if (this->animationState == 0)
        this->animationState = gPlayerEntity.animationState & 6;

    this->collisionLayer = gPlayerEntity.collisionLayer;
    this->spriteRendering.b3 = gPlayerEntity.spriteRendering.b3;
    this->spritePriority.b0 = gPlayerEntity.spritePriority.b0;
    this->spriteOrientation.flipY = gPlayerEntity.spriteOrientation.flipY;
    this->health = 1;
    this->flags |= ENT_DID_INIT;
}
END_NONMATCH
