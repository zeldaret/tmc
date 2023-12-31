/**
 * @file vaati1Portal.c
 * @ingroup Objects
 *
 * @brief Vaati1 Portal object
 */
#include "asm.h"
#include "entity.h"
#include "flags.h"
#include "physics.h"
#include "player.h"

extern void CreateHoleManager(u32);

void Vaati1Portal_Init(Entity*);
void Vaati1Portal_Action1(Entity*);
void Vaati1Portal_Action2(Entity*);
void sub_080A0190(Entity*);

void Vaati1Portal(Entity* this) {
    static void (*const Vaati1Portal_Actions[])(Entity*) = {
        Vaati1Portal_Init,
        Vaati1Portal_Action1,
        Vaati1Portal_Action2,
    };

    Vaati1Portal_Actions[this->action]((Entity*)this);
}

void Vaati1Portal_Init(Entity* this) {
    this->action++;
    this->collisionLayer = 1;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
    this->subAction = 0;
    InitializeAnimation(this, 0);
}

void Vaati1Portal_Action1(Entity* this) {
    if (CheckRoomFlag(0)) {
        GetNextFrame(this);
        if (this->frame & 0x80) {
            this->action++;
        }
    }
}

void Vaati1Portal_Action2(Entity* this) {
    if (CheckRoomFlag(1)) {
        sub_080A0190(this);
        RequestPriorityDuration(this, 30);
        if (EntityInRectRadius(this, &gPlayerEntity.base, 0x10, 0x10)) {
            CreateHoleManager(0x37);
        }
    }
}

void sub_080A0190(Entity* this) {
    this->subAction = 1;
    CopyPosition(this, &gPlayerEntity.base);
    gPlayerState.queued_action = PLAYER_FALL;
    gPlayerState.field_0x38 = 0;
    gPlayerState.flags |= PL_PIT_IS_EXIT;
}
