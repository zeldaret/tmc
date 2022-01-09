/**
 * @file beetle.c
 * @ingroup Enemies
 *
 * @brief Beetle enemy
 */

#include "enemy.h"
#include "functions.h"

extern u32 PlayerInRange(Entity*, u32, u32);

u32 sub_08021D00(Entity*);
void sub_08021D44(Entity* this, u32 direction);

extern void (*const gUnk_080CB590[])(Entity*);
extern void (*const gUnk_080CB5A8[])(Entity*);
extern void (*const gUnk_080CB5C8[])(Entity*);
extern void (*const gUnk_080CB5D4[])(Entity*);

extern const s8 gUnk_080CB5DC[];
extern const s8 gUnk_080CB5E4[];

void Beetle(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CB590);
}

void sub_08021768(Entity* this) {
    gUnk_080CB5A8[this->action](this);
}

void sub_08021780(Entity* this) {
    switch (this->bitfield) {
        case 0x80:
            if (gPlayerState.framestate == PL_STATE_CLIMB) {
                sub_08021768(this);
            } else {
                this->action = 5;
                this->actionDelay = 0xb4;
                this->field_0xf = 0;
                COLLISION_OFF(this);
                this->spritePriority.b0 = 3;
                CopyPositionAndSpriteOffset(&gPlayerEntity, this);
                this->z.HALF.HI = -1;
                ((u8*)&this->field_0x86)[1] = 1;
                InitializeAnimation(this, 6);
            }
            break;
        case 0x93:
            sub_08021768(this);
            break;
    }

    if (this->health == 0)
        this->knockbackDuration = 0;

    sub_0804AA30(this, gUnk_080CB590);
}

void sub_08021818(Entity* this) {
    if (this->type == 0) {
        sub_0804A7D4(this);
    } else {
        Entity* ent = this->parent;
        if (ent) {
            ent->field_0xf--;
            this->parent = NULL;
        }
        CreateDeathFx(this, 0xf0, 0);
    }
}

void sub_08021848(Entity* this) {
    if (sub_0806F520(this)) {
        gUnk_080CB5C8[this->subAction](this);
    } else {
        this->action = 3;
        this->z.HALF.HI = 0;
        InitializeAnimation(this, 2);
    }
}

void sub_0802187C(Entity* this) {
    this->subAction = 2;
}

void nullsub_130(Entity* this) {
}

void sub_08021888(Entity* this) {
    if (sub_0806F3E4(this))
        sub_08021818(this);
}

void Beetle_Initialize(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->field_0x1c = 1;
    InitializeAnimation(this, 3);
}

void sub_080218B4(Entity* this) {
    gUnk_080CB5D4[this->type2](this);
}

void sub_080218CC(Entity* this) {
    if (this->subAction == 0) {
        this->subAction = 1;
        this->spriteSettings.draw = 1;
        this->direction = ((sub_08049F84(this, 1) ^ 0x10) + gUnk_080CB5DC[Random() & 7]) & 0x1f;
        this->speed = 0x100;
        this->zVelocity = 0x12000;
    }

    GetNextFrame(this);
    if (this->frame & 1) {
        sub_080AEFE0(this);
        if (sub_080044EC(this, 0x1c00) == 0)
            this->frameDuration = 1;
    }

    if (this->frame & 0x80) {
        this->action = 2;
        this->actionDelay = (Random() & 0x38) + 8;
        this->field_0xf = 1;
        COLLISION_ON(this);
        this->speed = 0x180;
        InitializeAnimation(this, 0);
    }
}

void sub_08021984(Entity* this) {
    if (this->subAction == 0) {
        this->subAction = 1;
        COLLISION_ON(this);
        this->spriteSettings.draw = 3;
        this->z.HALF.HI = -0x80;
        this->spriteRendering.b3 = 1;
        this->spriteOrientation.flipY = 1;
        EnqueueSFX(0x12d);
    }

    if (GravityUpdate(this, 0x1800) == 0) {
        this->action = 2;
        this->actionDelay = 16;
        this->field_0xf = 1;
        this->spriteSettings.draw = 1;
        this->speed = 0x180;
        ((u8*)&this->field_0x86)[0] = 60;
        InitializeAnimation(this, 0);
        UpdateSpriteForCollisionLayer(this);
    }
}

void sub_08021A10(Entity* this) {
    GetNextFrame(this);
    if (EntityInRectRadius(this, &gPlayerEntity, 120, 80) && sub_08021D00(this) == 0) {
        if (--this->actionDelay == 0) {
            this->action = 3;
            this->actionDelay = (Random() & 0x3f) + 30;
            sub_08021D44(this, this->direction);
            InitializeAnimation(this, 2);
        }
    }
}

void sub_08021A64(Entity* this) {
    if (!sub_08021D00(this)) {
        if (--this->actionDelay == 0) {
            this->action = 2;
            this->actionDelay = (Random() & 0x1f) + 0x1e;
            InitializeAnimation(this, 0);
        }

        if (--this->field_0xf == 0) {
            u32 tmp;

            this->field_0xf = 8;
            tmp = sub_08049F84(this, 1);
            if (tmp == 0xff) {
                this->action = 7;
                InitializeAnimation(this, 1);
                return;
            }
            sub_08021D44(this, tmp);
        }
        ProcessMovement(this);
        GetNextFrame(this);
    }
}

