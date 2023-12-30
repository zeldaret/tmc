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

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[28];
    /*0x84*/ u16 unk_84;
    /*0x86*/ u16 unk_86;
} HeartContainerEntity;

static void HeartContainer_Init(HeartContainerEntity* this);
static void HeartContainer_Action1(HeartContainerEntity* this);
static void HeartContainer_Action2(HeartContainerEntity* this);
static void HeartContainer_Action3(HeartContainerEntity* this);

static void (*const HeartContainer_Actions[])(HeartContainerEntity*) = {
    HeartContainer_Init,
    HeartContainer_Action1,
    HeartContainer_Action2,
    HeartContainer_Action3,
};

const Hitbox3D gUnk_08121C58 = { 0, -3, { 5, 3, 3, 5 }, 6, 6, 12, {} };

void HeartContainer(HeartContainerEntity* this) {
    HeartContainer_Actions[super->action](this);
}

static void HeartContainer_Init(HeartContainerEntity* this) {
    if (CheckFlags(this->unk_84)) {
        DeleteThisEntity();
    }
    super->action = 1;
    super->type = 0x62;
    super->spriteSettings.draw = 0;
    super->hitbox = (Hitbox*)&gUnk_08121C58;
    super->collisionLayer = 3;
    super->updatePriority = PRIO_NO_BLOCK;
}

static void HeartContainer_Action1(HeartContainerEntity* this) {
    if (CheckFlags(this->unk_86)) {
        super->action = 2;
        super->spriteSettings.draw = 1;
        super->spriteRendering.b0 = 3;
        HeartContainer_Action2(this);
    }
}

static void HeartContainer_Action2(HeartContainerEntity* this) {
    int var0 = 0x400 - super->subtimer * 8;
    if (var0 > 0x100) {
        super->subtimer++;
        SetAffineInfo(super, var0, var0, 0);
    } else {
        super->action = 3;
        super->collisionFlags |= 0x10;
        sub_0805EC60(super);
        SoundReq(SFX_HEART_CONTAINER_SPAWN);
    }
    sub_08080CB4(super);
}

static void HeartContainer_Action3(HeartContainerEntity* this) {
    sub_08080CB4(super);
    if (!(gPlayerState.flags & PL_MINISH) && IsCollidingPlayer(super)) {
        SetFlag(this->unk_84);
        CreateItemEntity(ITEM_HEART_CONTAINER, 0, 0);
        DeleteThisEntity();
    }
}
