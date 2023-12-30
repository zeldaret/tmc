/**
 * @file moldorm.c
 * @ingroup Enemies
 *
 * @brief Moldorm enemy
 */
#include "collision.h"
#include "enemy.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    union {
        /*0x7c*/ Entity* entity;
        struct {
            /*0x7c*/ u8 unk_7c;
            /*0x7d*/ u8 unk_7d;
            /*0x7e*/ u8 unk_7e;
            /*0x7f*/ u8 unk_7f;
        } split;
    } unk_7c;
    union {
        /*0x80*/ Entity* entity;
        struct {
            /*0x80*/ u8 unk_80;
            /*0x81*/ u8 unk_81;
            /*0x82*/ u8 unk_82;
            /*0x83*/ u8 unk_83;
        } split;
    } unk_80;
    /*0x84*/ u32 unk_84;
} MoldormEntity;

void sub_08022EAC(MoldormEntity*);
void sub_08022F14(MoldormEntity*);

extern void (*const gUnk_080CBB90[])(MoldormEntity*);
extern void (*const Moldorm_Functions[])(MoldormEntity*);
extern void (*const gUnk_080CBBB4[])(MoldormEntity*);
extern void (*const gUnk_080CBBBC[])(MoldormEntity*);

extern const s8 gUnk_080CBBC4[];

void Moldorm(MoldormEntity* this) {
    gUnk_080CBB90[super->type](this);
}

void sub_08022BA0(MoldormEntity* this) {
    this->unk_79++;
    this->unk_74 = super->x.HALF.HI;
    this->unk_76 = super->y.HALF.HI;
    EnemyFunctionHandler(super, (EntityActionArray)Moldorm_Functions);
    sub_08022EAC(this);
}

void Moldorm_OnTick(MoldormEntity* this) {
    gUnk_080CBBB4[super->action](this);
}

void Moldorm_OnCollision(MoldormEntity* this) {
    if (this->unk_7a != super->health)
        this->unk_7b = 30;

    this->unk_7a = super->health;
    super->timer = 1;
    super->direction = super->knockbackDirection;

    super->animationState = ((super->direction + 2) & 0x1c) >> 2;
    super->frameIndex = super->animationState;

    super->child->iframes = super->iframes;
    this->unk_7c.entity->iframes = super->iframes;
    this->unk_80.entity->iframes = super->iframes;
    EnemyFunctionHandlerAfterCollision(super, Moldorm_Functions);
}

void sub_08022C58(MoldormEntity* this) {
    Entity *tail0, *tail1, *tail2;

    COLLISION_OFF(super);

    if (gEntCount >= 0x45)
        return;

    tail0 = CreateEnemy(MOLDORM, 1);
    super->child = tail0;
    tail0->spritePriority.b0 = 5;
    tail0->parent = super;
    CopyPosition(super, tail0);

    tail1 = CreateEnemy(MOLDORM, 2);
    tail0->child = tail1;
    tail1->spritePriority.b0 = 5;
    tail1->parent = super;
    CopyPosition(super, tail1);

    tail2 = CreateEnemy(MOLDORM, 3);
    tail1->child = tail2;
    tail2->spritePriority.b0 = 5;
    tail2->parent = super;
    CopyPosition(super, tail2);

    sub_0804A720(super);
    super->action = 1;
    super->timer = 1;
    super->subtimer = 1;
    COLLISION_ON(super);
    super->parent = super;
    super->child = tail0;
    this->unk_7c.entity = tail1;
    this->unk_80.entity = tail2;

    super->direction = Random() & 0x1f;
    super->animationState = ((super->direction + 2) & 0x1c) >> 2;
    super->frameIndex = super->animationState;
    this->unk_7a = super->health;
}

void sub_08022D40(MoldormEntity* this) {
    if (this->unk_7b) {
        if (this->unk_7b-- & 1) {
            super->animationState = (super->animationState + 1) & 7;
            super->frameIndex = super->animationState;
        }
    } else {
        sub_08022F14(this);
        ProcessMovement0(super);

        if (super->collisions != COL_NONE) {
            sub_0800417E(super, super->collisions);
            super->animationState = ((super->direction + 2) & 0x1c) >> 2;
            super->frameIndex = super->animationState;
        }
    }
}

void sub_08022D90(MoldormEntity* this) {
    if (super->parent->next != NULL) {
        Entity* parent;

        gUnk_080CBBBC[super->action](this);
        parent = super->parent;
        super->spriteOrientation.flipY = parent->spriteOrientation.flipY;
        super->spriteRendering.b3 = parent->spriteRendering.b3;
        super->collisionLayer = parent->collisionLayer;
    } else {
        DeleteEntity(super);
    }
}

