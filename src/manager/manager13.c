#include "area.h"
#include "manager.h"
#include "room.h"
#include "object.h"

typedef struct {
    Manager manager;
    u32 bitfield;
} Manager13;

typedef struct {
    u16 x;
    u16 y;
    u8 type;
    u8 frameIndex;
    u8 collisionLayer;
    u8 _padding;
} SpawnData;

extern SpawnData gUnk_081084C8[];
extern SpawnData gUnk_08108530[];

extern u32 CheckRectOnScreen(u16, u16, u32, u32);

/*
Keeps track in its bitfield of whether 0x10 x 0x10 rects at certain positions are on the screen.
Spawns OBJECT_1C objects that check this and unsets the value in the bitfield.
*/
void Manager13_Main(Manager13* this) {
    SpawnData* spawnData;
    u32 type2;

    if (this->manager.action == 0) {
        this->manager.action = 1;
    }
    if (gRoomControls.areaID == AREA_FESTIVAL_TOWN) {
        spawnData = gUnk_08108530;
    } else {
        spawnData = gUnk_081084C8;
    }
    type2 = 0;
    while ((spawnData->x != 0) && (type2 < 0x20)) {
        u32 bitfieldFlag = 1 << type2;
        if ((((this->bitfield & bitfieldFlag) == 0) &&
             (CheckRectOnScreen(spawnData->x, spawnData->y, 0x10, 0x10) != 0))) {
            Entity* object = CreateObject(OBJECT_1C, spawnData->type, type2);
            if (object != NULL) {
                object->frameIndex = spawnData->frameIndex;
                object->x.HALF.HI = gRoomControls.roomOriginX + spawnData->x;
                object->y.HALF.HI = gRoomControls.roomOriginY + spawnData->y;
                object->parent = (Entity*)this;
                object->field_0x80.HWORD = spawnData->x;
                object->field_0x82.HWORD = spawnData->y;
                object->collisionLayer = spawnData->collisionLayer;
                this->bitfield |= bitfieldFlag;
            }
        }
        spawnData += 1;
        type2 += 1;
    }
}
