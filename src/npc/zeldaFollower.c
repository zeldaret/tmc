#include "common.h"
#include "entity.h"
#include "functions.h"

extern s32 sub_080041E8(s32 x1, s32 y1, s32 x2, s32 y2);

typedef union {
    struct {
        u16 x;
        u16 y;
        u16 z;
        u8 framestate;
        u8 animationState : 6;
        u8 collisionLayer : 2;
    } FIELDS;
    u64 DWORD;
} ZeldaFollowerItem;

#define ZELDA_FOLLOWER_HEAP_LEN 20

#define ZELDA_FOLLOWER_HEAP ((ZeldaFollowerItem*)this->myHeap)
#define ZELDA_FOLLOWER_HEAP_END ((ZeldaFollowerItem*)this->myHeap + (ZELDA_FOLLOWER_HEAP_LEN - 1))

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

void sub_08068318(Entity*);
void sub_0806854C(Entity*, u32*);
void sub_08068578(Entity* this);

void ZeldaFollower(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = TRUE;
        this->animationState = 4;
        this->field_0x68.HALF.LO = 0;
        this->field_0x68.HALF.HI = 0;
        SetDefaultPriority(this, PRIO_MESSAGE);
        InitAnimationForceUpdate(this, 0);
        sub_0806854C(this, NULL);
    }
    if ((s8)this->field_0x68.HALF.LO != 0) {
        sub_08068318(this);
    } else {
        this->spriteSettings.draw = FALSE;
    }
}

void sub_08068318(Entity* this) {
    s32 dist;
    s16 z;

    u32 animIndex;
    u32 animIndexTmp;

    ZeldaFollowerItem* heapPtr;
    ZeldaFollowerItem item;

    item.FIELDS.x = gPlayerEntity.x.HALF_U.HI;
    item.FIELDS.y = gPlayerEntity.y.HALF_U.HI;
    item.FIELDS.z = gPlayerEntity.z.HALF_U.HI;
    item.FIELDS.framestate = gPlayerState.framestate;
    item.FIELDS.animationState = gPlayerEntity.animationState;
    item.FIELDS.collisionLayer = gPlayerEntity.collisionLayer;

    heapPtr = this->myHeap;

    if ((heapPtr->FIELDS.framestate == 0xa && item.FIELDS.framestate != 0xa) ||
        (heapPtr->FIELDS.framestate == 0x16 && item.FIELDS.framestate != 0x16)) {
        this->x.HALF.HI = gPlayerEntity.x.HALF.HI;
        this->y.HALF.HI = gPlayerEntity.y.HALF.HI;
        this->spriteSettings.draw = 1;
        sub_08068578(this);
    }

    animIndex = 0;
    if (item.DWORD != heapPtr->DWORD || item.FIELDS.framestate == 0x16 || item.FIELDS.framestate == 0xa) {
        ZELDA_FOLLOWER_HEAP_SHIFT_RIGHT(this, heapPtr);
        heapPtr = ZELDA_FOLLOWER_HEAP;
        heapPtr[0] = item;
        animIndex = 0x4;

        if ((s8)this->field_0x68.HALF.HI > 0) {
            this->field_0x68.HALF.HI = this->field_0x68.HALF.HI - 1;
        }
    } else {
        heapPtr += ZELDA_FOLLOWER_HEAP_LEN - 1;
        z = heapPtr->FIELDS.z;

        if (z < 0) {
            ZELDA_FOLLOWER_HEAP_SHIFT_RIGHT(this, heapPtr);
            animIndex = 0x4;
        } else {
            dist = sub_080041E8(gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, (u16)heapPtr->FIELDS.x,
                                (u16)heapPtr->FIELDS.y);
            dist = ((u32)dist) >> 0x4;
            if (dist > 0x18) {
                ZELDA_FOLLOWER_HEAP_SHIFT_RIGHT(this, heapPtr);
                animIndex = 0x4;
            }
        }
    }

    heapPtr = ZELDA_FOLLOWER_HEAP;
    heapPtr += ZELDA_FOLLOWER_HEAP_LEN - 1;
    this->x.HALF.HI = heapPtr->FIELDS.x;
    this->y.HALF.HI = heapPtr->FIELDS.y;
    this->z.HALF.HI = heapPtr->FIELDS.z;
    this->animationState = heapPtr->FIELDS.animationState;
    this->collisionLayer = heapPtr->FIELDS.collisionLayer;

    if (heapPtr->FIELDS.framestate == 0x16 || heapPtr->FIELDS.framestate == 0xa) {
        this->spriteSettings.draw = 0;
    }

    if (((s8)this->field_0x68.HALF.HI) > 0) {
        this->field_0x68.HALF.HI = this->field_0x68.HALF.HI - 1;
    }

    animIndexTmp = animIndex;
    animIndex += this->animationState >> 1;

    if (!(animIndex == this->animIndex || (animIndexTmp == 0 && ((s8)this->field_0x68.HALF.HI) > 0))) {
        InitAnimationForceUpdate(this, animIndex);
        this->field_0x68.HALF.HI = 0x1e;
    } else {
        UpdateAnimationSingleFrame(this);
    }

    sub_0800451C(this);
    if (this->z.HALF.HI < 0) {
        sub_0806F854(this, 0x0, -0xc);
    }
}

