/**
 * @file floatingPlatformManager.c
 * @ingroup Managers
 *
 * @brief Spawns lists of floating platforms together.
 */
#include "manager/floatingPlatformManager.h"
#include "entity.h"
#include "room.h"

void FloatingPlatformManager_Init(FloatingPlatformManager*);
void FloatingPlatformManager_Action1(FloatingPlatformManager*);

void FloatingPlatformManager_Main(FloatingPlatformManager* this) {
    static void (*const FloatingPlatformManager_Actions[])(FloatingPlatformManager*) = {
        FloatingPlatformManager_Init,
        FloatingPlatformManager_Action1,
    };
    FloatingPlatformManager_Actions[super->action](this);
}

void FloatingPlatformManager_Init(FloatingPlatformManager* this) {
    EntityData* entityData;
    Entity* entity;

    super->action = 1;
    super->timer = 0;
    entityData = (EntityData*)GetCurrentRoomProperty(super->type);
    if (entityData == NULL) {
        DeleteThisEntity();
    }
    while (*(u8*)entityData != 0xff) {
        entity = LoadRoomEntity(entityData++);
        entity->parent = (Entity*)this;
        entity->timer = 255;
    }
}

void FloatingPlatformManager_Action1(FloatingPlatformManager* this) {
    super->timer = 0;
}
