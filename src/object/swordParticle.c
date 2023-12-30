/**
 * @file swordParticle.c
 * @ingroup Objects
 *
 * @brief Sword Particle object
 */
#include "functions.h"
#include "item.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[4];
    /*0x6c*/ u16 unk_6c;
    /*0x6e*/ u8 unk_7e[4];
    /*0x72*/ u16 unk_72;
} SwordParticleEntity;

void SwordParticle_Init(SwordParticleEntity*);
void SwordParticle_Action1(SwordParticleEntity*);
void SwordParticle_Action2(SwordParticleEntity*);
void SwordParticle_Action3(SwordParticleEntity*);
void SwordParticle_Action4(SwordParticleEntity*);

void SwordParticle(SwordParticleEntity* this) {
    static void (*const SwordParticle_Actions[])(SwordParticleEntity*) = {
        SwordParticle_Init, SwordParticle_Action1, SwordParticle_Action2, SwordParticle_Action3, SwordParticle_Action4,
    };
    SwordParticle_Actions[super->action](this);
}

void SwordParticle_Init(SwordParticleEntity* this) {
    super->action = 1;
    super->flags |= ENT_PERSIST;
    super->spritePriority.b0 = 0;
    super->spriteOrientation.flipY = gPlayerEntity.base.spriteOrientation.flipY;
    super->animationState = gPlayerEntity.base.animationState >> 1;
    super->direction = (((super->animationState + 1) & 3) << 3);
    super->subtimer = 6;
    super->speed = 0x140;
    super->spriteVramOffset = 0x3c;
    super->palette.b.b0 = 4;
    this->unk_72 = 0;
    this->unk_6c = 0;
    super->updatePriority = 6;
    InitializeAnimation(super, 7);
    if (super->type2 != 0) {
        super->timer = 40;
    } else {
        super->spriteSettings.draw = 1;
        if (gPlayerState.skills & SKILL_FAST_SPIN) {
            super->timer = 40;
        } else {
            super->timer = 80;
        }

        SwordParticle_Action1(this);
    }
}

void SwordParticle_Action1(SwordParticleEntity* this) {
    static const s8 gUnk_081217D0[] = { -1, -14, 8, -4, 4, 4, -8, -4 };
    static const s8 gUnk_081217D8[] = { -1, -14, 4, -4, 4, -1, -4, -4 };
    Entity* effect;
    const s8* ptr;
    const s8* ptr2;
    u32 tmp1;
    u32 tmp2;

    if (super->type2 != 0) {
        if ((gPlayerState.bow_state == 0) || ((gPlayerState.attack_status & 0x80) != 0)) {
            DeleteThisEntity();
        }
        if (gPlayerState.bow_state >= 0x50) {
            super->spriteSettings.draw = 1;
            tmp1 = gPlayerState.bow_state;
            ptr = gUnk_081217D8;
        } else {
            if (gPlayerState.bow_state != 0) {
                super->spriteSettings.draw = 0;
                return;
            }
            DeleteThisEntity();
        }
    } else {
        if (gPlayerState.attack_status == 0) {
            DeleteThisEntity();
        }
        if ((gPlayerState.sword_state & 1) != 0) {
            tmp1 = gPlayerState.sword_state;
            ptr = gUnk_081217D0;
        } else {
            DeleteThisEntity();
        }
    }
    if (tmp1 != 0) {

        GetNextFrame(super);
        if (super->timer != 0) {
            super->timer--;
            tmp2 = 3;
            if ((super->type2 == 0) && ((gPlayerState.skills & SKILL_FAST_SPIN) == 0)) {
                tmp2 = 7;
            }
            if ((super->timer & tmp2) == 0) {
                this->unk_6c++;
            }
        } else {
            if (this->unk_72 != 0) {
                if (((gRoomTransition.frameCount & 0x1fU) == 0) &&
                    (effect = CreateFx(super, FX_SPARKLE, 0), effect != NULL)) {
                    effect->collisionLayer = super->collisionLayer;
                }
            } else {
                EnqueueSFX(SFX_115);
                effect = CreateFx(super, FX_BLUE_SPARKLE, 0);
                if (effect != NULL) {
                    effect->collisionLayer = super->collisionLayer;
                }
                this->unk_72++;
            }
        }

        super->spriteRendering.b3 = gPlayerEntity.base.spriteRendering.b3;
        ptr2 = &ptr[super->animationState * 2];
        super->x.HALF.HI = ptr2[0] + gPlayerEntity.base.x.HALF.HI;
        super->y.HALF.HI = ptr[super->animationState * 2 + 1] + gPlayerEntity.base.y.HALF.HI;
        super->z.HALF.HI = gPlayerEntity.base.z.HALF.HI;
        super->collisionLayer = gPlayerEntity.base.collisionLayer;
        switch (super->animationState) {
            default:
                super->y.HALF.HI -= this->unk_6c;
                break;
            case 0:
                super->y.HALF.HI -= this->unk_6c;
                break;
            case 1:
                super->x.HALF.HI += this->unk_6c;
                break;
            case 2:
                super->y.HALF.HI += this->unk_6c;
                break;
            case 3:
                super->x.HALF.HI -= this->unk_6c;
                break;
        }

        if (--super->subtimer == 0) {
            super->subtimer = 6;
            super->direction ^= 0x10;
        }
        LinearMoveUpdate(super);
        if ((super->type2 == 0) && ((gPlayerState.sword_state & 0x40) != 0)) {
            super->flags &= ~ENT_PERSIST;
            if (GetInventoryValue(ITEM_FOURSWORD) == 1) {
                super->action++;
            } else {
                DeleteThisEntity();
            }
        }
    } else {
        DeleteThisEntity();
        return;
    }
}

void SwordParticle_Action2(SwordParticleEntity* this) {
    sub_08079BD8(super);
    super->action++;
    super->spriteSettings.draw = 1;
    super->animationState = gPlayerEntity.base.animationState;
    super->spriteVramOffset = 0;
    super->palette.b.b0 = 4;
    super->spriteIndex = 0xaf;
    InitializeAnimation(super, super->animationState >> 1);
}

void SwordParticle_Action3(SwordParticleEntity* this) {
    sub_08079BD8(super);
    GetNextFrame(super);
    if (gPlayerState.sword_state != 0) {
        if ((gRoomTransition.frameCount & 3U) == 0) {
            u32 tmp = super->palette.b.b0;
            tmp ^= 4;
            super->palette.b.b0 = tmp;
        }
    } else {
        DeleteThisEntity();
    }
    if ((super->frame & 1) != 0) {
        super->action++;
    }
}

void SwordParticle_Action4(SwordParticleEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    }
}
