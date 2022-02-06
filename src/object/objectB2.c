#include "global.h"
#include "entity.h"
#include "functions.h"

extern u8 gUnk_02027EB4[];
extern u8 gUnk_0200D654[];

void ObjectB2(Entity* this) {
    u8* layer;

    if (this->action == 0) {
        this->action = 1;
        this->actionDelay = 0x10;
        this->direction = this->type << 3;
        if (this->collisionLayer == 2) {
            layer = gUnk_0200D654;
        } else {
            layer = gUnk_02027EB4;
        }
        this->child = (Entity*)layer;
        InitializeAnimation(this, this->type);
    }
    this->speed = this->parent->speed;
    LinearMoveUpdate(this);
    if (sub_080AE4CC((u8*)this->child, this->x.HALF.HI, this->y.HALF.HI, 9) != 0) {
        DeleteThisEntity();
    }
    if (this->speed < 0x41) {
        this->spriteSettings.draw ^= 1;

        if (--this->actionDelay == 0) {
            DeleteThisEntity();
        }
    }
    GetNextFrame(this);
}
