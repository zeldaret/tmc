/**
 * @file heartContainer.c
 * @ingroup Objects
 *
 * @brief HeartContainer object
 */
#include "collision.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "item.h"
#include "sound.h"

static void HeartContainer_Init(Entity*);
static void HeartContainer_Action1(Entity*);
static void HeartContainer_Action2(Entity*);
static void HeartContainer_Action3(Entity*);

static void (*const HeartContainer_Actions[])(Entity*) = {
    HeartContainer_Init,
    HeartContainer_Action1,
    HeartContainer_Action2,
    HeartContainer_Action3,
};

const Hitbox3D gUnk_08121C58 = { 0, -3, { 5, 3, 3, 5 }, 6, 6, 12, {} };

void HeartContainer(Entity* this) {
    HeartContainer_Actions[this->action](this);
}

static void HeartContainer_Init(Entity* this) {
    if (CheckFlags(this->cutsceneBeh.HWORD)) {
        DeleteThisEntity();
    }
    this->action = 1;
    this->type = 0x62;
    this->spriteSettings.draw = 0;
    this->hitbox = (Hitbox*)&gUnk_08121C58;
    this->collisionLayer = 3;
    this->updatePriority = PRIO_NO_BLOCK;
}

static void HeartContainer_Action1(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD)) {
        this->action = 2;
        this->spriteSettings.draw = 1;
        this->spriteRendering.b0 = 3;
        HeartContainer_Action2(this);
    }
}

static void HeartContainer_Action2(Entity* this) {
    int var0 = 0x400 - this->subtimer * 8;
    if (var0 > 0x100) {
        this->subtimer++;
        SetAffineInfo(this, var0, var0, 0);
    } else {
        this->action = 3;
        this->collisionFlags |= 0x10;
        sub_0805EC60(this);
        SoundReq(SFX_HEART_CONTAINER_SPAWN);
    }
    sub_08080CB4(this);
}

static void HeartContainer_Action3(Entity* this) {
    sub_08080CB4(this);
    if (!(gPlayerState.flags & PL_MINISH) && IsCollidingPlayer(this)) {
        SetFlag(this->cutsceneBeh.HWORD);
        CreateItemEntity(0x62, 0, 0);
        DeleteThisEntity();
    }
}
