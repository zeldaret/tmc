/**
 * @file houseDoorInterior.c
 * @ingroup Objects
 *
 * @brief House Door Interior object
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "npc.h"
#include "sound.h"

typedef struct {
    Entity base;
    u8 filler[0x15];
    u8 unk7d;
    u8 filler2[0x8];
    u16 doorFlags;
} HouseDoorInteriorEntity;

void HouseDoorInterior_Init(HouseDoorInteriorEntity*);
void HouseDoorInterior_Action1(HouseDoorInteriorEntity*);
void HouseDoorInterior_Delete(HouseDoorInteriorEntity*);

typedef struct {
    u8 frameIndex;
    u8 type2;
} PACKED HouseDoorInteriorFrameIndices_struct;

static const HouseDoorInteriorFrameIndices_struct HouseDoorInteriorFrameIndices[] = {
    { -1, 0 }, { -1, 0 }, { 0, 0 }, { 0, 3 }, { 2, 2 }, { 2, 2 },
};

void HouseDoorInterior(Entity* this) {
    static void (*const HouseDoorInterior_Actions[])(HouseDoorInteriorEntity*) = {
        HouseDoorInterior_Init,
        HouseDoorInterior_Action1,
        HouseDoorInterior_Delete,
    };
    HouseDoorInterior_Actions[this->action]((HouseDoorInteriorEntity*)this);
}

typedef struct {
    u16 animationState;
    u16 unk2;
    u16 x;
    u16 y;
} gUnk_081227CC_struct;

static const gUnk_081227CC_struct gUnk_081227CC[] = {
    { 0x0, 0x400, 0x6, 0x10 },
    { 0x2, 0x100, 0x10, 0x6 },
    { 0x4, 0x800, 0x6, 0x10 },
    { 0x6, 0x200, 0x10, 0x6 },
};

void HouseDoorInterior_Init(HouseDoorInteriorEntity* this) {
    static const Hitbox HouseDoorInteriorHitbox = {
        0, 0, { 5, 3, 3, 5 }, 6, 6,
    };

    const HouseDoorInteriorFrameIndices_struct* ptr;

    if (this->doorFlags && CheckFlags(this->doorFlags)) {
        DeleteThisEntity();
    }
    super->action = 1;
    super->spriteSettings.draw = 1;
    this->unk7d = super->timer;
    super->spritePriority.b0 = 7;
    super->hitbox = (Hitbox*)&HouseDoorInteriorHitbox;
    super->timer = 8;
    ptr = HouseDoorInteriorFrameIndices + super->type;
    if (ptr->frameIndex == 0xff) {
        super->frameIndex = super->type2;
    } else {
        super->frameIndex = ptr->frameIndex;
        super->type2 = ptr->type2;
    }
}

void HouseDoorInterior_Action1(HouseDoorInteriorEntity* this) {
    const gUnk_081227CC_struct* ptr;

    if (this->doorFlags && CheckFlags(this->doorFlags)) {
        super->action = 2;
        SoundReq(SFX_111);
        return;
    }

    if (sub_0800445C(super) && this->unk7d == 0) {
        ptr = gUnk_081227CC + super->type2;
        if (GetAnimationStateInRectRadius(super, ptr->x, ptr->y) >= 0 &&
            ptr->animationState == gPlayerEntity.base.animationState &&
            gPlayerState.playerInput.heldInput & ptr->unk2) {
            --super->timer;
        }
    } else {
        super->timer = 8;
    }

    if (super->timer == 0) {
        super->action = 2;
        sub_08078AC0(8, 0, 0);
        SoundReq(SFX_111);
    }
}

void HouseDoorInterior_Delete(HouseDoorInteriorEntity* this) {
    DeleteThisEntity();
}
