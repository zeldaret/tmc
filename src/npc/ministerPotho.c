#include "entity.h"
#include "flags.h"
#include "message.h"
#include "npc.h"
#include "item.h"

void sub_08066864(Entity*);
void sub_080667E4(Entity*);
void sub_08066808(Entity*);
void sub_0806685C(Entity*);

void MinisterPotho(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080667E4,
        sub_08066808,
        sub_0806685C,
    };
    if ((this->flags & ENT_SCRIPTED) != 0) {
        sub_08066864(this);
    } else {
        actionFuncs[this->action](this);
        sub_0806ED78(this);
    }
}

void sub_080667E4(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    InitAnimationForceUpdate(this, 2);
    AddInteractableWhenBigObject(this);
}

void sub_08066808(Entity* this) {
    s32 tmp = GetAnimationStateInRectRadius(this, 0x28, 0x28);
    if (tmp < 0) {
        tmp = 2;
    } else {
        if (this->subtimer == 0) {
            this->subtimer = 16;
        } else {
            this->subtimer--;
            tmp = this->animIndex;
        }
    }
    if (sub_0806F078(this, tmp) == 0) {
        UpdateAnimationSingleFrame(this);
    }
    if (this->interactType != 0) {
        this->action = 2;
        this->interactType = 0;
    }
}

void sub_0806685C(Entity* this) {
    this->action = 1;
}

void sub_08066864(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = 1;
            this->field_0x68.HALF.LO = GetFusionToOffer(this);
            sub_0807DD50(this);
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
                sub_0806F118(this);
            } else {
                sub_0807DD94(this, NULL);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this) != 0) {
                this->action = 1;
            }
            break;
    }
}

void MinisterPotho_MakeInteractable(Entity* this) {
    AddInteractableWhenBigFuser(this, GetFusionToOffer(this));
}

void sub_08066904(Entity* this) {
    static const u16 messageIndices[] = {
        TEXT_INDEX(TEXT_PROLOGUE, 0x5a),
        TEXT_INDEX(TEXT_VAATI, 0x27),
        TEXT_INDEX(TEXT_VAATI, 0x2a),
        TEXT_INDEX(TEXT_VAATI, 0x2f),
    };
    u32 index;
    if (CheckGlobalFlag(LV1_CLEAR) == 0) {
        index = 0;
    } else if (GetInventoryValue(ITEM_GREEN_SWORD) == 0) {
        index = 1;
    } else if (GetInventoryValue(ITEM_RED_SWORD) == 0) {
        index = 2;
    } else {
        index = 3;
    }
    MessageNoOverlap(messageIndices[index], this);
}

void MinisterPotho_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 6);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
