/**
 * @file shrinkingHieroglyphs.c
 * @ingroup Objects
 *
 * @brief Shrinking Hieroglyphs object
 */
#include "entity.h"
#include "functions.h"
#include "player.h"
#include "sound.h"

typedef struct {
    Entity base;
    u8 filler[0x4];
    u32 unk6c;
    union SplitWord objDir;
    u32 unk74;
    u16 unk78;
    u16 unk7a;
    u16 unk7c;
    s16 unk7e;
} ShrinkingHieroglyphsEntity;

void ShrinkingHieroglyphs_Init(ShrinkingHieroglyphsEntity*);
void ShrinkingHieroglyphs_Action1(ShrinkingHieroglyphsEntity*);
void ShrinkingHieroglyphs_Action2(ShrinkingHieroglyphsEntity*);
void sub_08098130(ShrinkingHieroglyphsEntity*);

void ShrinkingHieroglyphs(Entity* this) {
    static void (*const ShrinkingHieroglyphs_Actions[])(ShrinkingHieroglyphsEntity*) = {
        ShrinkingHieroglyphs_Init,
        ShrinkingHieroglyphs_Action1,
        ShrinkingHieroglyphs_Action2,
    };

    if ((gPlayerState.flags & PL_MINISH) != 0) {
        DeleteThisEntity();
    }

    ShrinkingHieroglyphs_Actions[this->action]((ShrinkingHieroglyphsEntity*)this);
}

void ShrinkingHieroglyphs_Init(ShrinkingHieroglyphsEntity* this) {
    static const u8 ShrinkingHieroglyphs_Directions[] = { DirectionSouthWest, DirectionWest, DirectionNorthWest,
                                                          DirectionNorthEast, DirectionEast, DirectionSouthEast };
    super->action++;
    super->speed = 0;
    this->unk6c = 0;
    this->unk7a = 0x1200;
    super->timer = 0;
    super->subtimer = 30;
    this->objDir.HALF.HI = ShrinkingHieroglyphs_Directions[super->type];
    this->unk74 = 0x2000;
    SetEntityPriority(super, 6);
    if (super->type == 0) {
        this->unk7e = 0x40;
        LoadSwapGFX(super, 1, 0);
        InitAnimationForceUpdate(super, super->type);
    } else {
        Entity* parent;
        super->spriteVramOffset = super->parent->spriteVramOffset;
        parent = super->parent;
        super->frameIndex = super->type * 13 + parent->frameIndex;
    }
    sub_08098130(this);
}

void ShrinkingHieroglyphs_Action1(ShrinkingHieroglyphsEntity* this) {
    if (super->type == 0) {
        UpdateAnimationSingleFrame(super);
        if (super->type2 != 0) {
            gPlayerEntity.base.subtimer = 0;
            super->action++;
            InitAnimationForceUpdate(super, 1);
            SoundReq(SFX_178);
        }
    } else {
        Entity* parent = super->parent;
        super->frameIndex = super->type * 13 + parent->frameIndex;
        super->action = parent->action;
    }
}

void ShrinkingHieroglyphs_Action2(ShrinkingHieroglyphsEntity* this) {
    if (this->unk6c >= 0x140001) {
        gPlayerState.flags |= PL_MINISH;
        DeleteThisEntity();
    } else {
        if (super->type == 0) {
            UpdateAnimationSingleFrame(super);
            if (--this->unk7e << 16 == -0x10000) {
                this->unk7e = 0x40;
                SoundReq(SFX_178);
            }
        } else {
            Entity* parent = super->parent;
            super->frameIndex = super->type * 13 + parent->frameIndex;
        }
        this->unk6c += 0x1400;
        this->objDir.WORD += this->unk74;
        this->objDir.HALF.HI = DirectionNormalize(this->objDir.HALF.HI);
        this->unk74 += 0x140;
        if (super->subtimer-- == 0) {
            super->subtimer = 30;
            super->timer ^= 1;
        }
        sub_08098130(this);
    }
}

void sub_08098130(ShrinkingHieroglyphsEntity* this) {
    CopyPosition(&gPlayerEntity.base, super);
    super->direction = this->objDir.HALF.HI;
    super->speed = this->unk7a;
    LinearMoveUpdate(super);
    super->y.WORD -= Q_16_16(20.0);
    super->y.WORD += this->unk6c;
}
