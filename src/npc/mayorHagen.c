/**
 * @file mayorHagen.c
 * @ingroup NPCs
 *
 * @brief Mayor Hagen NPC
 */
#include "entity.h"
#include "flags.h"
#include "item.h"
#include "npc.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 animIndex;
} MayorHagenEntity;

void MayorHagen(MayorHagenEntity* this) {
    u32 v;
    switch (super->action) {
        case 0:
            super->action = 1;
            this->animIndex = 0;
            this->fusionOffer = GetFusionToOffer(super);
            SetEntityPriority(super, PRIO_MESSAGE);
            InitScriptForNPC(super);
            break;
        case 1:
            v = super->interactType;
            if (v == INTERACTION_FUSE) {
                super->action = v;
                super->interactType = INTERACTION_NONE;
                this->animIndex = super->animIndex;
                InitAnimationForceUpdate(
                    super, 4 + GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
                InitializeNPCFusion(super);
                break;
            }
            ExecuteScriptForEntity(super, NULL);
            HandleEntity0x82Actions(super);
            UpdateAnimationSingleFrame(super);
            break;
        case 2:
            if (UpdateFuseInteraction(super)) {
                super->action = 1;
                InitAnimationForceUpdate(super, this->animIndex);
            }
    }
}

void MayorHagen_MakeInteractable(Entity* this) {
    static const Rect gUnk_08113F44 = { 0, 8, 8, 16 };
    AddInteractableWhenBigFuser(this, GetFusionToOffer(this));
    SetInteractableObjectCollision(this, 1, 0, &gUnk_08113F44);
}

void sub_0806CE80(Entity* this) {
    static const Dialog dialogs[] = {
        { 0x89, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, TEXT_INDEX(TEXT_HAGEN, 0xd), TEXT_INDEX(TEXT_HAGEN, 0x1) },
        { 0x89, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, TEXT_INDEX(TEXT_HAGEN, 0xd), TEXT_INDEX(TEXT_HAGEN, 0x1) },
        { 0x89, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, TEXT_INDEX(TEXT_HAGEN, 0xd), TEXT_INDEX(TEXT_HAGEN, 0x1) },
        { 0x89, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, TEXT_INDEX(TEXT_HAGEN, 0xd), TEXT_INDEX(TEXT_HAGEN, 0x1) },
        { 0, 0, DIALOG_NORMAL, 1, 0, TEXT_INDEX(TEXT_HAGEN, 0xe) },
        { 0, 0, DIALOG_NORMAL, 1, 0, TEXT_INDEX(TEXT_HAGEN, 0xe) },
        { 0, 0, DIALOG_NORMAL, 1, 0, TEXT_INDEX(TEXT_HAGEN, 0xf) },
        { 0, 0, DIALOG_NORMAL, 1, 0, TEXT_INDEX(TEXT_HAGEN, 0x10) },
        { 0, 0, DIALOG_NORMAL, 1, 0, TEXT_INDEX(TEXT_HAGEN, 0x11) },
        { 0, 0, DIALOG_NORMAL, 1, 0, TEXT_INDEX(TEXT_HAGEN, 0x12) },
        { 0, 0, DIALOG_NORMAL, 1, 0, TEXT_INDEX(TEXT_HAGEN, 0x14) },
        { 0, 0, DIALOG_NORMAL, 1, 0, TEXT_INDEX(TEXT_HAGEN, 0x2) },
        { 0, 0, DIALOG_NORMAL, 1, 0, TEXT_INDEX(TEXT_HAGEN, 0xc) },
        { 0, 0, DIALOG_NORMAL, 1, 0, TEXT_INDEX(TEXT_HAGEN, 0x3) },
        { 0, 0, DIALOG_NORMAL, 1, 0, TEXT_INDEX(TEXT_HAGEN, 0x4) },
    };
    u32 v;
    u32 v2;
    v = gSave.global_progress;
    if (v == 5) {
        if (GetInventoryValue(ITEM_FLIPPERS) == 0) {
            if (CheckLocalFlag(0x70) != 0) {
                v2 = CheckLocalFlag(MIZUKAKI_HINT3_MAYOR);
                if (v2 == 0) {
                    v = 0xb;
                    SetLocalFlag(MIZUKAKI_HINT3_MAYOR);
                } else {
                    v = 0xc;
                }
            } else {
                v = 0xa;
            }
        } else {
            v2 = CheckLocalFlag(MAYOR_2_TALK1ST);
            if (v2 == 0) {
                v = 0xd;
                SetLocalFlag(MAYOR_2_TALK1ST);
            } else {
                v = 0xe;
            }
        }
    }
    ShowNPCDialogue(this, &dialogs[v]);
}

void MayorHagen_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 8);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
