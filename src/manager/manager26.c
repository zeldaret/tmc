#include "global.h"
#include "manager.h"
#include "entity.h"
#include "flags.h"
#include "room.h"
#include "object.h"
#include "functions.h"

typedef struct {
    Manager manager;
    u8 unk_20[0x8];
    u8 unk_28;
    u8 unk_29;
    u16 unk_2a;
} Manager26;

void sub_0805C6D0(Manager26*);
void sub_0805C7A0(Manager26*);
void sub_0805C7C4(Manager26*);

void (*const gUnk_08108D04[])(Manager26*) = { sub_0805C6D0, sub_0805C7A0, sub_0805C7C4 };

void sub_0805C7CC(Manager26*);

void Manager26_Main(Manager26* this) {
    gUnk_08108D04[this->manager.action](this);
}

void sub_0805C6D0(Manager26* this) {
    UnkManager26HelperStruct* tmp = GetCurrentRoomProperty(this->manager.unk_0a);
    if (!tmp) {
        DeleteManager(&this->manager);
        return;
    }
    this->unk_2a = gRoomControls.roomOriginY + this->manager.unk_0e;
    this->manager.unk_0e = 0;
    this->unk_28 = 0;
    this->unk_29 = 0;
    while (tmp->unk_00 != 0xFF && this->manager.unk_0e < 0x20) {
        Entity* obj;
        obj = CreateObject(PUSHABLE_FURNITURE, tmp->unk_01, tmp->unk_02);
        if (obj) {
            obj->actionDelay = tmp->unk_03;
            obj->x.HALF.HI = gRoomControls.roomOriginX + tmp->unk_04;
            obj->y.HALF.HI = gRoomControls.roomOriginY + tmp->unk_06;
            obj->parent = (Entity*)this;
            obj->collisionLayer = 1;
            obj->field_0x82.HALF.HI = this->manager.unk_0e;
            obj->field_0x82.HALF.LO = tmp->unk_00;
            this->unk_29 |= 1 << this->manager.unk_0e;
        }
        tmp++;
        this->manager.unk_0e++;
    }
    if (this->manager.unk_0b == 0xFF) {
        this->manager.action = 2;
    } else {
        if (CheckLocalFlag(this->manager.unk_0b)) {
            this->manager.action = 2;
        } else {
            this->manager.action = 1;
        }
    }
}

void sub_0805C7A0(Manager26* this) {
    if (this->unk_28 == this->unk_29) {
        this->manager.action = 2;
        SetLocalFlag(this->manager.unk_0b);
    }
    sub_0805C7CC(this);
}

void sub_0805C7C4(Manager26* this) {
    sub_0805C7CC(this);
}

void sub_0805C7CC(Manager26* this) {
    if (gPlayerState.flags & PL_IS_MINISH) {
        if (gPlayerEntity.y.HALF.HI < this->unk_2a + 0x10) {
            this->manager.unk_0d = 1;
        } else {
            this->manager.unk_0d = 0;
        }
    } else {
        if (gPlayerEntity.y.HALF.HI < this->unk_2a + 0x28) {
            this->manager.unk_0d = 3;
        } else {
            this->manager.unk_0d = 2;
        }
    }
}
