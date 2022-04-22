
#include "manager.h"
#include "room.h"
#include "functions.h"
#include "flags.h"
#include "object.h"
#include "game.h"

typedef struct {
    Manager manager;
    u16 field_0x20;
    u16 field_0x22;
    u8 field_0x24[0x12];
    u8 field_0x36;
    u8 field_0x37;
    u16 field_0x38;
    u16 field_0x3a;
    u16 field_0x3c;
    u16 field_0x3e;
} Manager23;

void sub_0805BE94(Manager23*);
void sub_0805BEC4(Manager23*);
void sub_0805BC8C(Manager23*);
void sub_0805BCD4(Manager23*);
void sub_0805BD5C(Manager23*);
void sub_0805BDB4(Manager23*);

void sub_0805BE70(Manager23*, u32);

void Manager23_Main(Manager* this) {
    static void (*const gUnk_08108CCC[])(Manager23*) = {
        sub_0805BC8C,
        sub_0805BCD4,
        sub_0805BD5C,
        sub_0805BDB4,
    };
    gUnk_08108CCC[this->unk_0a]((Manager23*)this);
}

void sub_0805BC8C(Manager23* this) {
    if (this->manager.action == 0) {
        this->manager.action = 1;
        this->manager.unk_0f = 0x1e;
        if (CheckFlags(this->field_0x3e) != 0) {
            sub_0805BE94(this);
        }
    }
    if ((CheckFlags(this->field_0x3e) != 0) && (--this->manager.unk_0f == 0)) {
        sub_0805BEC4(this);
        sub_0805BE94(this);
    }
}

void sub_0805BCD4(Manager23* this) {
    switch (this->manager.action) {
        case 0:
            this->manager.action = 1;
            this->manager.unk_0f = 0x1e;
            if (CheckFlags(this->field_0x3e) != 0) {
                sub_0805BE70(this, 0x75);
                this->manager.action = 2;
            }
            break;
        case 1:
            if (CheckFlags(this->field_0x3e) != 0 && --this->manager.unk_0f == 0) {
                this->manager.unk_0f = 0x1e;
                sub_0805BEC4(this);
                sub_0805BE70(this, 0x76);
            }
            break;
        case 2:
            if (CheckFlags(this->field_0x3e) == 0 && --this->manager.unk_0f == 0) {
                this->manager.unk_0f = 0x1e;
                sub_0805BE70(this, 0x75);
            }
            break;
    }
}

void sub_0805BD5C(Manager23* this) {
    if (this->manager.action == 0) {
        if (CheckFlags(this->field_0x3e) != 0) {
            sub_0805BE94(this);
        }
        this->field_0x20 =
            ((s16)this->field_0x38 >> 4 & 0x3fU) | ((s32)((this->field_0x3a << 0x10) >> 0x14 & 0x3fU) << 6);
        this->manager.action = 1;
    } else {
        if (GetTileType(this->field_0x20, this->manager.unk_0b) == 0x76) {
            SetFlag(this->field_0x3e);
            ChangeLightLevel(this->manager.unk_0e);
            DeleteThisEntity();
        }
    }
}

void sub_0805BDB4(Manager23* this) {
    u8 bVar1;
    u16 uVar2;
    u32 uVar3;

    switch (this->manager.action) {
        case 0:
            if (CheckFlags(this->field_0x3e) != 0 || CheckFlags(this->field_0x3c) != 0) {
                sub_0805BE94(this);
            }
            this->field_0x20 =
                ((s16)this->field_0x38 >> 4 & 0x3fU) | (((s32)(this->field_0x3a << 0x10) >> 0x14 & 0x3fU) << 6);
            this->manager.action = 1;
            break;

        case 1:
            if (GetTileType(this->field_0x20, this->manager.unk_0b) != 0x76) {
                return;
            }
            SetFlag(this->field_0x3e);
            ChangeLightLevel(this->manager.unk_0e);
            this->manager.action = 2;
            this->field_0x22 = this->field_0x36 * 0x3c;
            return;
            break;

        default:
            if (--this->field_0x22 == 0) {
                CreateDustAt(*(s16*)&this->field_0x38, *(s16*)&this->field_0x3a, this->manager.unk_0b);
                ClearFlag(this->field_0x3e);
                RestorePrevTileEntity(this->field_0x20, this->manager.unk_0b);
                ChangeLightLevel(-this->manager.unk_0e);
                this->manager.action = 1;
            } else {
                if (CheckFlags(this->field_0x3c) == 0) {
                    return;
                }
                sub_0805BEC4(this);
                DeleteThisEntity();
            }
            break;
    }
}

void sub_0805BE70(Manager23* this, u32 param_2) {
    SetTileType(param_2,
                ((this->field_0x38 << 0x10) >> 0x14 & 0x3fU) | ((this->field_0x3a << 0x10) >> 0x14 & 0x3fU) << 6,
                this->manager.unk_0b);
}

void sub_0805BE94(Manager23* this) {
    SetTileType(0x76, ((this->field_0x38 << 0x10) >> 0x14 & 0x3fU) | ((this->field_0x3a << 0x10) >> 0x14 & 0x3fU) << 6,
                this->manager.unk_0b);
    ChangeLightLevel(this->manager.unk_0e);
    DeleteThisEntity();
}

void sub_0805BEC4(Manager23* this) {
    Entity* object = CreateObject(OBJECT_2A, 1, 0);
    if (object != NULL) {
        *(s8*)(&object->flags + 1) = ((*(s8*)(&object->flags + 1)) & (-0x10)) | 3;
        object->x.HALF.HI = this->field_0x38 + gRoomControls.origin_x;
        object->y.HALF.HI = this->field_0x3a + gRoomControls.origin_y;
        object->collisionLayer = this->manager.unk_0b;
        object->spritePriority.b0 = 2;
    }
}
