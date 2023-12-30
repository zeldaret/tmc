/**
 * @file gyorgFemaleMouth.c
 * @ingroup Enemies
 *
 * @brief Gyorg Female Mouth enemy
 */
#include "enemy/gyorg.h"
#include "player.h"
#include "room.h"

extern const Hitbox gUnk_080D28DC;
extern const Hitbox gUnk_080D28E4;
extern const Hitbox gUnk_080D28EC;
extern const Hitbox gUnk_080D28F4;
extern const Hitbox gUnk_080D28FC;
extern const Hitbox gUnk_080D2904;
extern const Hitbox gUnk_080D290C;
extern const Hitbox gUnk_080D2914;

const Hitbox* const gUnk_080D28AC[] = {
    &gUnk_080D28DC, &gUnk_080D28E4, &gUnk_080D28EC, &gUnk_080D28F4,
    &gUnk_080D28FC, &gUnk_080D2904, &gUnk_080D290C, &gUnk_080D2914,
};

const u16 gUnk_080D28CC[] = {
    0x200, 0x1C8, 0x248, 0x210, 0x200, 0x258, 0x1b8, 0x210,
};

const Hitbox gUnk_080D28DC = { 0xE0, 0xF4, { 0, 0, 0, 0 }, 0x8, 0xA };
const Hitbox gUnk_080D28E4 = { 0x20, 0xF4, { 0, 0, 0, 0 }, 0x8, 0xA };
const Hitbox gUnk_080D28EC = { 0x0C, 0xE0, { 0, 0, 0, 0 }, 0xA, 0x8 };
const Hitbox gUnk_080D28F4 = { 0x0C, 0x20, { 0, 0, 0, 0 }, 0xA, 0x8 };
const Hitbox gUnk_080D28FC = { 0xE0, 0x0C, { 0, 0, 0, 0 }, 0x8, 0xA };
const Hitbox gUnk_080D2904 = { 0x20, 0x0C, { 0, 0, 0, 0 }, 0x8, 0xA };
const Hitbox gUnk_080D290C = { 0xF4, 0xE0, { 0, 0, 0, 0 }, 0xA, 0x8 };
const Hitbox gUnk_080D2914 = { 0xF4, 0x20, { 0, 0, 0, 0 }, 0xA, 0x8 };

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
        this->x.HALF.HI = gUnk_080D28CC[tmp] + gRoomControls.origin_x;
        this->y.HALF.HI = gUnk_080D28CC[tmp + 1] + gRoomControls.origin_y;
        InitializeAnimation(this, tmp >> 1);
    } else {
        GetNextFrame(this);
    }
    if (tmp & 2) {
        if (this->y.HALF.HI < gPlayerEntity.base.y.HALF.HI) {
            tmp++;
        }
    } else {
        if (this->x.HALF.HI < gPlayerEntity.base.x.HALF.HI) {
            tmp++;
        }
    }
    this->hitbox = (Hitbox*)gUnk_080D28AC[tmp]; // discarding const qualifier with cast
}
