#include "entity.h"
#include "player.h"
#include "functions.h"

extern void (*const gUnk_0812AA80[])(Entity*);

extern Hitbox* gUnk_0812AAD8[];
bool32 sub_080ACDB0(Entity*);

void sub_080ACC78(Entity*);
void sub_080ACECC(Entity*);

extern u8 gUnk_0812AAE8[];

void PlayerItem10(Entity* this) {
    if ((gPlayerState.field_0x1c & 0x7f) != 1) {
        DeleteThisEntity();
    }
    gUnk_0812AA80[this->action](this);
    this->iframes = 0;
}

void sub_080ACC04(Entity* this) {
    this->action = 1;
    this->flags2 = gPlayerEntity.flags2;
    this->direction = this->animationState << 2;
    this->speed = 0x200;
    this->flags |= 0xa0;
    this->field_0x3c = 2;
    this->hitbox = gUnk_0812AAD8[this->type];
    this->field_0x70.WORD = 0x10;
    sub_080ACDB0(this);
    sub_0801766C(this);
}

void sub_080ACC5C(Entity* this) {
    if (sub_080ACDB0(this) == FALSE) {
        sub_080ACC78(this);
        sub_080ACECC(this);
    }
}

ASM_FUNC("asm/non_matching/playerItem10/sub_080ACC78.inc", void sub_080ACC78(Entity* this))

ASM_FUNC("asm/non_matching/playerItem10/sub_080ACDB0.inc", bool32 sub_080ACDB0(Entity* this))

void sub_080ACECC(Entity* this) {
    Entity* entity;

    if (this->type < 3 && this->attachedEntity == NULL && (s32) * (u32*)&this->field_0x78 >= 0 &&
        gUnk_0812AAE8[this->type] <= *(u32*)&this->field_0x78) {
        entity = CreatePlayerItem(0x10, this->type + 1, 0, 0);
        if (entity != NULL) {
            entity->parent = this;
            this->attachedEntity = entity;
            entity->x.HALF.HI = this->x.HALF.HI;
            entity->y.HALF.HI = this->y.HALF.HI;
        }
    }
}
