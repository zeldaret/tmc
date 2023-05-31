#include "global.h"
#include "sound.h"
#include "entity.h"
#include "message.h"
#include "npc.h"
#include "functions.h"

void sub_08065A64(Entity* this);
void sub_08065AA4(Entity*);
void sub_080659B8(Entity*);
void sub_080659F0(Entity*);
void sub_08065A00(Entity*);
void sub_08065A10(Entity*);
void sub_08065A34(Entity*);

void Epona(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080659B8, sub_080659F0, sub_08065A00, sub_08065A10, sub_08065A34,
    };
    actionFuncs[this->action](this);
    sub_08065A64(this);
    sub_0806ED78(this);
}

void sub_080659B8(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->animationState = 6;
    this->field_0x68.HALF.HI = -1;
    this->field_0x68.HALF.LO = GetFusionToOffer(this);
    InitAnimationForceUpdate(this, this->animationState / 2);
}

void sub_080659F0(Entity* this) {
    UpdateAnimationSingleFrame(this);
    sub_08065AA4(this);
}

void sub_08065A00(Entity* this) {
    UpdateAnimationSingleFrame(this);
    sub_08065AA4(this);
}

void sub_08065A10(Entity* this) {
    if ((gMessage.doTextBox & 0x7F) == 0) {
        this->action = 1;
        InitAnimationForceUpdate(this, this->animationState / 2);
    }
}

void sub_08065A34(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
        InitAnimationForceUpdate(this, this->animationState / 2);
    }
}

void sub_08065A50(Entity* this) {
    static const Dialog typeDialogs[] = {
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0X17), TEXT_INDEX(TEXT_TINGLE, 0x3c) } },
    };
    ShowNPCDialogue(this, &typeDialogs[this->type]);
}

void sub_08065A64(Entity* this) {
    u32 uVar2;

    if ((gPlayerState.flags & PL_MINISH) != 0) {
        uVar2 = TRUE;
    } else {
        uVar2 = FALSE;
    }

    if (uVar2 != this->field_0x68.HALF.HI) {
        if (uVar2 == 0) {
            AddInteractableWhenBigObject(this);
        } else {
            AddInteractableAsMinishFuser(this, this->field_0x68.HALF.LO);
        }
    }
    this->field_0x68.HALF.HI = uVar2;
}

void sub_08065AA4(Entity* this) {
    if (this->interactType != 0) {
        if (gPlayerState.flags & PL_MINISH) {
            if (this->interactType == 2) {
                this->action = 4;
                sub_0806F118(this);
            } else {
                this->action = 3;
                SetDefaultPriority(this, PRIO_MESSAGE);
                sub_08065A50(this);
            }
            InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
        } else {
            sub_08065A50(this);
            ResetPlayerAnimationAndAction();
        }
        SoundReq(SFX_VO_EPONA);
        this->interactType = 0;
    }
}

void Epona_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 7);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
