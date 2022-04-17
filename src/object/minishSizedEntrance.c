#include "object.h"
#include "game.h"
#include "functions.h"

void sub_08090F00(Entity*);
void sub_08090EC0(Entity*);

void MinishSizedEntrance(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08090EC0,
        sub_08090F00,
    };
    actionFuncs[this->action](this);
}

void sub_08090EC0(Entity* this) {
    this->action = 1;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
    this->frameIndex = this->type2;
    if (AreaIsDungeon()) {
        this->frameIndex += 4;
        UnloadGFXSlots(this);
        LoadFixedGFX(this, 0x184);
    }
}

void sub_08090F00(Entity* this) {
    static const u16 gUnk_0812225C[] = {
        0x400,
        0x100,
        0x800,
        0x200,
    };
    if (this->type == 1) {
        Entity* parent = this->parent;
        u32 mask = 1 << this->subtimer;
        if (!(parent->zVelocity & mask)) {
            DeleteThisEntity();
        }
    }
    if ((gPlayerState.flags & PL_MINISH) && EntityInRectRadius(this, &gPlayerEntity, 4, 4) &&
        (gPlayerEntity.z.HALF.HI == 0) && (((u16)gPlayerState.field_0x90) & gUnk_0812225C[this->type2])) {
        DoExitTransition(GetCurrentRoomProperty(this->timer));
    }
}
