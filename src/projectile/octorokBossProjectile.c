/**
 * @file octorockBossProjectile.c
 * @ingroup Projectiles
 *
 * @brief Octorock Boss Projectile
 */
#include "collision.h"
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "projectile.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[16];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ u8 unk_7c;
} OctorokBossProjectileEntity;

void OctorokBossProjectile_Action2(OctorokBossProjectileEntity*);

extern void (*const OctorokBossProjectile_Functions[])(OctorokBossProjectileEntity*);
extern void (*const OctorokBossProjectile_Actions[])(OctorokBossProjectileEntity*);
extern const u8 gUnk_08129ADC[];

enum OctorokBossProjectileType {
    TYPE0, // rock
    TYPE1, // rock fragment
    TYPE2,
    TYPE3 // falling stones
};

void OctorokBossProjectile(OctorokBossProjectileEntity* this) {
    OctorokBossProjectile_Functions[GetNextFunction(super)](this);
}

void OctorokBossProjectile_OnTick(OctorokBossProjectileEntity* this) {
    OctorokBossProjectile_Actions[super->action](this);
}

void OctorokBossProjectile_Init(OctorokBossProjectileEntity* this) {
    u32 uVar1;
    u32 uVar2;

    super->action = 1;

    switch (super->type) {
        case 0:
            LinearMoveAngle(super, 0x4800, super->direction);
            super->speed = 0x200;
            super->timer = 0;
            super->subtimer = super->direction;
            this->unk_78 = 300;
            InitAnimationForceUpdate(super, 0);
            break;
        case 1:
            super->spriteRendering.b3 = 3;
            super->spritePriority.b0 = 6;
            super->speed = (Random() & 0x1ff) + 0x200;
            super->zVelocity = (Random() & 0x1fff) + Q_16_16(1.5);
            uVar1 = (((u8)Random() & 7) - 4);
            super->direction -= uVar1;
            *(u32*)&this->unk_78 = 600;
            LinearMoveAngle(super, super->speed, super->direction);
            InitializeAnimation(super, 4);
            break;
        case 2:
            if ((Random() & 1) != 0) {
                super->direction = (Random() & 7) + super->direction;
            } else {
                super->direction = super->direction - (Random() & 7);
            }
            super->speed = 0x200;
            super->timer = 48;
            LinearMoveAngle(super, 0x5000, super->direction);
            InitializeAnimation(super, 5);
            break;
        case 3:
            CopyPosition(&gPlayerEntity.base, super);
            super->z.WORD = Q_16_16(-160.0);
            super->x.HALF.HI += 0x60;
            super->y.HALF.HI += 0x40;
            super->x.HALF.HI -= (s32)Random() % 0xc0;
            uVar2 = Random() & 0x7f;
            super->y.HALF.HI -= uVar2;
            InitializeAnimation(super, 0);
            break;
    }

    SoundReq(SFX_1B5);
}

