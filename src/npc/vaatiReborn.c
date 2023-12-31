/**
 * @file vaatiReborn.c
 * @ingroup NPCs
 *
 * @brief Vaati Reborn NPC
 */
#include "functions.h"
#include "npc.h"

void VaatiRebornAction0(Entity* this);
void VaatiRebornAction1(Entity* this);
void sub_0806B96C(Entity*);
Entity* sub_0806B9BC(Entity*);

typedef struct xy {
    s8 x;
    s8 y;
} PACKED xy;

void (*const vaatiRebornActions[])(Entity*) = {
    VaatiRebornAction0,
    VaatiRebornAction1,
};
const xy gUnk_08112F80[] = { { 10, -29 }, { -10, -29 }, { 15, -21 }, { -15, -21 } };

void VaatiReborn(Entity* this) {
    vaatiRebornActions[this->action](this);
}

void VaatiRebornAction0(Entity* this) {
    Entity* entity;
    u32 i;

    this->action = 1;
    this->subAction = 0;
    this->timer = 0;
    switch (this->type) {
        case 0:
            this->y.HALF.HI -= 0xa0;
            this->timer = 160;
            this->subtimer = 32;
            this->spriteOffsetY = 0x20;
            for (i = 0; i < 4; i++) {
                entity = CreateNPC(VAATI_REBORN, 2, i);
                if (entity != NULL) {
                    entity->parent = this;
                }
            }
            entity = CreateNPC(VAATI_REBORN, 1, 0);
            entity->parent = this;
            entity->spriteOffsetY = -1;
            PositionRelative(this, entity, 0, Q_16_16(1.0));
            InitAnimationForceUpdate(this, 0);
            break;
        case 1:
        case 5:
            InitAnimationForceUpdate(this, 0);
            break;
        case 2:
            if ((this->type2 & 2) != 0) {
                this->spriteSettings.flipX = 1;
            }
            sub_0806B96C(this);
            InitAnimationForceUpdate(this, 0);
            break;
        case 3:
            this->timer = 1;
            this->subtimer = 32;
            entity = CreateNPC(VAATI_REBORN, 4, 0);
            if (entity != NULL) {
                CopyPosition(this, entity);
                entity->parent = this;
                entity->spritePriority.b0 = this->spritePriority.b0 - 1;
                entity->frameIndex = 0;
            }
            entity = CreateNPC(VAATI_REBORN, 5, 0);
            if (entity != NULL) {
                CopyPosition(this, entity);
                entity->parent = this;
                entity->spritePriority.b0 = this->spritePriority.b0 + 1;
            }
            InitAnimationForceUpdate(this, 0);
            break;
        case 4:
            InitializeAnimation(this, 0);
            break;
        default:
            break;
    }
}

void VaatiRebornAction1(Entity* this) {
    Entity* entity;

    if (CheckRoomFlag(3) == 0) {
        return;
    }
    switch (this->type) {
        case 0:
            this->y.HALF.HI++;
            if (--this->timer == 0) {
                entity = CreateNPC(VAATI_REBORN, 3, 0);
                if (entity == NULL) {
                    break;
                }
                CopyPosition(this, entity);
                MessageFromTarget(TEXT_INDEX(TEXT_VAATI2, 0x34));
                this->subAction = this->subAction + 1;
                DeleteThisEntity();
                return;
            }
            if (this->subtimer-- == 1) {
                this->subtimer = 32;
                SoundReq(SFX_1A9);
            }
            UpdateAnimationSingleFrame(this);
            break;
        case 1:
            entity = sub_0806B9BC(this);
            if (entity == NULL) {
                DeleteThisEntity();
            }
            PositionRelative(entity, this, 0, Q_16_16(33.0));
            UpdateAnimationSingleFrame(this);
            break;
        case 2:
            sub_0806B96C(this);
            UpdateAnimationSingleFrame(this);
            break;
        case 3:
            switch (this->subAction) {
                case 0:
                    if (--this->timer == 0) {
                        this->subAction++;
                    }
                    break;
                case 1:
                    if (this->frame & ANIM_DONE) {
                        this->subAction = 2;
                        ChangeObjPalette(this, 0x13f);
                        InitAnimationForceUpdate(this, this->subAction - 1);
                    }
                    break;
                case 2:
                    if ((this->frame & 0x10) != 0) {
                        this->frame &= 0xef;

                        switch (++this->timer) {
                            case 1:
                                break;
                            case 10:
                                this->subAction++;
                                EnqueueSFX(SFX_SUMMON);
                                this->timer = 0;
                                InitAnimationForceUpdate(this, this->subAction - 1);
                                break;
                        }
                    }
                    break;
                case 3:
                    if (this->frame & ANIM_DONE) {
                        SetRoomFlag(0);
                        DeleteThisEntity();
                    }
                    break;
            }

            if (--this->subtimer == 0) {
                this->subtimer = 32;
                SoundReq(SFX_1A9);
            }
            UpdateAnimationSingleFrame(this);
            break;
        default:
            entity = sub_0806B9BC(this);
            if (entity == NULL) {
                DeleteThisEntity();
                break;
            }
            if (entity->subAction == 0) {
                break;
            }
            if (this->type != 4) {
                UpdateAnimationSingleFrame(this);
            } else {
                GetNextFrame(this);
            }
            break;
    }
}

void sub_0806B96C(Entity* this) {
    Entity* entity;
    const xy* ptr;

    entity = sub_0806B9BC(this);
    if (entity == NULL) {
        DeleteThisEntity();
    }
    ptr = &gUnk_08112F80[this->type2];
    this->spriteSettings.draw = entity->spriteSettings.draw;
    PositionRelative(entity, this, Q_16_16(ptr->x), Q_16_16(ptr->y + 0x21));
    UpdateAnimationSingleFrame(this);
}

Entity* sub_0806B9BC(Entity* this) {
    Entity* entity;

    entity = this->parent;
    if (entity != NULL && entity->next == NULL) {
        entity = NULL;
    }
    return entity;
}
