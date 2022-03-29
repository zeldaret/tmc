#include "entity.h"
#include "flags.h"
#include "message.h"
#include "npc.h"
#include "item.h"

extern void (*const gUnk_08110644[])(Entity*);
void sub_08066864(Entity*);

extern u16 gUnk_08110650[];

void MinisterPotho(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        sub_08066864(this);
    } else {
        gUnk_08110644[this->action](this);
        sub_0806ED78(this);
    }
}

void sub_080667E4(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    InitAnimationForceUpdate(this, 2);
    sub_08078778(this);
}

void sub_08066808(Entity* this) {
    s32 tmp = GetAnimationStateInRectRadius(this, 0x28, 0x28);
    if (tmp < 0) {
        tmp = 2;
    } else {
        if (this->subtimer == 0) {
            this->subtimer = 0x10;
        } else {
            this->subtimer -= 1;
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
            this->field_0x68.HALF.LO = sub_0801E99C(this);
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

void sub_080668F0(Entity* this) {
    sub_08078784(this, sub_0801E99C(this));
}

void sub_08066904(Entity* this) {
    u32 index;
    if (CheckGlobalFlag(2) == 0) {
        index = 0;
    } else if (GetInventoryValue(ITEM_GREEN_SWORD) == 0) {
        index = 1;
    } else if (GetInventoryValue(ITEM_RED_SWORD) == 0) {
        index = 2;
    } else {
        index = 3;
    }
    MessageNoOverlap(gUnk_08110650[index], this);
}

void MinisterPotho_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 6);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
