#include "manager.h"
#include "flags.h"
#include "room.h"

typedef struct {
    Manager manager;
    u8 field_0x20[0x16];
    u8 field_0x36;
    u8 field_0x37;
    s16 field_0x38;
    u16 field_0x3a;
    u8 field_0x3c;
    u8 field_0x3d;
    u16 field_0x3e;
} Manager1F;
extern void (*const gUnk_08108C94[])(Manager1F*);

void sub_0805B778(Manager1F*);

extern u16 gUnk_08108C9C[];

void Manager1F_Main(Manager1F* this) {
    gUnk_08108C94[this->manager.action](this);
}

void sub_0805B70C(Manager1F* this) {
    if (CheckFlags(this->field_0x3e) != 0) {
        this->manager.unk_0b = 1;
    }
    this->manager.action = 1;
    this->field_0x38 =
        (this->field_0x38 >> 4 & 0x3fU) | (((this->field_0x3a << 0x10) >> 0x14 & 0x3fU) << 6);
    sub_0805B778(this);
}

void sub_0805B744(Manager1F* this) {
    if (CheckFlags(this->field_0x3e) != 0) {
        if (this->manager.unk_0b == 0) {
            this->manager.unk_0b = 1;
            sub_0805B778(this);
        }
    } else {
        if (this->manager.unk_0b == 1) {
            this->manager.unk_0b = 0;
            sub_0805B778(this);
        }
    }
}

void sub_0805B778(Manager1F* this) {
    SetTileType(gUnk_08108C9C[this->manager.unk_0a * 2 + this->manager.unk_0b],
                this->field_0x38, this->field_0x36);
}