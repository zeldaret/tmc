/**
 * @file zeldaFollower.c
 * @ingroup NPCs
 *
 * @brief Zelda Follower NPC
 */
#include "npc/zelda.h"
#include "common.h"
#include "entity.h"
#include "functions.h"

extern s32 sub_080041E8(s32 x1, s32 y1, s32 x2, s32 y2);

typedef union {
    struct {
        u16 x;
        u16 y;
        s16 z;
        u8 framestate;
        u8 animationState : 6;
        u8 collisionLayer : 2;
    } FIELDS;
    u64 DWORD;
} ZeldaFollowerItem;

#define ZELDA_FOLLOWER_HEAP_LEN 20

#define ZELDA_FOLLOWER_HEAP ((ZeldaFollowerItem*)super->myHeap)
#define ZELDA_FOLLOWER_HEAP_END ((ZeldaFollowerItem*)super->myHeap + (ZELDA_FOLLOWER_HEAP_LEN - 1))

#define ZELDA_FOLLOWER_HEAP_SHIFT_RIGHT(this, heapPtr)        \
    do {                                                      \
        int i;                                                \
        heapPtr = ((ZeldaFollowerItem*)this->myHeap);         \
        heapPtr += (ZELDA_FOLLOWER_HEAP_LEN - 2);             \
        for (i = 0; i < (ZELDA_FOLLOWER_HEAP_LEN - 1); i++) { \
            heapPtr[1] = heapPtr[0];                          \
            heapPtr--;                                        \
        }                                                     \
    } while (0)

void sub_08068318(ZeldaFollowerEntity*);
void sub_0806854C(ZeldaFollowerEntity*, u32*);
void sub_08068578(ZeldaFollowerEntity* this);

void ZeldaFollower(ZeldaFollowerEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->spriteSettings.draw = TRUE;
        super->animationState = 4;
        this->unk_68 = 0;
        this->unk_69 = 0;
        SetEntityPriority(super, PRIO_MESSAGE);
        InitAnimationForceUpdate(super, 0);
        sub_0806854C(this, NULL);
    }
    if ((s8)this->unk_68 != 0) {
        sub_08068318(this);
    } else {
        super->spriteSettings.draw = FALSE;
    }
}

void sub_08068318(ZeldaFollowerEntity* this) {
    s32 dist;

    u32 animIndex;
    u32 animIndexTmp;

    ZeldaFollowerItem* heapPtr;
    ZeldaFollowerItem item;

    item.FIELDS.x = gPlayerEntity.base.x.HALF_U.HI;
    item.FIELDS.y = gPlayerEntity.base.y.HALF_U.HI;
    item.FIELDS.z = gPlayerEntity.base.z.HALF_U.HI;
    item.FIELDS.framestate = gPlayerState.framestate;
    item.FIELDS.animationState = gPlayerEntity.base.animationState;
    item.FIELDS.collisionLayer = gPlayerEntity.base.collisionLayer;

    heapPtr = super->myHeap;

    if ((heapPtr->FIELDS.framestate == 0xa && item.FIELDS.framestate != 0xa) ||
        (heapPtr->FIELDS.framestate == 0x16 && item.FIELDS.framestate != 0x16)) {
        super->x.HALF.HI = gPlayerEntity.base.x.HALF.HI;
        super->y.HALF.HI = gPlayerEntity.base.y.HALF.HI;
        super->spriteSettings.draw = 1;
        sub_08068578(this);
    }

    animIndex = 0;
    if (item.DWORD != heapPtr->DWORD || item.FIELDS.framestate == 0x16 || item.FIELDS.framestate == 0xa) {
        ZELDA_FOLLOWER_HEAP_SHIFT_RIGHT(super, heapPtr);
        heapPtr = ZELDA_FOLLOWER_HEAP;
        heapPtr[0] = item;
        animIndex = 0x4;

        if ((s8)this->unk_69 > 0) {
            this->unk_69 = this->unk_69 - 1;
        }
    } else {
        heapPtr += ZELDA_FOLLOWER_HEAP_LEN - 1;

        if (heapPtr->FIELDS.z < 0) {
            ZELDA_FOLLOWER_HEAP_SHIFT_RIGHT(super, heapPtr);
            animIndex = 0x4;
        } else {
            dist = sub_080041E8(gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, (u16)heapPtr->FIELDS.x,
                                (u16)heapPtr->FIELDS.y);
            dist = ((u32)dist) >> 0x4;
            if (dist > 0x18) {
                ZELDA_FOLLOWER_HEAP_SHIFT_RIGHT(super, heapPtr);
                animIndex = 0x4;
            }
        }
    }

    heapPtr = ZELDA_FOLLOWER_HEAP;
    heapPtr += ZELDA_FOLLOWER_HEAP_LEN - 1;
    super->x.HALF.HI = heapPtr->FIELDS.x;
    super->y.HALF.HI = heapPtr->FIELDS.y;
    super->z.HALF.HI = heapPtr->FIELDS.z;
    super->animationState = heapPtr->FIELDS.animationState;
    super->collisionLayer = heapPtr->FIELDS.collisionLayer;

    if (heapPtr->FIELDS.framestate == 0x16 || heapPtr->FIELDS.framestate == 0xa) {
        super->spriteSettings.draw = 0;
    }

    if (((s8)this->unk_69) > 0) {
        this->unk_69 = this->unk_69 - 1;
    }

    animIndexTmp = animIndex;
    animIndex += super->animationState >> 1;

    if (!(animIndex == super->animIndex || (animIndexTmp == 0 && ((s8)this->unk_69) > 0))) {
        InitAnimationForceUpdate(super, animIndex);
        this->unk_69 = 0x1e;
    } else {
        UpdateAnimationSingleFrame(super);
    }

    sub_0800451C(super);
    if (super->z.HALF.HI < 0) {
        sub_0806F854(super, 0x0, -0xc);
    }
}

