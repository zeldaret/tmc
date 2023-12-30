/**
 * @file vaati.c
 * @ingroup NPCs
 *
 * @brief Vaati NPC
 */
#include "entity.h"
#include "functions.h"
#include "script.h"
#include "sound.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
    /*0x69*/ s8 unk_69;
    /*0x6a*/ u8 unused1[22];
    /*0x80*/ u16 unk_80;
    /*0x82*/ u8 unused2[2];
    /*0x84*/ ScriptExecutionContext* context;
} VaatiEntity;

extern void sub_08095CB0(Entity*);
extern void CreateRepeatedSoundManager(Entity*);
extern void DeleteRepeatedSoundManager(Entity*);
extern void CreateVaatiApparateManager(Entity*, u32);

void VaatiAction0(VaatiEntity*);
void VaatiAction1(VaatiEntity*);
void sub_08066B74(Entity*, ScriptExecutionContext*);

void (*const vaatiActions[])(VaatiEntity*) = { VaatiAction0, VaatiAction1 };

void Vaati(VaatiEntity* this) {
    vaatiActions[super->action](this);
    super->palette.b.b0 = super->palette.b.b4 + (super->frameSpriteSettings & 1);
}

void VaatiAction0(VaatiEntity* this) {
    super->action = 1;
    super->subAction = 0;
    super->spriteSettings.draw = 1;
    this->unk_68 = 0;
    this->unk_69 = 0;
    SetEntityPriority(super, PRIO_MESSAGE);
    sub_0807DD64(super);
    VaatiAction1(this);
}

void VaatiAction1(VaatiEntity* this) {
    ScriptExecutionContext* context;
    ExecuteScriptAndHandleAnimation(super, sub_08066B74);
    if ((*(s8*)&this->unk_69 != 0) && ((gRoomTransition.frameCount & 3) == 0)) {
        sub_08095CB0(super);
    }

    if ((super->frame & ~0x80) != 0) {
        switch (super->frame & ~0x80u) {
            case 1:
                EnqueueSFX(SFX_21C);
                break;
            case 2:
                EnqueueSFX(SFX_21E);
                break;
            case 3:
                context = this->context;
                context->intVariable = 4;
                CreateRepeatedSoundManager(super);
                break;
            case 4:
                context = this->context;
                context->intVariable = 4;
                DeleteRepeatedSoundManager(super);
                EnqueueSFX(SFX_21D);
                break;
        }
        super->frame &= ~0x80;
    }
}

void sub_08066B74(Entity* this, ScriptExecutionContext* context) {
    u8 animationState;
    u32 currentAction;
    u32 actions;

    actions = context->postScriptActions & 0xfff00000;
    context->postScriptActions = context->postScriptActions & 0xfffff;
    if (actions != 0) {
        do {
            currentAction = (~actions + 1) & actions;
            actions = actions ^ currentAction;
            animationState = this->animationState >> 1;

            switch (currentAction) {
                case 1 << 20:
                    ((VaatiEntity*)this)->unk_80 = animationState + 0x10;
                    break;
                case 1 << 21:
                    ((VaatiEntity*)this)->unk_80 = animationState + 0x14;
                    break;
                case 1 << 22:
                    ((VaatiEntity*)this)->unk_80 = animationState + 0x18;
                    break;
                case 1 << 23:
                    ((VaatiEntity*)this)->unk_80 = animationState + 0x1c;
                    break;
                case 1 << 24:
                    ((VaatiEntity*)this)->unk_80 = animationState + 0x20;
                    break;
                case 1 << 25:
                    ((VaatiEntity*)this)->unk_80 = animationState + 0x24;
                    break;
                case 1 << 26:
                    ((VaatiEntity*)this)->unk_80 = animationState + 0x28;
                    break;
                case 1 << 27:
                    ((VaatiEntity*)this)->unk_80 = animationState + 0x2c;
                    break;
                case 1 << 28:
                    ((VaatiEntity*)this)->unk_80 = animationState + 0x30;
                    break;
                case 1 << 29:
                    ((VaatiEntity*)this)->unk_68 = 1;
                    break;
                case 1 << 30:
                    ((VaatiEntity*)this)->unk_68 = 0xff;
                    break;
                case 1 << 31:
                    ((VaatiEntity*)this)->unk_69 ^= 1;
                    break;
            }
        } while (actions != 0);
    }
    HandlePostScriptActions(this, ((VaatiEntity*)this)->context);
}

void Vaati_Apparate(Entity* this) {
    CreateVaatiApparateManager(this, 0);
    SoundReq(SFX_APPARATE);
}

void Vaati_Evaporate(Entity* this) {
    CreateVaatiApparateManager(this, 1);
    SoundReq(SFX_EVAPORATE);
}
