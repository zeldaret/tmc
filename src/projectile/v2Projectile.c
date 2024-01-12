/**
 * @file v2Projectile.c
 * @ingroup Projectiles
 *
 * @brief V2 Projectile
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u16 tilePos;
    /*0x76*/ u16 tileType;
} V2ProjectileEntity;

extern void (*const V2Projectile_Functions[])(V2ProjectileEntity*);
extern void (*const gUnk_0812A7EC[])(V2ProjectileEntity*);
extern void (*const gUnk_0812A7F8[])(Entity*);
extern void (*const gUnk_0812A800[])(Entity*);
extern void (*const gUnk_0812A808[])(Entity*);

void V2Projectile(V2ProjectileEntity* this) {
    V2Projectile_Functions[GetNextFunction(super)](this);
}

void V2Projectile_OnTick(V2ProjectileEntity* this) {
    switch (super->type) {
        case 0: {
            gUnk_0812A7EC[super->action](this);
            break;
        }
        case 1: {
            gUnk_0812A7F8[super->action](super);
            break;
        }
        case 2:
        default:
            gUnk_0812A800[super->action](super);
    }
}

void V2Projectile_OnCollision(V2ProjectileEntity* this) {
    if ((super->contactFlags & CONTACT_NOW) == 0)
        return;

    switch (super->type) {
        case 2: {
            switch ((super->contactFlags & 0x3f)) {
                case 0: {
                    ModHealth(-4);
                    // fallthrough
                }
                case 3:
                case 0x14: {
                    CreateDust(super);
                    DeleteThisEntity();
                    break;
                }
            }
            break;
        }
        case 0:
        case 1: {
            if ((super->contactFlags & 0x3f) == 0) {
                ModHealth(-2);
                DeleteThisEntity();
            }
            break;
        }
    }
}

void V2Projectile_OnGrabbed(V2ProjectileEntity* this) {
    if (!sub_0806F520(super)) {
        CreateFx(super, FX_DEATH, 0);
        DeleteThisEntity();
    }
    gUnk_0812A808[super->subAction](super);
}

void sub_080ABC84(Entity* this) {
    this->subAction = 2;
}

void nullsub_542(Entity* this) {
}

void sub_080ABC90(Entity* this) {
    if (sub_0806F3E4(this) != 0) {
        ModHealth(-2);
        SoundReqClipped(&gPlayerEntity.base, SFX_PLY_VO6);
        sub_08079D84();
        CreateFx(this, FX_DEATH, 0);
        DeleteThisEntity();
    }
}

void sub_080ABCC4(V2ProjectileEntity* this) {
    super->action = 1;
    super->timer = (Random() & 0x3f) + 48;
    super->subtimer = 0;
    super->direction = Random() & 0x1f;
    this->tilePos = TILE(super->x.HALF.HI, super->y.HALF.HI);
    this->tileType = GetTileTypeAtTilePos(this->tilePos, LAYER_TOP);
    super->spritePriority.b0 = 2;
    InitializeAnimation(super, 0);
    SoundReq(SFX_14B);
}

void sub_080ABD44(V2ProjectileEntity* this) {
    if (--super->timer == 0) {
        super->action = 2;
        InitializeAnimation(super, 1);
    }
    ProcessMovement3(super);
    GetNextFrame(super);
}

void sub_080ABD70(V2ProjectileEntity* this) {
    u32 tmp;
    GetNextFrame(super);
    if ((super->frame & 0x10) != 0) {
        super->frame &= 0xef;
        super->speed = 0;
        this->tilePos = TILE(super->x.HALF.HI, super->y.HALF.HI);
        this->tileType = GetTileTypeAtTilePos(this->tilePos, LAYER_TOP);
        tmp = this->tileType;
        if (tmp != 0x13) {
            if (tmp == 0x315) {
                SetTileType(TILE_TYPE_110, this->tilePos, LAYER_TOP);
            }
        } else {
            SetTileType(TILE_TYPE_109, this->tilePos, LAYER_TOP);
        }
    }
    if ((super->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    }
}

void sub_080ABE04(Entity* this) {
    u32 rand = Random() & 0xff;
    u32 newX;
    this->action = 1;
    this->zVelocity = Q_16_16(-1.0);
    this->z.HALF.HI -= 0xa0;
    this->x.HALF.HI = (gRoomControls.origin_x & 0x7ff0) | 0x8;
    this->y.HALF.HI = (gRoomControls.origin_y & 0x7ff0) | 0x8;
    newX = this->x.HALF.HI;
    if (rand & 0x10) {
        newX += 0x10;
    } else {
        newX += 0xc0;
    }
    this->x.HALF.HI = newX + ((0xe0 & rand) >> 1);
    this->y.HALF.HI += ((0xf & rand) << 4);
    SnapToTile(this);
    InitializeAnimation(this, 0);
    SoundReq(SFX_12D);
}

void sub_080ABE88(Entity* this) {
    if (GravityUpdate(this, Q_8_8(24.0)) == 0) {
        CreateFx(this, FX_ROCK, 0);
        DeleteThisEntity();
    }
}

void sub_080ABEA8(Entity* this) {
    this->action = 1;
    this->timer = 96;
    this->spritePriority.b0 = 2;
    this->gustJarFlags = 1;
    if (this->type2 == 0) {
        this->direction = (Random() & 0xf) << 1;
    } else {
        this->direction = sub_08049F84(this, 0);
        ChangeObjPalette(this, 0x13f);
    }
    InitializeAnimation(this, 0);
    SoundReq(SFX_193);
}

void sub_080ABF04(Entity* this) {
    if (CheckOnScreen(this) == 0) {
        DeleteThisEntity();
    }
    LinearMoveUpdate(this);
    GetNextFrame(this);
}

void (*const V2Projectile_Functions[])(V2ProjectileEntity*) = {
    V2Projectile_OnTick,
    V2Projectile_OnCollision,
    (void (*)(V2ProjectileEntity*))DeleteEntity,
    (void (*)(V2ProjectileEntity*))DeleteEntity,
    (void (*)(V2ProjectileEntity*))DeleteEntity,
    V2Projectile_OnGrabbed,
};
void (*const gUnk_0812A7EC[])(V2ProjectileEntity*) = {
    sub_080ABCC4,
    sub_080ABD44,
    sub_080ABD70,
};
void (*const gUnk_0812A7F8[])(Entity*) = {
    sub_080ABE04,
    sub_080ABE88,
};
void (*const gUnk_0812A800[])(Entity*) = {
    sub_080ABEA8,
    sub_080ABF04,
};
void (*const gUnk_0812A808[])(Entity*) = {
    sub_080ABC84,
    nullsub_542,
    sub_080ABC90,
};
