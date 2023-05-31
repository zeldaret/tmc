#include "entity.h"
#include "script.h"
#include "functions.h"
#include "npc.h"

static const u32 gUnk_08113D84[] = {
    0x100c0200,
    0x4,
};

void sub_0806CAF4(Entity*);
void sub_0806CB80(Entity*);
void sub_0806CBB4(Entity*);
void sub_0806CC08(Entity*);

void Gregal(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0806CAF4,
        sub_0806CB80,
        sub_0806CBB4,
        sub_0806CC08,
    };
    actionFuncs[this->type](this);
}

void sub_0806CAF4(Entity* this) {
    Entity* npc;

    if (this->action == 0) {
        this->action++;
        SetDefaultPriority(this, PRIO_MESSAGE);
        npc = CreateNPC(GREGAL, 1, 0);
        if (npc != NULL) {
            npc->parent = this;
            CopyPosition(this, npc);
            SortEntityBelow(this, npc);
        }
        npc = CreateNPC(GREGAL, 2, 0);
        if (npc != NULL) {
            npc->parent = this;
            CopyPosition(this, npc);
            SortEntityAbove(this, npc);
        }
        sub_0807DD64(this);
        AddInteractableWhenBigObject(this);
        SetInteractableObjectCollision(this, 1, (u8)gUnk_08113D84[1], gUnk_08113D84);
    }
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    GetNextFrame(this);
}

void sub_0806CB80(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->animationState = 2;
        this->frameIndex = 0;
        SetDefaultPriority(this, PRIO_MESSAGE);
    }
    if (this->parent != NULL) {
        this->frameIndex = (this->parent->frame & 3) + 0x21;
    }
}

void sub_0806CBB4(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->animationState = 2;
        SetDefaultPriority(this, PRIO_MESSAGE);
        InitializeAnimation(this, 0x11);
    }
    GetNextFrame(this);
    if (this->parent != NULL) {
        this->spriteSettings.draw = 0;
        if ((this->parent->frame & 4) != 0) {
            this->spriteSettings.draw = 1;
        }
    }
}

void sub_0806CC08(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = 1;
            SetDefaultPriority(this, PRIO_MESSAGE);
            sub_0807DD64(this);
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                this->field_0x68.HALF.HI = this->animIndex;
                InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)) + 8);
                sub_0806F118(this);
            } else {
                ExecuteScriptForEntity(this, NULL);
                HandleEntity0x82Actions(this);
                GetNextFrame(this);
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

void Gregal_MakeInteractable(Entity* this) {
    this->field_0x68.HALF.LO = GetFusionToOffer(this);
    AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
}

void Gregal_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        SetDefaultPriority(this, PRIO_MESSAGE);
        InitAnimationForceUpdate(this, 6);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
