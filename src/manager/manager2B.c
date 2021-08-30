#include "manager.h"
#include "flags.h"
#include "room.h"   
#include "functions.h"
#include "object.h"
#include "audio.h"

typedef struct {
    Manager manager;
    Entity * field_0x20;
    u8 field_0x24;
    u8 field_0x25;
    u8 field_0x26;
    u8 field_0x27;
    u8 field_0x28;
    u8 field_0x29;
    u8 field_0x2a;
    u8 field_0x2b;
    u8 field_0x2c;
    u8 field_0x2d;
    u8 field_0x2e;
    u8 field_0x2f;
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



extern void (*const gUnk_08108D30[])(Entity*);

extern u8 gEntCount;

void sub_0805D11C(Manager2B*);

void Manager2B_Main(Manager2B* this) {
    gUnk_08108D30[this->manager.action](this);
}

NONMATCH("asm/non_matching/manager2B/sub_0805D02C.inc", void sub_0805D02C(Manager2B* this)) {
    u32 counter;
    u16* objectData;
    Entity* object;
    Entity** createdObjects;

    if (CheckFlags((u32)this->field_0x3e) != 0) {
        DeleteThisEntity();
    }
    if (gEntCount < 0x44) {
        objectData = GetCurrentRoomProperty(this->manager.unk_0a);
        counter = 0;
        createdObjects = &this->field_0x20;
        while(counter < 4) {
            object = CreateObject(OBJECT_A0, objectData[2], counter);
            object->x.HALF.HI = objectData[0] + gRoomControls.roomOriginX;
            object->y.HALF.HI = objectData[1] + gRoomControls.roomOriginY;
            object->parent = (Entity*)this;
            sub_08016A30(object);
            *createdObjects = object;
            counter += 1;
            objectData += 3;
            createdObjects += 1;
        } 
        this->manager.action = 1;
        this->manager.unk_0f = 0x3c;
        this->field_0x36 = 0;
    }
}
END_NONMATCH

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

NONMATCH("asm/non_matching/manager2B/sub_0805D11C.inc", void sub_0805D11C(Manager2B* this)) {
    Entity* entity;
    Entity** createdObjects;
    u32 counter;

    counter = 0;
    createdObjects = &this->field_0x20; 
    while (counter < 4) {
        entity = *createdObjects;
        *createdObjects = NULL;
        sub_0807BA8C(TILE(entity->x.HALF.HI, entity->y.HALF.HI), entity->collisionLayer);
        DeleteEntity(entity);
        createdObjects += 1;
        counter += 1;
    }
}
END_NONMATCH
