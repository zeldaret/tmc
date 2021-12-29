#include "global.h"
#include "sound.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"

extern u32 sub_0805C920(Entity*);

void sub_0805C874(Entity*);
void sub_0805C894(Entity*);
void sub_0805C8B4(Entity*);
void sub_0805C908(Entity*);

void (*const gUnk_08108D10[])(Entity*) = { sub_0805C874, sub_0805C894, sub_0805C8B4, sub_0805C908 };

const u8 gUnk_08108D20[] = { 0x6F, 0x70, 0x71, 0x72, 0x71, 0x70 };

void Manager27_Main(Entity* this) {

    gUnk_08108D10[this->action](this);
    if (CheckLocalFlagByBank(0x300, this->type + 0x67)) {
        gScreenTransition.armos_data.field_0xac |= (1 << this->type);
    } else {
        gScreenTransition.armos_data.field_0xac &= ~(1 << this->type);
    }
}

void sub_0805C874(Entity* this) {
    u8 bVar1;

    if (sub_0805C920(this)) {
        this->action = 2;
    } else {
        this->action = 1;
    }

    this->actionDelay = 1;
    this->field_0xf = 0;
}

void sub_0805C894(Entity* this) {
    if (sub_0805C920(this)) {
        this->action = 2;
        this->actionDelay = 1;
        SoundReq(SFX_EM_ARMOS_ON);
    }
}

void sub_0805C8B4(Entity* this) {
    u8 bVar1;
    int iVar2;

    if (--this->actionDelay == 0) {
        this->actionDelay = 0x14;

        if (5 < ++this->field_0xf) {
            this->field_0xf = 0;
        }
        LoadPaletteGroup(gUnk_08108D20[this->field_0xf]);
        if (this->field_0xf == 0) {
            SoundReq(SFX_EM_ARMOS_ON);
        }
    }
    if (sub_0805C920(this) == 0) {
        this->action = 3;
    }
}

void sub_0805C908(Entity* this) {
    if (this->field_0xf == 0) {
        this->action = 1;
    } else {
        sub_0805C8B4(this);
    }
}

u32 sub_0805C920(Entity* this) {
    return CheckLocalFlagByBank(0x300, this->type + 0x67);
}
