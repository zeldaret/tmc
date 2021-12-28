#include "asm.h"
#include "entity.h"
#include "functions.h"

extern u32 gUnk_03000BF8;
extern u32 gUnk_03000BF6;

void Manager2D_Main(Entity* this) {
    SetTile(0x4014, 0x5c3, 1);
    if ((gRoomControls.roomOriginY + 200 < gPlayerEntity.y.HALF.HI) &&
        ((u32)(gPlayerEntity.x.HALF.HI - gRoomControls.roomOriginX) - 0x30 < 0x11)) {
        gPlayerEntity.collisionLayer = 3;
        UpdateSpriteForCollisionLayer(&gPlayerEntity);
    }
    DeleteManager((Manager*)this);
}
