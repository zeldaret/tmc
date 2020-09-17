#include "global.h"
#include "manager.h"
#include "flags.h"
#include "entity.h"
#include "room.h"

typedef struct {
    Manager manager;
    u8 unk_20[0x12];
    u16 unk_32;
    u8 unk_34[2];
    u8 unk_36;
    u8 unk_37;
    u16 unk_38;
    u16 unk_3a;
    u16 unk_3c;
    u16 unk_3e;
} Manager20;

extern void DeleteManager(Manager20*);

void sub_0805B7A0(Manager20* this) {
    Entity* tmp = CreateObject(this->manager.unk_0e, this->manager.unk_0a, this->manager.unk_0b);
    if (!tmp) return;
    tmp->field_0x86.HWORD = this->unk_3e;
    if (CheckFlags(this->unk_3e)) {
        tmp->x.HALF.HI = this->unk_36 | (this->unk_37&0xF)<<8;//r1
        tmp->y.HALF.HI = this->unk_3c & 0xFFF;
        tmp->collisionLayer = this->unk_3c >> 0xC;
    } else {
        tmp->x.HALF.HI = this->unk_38;
        tmp->y.HALF.HI = this->unk_3a;
        tmp->collisionLayer = this->unk_37>>4;
    }
    tmp->x.HALF.HI += gRoomControls.roomOriginX;
    tmp->y.HALF.HI += gRoomControls.roomOriginY;
    DeleteManager(this);
}
