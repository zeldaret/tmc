/**
 * @file object20.c
 * @ingroup Objects
 *
 * @brief Object20 object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"

void sub_08087824(Entity*);
void sub_08087888(Entity*);
void sub_080878CC(Entity*);

void (*const gUnk_08120A28[])(Entity*) = {
    sub_08087824,
    sub_08087888,
};
const Hitbox3D gUnk_08120A30 = { 0, 0, { 0, 0, 0, 0 }, 6, 6, 10, { 0, 0, 0 } };
const Hitbox3D gUnk_08120A3C = { 0, 0, { 0, 0, 0, 0 }, 12, 12, 16, { 0, 0, 0 } };
const Hitbox3D gUnk_08120A48 = { 0, 0, { 0, 0, 0, 0 }, 16, 16, 20, { 0, 0, 0 } };
const Hitbox3D* const gUnk_08120A54[] = { &gUnk_08120A30, &gUnk_08120A30, &gUnk_08120A48, &gUnk_08120A3C,
                                          &gUnk_08120A3C };

void Object20(Entity* this) {
    gUnk_08120A28[this->action](this);
}

void sub_08087824(Entity* this) {
    if (this->collisionLayer == 0) {
        ResolveCollisionLayer(this);
    }
    this->action = 1;
    this->flags |= 0x80;
    this->collisionFlags = 0x13;
    this->health = 0xff;
    this->hitType = 0xa9;
    this->hurtType = 0x16;
    this->hitbox = (Hitbox*)gUnk_08120A54[0];
    this->flags2 = 0x8b;
    sub_080878CC(this);
    InitializeAnimation(this, 1);
    sub_0801766C(this);
    EnqueueSFX(SFX_ITEM_BOMB_EXPLODE);
}

void sub_08087888(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    } else {
        if (this->frame < 5) {
            this->hitbox = (Hitbox*)gUnk_08120A54[this->frame];
        } else {
            this->flags &= 0x7f;
        }
    }
}

void sub_080878CC(Entity* this) {
    s32 x;
    s32 y;
    s32 itX;
    s32 itY;
    u32 layer;
    u32 pos;

    x = this->x.HALF.HI;
    y = this->y.HALF.HI;
    layer = this->collisionLayer;
    for (itX = -0x10; itX < 0x11; itX += 0x10) {
        for (itY = -0x10; itY < 0x11; itY += 0x10) {
            pos = TILE((u32)x + itX, (u32)y + itY);
            if (sub_080B1AE0(pos, (u8)layer) == 0x2e) {
                switch (GetTileType(pos, layer)) {
                    case 0x368:
                    case 0x367:
                        sub_08008796(this, 3, x + itX, y + itY);
                        break;
                    default:
                        SetTile(0x4022, pos, layer);
                        break;
                }
            } else {
                sub_08008796(this, 3, x + itX, y + itY);
            }
        }
    }
}
