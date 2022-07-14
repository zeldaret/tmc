/**
 * @file moldorm.c
 * @ingroup Enemies
 *
 * @brief Moldorm enemy
 */

#include "enemy.h"
#include "collision.h"
#include "functions.h"

void sub_08022EAC(Entity*);
void sub_08022F14(Entity*);

extern void (*const gUnk_080CBB90[])(Entity*);
extern void (*const Moldorm_Functions[])(Entity*);
extern void (*const gUnk_080CBBB4[])(Entity*);
extern void (*const gUnk_080CBBBC[])(Entity*);

extern const s8 gUnk_080CBBC4[];

void Moldorm(Entity* this) {
    gUnk_080CBB90[this->type](this);
}

void sub_08022BA0(Entity* this) {
    this->field_0x78.HALF.HI++;
    this->field_0x74.HWORD = this->x.HALF.HI;
    this->field_0x76.HWORD = this->y.HALF.HI;
    EnemyFunctionHandler(this, Moldorm_Functions);
    sub_08022EAC(this);
}

void Moldorm_OnTick(Entity* this) {
    gUnk_080CBBB4[this->action](this);
}

void Moldorm_OnCollision(Entity* this) {
    if (this->field_0x7a.HALF.LO != this->health)
        this->field_0x7a.HALF.HI = 30;

    this->field_0x7a.HALF.LO = this->health;
    this->timer = 1;
    this->direction = this->knockbackDirection;

    this->animationState = ((this->direction + 2) & 0x1c) >> 2;
    this->frameIndex = this->animationState;

    this->child->iframes = this->iframes;
    (*(Entity**)&this->field_0x7c)->iframes = this->iframes;
    (*(Entity**)&this->field_0x80)->iframes = this->iframes;
    EnemyFunctionHandlerAfterCollision(this, Moldorm_Functions);
}

void sub_08022C58(Entity* this) {
    Entity *tail0, *tail1, *tail2;

    COLLISION_OFF(this);

    if (gEntCount >= 0x45)
        return;

    tail0 = CreateEnemy(MOLDORM, 1);
    this->child = tail0;
    tail0->spritePriority.b0 = 5;
    tail0->parent = this;
    CopyPosition(this, tail0);

    tail1 = CreateEnemy(MOLDORM, 2);
    tail0->child = tail1;
    tail1->spritePriority.b0 = 5;
    tail1->parent = this;
    CopyPosition(this, tail1);

    tail2 = CreateEnemy(MOLDORM, 3);
    tail1->child = tail2;
    tail2->spritePriority.b0 = 5;
    tail2->parent = this;
    CopyPosition(this, tail2);

    sub_0804A720(this);
    this->action = 1;
    this->timer = 1;
    this->subtimer = 1;
    COLLISION_ON(this);
    this->parent = this;
    this->child = tail0;
    *(Entity**)&this->field_0x7c = tail1;
    *(Entity**)&this->field_0x80 = tail2;

    this->direction = Random() & 0x1f;
    this->animationState = ((this->direction + 2) & 0x1c) >> 2;
    this->frameIndex = this->animationState;
    this->field_0x7a.HALF.LO = this->health;
}

void sub_08022D40(Entity* this) {
    if (this->field_0x7a.HALF.HI) {
        if (this->field_0x7a.HALF.HI-- & 1) {
            this->animationState = (this->animationState + 1) & 7;
            this->frameIndex = this->animationState;
        }
    } else {
        sub_08022F14(this);
        ProcessMovement0(this);

        if (this->collisions != COL_NONE) {
            sub_0800417E(this, this->collisions);
            this->animationState = ((this->direction + 2) & 0x1c) >> 2;
            this->frameIndex = this->animationState;
        }
    }
}

void sub_08022D90(Entity* this) {
    if (this->parent->next != NULL) {
        Entity* parent;

        gUnk_080CBBBC[this->action](this);
        parent = this->parent;
        this->spriteOrientation.flipY = parent->spriteOrientation.flipY;
        this->spriteRendering.b3 = parent->spriteRendering.b3;
        this->collisionLayer = parent->collisionLayer;
    } else {
        DeleteEntity(this);
    }
}

