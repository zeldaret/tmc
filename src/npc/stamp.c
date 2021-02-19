#include "global.h"
#include "entity.h"
#include "textbox.h"
#include "functions.h"
#include "script.h"

extern void sub_08078778(Entity*);
extern void sub_0805E47C(Entity*);
extern void sub_0805E584();
extern void sub_0807DD64();
extern void sub_08062CA4();
extern void sub_0807DDE4();
extern u32 CheckKinstoneFused();

extern void (*gStampBehaviors1[4])(Entity*);
extern void (*gStampBehaviors2[2])(Entity*);

extern Dialog gUnk_0810C2E4[2];

void Stamp(Entity* ent) {
    if ((ent->flags & 2) != 0) {
        gStampBehaviors2[ent->action](ent);
    } else {
        gStampBehaviors1[ent->action](ent);
    }
}

void sub_08062BD4(Entity* ent) {
    ent->action = 1;
    ent->spriteSettings.b.draw = 1;
    InitializeAnimation(ent, 0);
    sub_08078778(ent);
}

void sub_08062BF8(Entity* ent) {
    GetNextFrame(ent);
    if (ent->interactType != 0) {
        ent->interactType = 0;
        ent->action++;
        sub_0805E47C(ent);
    }
    sub_0806ED78(ent);
}

void sub_08062C24(Entity* ent) {
    GetNextFrame(ent);
    if ((ent->frames.all & 128) != 0) {
        InitializeAnimation(ent, 4);
        TextboxNoOverlapFollow(2561);
        ent->action++;
    }
}

void sub_08062C54(Entity* ent) {
    if ((gTextBox.doTextBox & 127) == 0) {
        ent->action = 1;
        InitializeAnimation(ent, 0);
        sub_0805E584(ent);
    }
}

void sub_08062C7C(Entity* ent) {
    ent->action = 1;
    sub_0807DD64(ent);
    InitializeAnimation(ent, 0);
    CreateFx(ent, 37, 0);
    sub_08062CA4(ent);
}

void sub_08062CA4(Entity* ent) {
    sub_0807DDAC(ent, NULL);
    sub_0807DDE4(ent);
    GetNextFrame(ent);
}

void sub_08062CBC(Entity* ent) {
    u32 uVar1;

    uVar1 = CheckKinstoneFused(44);
    ShowNPCDialogue(ent, &gUnk_0810C2E4[(-uVar1 | uVar1) >> 31]);
}

void sub_08062CE0(Entity* ent) {
    if (ent->action == 0) {
        ent->action = 1;
    }
}
