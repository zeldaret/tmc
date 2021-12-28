#include "global.h"
#include "entity.h"
#include "textbox.h"
#include "npc.h"

extern void (*const gUnk_0810C290[])(Entity*);

void NPC9(Entity* this) {
    gUnk_0810C290[this->action](this);
}

void sub_08062AF0(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = TRUE;
    InitializeAnimation(this, 0);
    sub_08078778(this);
}

void sub_08062B14(Entity* this) {
    GetNextFrame(this);
    if (this->interactType != 0) {
        this->interactType = 0;
        this->action++;
        InitializeAnimation(this, 1);
        RequestPriority(this);
    }
    sub_0806ED78(this);
}

void sub_08062B48(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 0x80) {
        MessageFromTarget(0xa01); // invalid
        this->action++;
    }
}

void sub_08062B70(Entity* this) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        InitializeAnimation(this, 2);
        this->action = 1;
        RevokePriority(this);
    }
}
