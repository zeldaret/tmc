#include "global.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"

extern u32 sub_0805C920(Entity*);
extern void LoadPaletteGroup(u32);
extern void (*const gUnk_08108D10[])(Entity*);

extern u8 gUnk_08108D20[];

void Manager27(Entity* this) {

    gUnk_08108D10[this->action](this);
    if (CheckLocalFlagByOffset(0x300, this->entityType.form + 0x67)) {
        gScreenTransition.field_0xac |= (1 << (this->entityType).form);
    } else {
        gScreenTransition.field_0xac &= ~(1 << (this->entityType).form);
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
        PlaySFX(0x11a);
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
            PlaySFX(0x11a);
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
    return CheckLocalFlagByOffset(0x300, (this->entityType).form + 0x67);
}
