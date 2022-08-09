/**
 * @file beetle.c
 * @ingroup Enemies
 *
 * @brief Beetle enemy
 */

#include "enemy.h"
#include "functions.h"

u32 sub_08021D00(Entity*);
void sub_08021D44(Entity* this, u32 direction);

extern void (*const Beetle_Functions[])(Entity*);
extern void (*const gUnk_080CB5A8[])(Entity*);
extern void (*const gUnk_080CB5C8[])(Entity*);
extern void (*const gUnk_080CB5D4[])(Entity*);

extern const s8 gUnk_080CB5DC[];
extern const s8 gUnk_080CB5E4[];

void Beetle(Entity* this) {
    EnemyFunctionHandler(this, Beetle_Functions);
}

void Beetle_OnTick(Entity* this) {
    gUnk_080CB5A8[this->action](this);
}

void Beetle_OnCollision(Entity* this) {
    switch (this->contactFlags) {
        case 0x80:
            if (gPlayerState.framestate == PL_STATE_CLIMB) {
                Beetle_OnTick(this);
            } else {
                this->action = 5;
                this->timer = 180;
                this->subtimer = 0;
                COLLISION_OFF(this);
                this->spritePriority.b0 = 3;
                CopyPositionAndSpriteOffset(&gPlayerEntity, this);
                this->z.HALF.HI = -1;
                ((u8*)&this->field_0x86)[1] = 1;
                InitializeAnimation(this, 6);
            }
            break;
        case 0x93:
            Beetle_OnTick(this);
            break;
    }

    if (this->health == 0)
        this->knockbackDuration = 0;

    EnemyFunctionHandlerAfterCollision(this, Beetle_Functions);
}

void Beetle_OnDeath(Entity* this) {
    if (this->type == 0) {
        GenericDeath(this);
    } else {
        Entity* ent = this->parent;
        if (ent != NULL) {
            ent->subtimer--;
            this->parent = NULL;
        }
        CreateDeathFx(this, 0xf0, 0);
    }
}

void Beetle_OnGrabbed(Entity* this) {
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
        Beetle_OnDeath(this);
}

void Beetle_Initialize(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->gustJarFlags = 1;
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
        this->zVelocity = Q_16_16(1.125);
    }

    GetNextFrame(this);
    if (this->frame & 1) {
        ProcessMovement2(this);
        if (sub_080044EC(this, 0x1c00) == 0)
            this->frameDuration = 1;
    }

    if (this->frame & ANIM_DONE) {
        this->action = 2;
        this->timer = (Random() & 0x38) + 8;
        this->subtimer = 1;
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
        EnqueueSFX(SFX_12D);
    }

    if (GravityUpdate(this, Q_8_8(24.0)) == 0) {
        this->action = 2;
        this->timer = 16;
        this->subtimer = 1;
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
        if (--this->timer == 0) {
            this->action = 3;
            this->timer = (Random() & 0x3f) + 30;
            sub_08021D44(this, this->direction);
            InitializeAnimation(this, 2);
        }
    }
}

void sub_08021A64(Entity* this) {
    if (!sub_08021D00(this)) {
        if (--this->timer == 0) {
            this->action = 2;
            this->timer = (Random() & 0x1F) + 30;
            InitializeAnimation(this, 0);
        }

        if (--this->subtimer == 0) {
            u32 tmp;

            this->subtimer = 8;
            tmp = sub_08049F84(this, 1);
            if (tmp == 0xff) {
                this->action = 7;
                InitializeAnimation(this, 1);
                return;
            }
            sub_08021D44(this, tmp);
        }
        ProcessMovement0(this);
        GetNextFrame(this);
    }
}

void sub_08021AD8(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        if (this->timer != 0) {
            u32 tmp;

            this->timer = 0;
            tmp = sub_08049F84(this, 1);
            if (tmp == 0xff) {
                this->action = 2;
                this->timer = 8;
                InitializeAnimation(this, 0);
                return;
            }
            this->direction = (u8)tmp;
            EnqueueSFX(SFX_PLY_JUMP);
        }
        ProcessMovement2(this);
        if (!GravityUpdate(this, Q_8_8(24.0)))
            this->frameDuration = 1;
    }

    if (this->frame & ANIM_DONE) {
        this->action = 2;
        this->timer = 20;
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
        s32 iVar4 = 1;

        if (gPlayerState.framestate != PL_STATE_JUMP && gPlayerState.framestate != PL_STATE_CAPE) {
            if (sub_0807953C())
                iVar4 = this->type * 3 + 8;

            iVar4 = this->timer - iVar4;
            if (iVar4 < 0)
                iVar4 = 0;

            this->timer = (u8)iVar4;
        }

        if (gPlayerState.flags & (PL_DISABLE_ITEMS | PL_CAPTURED))
            iVar4 = 0;

        if (iVar4 == 0) {
            this->action = 6;
            this->zVelocity = Q_16_16(1.0);
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
            gPlayerState.attachedBeetleCount++;
            CopyPositionAndSpriteOffset(&gPlayerEntity, this);
            this->x.HALF.HI += gUnk_080CB5E4[(this->subtimer++ & 0xe) >> 1];
            this->z.HALF.HI--;
            GetNextFrame(this);
        }
    }
}

void sub_08021C58(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        ProcessMovement2(this);
        if (GravityUpdate(this, Q_8_8(24.0)) == 0)
            this->frameDuration = 1;
    }

    if (this->frame & ANIM_DONE) {
        this->action = 2;
        this->timer = 60;
        this->subtimer = 1;
        COLLISION_ON(this);
        this->spritePriority.b0 = 4;
        ((u8*)&this->field_0x86)[0] = 60;
        InitializeAnimation(this, 0);
    }
}

void sub_08021CD0(Entity* this) {
    if ((this->frame & ANIM_DONE) == 0)
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
        this->timer = 1;
        this->zVelocity = Q_16_16(1.5);
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
void (*const Beetle_Functions[])(Entity*) = {
    Beetle_OnTick,
    Beetle_OnCollision,
    GenericKnockback,
    Beetle_OnDeath,
    GenericConfused,
    Beetle_OnGrabbed,
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
