#include "entity.h"
#include "message.h"
#include "save.h"
#include "npc.h"

void sub_08063544(Entity*);
void sub_0806362C(Entity*);
void sub_0806355C(Entity*);
void sub_08063584(Entity*);
void sub_08063608(Entity*);

extern Dialog gUnk_0810CAAC[];

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
    sub_08078778(this);
}

void sub_08063584(Entity* this) {
    if (GetAnimationStateInRectRadius(this, 0x20, 0x20) >= 0) {
        if (this->field_0xf == 0) {
            if ((Random() & 0x3f) == 0) {
                this->field_0xf = 1;
                InitAnimationForceUpdate(this, 0);
            }
        }
    }

    if (this->field_0xf != 0) {
        UpdateAnimationSingleFrame(this);
        if ((this->frame & ANIM_DONE) != 0) {
            this->field_0xf = 0;
        }
    }

    if (this->interactType != 0) {
        this->action = 2;
        InitAnimationForceUpdate(this, GetAnimationState(this) + 4);
        MessageFromTarget(this->actionDelay + 0xa01);
    }
    sub_0806ED78(this);
}

void sub_08063608(Entity* this) {
    u8 tmp = gMessage.doTextBox & 0x7f;
    if (tmp == 0) {
        this->action = 1;
        this->field_0xf = tmp;
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
    ShowNPCDialogue(this, &gUnk_0810CAAC[gSave.global_progress]);
}

void sub_080636F4(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void Brocco_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.draw = 1;
        this->y.HALF.HI -= 4;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