void sub_08022DE8(MoldormEntity* this) {
    super->action = 1;
    this->unk_7c.split.unk_7c = 0x88;
    this->unk_7c.split.unk_7d = 0x88;
    this->unk_7c.split.unk_7e = 0x88;
    this->unk_7c.split.unk_7f = 0x88;
    this->unk_80.split.unk_80 = 0x88;
    this->unk_80.split.unk_81 = 0x88;
    this->unk_80.split.unk_82 = 0x88;
    this->unk_80.split.unk_83 = 0x88;
    super->animationState = super->parent->animationState;
    this->unk_84 = super->animationState * 0x11111111;

    if (super->type != 3) {
        super->frameIndex = super->type + 7;
    } else {
        super->frameIndex = super->animationState + 10;
    }
}

void sub_08022E40(MoldormEntity* this) {
    u32 bVar1;
    u32 animationState;
    u32 tmp;
    u32 tmp2;
    u8* ptr;

    this->unk_74 = super->x.HALF.HI;
    this->unk_76 = super->y.HALF.HI;
    tmp2 = (((MoldormEntity*)super->parent)->unk_79 + 1) & 7;
    ptr = (u8*)&this->unk_7c.split.unk_7c + tmp2;
    bVar1 = *ptr;
    tmp = (bVar1 & 0xf) - 8;
    bVar1 >>= 4;
    super->x.HALF.HI = ((short)((tmp * 0x100)) >> 8) + super->x.HALF.HI;
    bVar1 -= 8;
    super->y.HALF.HI = bVar1 + super->y.HALF.HI;
    animationState = (u8)(this->unk_84 >> (((((MoldormEntity*)super->parent)->unk_79 + 1) & 7) << 2)) & 7;
    super->animationState = animationState;
    if (super->type == 3) {
        super->frameIndex = animationState + 10;
    } else {
        sub_08022EAC(this);
    }
}

void sub_08022EAC(MoldormEntity* this) {
    int iVar1;
    u32 tmp;
    u32 tmp2;
    if (super->child != NULL) {
        tmp2 = ((((MoldormEntity*)super->parent)->unk_79) & 7);
        ((u8*)&((MoldormEntity*)super->child)->unk_7c.split.unk_7c)[tmp2] =
            ((super->x.HALF_U.HI - this->unk_74 + 8) & 0xf) +
            ((u32)((super->y.HALF_U.HI - this->unk_76 + 8) & 0xf) << 4);
        iVar1 = ((((MoldormEntity*)super->parent)->unk_79) & 7) << 2;
        tmp = (super->animationState & 7) << iVar1;
        tmp |= ~(0xf << iVar1) & (((MoldormEntity*)super->child)->unk_84);
        ((MoldormEntity*)super->child)->unk_84 = tmp;
    }
}

void sub_08022F14(MoldormEntity* this) {
    if (sub_08049FA0(super) == 0) {
        u32 bVar6 = (sub_08049EE4(super) - super->direction) & 0x1f;
        if (8 < ((bVar6 + 4) & 0x1f)) {
            super->subtimer = 8;
            if (bVar6 < 0x10) {
                this->unk_78 = 1;
            } else {
                this->unk_78 = -1;
            }
        }
    }

    if (--super->timer == 0) {
        super->timer = 4;

        if (--super->subtimer == 0) {
            super->subtimer = 8;
            this->unk_78 = gUnk_080CBBC4[Random() & 1];
        }

        super->direction += this->unk_78;
        super->direction &= DirectionNorthWest | 0x3;

        super->animationState = ((super->direction + 2) & 0x1c) >> 2;
        super->frameIndex = super->animationState;
    }
}

// clang-format off
void (*const gUnk_080CBB90[])(MoldormEntity*) = {
    sub_08022BA0,
    sub_08022D90,
    sub_08022D90,
    sub_08022D90,
};

void (*const Moldorm_Functions[])(MoldormEntity*) = {
    Moldorm_OnTick,
    Moldorm_OnCollision,
    (void (*)(MoldormEntity*))GenericKnockback,
    (void (*)(MoldormEntity*))GenericDeath,
    (void (*)(MoldormEntity*))GenericConfused,
};

void (*const gUnk_080CBBB4[])(MoldormEntity*) = {
    sub_08022C58,
    sub_08022D40,
};

void (*const gUnk_080CBBBC[])(MoldormEntity*) = {
    sub_08022DE8,
    sub_08022E40,
};

const s8 gUnk_080CBBC4[] = {
    1, -1, 0, 0,
};
// clang-format off
