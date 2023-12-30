/**
 * @file v3ElectricProjectile.c
 * @ingroup Projectiles
 *
 * @brief V3 Electric Projectile
 */
#include "collision.h"
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "physics.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[28];
    /*0x84*/ u8 unk_84;
    /*0x85*/ u8 unk_85;
} V3ElectricProjectileEntity;

extern void (*const V3ElectricProjectile_Functions[])(V3ElectricProjectileEntity*);
extern void (*const V3ElectricProjectile_Actions[])(V3ElectricProjectileEntity*);
static const u16 projectileSpeeds[];
static const u8 gUnk_0812A982[];
static const u8 projectileDirections[];

void V3ElectricProjectile(V3ElectricProjectileEntity* this) {
    V3ElectricProjectile_Functions[GetNextFunction(super)](this);
}

void V3ElectricProjectile_OnTick(V3ElectricProjectileEntity* this) {
    V3ElectricProjectile_Actions[super->action](this);
}

void V3ElectricProjectile_OnCollision(V3ElectricProjectileEntity* this) {
    DeleteThisEntity();
}

void V3ElectricProjectile_Init(V3ElectricProjectileEntity* this) {
    Sound sound;
    InitializeAnimation(super, super->type + 1);

    switch (super->type) {
        case 0: {
            super->action = 1;
            super->timer = 0;
            super->subtimer = 7;
            this->unk_85 = 0x18;
            super->damage = 0x88;
            CopyPositionAndSpriteOffset(super->parent, super);
            super->z.HALF.HI -= 0x14;
            sound = SFX_149;
            break;
        }
        case 1: {
            super->action = 1;
            super->flags &= ~ENT_COLLIDE;
            this->unk_85 = 0x18;
            CopyPositionAndSpriteOffset(super->parent, super);
            super->z.HALF.HI -= 0x14;
            sound = SFX_149;
            break;
        }
        default: {
            super->action = 2;
            super->timer = 0;
            super->subtimer = 255;
            super->speed = projectileSpeeds[super->type2];
            super->damage = 0x88;
            sound = SFX_193;
            break;
        }
    }

    SoundReq(sound);
}

void V3ElectricProjectile_Action1(V3ElectricProjectileEntity* this) {
    if (super->parent->next == NULL) {
        DeleteThisEntity();
    }
    CopyPositionAndSpriteOffset(super->parent, super);
    super->z.HALF.HI -= 0x14;
    if (this->unk_85 != 0) {
        if (((--this->unk_85) & 7) == 0) {
            SoundReq(SFX_149);
        }
    }
    GetNextFrame(super);
    if ((super->frame & 1) != 0) {
        if (super->type == 0) {
            super->action = 2;
            super->direction = GetFacingDirection(super, &gPlayerEntity.base);
            super->speed = 0x180;
            SoundReq(SFX_193);
        } else {
            super->action = 3;
            super->timer = 16;
        }
        super->z.HALF.HI -= 0x28;
    }
}

void V3ElectricProjectile_Action2(V3ElectricProjectileEntity* this) {
    u8 bVar1;
    s32 iVar2;
    u32 uVar3;

    if (super->z.HALF.HI < -6) {
        super->z.HALF.HI += 3;
    }
    ProcessMovement3(super);
    if (super->collisions != COL_NONE) {
        DeleteThisEntity();
    }
    GetNextFrame(super);
    if (IsProjectileOffScreen(super)) {
        DeleteThisEntity();
    }
    if (super->timer < 0x1e) {
        if (((++super->timer) & super->subtimer) == 0) {
            sub_08004596(super, GetFacingDirection(super, &gPlayerEntity.base));
        }
    }
}

void V3ElectricProjectile_Action3(V3ElectricProjectileEntity* this) {
    u8 timer;
    GetNextFrame(super);
    super->z.WORD -= Q_16_16(0.5);
    timer = --super->timer;
    if (timer == 0) {
        u32 rand;
        u32 dir;
        super->action = 4;
        super->timer = 4;
        rand = Random() & 0x7;
        super->subtimer = gUnk_0812A982[rand];
        dir = GetFacingDirection(super, &gPlayerEntity.base);
        if (((V3ElectricProjectileEntity*)super->parent)->unk_84 == 3) {
            dir -= projectileDirections[rand];
            super->type2 = 0;
        } else if (((V3ElectricProjectileEntity*)super->parent)->unk_84 == 2) {
            dir -= projectileDirections[rand];
            super->type2 = 1;
        } else {
            dir -= projectileDirections[rand] >> 1;
            super->type2 = 2;
        }

        super->direction = dir & 0x1f;
    }
}

void V3ElectricProjectile_Action4(V3ElectricProjectileEntity* this) {
    Entity* proj;
    GetNextFrame(super);

    if (--super->timer)
        return;

    super->timer = 16;
    proj = CreateProjectile(V3_ELECTRIC_PROJECTILE);

    if (proj) {
        proj->type = 2;
        proj->type2 = super->type2;
        proj->direction = super->direction;
        proj->parent = super->parent;
        CopyPosition(super, proj);
    }

    if (--super->subtimer == 0) {
        DeleteThisEntity();
    }

    if (((V3ElectricProjectileEntity*)super->parent)->unk_84 == 3) {
        super->direction = (super->direction + 3) & 0x1f;
    } else if (((V3ElectricProjectileEntity*)super->parent)->unk_84 == 2) {
        super->direction = (super->direction + 3) & 0x1f;
    } else {
        super->direction = (super->direction + 2) & 0x1f;
    }
}

void (*const V3ElectricProjectile_Functions[])(V3ElectricProjectileEntity*) = {
    V3ElectricProjectile_OnTick,
    V3ElectricProjectile_OnCollision,
    (void (*)(V3ElectricProjectileEntity*))DeleteEntity,
    (void (*)(V3ElectricProjectileEntity*))DeleteEntity,
    (void (*)(V3ElectricProjectileEntity*))DeleteEntity,
};
void (*const V3ElectricProjectile_Actions[])(V3ElectricProjectileEntity*) = {
    V3ElectricProjectile_Init,    V3ElectricProjectile_Action1, V3ElectricProjectile_Action2,
    V3ElectricProjectile_Action3, V3ElectricProjectile_Action4,
};
static const u16 projectileSpeeds[] = { 352, 480, 480 };
static const u8 gUnk_0812A982[] = {
    5, 6, 7, 8, 5, 6, 7, 6,
};
static const u8 projectileDirections[] = {
    6, 9, 9, 12, 6, 9, 9, 9, 0, 0,
};
