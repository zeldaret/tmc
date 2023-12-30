/**
 * @file waterDrop.c
 * @ingroup Enemies
 *
 * @brief Water Drop enemy
 */
#include "enemy.h"
#include "object.h"
#include "screen.h"
#include "structures.h"

void sub_0802A39C(Entity*);
void sub_0802A334(Entity*);

extern void (*const gUnk_080CD030[])(Entity*);
extern const u8 gUnk_080CD03C[];
extern const s8 gUnk_080CD040[];

void WaterDrop(Entity* this) {
    gUnk_080CD030[this->action](this);
}

void sub_0802A250(Entity* this) {
    Entity* entity;

    this->action = 1;
    this->timer = 0;
    this->zVelocity = Q_16_16(-3.0);
    this->speed = gUnk_080CD03C[Random() & 3];
    this->direction = gUnk_080CD040[Random() & 3] + 0x18;
    this->collisionLayer = 2;
    InitializeAnimation(this, 0);
    UpdateSpriteForCollisionLayer(this);

    entity = CreateObject(WATER_DROP_OBJECT, 0, 0);
    if (entity != NULL) {
        entity->parent = this;
    }
}

void sub_0802A2B4(Entity* this) {
    if (!GravityUpdate(this, Q_8_8(40.0))) {
        this->action = 2;
        this->spritePriority.b0 = 7;
        EnqueueSFX(SFX_WATER_SPLASH);
    } else {
        LinearMoveUpdate(this);
    }

    sub_0802A39C(this);
    if (-8 < this->z.HALF.HI) {
        sub_0802A334(this);
    }
}

void sub_0802A2FC(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        DeleteEntity(this);
    } else if (this->frame & 1) {
        COLLISION_OFF(this);
    } else {
        sub_0802A39C(this);
    }
}

void sub_0802A334(Entity* this) {
    u32 x = (this->x.HALF.HI - gRoomControls.scroll_x + gScreen.bg1.xOffset) >> 3;
    u32 y = (this->y.HALF.HI - gRoomControls.scroll_y + gScreen.bg1.yOffset) >> 3;
    if (gBG3Buffer[(x & 0x1fU) + (y & 0x1fU) * 0x20 + 0x400]) {
        this->collisionLayer = 2;
    } else {
        this->collisionLayer = 1;
    }
    UpdateSpriteForCollisionLayer(this);
}

void sub_0802A39C(Entity* this) {
    u32 x = (gPlayerEntity.base.x.HALF.HI - gRoomControls.scroll_x + gScreen.bg1.xOffset) >> 3;
    u32 y = (gPlayerEntity.base.y.HALF.HI - gRoomControls.scroll_y + gScreen.bg1.yOffset - 10) >> 3;
    if (gBG3Buffer[(x & 0x1fU) + (y & 0x1fU) * 0x20 + 0x400]) {
        COLLISION_OFF(this);
    } else {
        COLLISION_ON(this);
    }
}

// clang-format off
void (*const gUnk_080CD030[])(Entity*) = {
    sub_0802A250,
    sub_0802A2B4,
    sub_0802A2FC,
};

const u8 gUnk_080CD03C[] = {
    0x60, 0x80,
    0xA0, 0xC0,
};

const s8 gUnk_080CD040[] = {
    -2, -1, -1, -3,
};
// clang-format on
