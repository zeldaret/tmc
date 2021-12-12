#include "global.h"
#include "entity.h"
#include "game.h"
#include "player.h"
#include "functions.h"

extern void (*const gUnk_08122254[])(Entity*);
extern u16 gUnk_0812225C[];

void MinishSizedEntrance(Entity* this) {
    gUnk_08122254[this->action](this);
}

void sub_08090EC0(Entity* this) {
    this->action = 1;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
    this->frameIndex = this->type2;
    if (CheckIsDungeon()) {
        this->frameIndex += 4;
        sub_080AE068(this);
        LoadFixedGFX(this, 0x184);
    }
}

void sub_08090F00(Entity* this) {
    if (this->type == 1) {
        Entity* parent = this->parent;
        u32 mask = 1 << this->field_0xf;
        if (!(parent->zVelocity & mask)) {
            DeleteThisEntity();
        }
    }
    if ((gPlayerState.flags & PL_MINISH) && sub_080041A0(this, &gPlayerEntity, 4, 4) &&
        (gPlayerEntity.z.HALF.HI == 0) && (((u16)gPlayerState.field_0x90.HALF.LO) & gUnk_0812225C[this->type2])) {
        DoExitTransition(GetCurrentRoomProperty(this->actionDelay));
    }
}
