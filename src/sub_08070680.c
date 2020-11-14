#include "global.h"
#include "entity.h"
#include "player.h"
#include "functions.h"

extern void (*gUnk_0811B9E0[])(Entity*);

extern BoundingBox gUnk_08114F88;

// inject
void sub_08070680(Entity* this) {
    gUnk_0811B9E0[this->action](this);
}

void sub_08070698(Entity* this) {
    u32 uVar1;
    int iVar2;
    Entity* ent;

    gPlayerState.field_0x0[0] = 0xff;
    gPlayerState.field_0x16[0] = gPlayerEntity.x.HALF.HI;
    gPlayerState.field_0x16[1] = gPlayerEntity.y.HALF.HI;
    this->flags = this->flags | 0x80;
    this->spritePriority.b0 = 0xc;
    this->spritePriority.b1 = 1;
    this->spriteSettings.b.shadow = 1;
    this->field_0x16 = 0x20;
    this->flags2 = 8;
    this->damageType = 0x79;
    this->boundingBox = &gUnk_08114F88;
    this->spriteIndex = 1;
    gPlayerState.field_0x8 = 0x100;
    sub_0806FDA0(this);
    sub_080AE008(this, 1, 2);
    InitAnimationForceUpdate(this, 2);
    if (this->collisionLayer == 0) {
        sub_08016A30(this);
    }
    uVar1 = IsItemEquipped(0x10);
    if (uVar1 != 2) {
        sub_08077728();
    }
    sub_0807A108();
    sub_0807AEE4();
    iVar2 = sub_08078EFC();
    if (iVar2 == 0) {
        sub_0807921C();
        sub_0807A1B8();
        if (gPlayerState.swimState != 0) {
            gPlayerState.swimState = 1;
            sub_08079938();
            gPlayerState.field_0xa8 = 7;
            sub_0807ACCC(this);
            ent = FindEntityInListByForm(0x6, 0xf, 0x6, 0xb, 0x0);
            if (ent != NULL) {
                DeleteEntity(ent);
            }
        }
    }
}
