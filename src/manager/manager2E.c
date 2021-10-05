#include "global.h"
#include "entity.h"
#include "manager.h"
#include "flags.h"
#include "functions.h"
#include "audio.h"

typedef struct {
    Manager manager;
    u8 field_0x20[0x18];
    s16 field_0x38;
    u8 field_0x3a;
    u8 field_0x3b;
    u16 field_0x3c;
    u16 field_0x3e;
} Manager2E;

extern void (*const gUnk_08108D3C[])(Manager2E*);
extern void (*const gUnk_08108D44[])(Manager2E*);

void sub_0805D2F4(Manager2E*);

extern void (*const gUnk_08108D50[])(Manager2E*);

void Manager2E_Main(Manager2E* this) {
    gUnk_08108D3C[this->manager.unk_0a](this);
}

void sub_0805D268(Manager2E* this) {
    gUnk_08108D44[this->manager.action](this);
}

void sub_0805D280(Manager2E* this) {
    if (CheckFlags(this->field_0x3c) != 0) {
        DeleteThisEntity();
    }
    if (CheckFlags(this->field_0x3e) != 0) {
        SetFlag(this->field_0x3c);
        DeleteThisEntity();
    }
    this->manager.action = 1;
    if (this->manager.unk_0e == 0) {
        this->manager.unk_0e = 0x1e;
    }
    sub_0805E3A0(this, 6);
}

void sub_0805D2C0(Manager2E* this) {
    if ((CheckFlags(this->field_0x3e) != 0) && (gUnk_03003DC0.unk_0xc < 2)) {
        this->manager.action = 2;
        if (this->manager.unk_0e == 1) {
            sub_0805D2F4(this);
        }
        sub_0805E4E0((Entity*)this, this->manager.unk_0e);
    }
}

void sub_0805D2F4(Manager2E* this) {
    if (gUnk_03003DC0.unk_0xc == 0) {
        if (this->field_0x38 != SFX_NONE) {
            SoundReq(this->field_0x38);
        } else {
            SoundReq(SFX_SECRET);
        }
        if (this->field_0x3c != 0) {
            SetFlag(this->field_0x3c);
        }
        DeleteThisEntity();
    }
}

void sub_0805D32C(Manager2E* this) {
    gUnk_08108D50[this->manager.action](this);
}

void sub_0805D344(Manager2E* this) {
    CheckFlags(this->field_0x3e);
    this->manager.action = 1;
    if (this->manager.unk_0e == 0) {
        this->manager.unk_0e = 0x1e;
    }
    this->manager.unk_0f = this->manager.unk_0e;
    sub_0805E3A0(this, 6);
}

void sub_0805D36C(Manager2E* this) {
    if (CheckFlags(this->field_0x3e) != 0) {
        this->manager.action = 2;
        this->manager.unk_0e = this->manager.unk_0f;
    }
}

void sub_0805D384(Manager2E* this) {
    if (this->manager.unk_0e != 0) {
        if (--this->manager.unk_0e == 0) {
            Sound sound;
            if (this->field_0x38 != SFX_NONE) {
                sound = this->field_0x38;
            } else {
                sound = SFX_SECRET;
            }
            SoundReq(sound);
            SetFlag(this->field_0x3c);
        }
    } else {
        if (CheckFlags(this->field_0x3e) == 0) {
            this->manager.action = 1;
            ClearFlag(this->field_0x3c);
        }
    }
}
