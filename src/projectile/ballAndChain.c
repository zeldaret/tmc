#include "entity.h"
#include "functions.h"
#include "projectile.h"
#include "hitbox.h"

typedef struct {
    s8 x;
    s8 y;
} PACKED PosOffset;

bool32 sub_080AB12C(Entity* this);

extern void (*const gUnk_0812A494[])(Entity*);
extern const PosOffset gUnk_0812A4A8[];

void BallAndChain(Entity* this) {
    gUnk_0812A494[this->type](this);
}

void sub_080AB074(Entity* this) {
    Entity* parent;
    const s16* tmp;
    u32 factor;

    parent = this->parent;
    if (parent->next == NULL) {
        DeleteThisEntity();
    }
    if (this->action == 0) {
        if (sub_080AB12C(this) == FALSE) {
            return;
        }
        this->action = 1;
        this->frameIndex = 0;
        this->spritePriority.b0 = 3;
    }
    sub_0806FA90(this->parent, this, 0, 0xfffffff6 + -(s8)parent->field_0x7c.BYTES.byte3);

    this->x.WORD += gSineTable[parent->field_0x7c.BYTES.byte0] * (parent->field_0x7c.BYTES.byte2 << 8);
    this->y.WORD -= gSineTable[parent->field_0x7c.BYTES.byte0 + 0x40] * (parent->field_0x7c.BYTES.byte2 << 8);

    this->z.HALF.HI += (s8)parent->field_0x7c.BYTES.byte3;
    if (parent->field_0x7a.HALF.HI != 0) {
        parent = CreateProjectile(BALL_AND_CHAIN);
        if (parent != NULL) {
            parent->type = 4;
            CopyPositionAndSpriteOffset(this, parent);
        }
    }
}

bool32 sub_080AB12C(Entity* this) {
    Entity* entity;

    if (gEntCount > 0x44) {
        return FALSE;
    }
    entity = CreateProjectile(BALL_AND_CHAIN);
    entity->type = 1;
    entity->parent = this;
    entity = CreateProjectile(BALL_AND_CHAIN);
    entity->type = 2;
    entity->parent = this;
    entity = CreateProjectile(BALL_AND_CHAIN);
    entity->type = 3;
    entity->parent = this;
    return TRUE;
}

void sub_080AB170(Entity* this) {
    s32 val;
    s32 type;
    Entity* ent;
    Entity* parent = this->parent;
    if (parent->next == NULL) {
        DeleteThisEntity();
    }

    if (this->action == 0) {
        this->action = 1;
        this->spritePriority.b1 = 0;
        this->frameIndex = 5;
        this->spritePriority.b0 = 3;
        this->hitbox = (Hitbox*)&gHitbox_22;
    }

    ent = parent->parent;
    if (this->field_0x7c.BYTES.byte0 != ent->field_0x7c.BYTES.byte0) {
        this->flags |= ENT_COLLIDE;
    } else {
        this->flags &= ~ENT_COLLIDE;
    }

    this->field_0x7c.BYTES.byte0 = ent->field_0x7c.BYTES.byte0;

    if ((ent->frame & 0x20) == 0) {
        u8 index = ent->frame & 0x1f;
        PosOffset* pOffset = (PosOffset*)((s8*)gUnk_0812A4A8 + index);
        sub_0806FA90(ent, this, pOffset->x, pOffset->y);
    } else {
        sub_0806FA90(ent, this, 0, -10);
    }

    val = (parent->x.HALF.HI - this->x.HALF.HI) * this->type;
    if (val < 0) {
        val += 3;
    }
    this->x.HALF.HI += (val >> 2);

    val = (parent->y.HALF.HI - this->y.HALF.HI) * this->type;
    if (val < 0) {
        val += 3;
    }
    this->y.HALF.HI += (val >> 2);

    val = (parent->z.HALF.HI - this->z.HALF.HI) * this->type;
    if (val < 0) {
        val += 3;
    }
    this->z.HALF.HI += (val >> 2);
}

void sub_080AB26C(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->timer = 5;
        this->frameIndex = 0;
#ifndef EU
        this->spritePriority.b1 = 0;
#endif
    }
    if (--this->timer == 0) {
        DeleteThisEntity();
    } else {
        this->frameIndex += 1;
    }
}

void (*const gUnk_0812A494[])(Entity*) = {
    sub_080AB074, sub_080AB170, sub_080AB170, sub_080AB170, sub_080AB26C,
};
const PosOffset gUnk_0812A4A8[] = {
    { 6, -16 },  { 10, -14 }, { 10, -16 },  { 8, -16 },  { -4, -14 }, { -8, -14 }, { -4, -10 }, { 4, -10 },
    { -6, -14 }, { -8, -16 }, { -10, -14 }, { -8, -12 }, { 4, -14 },  { 8, -14 },  { 4, -10 },  { -4, -10 },
};