void sub_08022DE8(Entity* this) {
    this->action = 1;
    this->field_0x7c.BYTES.byte0 = 0x88;
    this->field_0x7c.BYTES.byte1 = 0x88;
    this->field_0x7c.BYTES.byte2 = 0x88;
    this->field_0x7c.BYTES.byte3 = 0x88;
    this->field_0x80.HALF.LO = 0x88;
    this->field_0x80.HALF.HI = 0x88;
    this->field_0x82.HALF.LO = 0x88;
    this->field_0x82.HALF.HI = 0x88;
    this->animationState = this->parent->animationState;
    *(u32*)&this->cutsceneBeh = this->animationState * 0x11111111;

    if (this->type != 3) {
        this->frameIndex = this->type + 7;
    } else {
        this->frameIndex = this->animationState + 10;
    }
}

// this definition is only here, so clang-tidy does not mess gUnk_080CBBBC up.
extern void sub_08022E40(Entity* this);

NONMATCH("asm/non_matching/moldorm/sub_08022E40.inc", void sub_08022E40(Entity* this)) {
    u32 bVar1;
    u32 bVar2;
    u32 tmp;
    u32 tmp2;
    u8* ptr;

    this->field_0x74.HWORD = this->x.HALF.HI;
    this->field_0x76.HWORD = this->y.HALF.HI;
    tmp2 = (this->parent->field_0x78.HALF.HI + 1) & 7;
    bVar1 = ((u8*)&this->field_0x7c)[tmp2];
    tmp = (bVar1 & 0xf) - 8;
    bVar1 >>= 4;
    this->x.HALF.HI = ((short)((tmp * 0x100)) >> 8) + this->x.HALF.HI;
    bVar1 -= 8;
    this->y.HALF.HI = bVar1 + this->y.HALF.HI;
    bVar2 = (u8)(*(u32*)&this->cutsceneBeh >> (((this->parent->field_0x78.HALF.HI + 1) & 7) << 2)) & 7;
    this->animationState = bVar2;
    if (this->type == 3) {
        this->frameIndex = bVar2 + 10;
    } else {
        sub_08022EAC(this);
    }
}
END_NONMATCH

NONMATCH("asm/non_matching/moldorm/sub_08022EAC.inc", void sub_08022EAC(Entity* this)) {
    int iVar1;
    u32 tmp;
    u32 tmp2;
    if (this->child != NULL) {
        tmp2 = ((this->parent->field_0x78.HALF.HI) & 7);
        ((u8*)&this->child->field_0x7c)[tmp2] = ((this->x.HALF_U.HI - this->field_0x74.HALF.LO + 8) & (0xf)) +
                                                ((this->y.HALF_U.HI - this->field_0x76.HALF.LO + 8) /*& 0xf*/) * 0x10;
        iVar1 = ((this->parent->field_0x78.HALF.HI) & 7) << 2;
        tmp = (this->animationState & 7) << iVar1;
        tmp |= ~(0xf << iVar1) & (*(u32*)&this->child->cutsceneBeh);
        *(u32*)&this->child->cutsceneBeh = tmp;
    }
}
END_NONMATCH

void sub_08022F14(Entity* this) {
    if (sub_08049FA0(this) == 0) {
        u32 bVar6 = (sub_08049EE4(this) - this->direction) & 0x1f;
        if (8 < ((bVar6 + 4) & 0x1f)) {
            this->subtimer = 8;
            if (bVar6 < 0x10) {
                this->field_0x78.HALF.LO = 1;
            } else {
                this->field_0x78.HALF.LO = -1;
            }
        }
    }

    if (--this->timer == 0) {
        this->timer = 4;

        if (--this->subtimer == 0) {
            this->subtimer = 8;
            this->field_0x78.HALF.LO = gUnk_080CBBC4[Random() & 1];
        }

        this->direction += this->field_0x78.HALF.LO;
        this->direction &= 0x1f;

        this->animationState = ((this->direction + 2) & 0x1c) >> 2;
        this->frameIndex = this->animationState;
    }
}

// clang-format off
void (*const gUnk_080CBB90[])(Entity*) = {
    sub_08022BA0,
    sub_08022D90,
    sub_08022D90,
    sub_08022D90,
};

void (*const Moldorm_Functions[])(Entity*) = {
    Moldorm_OnTick,
    Moldorm_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
};

void (*const gUnk_080CBBB4[])(Entity*) = {
    sub_08022C58,
    sub_08022D40,
};

void (*const gUnk_080CBBBC[])(Entity*) = {
    sub_08022DE8,
    sub_08022E40,
};

const s8 gUnk_080CBBC4[] = {
    1, -1, 0, 0,
};
// clang-format off
