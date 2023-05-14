#include "entity.h"
#include "message.h"
#include "save.h"
#include "npc.h"

void sub_08063544(Entity*);
void sub_0806362C(Entity*);
void sub_0806355C(Entity*);
void sub_08063584(Entity*);
void sub_08063608(Entity*);

void Brocco(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        sub_0806362C(this);
    } else {
        sub_08063544(this);
    }
}

void sub_08063544(Entity* this) {
    static void (*const Brocco_Actions[])(Entity*) = {
        sub_0806355C,
        sub_08063584,
        sub_08063608,
    };
    Brocco_Actions[this->action](this);
}

void sub_0806355C(Entity* this) {
    this->action = this->action + 1;
    this->spriteSettings.draw = 1;
    InitAnimationForceUpdate(this, 4);
    AddInteractableWhenBigObject(this);
}

void sub_08063584(Entity* this) {
    if (GetAnimationStateInRectRadius(this, 0x20, 0x20) >= 0) {
        if (this->subtimer == 0) {
            if ((Random() & 0x3f) == 0) {
                this->subtimer = 1;
                InitAnimationForceUpdate(this, 0);
            }
        }
    }

    if (this->subtimer != 0) {
        UpdateAnimationSingleFrame(this);
        if ((this->frame & ANIM_DONE) != 0) {
            this->subtimer = 0;
        }
    }

    if (this->interactType != 0) {
        this->action = 2;
        InitAnimationForceUpdate(this, GetAnimationState(this) + 4);
        MessageFromTarget(this->timer + TEXT_INDEX(TEXT_EMPTY, 0x01));
    }
    sub_0806ED78(this);
}

void sub_08063608(Entity* this) {
    u8 tmp = gMessage.doTextBox & 0x7f;
    if (tmp == 0) {
        this->action = 1;
        this->subtimer = tmp;
        InitAnimationForceUpdate(this, 4);
    }
}

void sub_0806362C(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = 1;
            this->field_0x68.HALF.HI = 0;
            sub_0807DD64(this);
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                this->field_0x68.HALF.HI = this->animIndex;
                InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)) + 4);
                sub_0806F118(this);
            } else {
                ExecuteScriptForEntity(this, NULL);
                HandleEntity0x82Actions(this);
                UpdateAnimationSingleFrame(this);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this) == 0) {
                return;
            }
            this->action = 1;
            InitAnimationForceUpdate(this, this->field_0x68.HALF.HI);
            break;
    }
}

void sub_080636D8(Entity* this) {
    static const Dialog gUnk_0810CAAC[] = {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FESTIVAL, 0x10) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FESTIVAL, 0x10) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x24), TEXT_INDEX(TEXT_TOWN, 0x23) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x24), TEXT_INDEX(TEXT_TOWN, 0x23) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN2, 0x1f), TEXT_INDEX(TEXT_TOWN2, 0x1e) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN3, 0x1e), TEXT_INDEX(TEXT_TOWN3, 0x1d) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN4, 0x1f), TEXT_INDEX(TEXT_TOWN4, 0x1e) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN5, 0x1f), TEXT_INDEX(TEXT_TOWN5, 0x1e) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN6, 0x19), TEXT_INDEX(TEXT_TOWN6, 0x18) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN6, 0x19), TEXT_INDEX(TEXT_TOWN6, 0x18) } },
    };

    ShowNPCDialogue(this, &gUnk_0810CAAC[gSave.global_progress]);
}

void Brocco_MakeInteractable(Entity* this) {
    this->field_0x68.HALF.LO = GetFusionToOffer(this);
    AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
}

void Brocco_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        this->y.HALF.HI -= 4;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