void sub_0806854C(Entity* this, u32* none) {
    this->myHeap = zMalloc(sizeof(ZeldaFollowerItem[ZELDA_FOLLOWER_HEAP_LEN]));
    if (this->myHeap != NULL) {
        this->field_0x68.HALF.LO = 1;
        RemoveInteractableObject(this);
        this->hitbox = NULL;
        sub_08068578(this);
    }
}

void sub_08068578(Entity* this) {
    ZeldaFollowerItem* item;
    s32 index;
#ifdef REWRITE_CODE
    u32 r0;
    u32 r1;
    u32 r2;
    u32 r3;
    u32 r5;
    u32 r6;
    u32 r8;
    s32 y;
    u32 r10;
    s32 x;
#else
    register u32 r5 asm("r5");
    register u32 r6 asm("r6");
    register u32 r0 asm("r0");
    register u32 r1 asm("r1");
    register u32 r2 asm("r2");
    register u32 r3 asm("r3");
    register s32 r8 asm("r8");
    register s32 y asm("r9");
    register s32 r10 asm("r10");
    register s32 x asm("r12");
#endif

    // first u32 (r5)
#ifdef REWRITE_CODE
    r0 = gPlayerEntity.x.HALF_U.HI | (r5 & 0xffff0000);
    r5 = (gPlayerEntity.y.HALF_U.HI << 0x10) | (r0 & 0x0000ffff);
#else
    r1 = gPlayerEntity.x.HALF_U.HI;

    r3 = 0xffff0000;
    r0 = r3;
    r0 &= r5;
    r0 |= r1;

    r1 = gPlayerEntity.y.HALF_U.HI;
    r1 <<= 0x10;
    r2 = 0xffff;
    r0 &= r2;
    r0 |= r1;
    r5 = r0;
#endif

    // second u32 (r6)
#ifdef REWRITE_CODE
    r3 = gPlayerEntity.z.HALF_U.HI | (r6 & 0xffff0000);
    r2 = (gPlayerState.framestate << 0x10) | (r3 & 0xff00ffff);
    r0 = ((gPlayerEntity.animationState & 0x3f) << 0x18) | (r2 & 0xc0ffffff);
    r6 = (gPlayerEntity.collisionLayer << 0x1e) | (r0 & 0x3fffffff);
#else
    r0 = gPlayerEntity.z.HALF_U.HI;
    r3 &= r6;
    r3 |= r0;

    r0 = gPlayerState.framestate;
    r0 <<= 0x10;
    r2 = 0xff00ffff;
    r2 &= r3;
    r2 |= r0;

    r1 = gPlayerEntity.animationState;
    r0 = 0x3f;
    r1 &= r0;
    r1 <<= 0x18;
    r0 = 0xc0ffffff;
    r0 &= r2;
    r0 |= r1;

    // gPlayerEntity is now at r1
    r1 = gPlayerEntity.collisionLayer;
    r1 <<= 0x1e;
    r2 = 0x3fffffff;
    r0 &= r2;
    r0 |= r1;
    r6 = r0;
#endif

#ifdef REWRITE_CODE
    r10 = gPlayerEntity.x.HALF.HI - this->x.HALF.HI;
#else
    r1 = gPlayerEntity.x.HALF.HI;
    r0 = this->x.HALF.HI;
    r0 = r1 - r0;
    r10 = r0;
#endif

#ifdef REWRITE_CODE
    r8 = gPlayerEntity.y.HALF.HI - this->y.HALF.HI;
#else
    r1 = gPlayerEntity.y.HALF.HI;
    r0 = this->y.HALF.HI;
    r0 = r1 - r0;
    r8 = r0;
#endif

    r10 = FixedDiv(r10, 0x14);
    r8 = FixedDiv(r8, 0x14);

    item = this->myHeap;
    y = 0;
    x = 0;

    // Down here the u32 are suddendly accessed correctly as u16 and bitfields?
    // How are the results of above u32 calculations used?
    for (index = 0x13; index >= 0; index--) {
        item->FIELDS.x = r5 - (x >> 8);
        item->FIELDS.y = (r5 >> 0x10) - (y >> 8);
        item->FIELDS.z = r6;
        item->FIELDS.framestate = r6 >> 0x10;
        item->FIELDS.animationState = this->animationState & 0x3f;
        item->FIELDS.collisionLayer = this->collisionLayer;
        item++;
        y = y + r8;
        x = x + r10;
    }
}

void ZeldaFollower_Hide(Entity* zelda, Entity* follower) {
    follower->field_0x68.HALF.LO = 0;
    follower->spriteSettings.draw = 0;
}

void ZeldaFollower_Show(Entity* zelda, Entity* follower) {
    follower->field_0x68.HALF.LO = 1;
    follower->spriteSettings.draw = 1;
    follower->animationState = zelda->animationState;
    sub_08068578(follower);
    InitAnimationForceUpdate(follower, follower->animationState / 2);
}

void sub_080686C4(Entity* zelda, Entity* follower) {
    follower->y.HALF.HI -= 0x10;
    sub_08068578(follower);
}
