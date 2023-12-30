/**
 * @file linkAnimation.c
 * @ingroup Objects
 *
 * @brief Link Animation object. This is used during "item get" sequences and
 * replaces the player entity for the duration.
 */
#include "functions.h"
#include "message.h"
#include "object.h"
#include "object/linkAnimation.h"

typedef enum {
    ITEMGET_INIT,
    ITEMGET_UPDATE,
    ITEMGET_WAIT,
} ItemGetState;

void LinkAnimation_Init(LinkAnimationEntity*);
void LinkAnimation_Default(LinkAnimationEntity*);
void LinkAnimation_ItemGet(LinkAnimationEntity*);

void LinkAnimation(LinkAnimationEntity* this) {
    static void (*const LinkAnimation_Actions[])(LinkAnimationEntity*) = {
        LinkAnimation_Init,    LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default,
        LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default,
        LinkAnimation_ItemGet, LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default,
        LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default,
        LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default,
        LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default,
        LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default,
        LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default, LinkAnimation_Default,
    };
    LinkAnimation_Actions[super->action](this);
}

void LinkAnimation_Init(LinkAnimationEntity* this) {
    super->action = PLAYER_ITEMGET;
    LinkAnimation_ItemGet(this);
}

void LinkAnimation_Default(LinkAnimationEntity* this) {
    ResetPlayerEventPriority();
    gPauseMenuOptions.disabled = 0;
    DeleteThisEntity();
}

void LinkAnimation_ItemGet(LinkAnimationEntity* this) {
    u32 one;
    u32 sprite;
    Entity* held_obj;
    u8* ptr;

    // hide player entity
    gPlayerEntity.base.flags &= ~ENT_COLLIDE;
    gPlayerEntity.base.spriteSettings.draw = 0;

    super->palette.b.b0 = gPlayerEntity.base.palette.b.b0;
    switch (super->subAction) {
        case ITEMGET_INIT:
            one = 1;
            super->subAction = one;
            super->spriteSettings.draw = one;
            super->collisionLayer = gPlayerEntity.base.collisionLayer;
            super->spritePriority.b0 = gPlayerEntity.base.spritePriority.b0;
            super->spriteRendering.b3 = gPlayerEntity.base.spriteRendering.b3;
            super->spriteOrientation.flipY = gPlayerEntity.base.spriteOrientation.flipY;
            super->spriteSettings.flipX = 0;
            super->animationState = 4;
            SetEntityPriority(super, PRIO_PLAYER_EVENT);
            if (gPlayerState.flags & PL_NO_CAP) {
                if (IsMinishItem(super->type)) {
                    sprite = ANIM_GET_ITEM_SMALL_NOCAP;
                } else {
                    sprite = ANIM_GET_ITEM_BIG_NOCAP;
                }
            } else {
                if (IsMinishItem(super->type)) {
                    sprite = ANIM_GET_ITEM_SMALL;
                } else {
                    sprite = ANIM_GET_ITEM_BIG;
                }
            }
            super->spriteIndex = (sprite >> 8);
            InitAnimationForceUpdate(super, sprite & 0xff);
            break;
        case ITEMGET_UPDATE:
            UpdateAnimationSingleFrame(super);
            if (super->frame != 0) {
                super->subAction++;
            }
            break;
        case ITEMGET_WAIT:
            UpdateAnimationSingleFrame(super);
            if ((gMessage.state & MESSAGE_ACTIVE) != 0) {
                return;
            }
            if (super->frame & ANIM_DONE) {
                super->action = PLAYER_NORMAL;
                // restore player state
                gPlayerEntity.base.flags = this->storeFlags;
                gPlayerEntity.base.spriteSettings.draw = this->storeDrawFlags;
                gPlayerEntity.base.iframes = this->storeIFrames;
                gPlayerState.field_0x7 = this->storeField7;
                gPlayerState.keepFacing = this->storeKeepFacing;
                gPlayerState.field_0xa = this->storeFieldA;
                gPlayerState.field_0x27[0] = this->storeField27;
                gPlayerState.mobility = this->storeMobility;
                gPlayerState.flags = this->storeStateFlags;
                gPlayerState.field_0x8a = this->store8A;
            }
            break;
    }

    held_obj = super->parent;
    if (held_obj != NULL) {
        PositionEntityOnTop(super, held_obj);
        ptr = GetSpriteSubEntryOffsetDataPointer((u16)super->spriteIndex, super->frameIndex);
        held_obj->spriteOffsetX = ptr[0];
        held_obj->spriteOffsetY = ptr[1];
    }
}
