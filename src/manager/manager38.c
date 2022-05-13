#include "entity.h"
#include "room.h"

void sub_0805E0C0(Entity*);
void sub_0805E0F4(Entity*);

void Manager38_Main(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0805E0C0,
        sub_0805E0F4,
    };
    actionFuncs[this->action](this);
}

void sub_0805E0C0(Entity* this) {
    EntityData* entityData;
    Entity* entity;

    this->action = 1;
    this->timer = 0;
    entityData = (EntityData*)GetCurrentRoomProperty(this->type);
    if (entityData == NULL) {
        DeleteThisEntity();
    }
    while (*(u8*)entityData != 0xff) {
        entity = LoadRoomEntity(entityData++);
        entity->parent = this;
        entity->timer = 0xff;
    }
}

void sub_0805E0F4(Entity* this) {
    this->timer = 0;
}
