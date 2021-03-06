#include "global.h"
#include "entity.h"
#include "room.h"
#include "object.h"

void sub_080A29C8(s32 xOff, s32 yOff, u32 layer) {
    Entity* pEVar1;

    pEVar1 = CreateObject(SPECIAL_FX, 2, 0);
    if (pEVar1 != NULL) {
        pEVar1->x.HALF.HI = gRoomControls.roomOriginX + xOff;
        pEVar1->y.HALF.HI = gRoomControls.roomOriginY + yOff;
        pEVar1->collisionLayer = layer;
    }
}

void sub_080A29FC(Entity* parent) {
    CreateFx(parent, 0x11, 0);
}

void sub_080A2A08(Entity* parent) {
    CreateFx(parent, 0x6, 0);
}

void sub_080A2A14(Entity* parent) {
    CreateFx(parent, 0xb, 0);
}

Entity* sub_080A2A20(Entity* parent, u32 form, u32 parameter) {
    Entity* pEVar1;

    pEVar1 = CreateObjectWithParent(parent, GROUND_ITEM, form, parameter);
    if (pEVar1 != NULL) {
        pEVar1->actionDelay = 5;
    }
    return pEVar1;
}

Entity* sub_080A2A3C(Entity* parent, u32 form, u32 subtype, u32 param_4) {
    Entity* ent;

    ent = CreateObjectWithParent(parent, GROUND_ITEM, form, subtype);
    if (ent != NULL) {
        ent->actionDelay = 5;
        *(u32*)(&ent->field_0x86) = param_4;
    }
    return ent;
}

Entity* sub_080A2A64(Entity* parent) {
    Entity* pEVar1;

    pEVar1 = CreateFx(parent, 0x20, 0);
    if (pEVar1 != NULL) {
        pEVar1->spritePriority.b0 = 7;
    }
    return pEVar1;
}
