#include "manager.h"
#include "flags.h"
#include "room.h"
#include "object.h"

typedef struct {
    Manager manager;
    u8 field_0x20[0x15];
    u8 field_0x35;
    u8 field_0x36;
    u8 field_0x37;
    s16 field_0x38;
    s16 field_0x3a;
    u16 field_0x3c;
    u16 field_0x3e;
} Manager35;

void sub_0805DC9C(Manager35*);
void sub_0805DCC8(Manager35*);
void sub_0805DD24(Manager35*);
void sub_0805DD68(Manager35*);

void Manager35_Main(Manager35* this) {
    static void (*const actionFuncs[])(Manager35*) = {
        sub_0805DC9C,
        sub_0805DCC8,
        sub_0805DD24,
        sub_0805DD68,
    };
    actionFuncs[this->manager.action](this);
}

void sub_0805DC9C(Manager35* this) {
    if (CheckFlags(this->field_0x3c) != 0) {
        DeleteThisEntity();
    }
    if (CheckFlags(this->field_0x3e) != 0) {
        SetFlag(this->field_0x3c);
        DeleteThisEntity();
    }
    this->manager.action = 1;
}

void sub_0805DCC8(Manager35* this) {
    Entity* object;

    if (CheckFlags(this->field_0x3e) != 0) {
        this->manager.action = 2;
        this->manager.unk_0e = this->field_0x35;
        if (this->manager.unk_0e == 0) {
            this->manager.unk_0e = 0x1e;
        }
        this->manager.parent = (Manager*)gRoomControls.camera_target;
        object = CreateObject(OBJECT_69, 0, 0);
        if (object != NULL) {
            object->x.HALF.HI = this->field_0x38 + gRoomControls.origin_x;
            object->y.HALF.HI = this->field_0x3a + gRoomControls.origin_y;
            *(Entity**)this->manager.unk_18 = object;
            gRoomControls.camera_target = object;
            RequestPriorityDuration(object, 0x1e);
        }
    }
}

void sub_0805DD24(Manager35* this) {
    RequestPriorityDuration(0, 8);
    if ((gRoomControls.scroll_flags & 4) == 0 && --this->manager.unk_0e == 0) {
        this->manager.action = 3;
        SetFlag(this->field_0x3c);
        if (this->field_0x36 == 0) {
            this->field_0x36 = 1;
        }
    }
}

void sub_0805DD68(Manager35* this) {
    RequestPriorityDuration(0, 8);
    if (this->field_0x36 != 0) {
        if (--this->field_0x36 == 0) {
            gRoomControls.camera_target = (Entity*)this->manager.parent;
        }
    } else {
        if ((gRoomControls.scroll_flags & 4) == 0) {
            Entity* entity = *(Entity**)this->manager.unk_18;
            if (entity != NULL) {
                DeleteEntity(entity);
            }
            DeleteThisEntity();
        }
    }
}
