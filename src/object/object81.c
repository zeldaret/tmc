#define NENT_DEPRECATED
#include "entity.h"
#include "player.h"
#include "functions.h"
#include "sound.h"

typedef struct {
    Entity base;
    u8 filler[0x18];
    u16 tilePos;
} Object81Entity;

void Object81_Init(Object81Entity*);
void Object81_Action1(Object81Entity*);

void Object81(Entity* this) {
    static void (*const actionFuncs[])(Object81Entity*) = {
        Object81_Init,
        Object81_Action1,
    };

    actionFuncs[this->action]((Object81Entity*)this);
}

void Object81_Init(Object81Entity* this) {
    super->action = 1;
    super->actionDelay = 0;
    this->tilePos = COORD_TO_TILE(super);
    if (gPlayerState.flags & PL_MINISH) {
        super->collisionLayer = 2;
    } else {
        super->collisionLayer = 1;
    }
    UpdateSpriteForCollisionLayer(super);
    sub_08000148(0x47, this->tilePos - 0x40, 1);
}

void Object81_Action1(Object81Entity* this) {
}
