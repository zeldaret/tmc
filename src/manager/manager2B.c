#include "manager.h"
#include "flags.h"
#include "room.h"
#include "functions.h"
#include "object.h"
#include "audio.h"

typedef struct {
    Manager manager;
    Entity* field_0x20[4];
    u8 field_0x30;
    u8 field_0x31;
    u8 field_0x32;
    u8 field_0x33;
    u8 field_0x34;
    u8 field_0x35;
    u8 field_0x36;
    u8 field_0x37;
    u8 field_0x38;
    u8 field_0x39;
    u8 field_0x3a;
    u8 field_0x3b;
    u8 field_0x3c;
    u8 field_0x3d;
    u16 field_0x3e;
} Manager2B;

extern void (*const gUnk_08108D30[])(Manager2B*);

extern u8 gEntCount;

void sub_0805D11C(Manager2B*);

void Manager2B_Main(Manager2B* this) {
    gUnk_08108D30[this->manager.action](this);
}

void sub_0805D02C(Manager2B* this) {
    u32 counter;
    u16* objectData;
    Entity* object;
    if (CheckFlags(this->field_0x3e)) {
        DeleteThisEntity();
    }
    if (gEntCount < 0x44) {
        objectData = GetCurrentRoomProperty(this->manager.unk_0a);
        counter = 0;
        while (counter < 4) {
            object = CreateObject(ANGRY_STATUE, objectData[2], counter);
            object->x.HALF.HI = objectData[0] + gRoomControls.roomOriginX;
            object->y.HALF.HI = objectData[1] + gRoomControls.roomOriginY;
            object->parent = (Entity*)this;
            sub_08016A30(object);
            this->field_0x20[counter] = object;
            counter += 1;
            objectData += 3;
        }
        this->manager.action = 1;
        this->manager.unk_0f = 0x3c;
        this->field_0x36 = 0;
    }
}

void sub_0805D0C4(Manager2B* this) {
    if (--this->manager.unk_0f == 0) {
        this->manager.unk_0f = 0xb4;
    }
    if (this->field_0x36 == 0xf) {
        this->manager.action = 2;
        this->manager.unk_0e = 8;
        SoundReq(SFX_SECRET);
        sub_0805D11C(this);
    }
    this->field_0x36 = 0;
}

void sub_0805D0FC(Manager2B* this) {
    if (--this->manager.unk_0e == 0) {
        SetFlag(this->field_0x3e);
        DeleteManager(&this->manager);
    }
}

void sub_0805D11C(Manager2B* this) {
    Entity** entity_iterator;
    u32 counter;
    for (counter = 0; counter < 4; counter++) {
        Entity* entity;
        entity_iterator = &this->field_0x20[counter];
        entity = *entity_iterator;
        *entity_iterator = NULL;
        sub_0807BA8C(COORD_TO_TILE(entity), entity->collisionLayer);
        DeleteEntity(entity);
    }
}
