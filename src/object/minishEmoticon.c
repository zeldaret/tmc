/**
 * @file minishEmoticon.c
 * @ingroup Objects
 *
 * @brief Minish Emoticon object
 */
#include "entity.h"
#include "functions.h"

void MinishEmoticon_Init(Entity*);
void MinishEmoticon_Action1(Entity*);

void MinishEmoticon(Entity* this) {
    static EntityAction* const MinishEmoticon_Actions[] = {
        MinishEmoticon_Init,
        MinishEmoticon_Action1,
    };

    MinishEmoticon_Actions[this->action](this);
}

void MinishEmoticon_Init(Entity* this) {
    this->updatePriority = 6;
    this->flags |= ENT_PERSIST;
    this->spriteSettings.draw = 1;
    this->action = 1;
    LoadSwapGFX(this, 1, 3);
    MinishEmoticon_Action1(this);
}

void MinishEmoticon_Action1(Entity* this) {
    u32 animIndex;
    u32 origAnimIndex;
    u32 animationState;
    Entity* playerEnt;

    if ((gPlayerState.flags & PL_MINISH) == 0) {
        DeleteThisEntity();
    }
    playerEnt = &gPlayerEntity.base;
    sub_08079BD8(this);
    this->spriteOrientation.flipY = 1;
    this->palette.b.b0 = playerEnt->palette.b.b0;
    this->animationState = playerEnt->animationState & 0xe;
    this->spritePriority.b0 = 0;
    animationState = playerEnt->animationState;
    animIndex = animationState >> 1;
    origAnimIndex = animIndex;
    switch (playerEnt->action) {
        case 0x16:
            if (this->animationState == 2) {
                animIndex = 0xe;
            } else {
                animIndex = 0xd;
            }
            break;
        case 0x14:
            animIndex = 0xc;
            break;
        case 0x18:
            animIndex += 0xf;
            break;
        case 0xa:
            animIndex = 0x13;
            break;
        default:
            if (playerEnt->knockbackDuration != 0) {
                animIndex = origAnimIndex + 8;
            } else {
                if (gPlayerState.jump_status != 0) {
                    if ((gPlayerState.jump_status & 0x10) == 0) {
                        animIndex = origAnimIndex + 0x19;
                    }
                } else {
                    if (gPlayerState.framestate == PL_STATE_WALK || gPlayerState.framestate == PL_STATE_PUSH) {
                        animIndex = origAnimIndex + 4;
                        if (this->animIndex != animIndex) {
                            this->z.WORD = 0;
                            this->timer = 6;
                        } else if (this->timer-- == 0) {
                            switch (this->spriteOffsetY) {
                                case 0:
                                    this->spriteOffsetY = -2;
                                    this->timer = 6;
                                    break;
                                case -2:
                                    this->spriteOffsetY = -1;
                                    this->timer = 6;
                                    break;
                                case -1:
                                    this->spriteOffsetY = 0;
                                    this->timer = 3;
                                    break;
                            }
                        }
                    } else if (gPlayerState.swim_state != 0) {
                        if ((gPlayerState.swim_state & 0x80) != 0) {
                            animIndex = 0x18;
                        } else {
                            animIndex = origAnimIndex + 0x14;
                        }
                    } else {
                        this->spriteOffsetY = 0;
                    }
                }
            }
    }

    if (this->animIndex != animIndex) {
        InitAnimationForceUpdate(this, animIndex);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