void sub_0806854C(ZeldaFollowerEntity* this, u32* none) {
    super->myHeap = zMalloc(sizeof(ZeldaFollowerItem[ZELDA_FOLLOWER_HEAP_LEN]));
    if (super->myHeap != NULL) {
        this->unk_68 = 1;
        RemoveInteractableObject(super);
        super->hitbox = NULL;
        sub_08068578(this);
    }
}

void sub_08068578(ZeldaFollowerEntity* this) {
    s32 dx, dy;
    s32 i;

    ZeldaFollowerItem *heapPtr, item;

    // Copy from the player's position/state.
    item.FIELDS.x = gPlayerEntity.base.x.HALF_U.HI;
    item.FIELDS.y = gPlayerEntity.base.y.HALF_U.HI;
    item.FIELDS.z = gPlayerEntity.base.z.HALF_U.HI;
    item.FIELDS.framestate = gPlayerState.framestate;
    item.FIELDS.animationState = gPlayerEntity.base.animationState;
    item.FIELDS.collisionLayer = gPlayerEntity.base.collisionLayer;

    // Compute the distance between zelda and the player.
    dx = gPlayerEntity.base.x.HALF.HI - super->x.HALF.HI;
    dy = gPlayerEntity.base.y.HALF.HI - super->y.HALF.HI;

    // Divide it into ZELDA_FOLLOWER_HEAP_LEN increments.
    dx = FixedDiv(dx, ZELDA_FOLLOWER_HEAP_LEN);
    dy = FixedDiv(dy, ZELDA_FOLLOWER_HEAP_LEN);

    heapPtr = ZELDA_FOLLOWER_HEAP;
    for (i = 0; i < ZELDA_FOLLOWER_HEAP_LEN; i++) {
        heapPtr->FIELDS.x = item.FIELDS.x - ((i * dx) >> 8);
        heapPtr->FIELDS.y = item.FIELDS.y - ((i * dy) >> 8);
        heapPtr->FIELDS.z = item.FIELDS.z;
        heapPtr->FIELDS.framestate = item.FIELDS.framestate;
        heapPtr->FIELDS.animationState = super->animationState;
        heapPtr->FIELDS.collisionLayer = super->collisionLayer;
        heapPtr++;
    }
}

void ZeldaFollower_Hide(Entity* zelda, ZeldaFollowerEntity* follower) {
    follower->unk_68 = 0;
    follower->base.spriteSettings.draw = 0;
}

void ZeldaFollower_Show(Entity* zelda, ZeldaFollowerEntity* follower) {
    follower->unk_68 = 1;
    follower->base.spriteSettings.draw = 1;
    follower->base.animationState = zelda->animationState;
    sub_08068578(follower);
    InitAnimationForceUpdate(&follower->base, follower->base.animationState / 2);
}

void sub_080686C4(Entity* zelda, ZeldaFollowerEntity* follower) {
    follower->base.y.HALF.HI -= 0x10;
    sub_08068578(follower);
}
