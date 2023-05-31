#include "entity.h"
#include "functions.h"
#include "message.h"
#include "save.h"
#include "npc.h"
#include "object.h"

void sub_08063B68(Entity* this);
void sub_08063A80(Entity* this);
void sub_08063A98(Entity* this);
void sub_08063AC0(Entity* this);
void sub_08063B44(Entity* this);

void Pina(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        sub_08063B68(this);
    } else {
        sub_08063A80(this);
    }
}

void sub_08063A80(Entity* this) {
    static void (*const Pina_Actions[])(Entity*) = {
        sub_08063A98,
        sub_08063AC0,
        sub_08063B44,
    };
    Pina_Actions[this->action](this);
}

void sub_08063A98(Entity* this) {
    this->action++;
    this->spriteSettings.draw = 1;
    InitAnimationForceUpdate(this, 4);
    AddInteractableWhenBigObject(this);
}

void sub_08063AC0(Entity* this) {
    if (GetAnimationStateInRectRadius(this, 0x20, 0x20) >= 0) {
        if (this->subtimer == 0) {
            if ((Random() & 0x3f) == 0) {
                InitAnimationForceUpdate(this, 0);
                this->subtimer = 1;
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

void sub_08063B44(Entity* this) {
    u8 tmp = gMessage.doTextBox & 0x7f;
    if (tmp == 0) {
        this->action = 1;
        this->subtimer = tmp;
        InitAnimationForceUpdate(this, 4);
    }
}

void sub_08063B68(Entity* this) {
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

void sub_08063C14(void) {
    Entity* entity = DeepFindEntityByID(NPC, PINA);
    if (entity != NULL) {
        InitAnimationForceUpdate(entity, 8);
    }
}

void sub_08063C2C(void) {
    Entity* entity = DeepFindEntityByID(NPC, PINA);
    if (entity != NULL) {
        InitAnimationForceUpdate(entity, 4);
    }
}

void sub_08063C44(void) {
    Entity* entity = DeepFindEntityByID(NPC, PINA);
    if (entity != NULL) {
        InitAnimationForceUpdate(entity, 0);
    }
}

void sub_08063C5C(void) {
    Entity* entity = DeepFindEntityByID(NPC, PINA);
    if (entity != NULL) {
        InitAnimationForceUpdate(entity, 9);
    }
}

void sub_08063C74(void) {
    Entity* entity = DeepFindEntityByID(NPC, PINA);
    if (entity != NULL) {
        CreateSpeechBubbleExclamationMark(entity, 8, 0xffffffe8);
    }
}

void sub_08063C90(Entity* this) {
    static const Dialog gUnk_0810CE04[] = {
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x22), TEXT_INDEX(TEXT_TOWN, 0x21) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x22), TEXT_INDEX(TEXT_TOWN, 0x21) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x22), TEXT_INDEX(TEXT_TOWN, 0x21) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x22), TEXT_INDEX(TEXT_TOWN, 0x21) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN2, 0x1d), TEXT_INDEX(TEXT_TOWN2, 0x1c) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN3, 0x1c), TEXT_INDEX(TEXT_TOWN3, 0x1b) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN4, 0x1d), TEXT_INDEX(TEXT_TOWN4, 0x1c) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN5, 0x1d), TEXT_INDEX(TEXT_TOWN5, 0x1c) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN6, 0x17), TEXT_INDEX(TEXT_TOWN6, 0x16) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN6, 0x17), TEXT_INDEX(TEXT_TOWN6, 0x16) } },
    };
    ShowNPCDialogue(this, &gUnk_0810CE04[gSave.global_progress]);
}

void Pina_MakeInteractable(Entity* this) {
    this->field_0x68.HALF.LO = GetFusionToOffer(this);
    AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
}

void Pina_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        this->y.HALF.HI -= 4;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
