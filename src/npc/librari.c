/**
 * @file librari.c
 * @ingroup NPCs
 *
 * @brief Librari NPC
 */
#include "entity.h"
#include "item.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
} LibrariEntity;

void Librari(LibrariEntity* this) {
    switch (super->action) {
        case 0:
            super->action = 1;
            super->spriteSettings.draw = TRUE;
            super->animationState = super->timer;
            this->fusionOffer = GetFusionToOffer(super);
            AddInteractableWhenBigFuser(super, this->fusionOffer);
            SetEntityPriority(super, PRIO_MESSAGE);
            InitScriptForNPC(super);
            break;
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 2;
                super->interactType = INTERACTION_NONE;
                InitializeNPCFusion(super);
            } else {
                ExecuteScriptForEntity(super, NULL);
                HandleEntity0x82Actions(super);
                UpdateAnimationSingleFrame(super);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(super)) {
                super->action = 1;
            }
    }
}

void sub_0806B260(Entity* this, ScriptExecutionContext* context) {
    static const u16 messageIndices[] = {
        TEXT_INDEX(TEXT_TOWN_MINISH1, 0X19),
        TEXT_INDEX(TEXT_TOWN_MINISH1, 0X1a),
        TEXT_INDEX(TEXT_TOWN_MINISH1, 0X22),
        TEXT_INDEX(TEXT_TOWN_MINISH1, 0X27),
    };
    u32 index;

    context->condition = 0;
    if (!GetInventoryValue(ITEM_FLIPPERS)) {
        if (CheckGlobalFlag(MIZUKAKI_START)) {
            index = 2;
            context->condition = 1;
        } else if (!CheckLocalFlag(0x7a)) {
            index = 0;
            SetLocalFlag(0x7a);
        } else {
            index = 1;
        }
    } else {
        index = 3;
    }
    MessageNoOverlap(messageIndices[index], this);
}

void sub_0806B2B4(Entity* this) {
    static const u16 messageIndices[] = {
        TEXT_INDEX(TEXT_MINISH, 0xad), TEXT_INDEX(TEXT_MINISH, 0xae), TEXT_INDEX(TEXT_MINISH, 0xaf),
        TEXT_INDEX(TEXT_MINISH, 0xb0), TEXT_INDEX(TEXT_MINISH, 0xb1),
    };
    u32 index;

    if (CheckLocalFlag(0xb3)) {
        if (!CheckRoomFlag(0)) {
            index = 1;
            SetRoomFlag(0);
        } else if (!CheckRoomFlag(1)) {
            index = 2;
            SetRoomFlag(1);
        } else if (!CheckRoomFlag(2)) {
            index = 3;
            SetRoomFlag(2);
        } else {
            index = 4;
            ClearRoomFlag(0);
            ClearRoomFlag(1);
            ClearRoomFlag(2);
        }
    } else {
        index = 0;
    }
    MessageNoOverlap(messageIndices[index], this);
}

void Librari_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = TRUE;
        InitAnimationForceUpdate(this, 9);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
