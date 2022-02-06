#include "manager.h"
#include "flags.h"
#include "room.h"
#include "functions.h"

typedef struct {
    Manager manager;
    u8 field_0x20;
    u8 field_0x21;
    u8 field_0x22;
    u8 field_0x23;
    u8 field_0x24;
    u8 field_0x25;
    u8 field_0x26;
    u8 field_0x27;
    u16 field_0x28;
    u8 field_0x2a;
    u8 field_0x2b;
    u8 field_0x2c;
    u8 field_0x2d;
    u8 field_0x2e;
    u8 field_0x2f;
    u16* field_0x30;
    u8 field_0x34;
    u8 field_0x35;
    u8 field_0x36;
    u8 field_0x37;
    u16 field_0x38;
    u16 field_0x3a;
    u8 field_0x3c;
    u8 field_0x3d;
    u16 field_0x3e;
} ManagerD;

extern void (*const gUnk_08108308[])(ManagerD*);

void ManagerD_Main(ManagerD* this) {
    gUnk_08108308[this->manager.action](this);
}

void sub_08058DE8(ManagerD* this) {
    u16* puVar2;
    u16* puVar3;
    if (CheckFlags(this->field_0x3e) != 0) {
        DeleteThisEntity();
    } else {
        this->manager.action = 1;
        puVar2 = (u16*)GetLayerByIndex(this->field_0x3a);
        puVar3 = (this->field_0x38 + 2) + puVar2;
        this->field_0x30 = puVar3;
        this->field_0x28 = *puVar3;
    }
}

void sub_08058E18(ManagerD* this) {
    if (this->field_0x28 != *this->field_0x30) {
        this->manager.action += 1;
        this->manager.unk_0e = 0xf;
    }
}

void sub_08058E34(ManagerD* this) {
    if (--this->manager.unk_0e == 0) {
        SetFlag(this->field_0x3e);
        if (this->manager.unk_0a != 0) {
            LoadRoomEntityList((EntityData*)GetCurrentRoomProperty(this->manager.unk_0a));
        }
        DeleteManager((Manager*)this);
    }
}
