#include "global.h"
#include "entity.h"
#include "npc.h"
#include "textbox.h"

extern void sub_08064DE4(Entity*);
extern void sub_08064D78(Entity*);
extern void sub_08064EE8(Entity*);

extern void (*const gUnk_0810FBFC[])(Entity*);

void TingleSiblings(Entity* this) {
    if ((this->flags & 2) != 0) {
        sub_08064DE4(this);
    } else {
        sub_08064D78(this);
    }
}

void sub_08064D78(Entity* this) {
    gUnk_0810FBFC[this->action](this);
}

void sub_08064D90(Entity* this) {
    InitAnimationForceUpdate(this, 2);
    this->field_0xf = 1;
}

void sub_08064DA0(Entity* this) {
    sub_08064EE8(this);
    if (this->interactType != 0) {
        this->action = 2;
        InitAnimationForceUpdate(this, 6);
        TextboxNoOverlapFollow(0);
    }
}

void sub_08064DCC(Entity* this) {
    sub_08064EE8(this);
    InitAnimationForceUpdate(this, 2);
    this->action = 1;
}
/*
void sub_08064DE4(Entity* this) {
    switch (this->action) {
        case 0:
                this->action = 1;
                this->spriteSettings = this->spriteSettings & 0xfc | 1;
                this->animationState = '\x04';
                sub_0807DD50(this);
            break;
        case 1:
        if (this->interactType == 2) {
            this->action = 2;
            this->interactType = 0;
            GetFacingDirection(this, &gPlayerEntity);
            InitAnimationForceUpdate(this, sub_0806F5A4());
            sub_0806F118(this);
        } else {
            sub_0807DD94(this, 0);
        }
            break;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
                sub_0801E99C(this);
            }
            break;
    }
    {
        u8 bVar1 = this->frames.all;
        u8 bVar5 = bVar1 & 0xf;
        this->frames.all = bVar5 ^ bVar1;
        if (bVar1 & 0xf) {
            Entity* fx = CreateFx(this, bVar5 == 3 ? 0x2a : 0x29, 0);
            if (fx && bVar5 == 2) {
                fx->spriteSettings.b.flipX = 1;
            }
        }
    }
}*/
