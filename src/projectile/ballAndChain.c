/**
 * @file ballAndChain.c
 * @ingroup Projectiles
 *
 * @brief Ball and Chain Projectile
 */
#include "entity.h"
#include "functions.h"
#include "hitbox.h"
#include "projectile.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[19];
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u8 unk_7c;
    /*0x7d*/ u8 unused2;
    /*0x7e*/ u8 unk_7e;
    /*0x7f*/ s8 unk_7f;
} BallAndChainEntity;

typedef struct {
    s8 x;
    s8 y;
} PACKED PosOffset;

bool32 sub_080AB12C(Entity* this);

extern void (*const gUnk_0812A494[])(BallAndChainEntity*);
extern const PosOffset gUnk_0812A4A8[];

void BallAndChain(BallAndChainEntity* this) {
    gUnk_0812A494[super->type](this);
}

void sub_080AB074(BallAndChainEntity* this) {
    BallAndChainEntity* parent;
    const s16* tmp;
    u32 factor;

    parent = (BallAndChainEntity*)super->parent;
    if (parent->base.next == NULL) {
        DeleteThisEntity();
    }
    if (super->action == 0) {
        if (sub_080AB12C(super) == FALSE) {
            return;
        }
        super->action = 1;
        super->frameIndex = 0;
        super->spritePriority.b0 = 3;
    }
    sub_0806FA90(super->parent, super, 0, -10 + -parent->unk_7f);

    super->x.WORD += gSineTable[parent->unk_7c] * (parent->unk_7e << 8);
    super->y.WORD -= gSineTable[parent->unk_7c + 0x40] * (parent->unk_7e << 8);

    super->z.HALF.HI += parent->unk_7f;
    if (parent->unk_7b != 0) {
        parent = (BallAndChainEntity*)CreateProjectile(BALL_AND_CHAIN);
        if (parent != NULL) {
            parent->base.type = 4;
            CopyPositionAndSpriteOffset(super, &parent->base);
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

void sub_080AB170(BallAndChainEntity* this) {
    s32 val;
    s32 type;
    BallAndChainEntity* ent;
    Entity* parent = super->parent;
    if (parent->next == NULL) {
        DeleteThisEntity();
    }

    if (super->action == 0) {
        super->action = 1;
        super->spritePriority.b1 = 0;
        super->frameIndex = 5;
        super->spritePriority.b0 = 3;
        super->hitbox = (Hitbox*)&gHitbox_22;
    }

    ent = (BallAndChainEntity*)parent->parent;
    if (this->unk_7c != ent->unk_7c) {
        super->flags |= ENT_COLLIDE;
    } else {
        super->flags &= ~ENT_COLLIDE;
    }

    this->unk_7c = ent->unk_7c;

    if ((ent->base.frame & 0x20) == 0) {
        u8 index = ent->base.frame & 0x1f;
        PosOffset* pOffset = (PosOffset*)((s8*)gUnk_0812A4A8 + index);
        sub_0806FA90(&ent->base, super, pOffset->x, pOffset->y);
    } else {
        sub_0806FA90(&ent->base, super, 0, -10);
    }

    val = (parent->x.HALF.HI - super->x.HALF.HI) * super->type;
    if (val < 0) {
        val += 3;
    }
    super->x.HALF.HI += (val >> 2);

    val = (parent->y.HALF.HI - super->y.HALF.HI) * super->type;
    if (val < 0) {
        val += 3;
    }
    super->y.HALF.HI += (val >> 2);

    val = (parent->z.HALF.HI - super->z.HALF.HI) * super->type;
    if (val < 0) {
        val += 3;
    }
    super->z.HALF.HI += (val >> 2);
}

void sub_080AB26C(BallAndChainEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        super->timer = 5;
        super->frameIndex = 0;
#ifndef EU
        super->spritePriority.b1 = 0;
#endif
    }
    if (--super->timer == 0) {
        DeleteThisEntity();
    } else {
        super->frameIndex++;
    }
}

void (*const gUnk_0812A494[])(BallAndChainEntity*) = {
    sub_080AB074, sub_080AB170, sub_080AB170, sub_080AB170, sub_080AB26C,
};
const PosOffset gUnk_0812A4A8[] = {
    { 6, -16 },  { 10, -14 }, { 10, -16 },  { 8, -16 },  { -4, -14 }, { -8, -14 }, { -4, -10 }, { 4, -10 },
    { -6, -14 }, { -8, -16 }, { -10, -14 }, { -8, -12 }, { 4, -14 },  { 8, -14 },  { 4, -10 },  { -4, -10 },
};
