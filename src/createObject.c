#include "global.h"
#include "entity.h"
#include "coord.h"
#include "room.h"
#include "createObject.h"
#include "object.h"
#include "effects.h"

Entity* CreateObject(u32 subtype, u32 form, u32 parameter) {
    Entity* entity;

    entity = GetEmptyEntity();
    if (entity != NULL) {
        entity->kind = 6;
        entity->id = subtype;
        entity->type = form;
        entity->type2 = parameter;
        AppendEntityToList(entity, 6);
    }
    return entity;
}

Entity* CreateObjectWithParent(Entity* parentEnt, u32 subtype, u32 form, u32 parameter) {
    Entity* ent;

    ent = CreateObject(subtype, form, parameter);
    if (ent != NULL) {
        ent->parent = parentEnt;
        CopyPosition(parentEnt, ent);
    }

    return ent;
}

Entity* CreateFx(Entity* parentEnt, u32 form, u32 parameter) {
    return CreateObjectWithParent(parentEnt, SPECIAL_FX, form, parameter);
}

void CreateDust(Entity* parent) {
    CreateFx(parent, FX_DEATH, 0);
}

void CreateDustAt(s32 xOff, s32 yOff, u32 layer) {
    Entity* ent;

    ent = CreateObject(SPECIAL_FX, FX_DEATH, 0);
    if (ent != NULL) {
        ent->x.HALF.HI = gRoomControls.roomOriginX + xOff;
        ent->y.HALF.HI = gRoomControls.roomOriginY + yOff;
        ent->collisionLayer = layer;
    }
}

void CreateDustSmall(Entity* parent) {
    CreateFx(parent, FX_DASH, 0);
}

void CreateExplosionBroken(Entity* parent) {
    CreateFx(parent, FX_6, 0);
}

void CreateWaterSplash(Entity* parent) {
    CreateFx(parent, FX_WATER_SPLASH, 0);
}

Entity* sub_080A2A20(Entity* parent, u32 form, u32 parameter) {
    Entity* ent;

    ent = CreateObjectWithParent(parent, GROUND_ITEM, form, parameter);
    if (ent != NULL) {
        ent->actionDelay = 5;
    }
    return ent;
}

Entity* sub_080A2A3C(Entity* parent, u32 form, u32 subtype, u32 param_4) {
    Entity* ent;

    ent = CreateObjectWithParent(parent, GROUND_ITEM, form, subtype);
    if (ent != NULL) {
        ent->actionDelay = 5;
        ent->field_0x86.HWORD = param_4;
    }
    return ent;
}

Entity* CreateWaterTrace(Entity* parent) {
    Entity* ent;

    ent = CreateFx(parent, FX_RIPPLE, 0);
    if (ent != NULL) {
        ent->spritePriority.b0 = 7;
    }
    return ent;
}
