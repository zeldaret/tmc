/**
 * @file gregal.c
 * @ingroup NPCs
 *
 * @brief Gregal NPC
 */
#include "entity.h"
#include "functions.h"
#include "npc.h"
#include "script.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 animIndex;
} GregalEntity;

static const u32 gUnk_08113D84[] = {
    0x100c0200,
    0x4,
};

void sub_0806CAF4(GregalEntity*);
void sub_0806CB80(GregalEntity*);
void sub_0806CBB4(GregalEntity*);
void sub_0806CC08(GregalEntity*);

void Gregal(GregalEntity* this) {
    static void (*const actionFuncs[])(GregalEntity*) = {
        sub_0806CAF4,
        sub_0806CB80,
        sub_0806CBB4,
        sub_0806CC08,
    };
    actionFuncs[super->type](this);
}

void sub_0806CAF4(GregalEntity* this) {
    Entity* npc;

    if (super->action == 0) {
        super->action++;
        SetEntityPriority(super, PRIO_MESSAGE);
        npc = CreateNPC(GREGAL, 1, 0);
        if (npc != NULL) {
            npc->parent = super;
            CopyPosition(super, npc);
            SortEntityBelow(super, npc);
        }
        npc = CreateNPC(GREGAL, 2, 0);
        if (npc != NULL) {
            npc->parent = super;
            CopyPosition(super, npc);
            SortEntityAbove(super, npc);
        }
        sub_0807DD64(super);
        AddInteractableWhenBigObject(super);
        SetInteractableObjectCollision(super, 1, (u8)gUnk_08113D84[1], gUnk_08113D84);
    }
    ExecuteScriptForEntity(super, NULL);
    HandleEntity0x82Actions(super);
    GetNextFrame(super);
}

void sub_0806CB80(GregalEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->animationState = 2;
        super->frameIndex = 0;
        SetEntityPriority(super, PRIO_MESSAGE);
    }
    if (super->parent != NULL) {
        super->frameIndex = (super->parent->frame & 3) + 0x21;
    }
}

void sub_0806CBB4(GregalEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->animationState = 2;
        SetEntityPriority(super, PRIO_MESSAGE);
        InitializeAnimation(super, 0x11);
    }
    GetNextFrame(super);
    if (super->parent != NULL) {
        super->spriteSettings.draw = 0;
        if ((super->parent->frame & 4) != 0) {
            super->spriteSettings.draw = 1;
        }
    }
}

void sub_0806CC08(GregalEntity* this) {
    switch (super->action) {
        case 0:
            super->action = 1;
            super->spriteSettings.draw = 1;
            SetEntityPriority(super, PRIO_MESSAGE);
            sub_0807DD64(super);
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 2;
                super->interactType = INTERACTION_NONE;
                this->animIndex = super->animIndex;
                InitAnimationForceUpdate(
                    super, GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)) + 8);
                InitializeNPCFusion(super);
            } else {
                ExecuteScriptForEntity(super, NULL);
                HandleEntity0x82Actions(super);
                GetNextFrame(super);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(super) == 0) {
                return;
            }
            super->action = 1;
            InitAnimationForceUpdate(super, this->animIndex);
            break;
    }
}

void sub_0806CCB4(Entity* this, ScriptExecutionContext* context) {
    if ((this->frame & ANIM_DONE) != 0) {
        context->condition = 1;
    } else {
        context->condition = 0;
    }
}

void sub_0806CCD0(Entity* this, ScriptExecutionContext* context) {
    u32 tmp = this->frameSpriteSettings & 0x3f;
    if ((this->frameSpriteSettings & 0x3f) != 0) {
        InitializeAnimation(this, tmp + (this->animationState >> 1));
        context->condition = 1;
    } else {
        context->condition = tmp;
    }
}

void sub_0806CCF8(Entity* this) {
    ChangeObjPalette(this, 0x10a);
}

void sub_0806CD04(Entity* this) {
    ChangeObjPalette(this, 0x10b);
}

void sub_0806CD14(Entity* this) {
    ChangeObjPalette(this, 0x10c);
}

void sub_0806CD20(Entity* this) {
    ChangeObjPalette(this, 0x10d);
}

void sub_0806CD30(Entity* this) {
    ChangeObjPalette(this, 0x10e);
}

void sub_0806CD3C(Entity* this) {
    ChangeObjPalette(this, 0x10f);
}

void sub_0806CD4C(Entity* this) {
    ChangeObjPalette(this, 0x110);
}

void Gregal_MakeInteractable(GregalEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void Gregal_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        SetEntityPriority(this, PRIO_MESSAGE);
        InitAnimationForceUpdate(this, 6);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
