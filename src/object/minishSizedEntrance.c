/**
 * @file minishSizedEntrance.c
 * @ingroup Objects
 *
 * @brief MinishSizedEntrance object
 */
#include "functions.h"
#include "game.h"
#include "object.h"

void MinishSizedEntrance_Action1(Entity*);
void MinishSizedEntrance_Init(Entity*);

void MinishSizedEntrance(Entity* this) {
    static void (*const MinishSizedEntrance_Actions[])(Entity*) = {
        MinishSizedEntrance_Init,
        MinishSizedEntrance_Action1,
    };
    MinishSizedEntrance_Actions[this->action](this);
}

void MinishSizedEntrance_Init(Entity* this) {
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

void MinishSizedEntrance_Action1(Entity* this) {
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
    if ((gPlayerState.flags & PL_MINISH) && EntityInRectRadius(this, &gPlayerEntity.base, 4, 4) &&
        (gPlayerEntity.base.z.HALF.HI == 0) &&
        (((u16)gPlayerState.playerInput.heldInput) & gUnk_0812225C[this->type2])) {
        DoExitTransition(GetCurrentRoomProperty(this->timer));
    }
}
