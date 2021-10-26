#include "entity.h"
#include "room.h"

extern void (*const gUnk_08108DE0[])(Entity*);

extern Entity* LoadRoomEntity(EntityData*);

void Manager38_Main(Entity* this) {
    gUnk_08108DE0[this->action](this);
}

void sub_0805E0C0(Entity* this) {
    EntityData* entityData;
    Entity* entity;

    this->action = 1;
    this->actionDelay = 0;
    entityData = (EntityData*)GetCurrentRoomProperty(this->type);
    if (entityData == NULL) {
        DeleteThisEntity();
    }
    while (*(u8*)entityData != 0xff) {
        entity = LoadRoomEntity(entityData++);
        entity->parent = this;
        entity->actionDelay = 0xff;
    }
}

void sub_0805E0F4(Entity* this) {
    this->actionDelay = 0;
}
