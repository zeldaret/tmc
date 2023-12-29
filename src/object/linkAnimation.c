/**
 * @file linkAnimation.c
 * @ingroup Objects
 *
 * @brief Link Animation object
 */
#define NENT_DEPRECATED
#include "functions.h"
#include "message.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
    /*0x69*/ u8 unk_69;
    /*0x6a*/ u8 unk_6a;
    /*0x6b*/ u8 unk_6b;
    /*0x6c*/ u8 unk_6c;
    /*0x6d*/ u8 unk_6d;
    /*0x6e*/ u8 unk_6e;
    /*0x6f*/ u8 unk_6f;
    /*0x70*/ u32 unk_70;
    /*0x74*/ u8 unk_74;
} LinkAnimationEntity;

void LinkAnimation_Init(LinkAnimationEntity*);
void LinkAnimation_Action1(LinkAnimationEntity*);
void LinkAnimation_Action8(LinkAnimationEntity*);

void LinkAnimation(LinkAnimationEntity* this) {
    static void (*const LinkAnimation_Actions[])(LinkAnimationEntity*) = {
        LinkAnimation_Init,    LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1,
        LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1,
        LinkAnimation_Action8, LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1,
        LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1,
        LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1,
        LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1,
        LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1,
        LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1, LinkAnimation_Action1,
    };
    LinkAnimation_Actions[super->action](this);
}

void LinkAnimation_Init(LinkAnimationEntity* this) {
    super->action = 8;
    LinkAnimation_Action8(this);
}

void LinkAnimation_Action1(LinkAnimationEntity* this) {
    ResetPlayerEventPriority();
    gPauseMenuOptions.disabled = 0;
    DeleteThisEntity();
}

void LinkAnimation_Action8(LinkAnimationEntity* this) {
    u32 one;
    u32 tmp;
    Entity* parent;
    u8* ptr;

    gPlayerEntity.flags &= ~ENT_COLLIDE;
    gPlayerEntity.spriteSettings.draw = 0;
    super->palette.b.b0 = gPlayerEntity.palette.b.b0;
    switch (super->subAction) {
        case 0:
            one = 1;
            super->subAction = one;
            super->spriteSettings.draw = one;
            super->collisionLayer = gPlayerEntity.collisionLayer;
            super->spritePriority.b0 = gPlayerEntity.spritePriority.b0;

            super->spriteRendering.b3 = gPlayerEntity.spriteRendering.b3;
            super->spriteOrientation.flipY = gPlayerEntity.spriteOrientation.flipY;
            super->spriteSettings.flipX = 0;
            super->animationState = 4;
            SetDefaultPriority(super, 6);
            if ((gPlayerState.flags & PL_NO_CAP) != 0) {
                if (sub_080542AC(super->type)) {
                    tmp = 0x45e;
                } else {
                    tmp = 0x45b;
                }
            } else {
                if (sub_080542AC(super->type)) {
                    tmp = 0x2e0;
                } else {
                    tmp = 0x1b9;
                }
            }
            super->spriteIndex = (tmp >> 8);
            InitAnimationForceUpdate(super, tmp & 0xff);
            break;
        case 1:
            UpdateAnimationSingleFrame(super);
            if (super->frame != 0) {
                super->subAction++;
            }
            break;
        case 2:
            UpdateAnimationSingleFrame(super);
            if ((gMessage.doTextBox & 0x7f) != 0) {
                return;
            }
            if ((super->frame & ANIM_DONE) != 0) {
                super->action = 1;
                gPlayerEntity.flags = this->unk_69;
                gPlayerEntity.spriteSettings.draw = this->unk_68;
                gPlayerEntity.iframes = this->unk_6a;
                gPlayerState.field_0x7 = this->unk_6b;
                gPlayerState.keepFacing = this->unk_6c;
                gPlayerState.field_0xa = this->unk_6d;
                gPlayerState.field_0x27[0] = this->unk_6e;
                gPlayerState.mobility = this->unk_6f;
                gPlayerState.flags = this->unk_70;
                gPlayerState.field_0x8a = this->unk_74;
            }
            break;
    }

    parent = super->parent;
    if (parent != NULL) {
        PositionEntityOnTop(super, parent);
        ptr = GetSpriteSubEntryOffsetDataPointer((u16)super->spriteIndex, super->frameIndex);
        parent->spriteOffsetX = *ptr;
        parent->spriteOffsetY = ptr[1];
    }
}
