#define NENT_DEPRECATED
#include "global.h"
#include "player.h"
#include "room.h"
#include "enemy/gyorg.h"

extern const u16 gUnk_080D28CC[];
extern Hitbox* const gUnk_080D28AC[];

void GyorgFemaleMouth(Entity* this) {
    u32 tmp;
    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    if (this->action == 0) {
        this->action = 1;
        this->spriteOrientation.flipY = 2;
        this->spriteRendering.b3 = 2;
        this->spritePriority.b0 = 7;
        this->collisionLayer = 2;
        this->animationState = 0xFF;
    }
    tmp = this->parent->animationState >> 5;
    if (tmp != this->animationState) {
        this->animationState = tmp;
        this->x.HALF.HI = gUnk_080D28CC[tmp] + gRoomControls.roomOriginX;
        this->y.HALF.HI = gUnk_080D28CC[tmp + 1] + gRoomControls.roomOriginY;
        InitializeAnimation(this, tmp >> 1);
    } else {
        GetNextFrame(this);
    }
    if (tmp & 2) {
        if (this->y.HALF.HI < gPlayerEntity.y.HALF.HI) {
            tmp++;
        }
    } else {
        if (this->x.HALF.HI < gPlayerEntity.x.HALF.HI) {
            tmp++;
        }
    }
    this->hitbox = gUnk_080D28AC[tmp];
}
