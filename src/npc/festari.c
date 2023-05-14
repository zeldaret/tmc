#include "global.h"
#include "entity.h"
#include "functions.h"
#include "npc.h"

void sub_0805FF2C(Entity*, ScriptExecutionContext*);
void sub_0805FE10(Entity* this);
void sub_0805FE48(Entity* this);
void sub_0805FF18(Entity* this);

void Festari(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0805FE10,
        sub_0805FE48,
        sub_0805FF18,
    };
    actionFuncs[this->action](this);
}

void sub_0805FE10(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = TRUE;
    SetDefaultPriority(this, PRIO_MESSAGE);
    this->field_0x68.HALF.LO = GetFusionToOffer(this);
    AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
    sub_0807DD50(this);
}

void sub_0805FE48(Entity* this) {
    u32 uVar4;

    if (this->interactType == 2) {
        this->action = 2;
        this->interactType = 0;
        InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
        sub_0806F118(this);
    } else {
        ExecuteScript(this, *(ScriptExecutionContext**)&this->cutsceneBeh);
        sub_0805FF2C(this, *(ScriptExecutionContext**)&this->cutsceneBeh);
        uVar4 = this->field_0x80.HWORD;
        if (uVar4 < 8) {
            if ((this->field_0x82.HWORD & 1) != 0) {
                uVar4 = (uVar4 & 0xfc) + (this->subtimer >> 1);
            } else {
                uVar4 = (uVar4 & 0xfc) + (this->animationState >> 1);
                this->subtimer = this->animationState;
            }
        }
        if (uVar4 != this->animIndex) {
            InitAnimationForceUpdate(this, uVar4);
        }
        UpdateAnimationSingleFrame(this);

        if (this->frame & ANIM_DONE) {
            switch (this->animIndex) {
                case 8:
                case 10:
                case 11:
                case 12:
                    this->field_0x80.HWORD = 0;
                    break;
            }
        }
        if ((this->field_0x82.HWORD & (~this->field_0x82.HWORD + 1)) == 2) {
            sub_0806ED78(this);
        }
    }
}

void sub_0805FF18(Entity* this) {
    if (UpdateFuseInteraction(this)) {
        this->action = 1;
    }
}

void sub_0805FF2C(Entity* this, ScriptExecutionContext* context) {
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
                    this->field_0x80.HWORD = 9;
                    break;

                case 0x200000:
                    this->field_0x80.HWORD = 10;
                    break;
                case 0x400000:
                    if (this->animationState == 2) {
                        this->field_0x80.HWORD = 0xb;
                    } else {
                        this->field_0x80.HWORD = 0xc;
                    }
                    break;
                case 0x100000:
                    this->field_0x80.HWORD = 8;
                    break;
            }
        }
    }
    HandlePostScriptActions(this, context);
}

void Festari_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        SetDefaultPriority(this, PRIO_MESSAGE);
        InitAnimationForceUpdate(this, 8);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
