/**
 * @file v1FireProjectile.c
 * @ingroup Projectiles
 *
 * @brief V1 Fire Projectile
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[14];
    /*0x76*/ u16 tilePos;
} V1FireProjectileEntity;

extern void (*const V1FireProjectile_Functions[])(V1FireProjectileEntity*);
extern void (*const V1FireProjectile_Actions[])(V1FireProjectileEntity*);
extern const s8 gUnk_0812A4EC[];

void sub_080AB4A4(V1FireProjectileEntity*);
s8* sub_080AB4F8(Entity*);

void V1FireProjectile(V1FireProjectileEntity* this) {
    V1FireProjectile_Functions[GetNextFunction(super)](this);
}

void V1FireProjectile_OnTick(V1FireProjectileEntity* this) {
    V1FireProjectile_Actions[super->action](this);
}

void V1FireProjectile_OnCollision(V1FireProjectileEntity* this) {
    if ((super->contactFlags & CONTACT_NOW) != 0) {
        super->action = 3;
        COLLISION_OFF(super);
        InitializeAnimation(super, 0x53);
        if ((super->contactFlags & 0x7f) == 0) {
            ModHealth(-4);
        }
    }
}

void V1FireProjectile_Init(V1FireProjectileEntity* this) {
    s32 iVar2;
    u32 rnd;
    u32 x;
    u32 y;
    s8* data;

    super->action = 1;
    super->zVelocity = Q_16_16(-1.0);
    this->tilePos = TILE(super->x.HALF.HI, super->y.HALF.HI);
    CopyPosition(super->parent, super);
    LinearMoveDirection(super, 0x1000, super->direction);
    super->spritePriority.b0 = 1;
    super->z = super->parent->z;
    InitializeAnimation(super, 0x51);
    SoundReq(SFX_1B5);
    data = sub_080AB4F8(super);
    x = super->x.HALF.HI + data[0];
    y = super->y.HALF.HI + data[1];
    iVar2 = sub_080041DC(super, x, y);
    rnd = Random() & 0x1ff;
    if ((gRoomTransition.frameCount & 1U) != 0) {

        iVar2 += rnd;
        if (0x400 < iVar2) {
            iVar2 = 0x400;
        }

    } else {
        iVar2 -= rnd;
        if (iVar2 < 0x20) {
            iVar2 = 0x20;
        }
    }
    super->zVelocity = (super->z.WORD / (iVar2 << 8)) << 0xd;

    super->direction = sub_080045B4(super, x, y);
}

void V1FireProjectile_Action1(V1FireProjectileEntity* this) {
    GetNextFrame(super);
    LinearMoveUpdate(super);
    if (GravityUpdate(super, 0) == 0) {
        super->action = 2;
        super->timer = 15;
        InitializeAnimation(super, 0x54);
        sub_080AB4A4(this);
    } else {
        if (++super->timer > 0xe0) {
            DeleteThisEntity();
        }
    }
}

void V1FireProjectile_Action2(V1FireProjectileEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 3;
        COLLISION_OFF(super);
        InitializeAnimation(super, 0x53);
    }
}

void V1FireProjectile_Action3(V1FireProjectileEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    }
}

void sub_080AB4A4(V1FireProjectileEntity* this) {
    u32 oldTilePos;
    u32 tilePos;

    oldTilePos = this->tilePos;
    tilePos = TILE(super->x.HALF.HI, super->y.HALF.HI);
    if (oldTilePos != tilePos) {
        this->tilePos = tilePos;
        switch (GetTileTypeAtEntity(super)) {
            case 0x13:
            case 0x34:
                sub_0807B7D8(0x34c, this->tilePos, super->collisionLayer);
                break;
        }
    }
}

s8* sub_080AB4F8(Entity* this) {
    return (s8*)&gUnk_0812A4EC[this->type << 5 | this->subtimer << 1];
}

void (*const V1FireProjectile_Functions[])(V1FireProjectileEntity*) = {
    V1FireProjectile_OnTick,
    V1FireProjectile_OnCollision,
    (void (*)(V1FireProjectileEntity*))DeleteEntity,
    (void (*)(V1FireProjectileEntity*))DeleteEntity,
    (void (*)(V1FireProjectileEntity*))DeleteEntity,
};
void (*const V1FireProjectile_Actions[])(V1FireProjectileEntity*) = {
    V1FireProjectile_Init,
    V1FireProjectile_Action1,
    V1FireProjectile_Action2,
    V1FireProjectile_Action3,
};
const s8 gUnk_0812A4EC[] = { 16,  0,   64,  -48, 80,  -32, 80,  0,   80,  32,  64,  48,  32,  16, 48,  0,  32,  -16,
                             80,  -64, 80,  -64, 32,  0,   48,  -32, 64,  -16, 64,  16,  48,  32, 16,  16, 64,  16,
                             64,  32,  48,  48,  32,  64,  16,  64,  16,  32,  32,  16,  80,  16, 80,  48, 64,  64,
                             48,  80,  16,  80,  16,  48,  32,  32,  48,  16,  0,   16,  -48, 48, -32, 64, 32,  64,
                             48,  48,  80,  80,  0,   80,  -80, 80,  0,   32,  64,  64,  48,  80, -48, 80, -64, 64,
                             -16, 16,  0,   48,  16,  16,  -16, 16,  -64, 16,  -64, 32,  -48, 48, -32, 64, -16, 64,
                             -16, 32,  -32, 16,  -80, 16,  -80, 48,  -64, 64,  -48, 80,  -16, 80, -16, 48, -32, 32,
                             -48, 16,  -16, 0,   -64, -48, -80, -32, -80, 0,   -80, 32,  -64, 48, -32, 16, -48, 0,
                             -32, -16, -80, -64, -80, -64, -32, 0,   -48, -32, -64, -16, -64, 16, -48, 32 };
