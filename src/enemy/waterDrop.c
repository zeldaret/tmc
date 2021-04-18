#include "enemy.h"
#include "entity.h"
#include "screen.h"
#include "random.h"
#include "functions.h"
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
    Entity* ent;

    this->action = 1;
    this->actionDelay = 0;
    this->field_0x20 = -0x30000;
    this->speed = gUnk_080CD03C[Random() & 3];
    this->direction = gUnk_080CD040[Random() & 3] + 0x18;
    this->collisionLayer = 2;
    InitializeAnimation(this, 0);
    UpdateSpriteForCollisionLayer(this);

    ent = CreateObject(0x66, 0, 0);
    if (ent) {
        ent->parent = this;
    }
}

void sub_0802A2B4(Entity* this) {
    if (!sub_08003FC4(this, 0x2800)) {
        this->action = 2;
        this->spritePriority.b0 = 7;
        EnqueueSFX(0x84);
    } else {
        sub_0806F69C(this);
    }

    sub_0802A39C(this);
    if (-8 < this->height.HALF.HI) {
        sub_0802A334(this);
    }
}

void sub_0802A2FC(Entity* this) {
    GetNextFrame(this);
    if (this->frames.all & 0x80) {
        DeleteEntity(this);
    } else if (this->frames.all & 1) {
        this->flags &= ~0x80;
    } else {
        sub_0802A39C(this);
    }
}

void sub_0802A334(Entity* this) {
    u32 x = (this->x.HALF.HI - gRoomControls.roomScrollX + gScreen.bg.bg1xOffset) >> 3;
    u32 y = (this->y.HALF.HI - gRoomControls.roomScrollY + gScreen.bg.bg1yOffset) >> 3;
    if (gBG3Buffer[(x & 0x1fU) + (y & 0x1fU) * 0x20 + 0x400]) {
        this->collisionLayer = 2;
    } else {
        this->collisionLayer = 1;
    }
    UpdateSpriteForCollisionLayer(this);
}

void sub_0802A39C(Entity* this) {
    u32 x = (gPlayerEntity.x.HALF.HI - gRoomControls.roomScrollX + gScreen.bg.bg1xOffset) >> 3;
    u32 y = (gPlayerEntity.y.HALF.HI - gRoomControls.roomScrollY + gScreen.bg.bg1yOffset - 10) >> 3;
    if (gBG3Buffer[(x & 0x1fU) + (y & 0x1fU) * 0x20 + 0x400]) {
        this->flags &= ~0x80;
    } else {
        this->flags |= 0x80;
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