void OctorokBossProjectile_Action1(OctorokBossProjectileEntity* this) {
    u32 index;

    switch (super->type) {
        case 0:
            if (super->parent->action == 2) {
                DeleteThisEntity();
            }
            if ((super->type2 == 0) && ((super->contactFlags & CONTACT_NOW) != 0)) {
                if ((super->contactFlags & 0x7f) == 0) {
                    OctorokBossProjectile_Action2(this);
                }
                super->direction = super->knockbackDirection << 3;
                super->speed = 0x400;
                super->type2 = 1;
                super->timer = 0;
                COLLISION_OFF(super);
            }
            if (sub_0806FC80(super, super->parent, 0x40) != 0) {
                if (super->type2 == 0) {
                    super->direction ^= 0x80;
                    super->speed = 0x400;
                } else {
                    super->parent->health--;
                    super->parent->iframes = 0x1e;
                    if (((OctorokBossProjectileEntity*)super->parent)->unk_7c != 0) {
                        super->parent->knockbackDuration = 0x18;
                        super->parent->knockbackSpeed = 0x200;
                        super->parent->knockbackDirection = super->direction >> 3;
                    }
                    SoundReq(SFX_BOSS_HIT);
                    OctorokBossProjectile_Action2(this);
                }
            }
            UpdateAnimationSingleFrame(super);
            this->unk_78--;
            LinearMoveAngle(super, super->speed, super->direction);
            CalculateEntityTileCollisions(super, super->direction >> 3, 0);
            if ((super->collisions & (COL_WEST_ANY | COL_EAST_ANY)) != COL_NONE) {
                super->direction = -super->direction;
            }
            if ((super->collisions & (COL_NORTH_ANY | COL_SOUTH_ANY)) != COL_NONE) {
                super->direction = -super->direction ^ 0x80;
            }
            if (super->direction == super->subtimer) {
                return;
            }
            SoundReq(SFX_164);
            if (this->unk_78 == 0) {
                super->timer = 4;
            } else {
                super->timer++;
            }

            super->subtimer = super->direction;
            if (super->timer < 2) {
                return;
            }
            for (index = 0; index < 3; ++index) {
                super->child = EnemyCreateProjectile(super, OCTOROK_BOSS_PROJECTILE, 1);
                if (super->child != NULL) {
                    super->child->parent = super->parent;
                    super->child->direction = super->direction + gUnk_08129ADC[index];
                    CopyPosition(super, super->child);
                }
            }
            OctorokBossProjectile_Action2(this);
            break;
        case 1:
            if (super->parent->action == 2) {
                OctorokBossProjectile_Action2(this);
            }
            GetNextFrame(super);
            if (GravityUpdate(super, Q_8_8(24.0)) != 0) {
                CalculateEntityTileCollisions(super, super->direction >> 3, 0);
                if (super->collisions == COL_NONE) {
                    LinearMoveAngle(super, (s32)super->speed, (u32)super->direction);
                } else {
                    OctorokBossProjectile_Action2(this);
                }
            }
            if (*(u32*)&this->unk_78 < 0x1e) {
                if ((*(u32*)&this->unk_78 & 7) != 0) {
                    super->spriteSettings.draw = 1;
                } else {
                    super->spriteSettings.draw = 0;
                }
            }
            if (--*(u32*)&this->unk_78 == -1) {
                OctorokBossProjectile_Action2(this);
            }
            if ((super->contactFlags & CONTACT_NOW) == 0) {
                return;
            }
            OctorokBossProjectile_Action2(this);
            break;
        case 2:
            GetNextFrame(super);
            if (super->timer-- != 0) {
                LinearMoveAngle(super, super->speed, super->direction);
                return;
            }
            if (super->child != NULL) {
                super->child->timer = 1;
            }
            DeleteThisEntity();
            break;
        case 3:
            if (GravityUpdate(super, Q_8_8(24.0)) != 0) {
                return;
            }
            CreateFx(super, FX_ROCK, 0);
            DeleteThisEntity();
            break;
    }
}

void OctorokBossProjectile_Action2(OctorokBossProjectileEntity* this) {
    CreateFx(super, FX_ROCK, 0);
    DeleteThisEntity();
}

void (*const OctorokBossProjectile_Functions[])(OctorokBossProjectileEntity*) = {
    OctorokBossProjectile_OnTick,
    OctorokBossProjectile_OnTick,
    (void (*)(OctorokBossProjectileEntity*))DeleteEntity,
    (void (*)(OctorokBossProjectileEntity*))DeleteEntity,
    (void (*)(OctorokBossProjectileEntity*))DeleteEntity,
};
void (*const OctorokBossProjectile_Actions[])(OctorokBossProjectileEntity*) = {
    OctorokBossProjectile_Init,
    OctorokBossProjectile_Action1,
    OctorokBossProjectile_Action2,
};
const u8 gUnk_08129ADC[] = {
    0,
    224,
    32,
    0,
};
