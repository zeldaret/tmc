/**
 * @file sturgeon.c
 * @ingroup NPCs
 *
 * @brief Sturgeon NPC
 */
#include "entity.h"
#include "functions.h"
#include "item.h"
#include "npc.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
} SturgeonEntity;

const SpriteLoadData gUnk_0810FA38[] = {
    { 59, 140, 0 },
    { 59, 140, 0 },
    { 0, 0, 0 },
};
void sub_08064B44(SturgeonEntity*);
void sub_08064B88(SturgeonEntity*);
void sub_08064C2C(SturgeonEntity*);
void sub_08064C50(SturgeonEntity*);
void (*const gUnk_0810FA44[])(SturgeonEntity*) = {
    sub_08064B44,
    sub_08064B88,
    sub_08064C2C,
    sub_08064C50,
};

extern const u16 gUnk_0810FA54[];
// const u16 gUnk_0810FA54[] = {
// TEXT_INDEX(TEXT_LIBRARY, 0xe),
// TEXT_INDEX(TEXT_LIBRARY, 0x15),
// TEXT_INDEX(TEXT_LIBRARY, 0x11),
// };
extern u32 gUnk_0810FA5A; // TODO second parameter of sub_0806EE04

void Sturgeon_MakeInteractable(SturgeonEntity* this);
void sub_08064C9C(Entity* this);
void sub_08064CD8(Entity* this);

void Sturgeon(SturgeonEntity* this) {
    if ((super->flags & ENT_SCRIPTED) == 0) {
        gUnk_0810FA44[super->action](this);
        sub_0806ED78(super);
    } else {
        if (super->action == 0) {
            if (LoadExtraSpriteData(super, gUnk_0810FA38)) {
                super->action = 1;
                super->timer = 0;
                InitScriptForNPC(super);
            }
        } else {
            u32 tmp = super->action & 0x80;
            if (tmp) {
                if (UpdateFuseInteraction(super)) {
                    super->action = 1;
                }
            } else {
                if (super->interactType == INTERACTION_FUSE) {
                    super->action = super->action | 0xff;
                    super->interactType = INTERACTION_NONE;
                    InitAnimationForceUpdate(
                        super, GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
                    InitializeNPCFusion(super);
                } else {
                    ExecuteScriptAndHandleAnimation(super, NULL);
                    sub_08064C9C(super);
                }
            }
        }
    }
}

void sub_08064B44(SturgeonEntity* this) {
    if (LoadExtraSpriteData(super, gUnk_0810FA38)) {
        InitializeAnimation(super, 2);
        sub_0806EE04(super, &gUnk_0810FA5A, 0);
        Sturgeon_MakeInteractable(this);
        super->action = 1;
        super->subAction = 0;
        super->spriteSettings.draw = 1;
    }
}

void sub_08064B88(SturgeonEntity* this) {
    s32 temp;
    s32 temp2;

    switch (super->interactType) {
        case INTERACTION_NONE:
            temp = sub_0806EE20(super);
            super->animationState = super->knockbackDirection;
            if (temp != 0) {
                InitializeAnimation(super, temp & 0x7f);
            }
            GetNextFrame(super);
            break;
        case INTERACTION_FUSE:
            super->action = 3;
            temp2 = GetAnimationState(super);
            if (temp2 < 0) {
                temp2 = super->animationState;
            }
            super->subtimer = super->animIndex;
            InitializeAnimation(super, temp2);
            super->interactType = INTERACTION_NONE;
            InitializeNPCFusion(super);
            break;
        case INTERACTION_TALK:
        default:
            super->action = 2;
            temp2 = GetAnimationState(super);
            if (temp2 < 0) {
                temp2 = super->animationState;
            }
            super->subtimer = super->animIndex;
            InitializeAnimation(super, temp2);
            super->interactType = INTERACTION_NONE;
            sub_08064CD8(super);
    }
}

void sub_08064C2C(SturgeonEntity* this) {
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        super->action = 1;
        InitializeAnimation(super, (u32)super->subtimer);
    }
}

void sub_08064C50(SturgeonEntity* this) {
    if (UpdateFuseInteraction(super) != 0) {
        super->action = 1;
        InitializeAnimation(super, super->subtimer);
    }
}

void Sturgeon_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0, (u8)this->frame & 0x3f);
    SetExtraSpriteFrame(this, 1, (u32)this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_08064C9C(Entity* this) {
    if ((this->timer != 0) && ((gRoomTransition.frameCount & 3U) == 0)) {
        CreateDust(this);
    }
}

void Sturgeon_MakeInteractable(SturgeonEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void sub_08064CD8(Entity* this) {
    u32 flag;
    u32 tmp = 2;
    if (GetInventoryValue(ITEM_FLIPPERS) == 0) {
        if (CheckLocalFlag(0x73)) {
            tmp = 1;
        } else {
            tmp = 0;
        }
    }
    MessageNoOverlap(gUnk_0810FA54[tmp], this);
}

void sub_08064D08(Entity* this) {
    this->timer = 1;
}

void sub_08064D10(Entity* this) {
    this->timer = 0;
}

void Sturgeon_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_0810FA38)) {
            this->action++;
            this->spriteSettings.draw = 1;
            InitializeAnimation(this, 6);
        }
    } else {
        GetNextFrame(this);
    }
}
