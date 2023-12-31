/**
 * @file festari.c
 * @ingroup NPCs
 *
 * @brief Festari NPC
 */
#include "entity.h"
#include "functions.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 unused[23];
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
    /*0x84*/ ScriptExecutionContext* context;
} FestariEntity;

void sub_0805FF2C(FestariEntity* this, ScriptExecutionContext* context);
void sub_0805FE10(FestariEntity* this);
void sub_0805FE48(FestariEntity* this);
void sub_0805FF18(FestariEntity* this);

void Festari(FestariEntity* this) {
    static void (*const actionFuncs[])(FestariEntity*) = {
        sub_0805FE10,
        sub_0805FE48,
        sub_0805FF18,
    };
    actionFuncs[super->action](this);
}

void sub_0805FE10(FestariEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = TRUE;
    SetEntityPriority(super, PRIO_MESSAGE);
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
    InitScriptForNPC(super);
}

void sub_0805FE48(FestariEntity* this) {
    u32 uVar4;

    if (super->interactType == INTERACTION_FUSE) {
        super->action = 2;
        super->interactType = INTERACTION_NONE;
        InitAnimationForceUpdate(super, GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
        InitializeNPCFusion(super);
    } else {
        ExecuteScript(super, this->context);
        sub_0805FF2C(this, this->context);
        uVar4 = this->unk_80;
        if (uVar4 < 8) {
            if ((this->unk_82 & 1) != 0) {
                uVar4 = (uVar4 & 0xfc) + (super->subtimer >> 1);
            } else {
                uVar4 = (uVar4 & 0xfc) + (super->animationState >> 1);
                super->subtimer = super->animationState;
            }
        }
        if (uVar4 != super->animIndex) {
            InitAnimationForceUpdate(super, uVar4);
        }
        UpdateAnimationSingleFrame(super);

        if (super->frame & ANIM_DONE) {
            switch (super->animIndex) {
                case 8:
                case 10:
                case 11:
                case 12:
                    this->unk_80 = 0;
                    break;
            }
        }
        if ((this->unk_82 & (~this->unk_82 + 1)) == 2) {
            sub_0806ED78(super);
        }
    }
}

void sub_0805FF18(FestariEntity* this) {
    if (UpdateFuseInteraction(super)) {
        super->action = 1;
    }
}

void sub_0805FF2C(FestariEntity* this, ScriptExecutionContext* context) {
    u32 actions;
    u32 bit;

    // Handle some postScriptActions already before calling HandlePostScriptActions
    actions = context->postScriptActions & 0xfff00004;
    context->postScriptActions = context->postScriptActions ^ actions;
    if (actions != 0) {
        while (actions != 0) {
            bit = (~actions + 1) & actions;
            actions ^= bit;
            switch (bit) {
                case 4:
                    this->unk_80 = 9;
                    break;

                case 0x200000:
                    this->unk_80 = 10;
                    break;
                case 0x400000:
                    if (super->animationState == 2) {
                        this->unk_80 = 0xb;
                    } else {
                        this->unk_80 = 0xc;
                    }
                    break;
                case 0x100000:
                    this->unk_80 = 8;
                    break;
            }
        }
    }
    HandlePostScriptActions(super, context);
}

void Festari_Fusion(FestariEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->spriteSettings.draw = 1;
        SetEntityPriority(super, PRIO_MESSAGE);
        InitAnimationForceUpdate(super, 8);
    } else {
        UpdateAnimationSingleFrame(super);
    }
}
