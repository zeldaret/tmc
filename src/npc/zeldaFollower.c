#include "global.h"
#include "entity.h"
#include "functions.h"
#include "common.h"

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

ASM_FUNC("asm/non_matching/zeldaFollower/sub_08068318.inc", void sub_08068318(Entity* this))

void sub_0806854C(Entity* this, u32* none) {
    this->myHeap = zMalloc(0xa0);
    if (this->myHeap != NULL) {
        this->field_0x68.HALF.LO = 1;
        sub_080788E0(this);
        this->hitbox = NULL;
        sub_08068578(this);
    }
}

void sub_08068578(Entity* this) {
    ZeldaFollowerItem* item;
    s32 index;
#ifdef FORCE_REGS
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
#else
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

    /*r1 = r10;
    r0 = r1 << 0x10;
    r0 >>= 0x10;*/

    r10 = FixedDiv(r10, 0x14);
    r8 = FixedDiv(r8, 0x14);

    item = this->myHeap;
    y = 0;
    x = 0;

    // Down here the u32 are suddendly accessed correctly as u16 and bitfields?
    // How are the results of above u32 calculations used?
    for (index = 0x13; index >= 0; index--) {
        item->x = r5 - (x >> 8);           // store in 0x0
        item->y = (r5 >> 0x10) - (y >> 8); // store in 0x2
        item->z = r6;                      // store in 0x4
        item->framestate = r6 >> 0x10;     // store in 0x6
        item->animationState = this->animationState & 0x3f;
        item->collisionLayer = this->collisionLayer; // store in 0x7
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
