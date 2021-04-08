#include "global.h"
#include "entity.h"
#include "player.h"
#include "structures.h"
#include "script.h"
#include "random.h"
#include "audio.h"
#include "functions.h"

extern void (*gUnk_081140D4[])(Entity*);

extern u16 gUnk_081140CC[];

void BigGoron(Entity* this) {
    gUnk_081140D4[this->type](this);
}

void sub_0806CF30(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->subAction = 1;
        this->field_0x68.HWORD = this->x.HALF.HI;
        sub_0805E3A0(this, 2);
        sub_0806D0B0(this);
        sub_0807DD64(this);
    } else {
        ExecuteScriptForEntity(this, NULL);
        HandleEntity0x82Actions(this);
    }

    switch (this->subAction) {
        case 0:
        case 1:
            if (gScreenTransition.frameCount % 4 == 0) {
                if (gPlayerEntity.x.HALF.HI < this->x.HALF.HI && this->field_0x68.HWORD - 32 < this->x.HALF.HI) {
                    this->x.HALF.HI--;
                }
                if (gPlayerEntity.x.HALF.HI > this->x.HALF.HI && this->field_0x68.HWORD + 32 > this->x.HALF.HI) {
                    this->x.HALF.HI++;
                }
            }
            break;
        case 2:
            if (--this->actionDelay == 0) {
                u32 uVar2 = Random();
                SoundReq(gUnk_081140CC[uVar2 % 4]);
                this->actionDelay = ((u8)uVar2 & 7) * 16;
                this->actionDelay += 128;
            }
            break;
        case 3:
            break;
    }
    sub_0806D02C(this);
}

void sub_0806D00C(Entity* this) {
    Entity* pEVar1;

    pEVar1 = FindEntity(7, 76, 7, 0, 0);
    if (pEVar1 != NULL) {
        this->parent = pEVar1;
    }
}
