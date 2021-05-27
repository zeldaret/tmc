#include "entity.h"
#include "functions.h"
#include "textbox.h"
#include "save.h"
#include "script.h"
#include "npc.h"

void sub_08063B68(Entity* this);
void sub_08063A80(Entity* this);

extern void (*gUnk_0810CDF8[])(Entity*);

extern void CreateSpeechBubbleExclamationMark(Entity*, u32, u32);

extern Dialog gUnk_0810CE04[];

void Pina(Entity* this) {
    if ((this->flags & 2) != 0) {
        sub_08063B68(this);
    } else {
        sub_08063A80(this);
    }
}

void sub_08063A80(Entity* this) {
    gUnk_0810CDF8[this->action](this);
}

void sub_08063A98(Entity* this) {
    this->action += 1;
    this->spriteSettings.b.draw = 1;
    InitAnimationForceUpdate(this, 4);
    sub_08078778(this);
}

ASM_FUNC("asm/non_matching/pina/sub_08063AC0.inc", void sub_08063AC0(Entity* this))

void sub_08063B44(Entity* this) {
    u8 tmp = gTextBox.doTextBox & 0x7f;
    if (tmp == 0) {
        this->action = 1;
        this->field_0xf = tmp;
        InitAnimationForceUpdate(this, 4);
    }
}

void sub_08063B68(Entity* this) {
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

void sub_08063C14(void) {
    Entity* entity = DeepFindEntityByID(7, 0x14);
    if (entity != NULL) {
        InitAnimationForceUpdate(entity, 8);
    }
}

void sub_08063C2C(void) {
    Entity* entity = DeepFindEntityByID(7, 0x14);
    if (entity != NULL) {
        InitAnimationForceUpdate(entity, 4);
    }
}

void sub_08063C44(void) {
    Entity* entity = DeepFindEntityByID(7, 0x14);
    if (entity != NULL) {
        InitAnimationForceUpdate(entity, 0);
    }
}

void sub_08063C5C(void) {
    Entity* entity = DeepFindEntityByID(7, 0x14);
    if (entity != NULL) {
        InitAnimationForceUpdate(entity, 9);
    }
}

void sub_08063C74(void) {
    Entity* entity = DeepFindEntityByID(7, 0x14);
    if (entity != NULL) {
        CreateSpeechBubbleExclamationMark(entity, 8, 0xffffffe8);
    }
}

void sub_08063C90(Entity* this) {
    ShowNPCDialogue(this, &gUnk_0810CE04[gSave.unk8]);
}

void sub_08063CAC(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void Pina_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.b.draw = 1;
        this->y.HALF.HI -= 4;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
