#include "global.h"
#include "entity.h"
#include "textbox.h"

extern void sub_08078778(Entity*);
extern void sub_0805E47C(Entity*);
extern void sub_0806ED78(Entity*);
extern void sub_0805E584(Entity*);

extern void (*const gUnk_0810C290[])(Entity*);

void NPC9(Entity* this) {
    gUnk_0810C290[this->action](this);
}

void sub_08062AF0(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = TRUE;
    InitializeAnimation(this, 0);
    sub_08078778(this);
}

void sub_08062B14(Entity* this) {
    GetNextFrame(this);
    if (this->interactType != 0) {
        this->interactType = 0;
        this->action++;
        InitializeAnimation(this, 1);
        sub_0805E47C(this);
    }
    sub_0806ED78(this);
}

void sub_08062B48(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.b.f3) != 0) {
        TextboxNoOverlapFollow(0xa01);
        this->action++;
    }
}

void sub_08062B70(Entity* this) {
    if ((gTextBox.doTextBox & 0x7f) == 0) {
        InitializeAnimation(this, 2);
        this->action = 1;
        sub_0805E584(this);
    }
}
