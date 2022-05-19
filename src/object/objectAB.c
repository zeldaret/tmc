#define NENT_DEPRECATED
#include "entity.h"
#include "flags.h"
#include "asm.h"
#include "player.h"
#include "physics.h"

extern void CreateHoleManager(u32);

void ObjectAB_Init(Entity*);
void ObjectAB_Action1(Entity*);
void ObjectAB_Action2(Entity*);
void sub_080A0190(Entity*);

void ObjectAB(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        ObjectAB_Init,
        ObjectAB_Action1,
        ObjectAB_Action2,
    };

    actionFuncs[this->action]((Entity*)this);
}

void ObjectAB_Init(Entity* this) {
    this->action++;
    this->collisionLayer = 1;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
    this->subAction = 0;
    InitializeAnimation(this, 0);
}

void ObjectAB_Action1(Entity* this) {
    if (CheckRoomFlag(0)) {
        GetNextFrame(this);
        if (this->frame & 0x80) {
            this->action++;
        }
    }
}

void ObjectAB_Action2(Entity* this) {
    if (CheckRoomFlag(1)) {
        sub_080A0190(this);
        RequestPriorityDuration(this, 0x1e);
        if (EntityInRectRadius(this, &gPlayerEntity, 0x10, 0x10)) {
            CreateHoleManager(0x37);
        }
    }
}

void sub_080A0190(Entity* this) {
    this->subAction = 1;
    CopyPosition(this, &gPlayerEntity);
    gPlayerState.queued_action = 3;
    gPlayerState.field_0x38 = 0;
    gPlayerState.flags |= PL_PIT_IS_EXIT;
}