void sub_08021AD8(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        if (this->actionDelay) {
            u32 tmp;

            this->actionDelay = 0;
            tmp = sub_08049F84(this, 1);
            if (tmp == 0xff) {
                this->action = 2;
                this->actionDelay = '\b';
                InitializeAnimation(this, 0);
                return;
            }
            this->direction = (u8)tmp;
            EnqueueSFX(0x7c);
        }
        sub_080AEFE0(this);
        if (!GravityUpdate(this, 0x1800))
            this->frameDuration = 1;
    }

    if (this->frame & 0x80) {
        this->action = 2;
        this->actionDelay = 20;
        ((u8*)&this->field_0x86)[0] = 60;
        InitializeAnimation(this, 0);
    }
}

void sub_08021B64(Entity* this) {
    if (gPlayerState.flags & PL_DROWNING) {
        this->action = 3;
        this->z.WORD = 0;
        InitializeAnimation(this, 2);
    } else {
        int iVar4 = 1;
        if (gPlayerState.framestate != PL_STATE_JUMP && gPlayerState.framestate != PL_STATE_CAPE) {
            if (sub_0807953C())
                iVar4 = this->type * 3 + 8;

            iVar4 = this->actionDelay - iVar4;
            if (iVar4 < 0)
                iVar4 = 0;

            this->actionDelay = (u8)iVar4;
        }

        if (gPlayerState.flags & (PL_DISABLE_ITEMS | PL_CAPTURED))
            iVar4 = 0;

        if (iVar4 == 0) {
            this->action = 6;
            this->zVelocity = 0x10000;
            ((u8*)&this->field_0x86)[1] = 0;
            if (gPlayerEntity.direction != 0xff) {
                this->direction = 0x10 ^ gPlayerEntity.direction;
            } else {
                this->direction = (gPlayerEntity.animationState << 2) ^ 0x10;
            }
            InitializeAnimation(this, 5);
        } else {
            gPlayerState.mobility |= 0x80;
            gPlayerState.speed_modifier -= 0x50;
            gPlayerState.field_0xaa++;
            CopyPositionAndSpriteOffset(&gPlayerEntity, this);
            this->x.HALF.HI += gUnk_080CB5E4[(this->field_0xf++ & 0xe) >> 1];
            this->z.HALF.HI--;
            GetNextFrame(this);
        }
    }
}

void sub_08021C58(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        sub_080AEFE0(this);
        if (GravityUpdate(this, 0x1800) == 0)
            this->frameDuration = 1;
    }

    if (this->frame & 0x80) {
        this->action = 2;
        this->actionDelay = 60;
        this->field_0xf = 1;
        COLLISION_ON(this);
        this->spritePriority.b0 = 4;
        ((u8*)&this->field_0x86)[0] = 60;
        InitializeAnimation(this, 0);
    }
}

void sub_08021CD0(Entity* this) {
    if ((this->frame & 0x80) == 0)
        GetNextFrame(this);

    if (sub_08049F84(this, 1) == 0xff)
        return;

    this->action = 3;
    InitializeAnimation(this, 2);
}

u32 sub_08021D00(Entity* this) {
    u32 ret;

    if (((u8*)&this->field_0x86)[0]) {
        ((u8*)&this->field_0x86)[0]--;
        ret = 0;
    } else if (PlayerInRange(this, 1, 0x10) == 0) {
        ret = 0;
    } else {
        this->action = 4;
        this->actionDelay = 1;
        this->zVelocity = 0x18000;
        InitializeAnimation(this, 4);
        ret = 1;
    }

    return ret;
}

void sub_08021D44(Entity* this, u32 direction) {
    direction = DirectionRoundUp(direction);
    this->direction = direction;
    if (DirectionIsHorizontal(direction)) {
        this->speed = 0x180;
    } else {
        this->speed = 0xc0;
    }
}

// clang-format off
void (*const gUnk_080CB590[])(Entity*) = {
    sub_08021768,
    sub_08021780,
    sub_08001324,
    sub_08021818,
    sub_08001242,
    sub_08021848,
};

void (*const gUnk_080CB5A8[])(Entity*) = {
    Beetle_Initialize,
    sub_080218B4,
    sub_08021A10,
    sub_08021A64,
    sub_08021AD8,
    sub_08021B64,
    sub_08021C58,
    sub_08021CD0,
};

void (*const gUnk_080CB5C8[])(Entity*) = {
    sub_0802187C,
    nullsub_130,
    sub_08021888,
};

void (*const gUnk_080CB5D4[])(Entity*) = {
    sub_080218CC,
    sub_08021984,
};

const s8 gUnk_080CB5DC[] = {
    -1, -2, 1, 2, -3, 3, -4, 4,
};

const s8 gUnk_080CB5E4[] = {
    -1, -2, -1, 0, 1, 2, 1, 0,
};
// clang-format on
