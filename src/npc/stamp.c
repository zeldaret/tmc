#include "global.h"
#include "entity.h"
#include "textbox.h"
#include "functions.h"
#include "script.h"
#include "effects.h"
#include "npc.h"

extern void sub_08062CA4();

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
    ent->spriteSettings.draw = 1;
    InitializeAnimation(ent, 0);
    sub_08078778(ent);
}

void sub_08062BF8(Entity* ent) {
    GetNextFrame(ent);
    if (ent->interactType != 0) {
        ent->interactType = 0;
        ent->action++;
        RequestPriority(ent);
    }
    sub_0806ED78(ent);
}

void sub_08062C24(Entity* ent) {
    GetNextFrame(ent);
    if ((ent->frame & 128) != 0) {
        InitializeAnimation(ent, 4);
        MessageFromTarget(2561);
        ent->action++;
    }
}

void sub_08062C54(Entity* ent) {
    if ((gMessage.doTextBox & 127) == 0) {
        ent->action = 1;
        InitializeAnimation(ent, 0);
        RevokePriority(ent);
    }
}

void sub_08062C7C(Entity* ent) {
    ent->action = 1;
    sub_0807DD64(ent);
    InitializeAnimation(ent, 0);
    CreateFx(ent, FX_SWEAT, 0);
    sub_08062CA4(ent);
}

void sub_08062CA4(Entity* ent) {
    ExecuteScriptForEntity(ent, NULL);
    HandleEntity0x82Actions(ent);
    GetNextFrame(ent);
}

void sub_08062CBC(Entity* ent) {
    u32 uVar1 = CheckKinstoneFused(44);
    ShowNPCDialogue(ent, &gUnk_0810C2E4[(-uVar1 | uVar1) >> 31]);
}

void sub_08062CE0(Entity* ent) {
    if (ent->action == 0) {
        ent->action = 1;
    }
}
