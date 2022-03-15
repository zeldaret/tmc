#define NENT_DEPRECATED
#include "entity.h"
#include "player.h"
#include "asm.h"
#include "room.h"
#include "coord.h"

void Object17_Init(Entity*);
void Object17_Action1(Entity*);

void Object17(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        Object17_Init,
        Object17_Action1,
    };

    actionFuncs[this->action](this);
}

void Object17_Init(Entity* this) {
    this->action = 1;
    this->speed = 0x80;
    this->spriteRendering.b3 = gPlayerEntity.spriteRendering.b3;
    this->spritePriority.b0 = gPlayerEntity.spritePriority.b0;
    this->collisionLayer = gPlayerEntity.collisionLayer;
    this->spriteOrientation.flipY = gPlayerEntity.spriteOrientation.flipY;
    this->type = Random() & 1;
    InitializeAnimation(this, 0x11);
}

void Object17_Action1(Entity* this) {
    if (this->type != 0) {
        if ((gRoomTransition.frameCount & 1) == 0) {
            GetNextFrame(this);
        }
    } else {
        GetNextFrame(this);
    }

    if (sub_0806F3E4(this)) {
        DeleteThisEntity();
    } else if ((gPlayerState.field_0x1c & 0xf) != 1) {
        DeleteThisEntity();
    }
}
