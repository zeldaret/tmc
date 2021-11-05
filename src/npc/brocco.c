#include "entity.h"
#include "functions.h"
#include "textbox.h"
#include "save.h"
#include "npc.h"
#include "script.h"

void sub_08063544(Entity*);
void sub_0806362C(Entity*);

extern void (*gUnk_0810CAA0[])(Entity*);

extern Dialog gUnk_0810CAAC[];

void Brocco(Entity* this) {
    if ((this->flags & 2) != 0) {
        sub_0806362C(this);
    } else {
        sub_08063544(this);
    }
}

void sub_08063544(Entity* this) {
    gUnk_0810CAA0[this->action](this);
}

void sub_0806355C(Entity* this) {
    this->action = this->action + 1;
    this->spriteSettings.b.draw = 1;
    InitAnimationForceUpdate(this, 4);
    sub_08078778(this);
}

ASM_FUNC("asm/non_matching/brocco/sub_08063584.inc", void sub_08063584(Entity* this))

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
            this->spriteSettings.b.draw = 1;
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
    ShowNPCDialogue(this, &gUnk_0810CAAC[gSave.unk8]);
}

void sub_080636F4(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void Brocco_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.b.draw = 1;
        this->y.HALF.HI -= 4;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
