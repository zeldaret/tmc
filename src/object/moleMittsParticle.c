/**
 * @file moleMittsParticle.c
 * @ingroup Objects
 *
 * @brief Mole Mitts Particle object
 */
#include "area.h"
#include "functions.h"
#include "object.h"

void MoleMittsParticle_Init(Entity*);
void MoleMittsParticle_Action1(Entity*);
void sub_08087640(Entity*);

void MoleMittsParticle(Entity* this) {
    static void (*const MoleMittsParticle_Actions[])(Entity*) = {
        MoleMittsParticle_Init,
        MoleMittsParticle_Action1,
    };
    if (!EntityDisabled(this)) {
        MoleMittsParticle_Actions[this->action](this);
    }
}

void MoleMittsParticle_Init(Entity* this) {
    u32 palette;

    this->action = 1;
    this->animationState = gPlayerEntity.base.animationState >> 1;
    this->spriteRendering.b3 = 2;
    this->spritePriority.b0 = 3;
    this->spriteOrientation.flipY--;
    if (this->type2 != 0) {
        this->palette.b.b0 = 1;
        if (this->animationState == 1) {
            this->spriteSettings.flipX = 1;
        }
        sub_08087640(this);
    } else {
        if (gArea.locationIndex == 16) { // AREA_CLOUD_TOPS
            palette = 0x16a;
        } else {
            palette = 4;
        }
        ChangeObjPalette(this, palette);
        switch (this->animationState) {
            case 3:
                if (this->type == 0x40) {
                    this->y.HALF.HI += 4;
                }
                break;
            case 1:
                this->spriteSettings.flipX = 1;
                if (this->type == 0x40) {
                    this->y.HALF.HI += 4;
                }
                break;
            default:
                if (this->type == 0x40) {
                    this->spriteSettings.flipX = 1;
                }
                break;
        }
    }
    SetEntityPriority(this, 3);
    InitializeAnimation(this, this->type2 * 4 + this->animationState);
}

void MoleMittsParticle_Action1(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    }
    if (this->type2 != 0) {
        this->spritePriority.b0 = gPlayerEntity.base.spritePriority.b0 + 1 - this->frame;
    }
}

void sub_08087640(Entity* this) {
    static const s8 gUnk_081208C0[] = { 0, -12, 16, 0, 0, 15, -16, 0 };
    s32 oldX;
    s32 oldY;
    u32 tmp;
    const s8* ptr;

    oldX = this->x.HALF.HI;
    oldY = this->y.HALF.HI;
    ptr = &gUnk_081208C0[this->animationState * 2];
    this->x.HALF.HI += ptr[0];
    this->y.HALF.HI += ptr[1];
    if (gRoomControls.area == 3 && gRoomControls.room == 4) {
#ifdef EU
        tmp = 0x18;
    } else {
        tmp = 0x17;
#else
        tmp = 0x17;
    } else {
        tmp = 0x16;
#endif
    }
    CreateRandomItemDrop(this, tmp);
    this->x.HALF.HI = oldX;
    this->y.HALF.HI = oldY;
}
