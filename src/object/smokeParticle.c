/**
 * @file smokeParticle.c
 * @ingroup Objects
 *
 * @brief Smoke Particle object
 */
#include "functions.h"
#include "object.h"
#include "tiles.h"

void SmokeParticle_Init(Entity*);
void SmokeParticle_Action1(Entity*);
void sub_080878CC(Entity*);

void (*const SmokeParticle_Actions[])(Entity*) = {
    SmokeParticle_Init,
    SmokeParticle_Action1,
};
const Hitbox3D gUnk_08120A30 = { 0, 0, { 0, 0, 0, 0 }, 6, 6, 10, { 0, 0, 0 } };
const Hitbox3D gUnk_08120A3C = { 0, 0, { 0, 0, 0, 0 }, 12, 12, 16, { 0, 0, 0 } };
const Hitbox3D gUnk_08120A48 = { 0, 0, { 0, 0, 0, 0 }, 16, 16, 20, { 0, 0, 0 } };
const Hitbox3D* const gUnk_08120A54[] = { &gUnk_08120A30, &gUnk_08120A30, &gUnk_08120A48, &gUnk_08120A3C,
                                          &gUnk_08120A3C };

void SmokeParticle(Entity* this) {
    SmokeParticle_Actions[this->action](this);
}

void SmokeParticle_Init(Entity* this) {
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
    this->collisionMask = 0x8b;
    sub_080878CC(this);
    InitializeAnimation(this, 1);
    sub_0801766C(this);
    EnqueueSFX(SFX_ITEM_BOMB_EXPLODE);
}

void SmokeParticle_Action1(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    } else {
        if (this->frame < 5) {
            this->hitbox = (Hitbox*)gUnk_08120A54[this->frame];
        } else {
            this->flags &= ~0x80;
        }
    }
}

void sub_080878CC(Entity* this) {
    s32 x;
    s32 y;
    s32 itX;
    s32 itY;
    u32 layer;
    u32 tilePos;

    x = this->x.HALF.HI;
    y = this->y.HALF.HI;
    layer = this->collisionLayer;
    for (itX = -0x10; itX < 0x11; itX += 0x10) {
        for (itY = -0x10; itY < 0x11; itY += 0x10) {
            tilePos = TILE((u32)x + itX, (u32)y + itY);
            if (GetActTileAtTilePos(tilePos, (u8)layer) == ACT_TILE_46) {
                switch (GetTileTypeAtTilePos(tilePos, layer)) {
                    case 0x368:
                    case 0x367:
                        DoTileInteraction(this, 3, x + itX, y + itY);
                        break;
                    default:
                        SetTile(SPECIAL_TILE_34, tilePos, layer);
                        break;
                }
            } else {
                DoTileInteraction(this, 3, x + itX, y + itY);
            }
        }
    }
}
