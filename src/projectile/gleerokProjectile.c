/**
 * @file gleerokProjectile.c
 * @ingroup Projectiles
 *
 * @brief Gleerok Projectile
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[12];
    /*0x74*/ u16 unk_74;
} GleerokProjectileEntity;

extern void (*const GleerokProjectile_Functions[])(GleerokProjectileEntity*);
extern void (*const GleerokProjectile_Actions[])(GleerokProjectileEntity*);
extern const s8 gUnk_08129978[];
extern const s8 gUnk_08129980[];
extern const s8 gUnk_08129988[];

void sub_080A90D8(GleerokProjectileEntity*);

void GleerokProjectile(GleerokProjectileEntity* this) {
    GleerokProjectile_Functions[GetNextFunction(super)](this);
}

void GleerokProjectile_OnTick(GleerokProjectileEntity* this) {
    if (((super->type != 3) && ((super->contactFlags & CONTACT_NOW) != 0)) && ((super->contactFlags & 0x7f) != 0x1e)) {
        super->action = 3;
        COLLISION_OFF(super);
        InitializeAnimation(super, 0x53);
    }
    GleerokProjectile_Actions[super->action](this);
}

void GleerokProjectile_Init(GleerokProjectileEntity* this) {
    u32 uVar1;
    s32 iVar2;

    super->action = 1;
    super->zVelocity = Q_16_16(-1.0);
    if (super->type != 3) {
        CopyPosition(super->parent, super);
        LinearMoveDirection(super, 0x1000, super->direction);
        super->z.WORD = super->parent->y.WORD - super->child->y.WORD;
        super->y.WORD -= super->z.WORD;
        InitializeAnimation(super, 0x51);
        SoundReq(SFX_1B5);
    }

    switch (super->type) {
        case 0:
        case 1:
            iVar2 = sub_080041DC(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI);
            if (super->type == 1) {
                uVar1 = Random() & 0x1ff;
                if ((gRoomTransition.frameCount & 1U) == 0) {
                    iVar2 += uVar1;
                } else {
                    iVar2 -= uVar1;
                }
            }
            if (iVar2 < 0x20) {
                iVar2 = 0x20;
            } else if (0x400 < iVar2) {
                iVar2 = 0x400;
            }
            super->zVelocity = super->z.WORD / (iVar2 << 8) << 0xd;
            super->subtimer = 30;
            break;
        case 2:
            super->zVelocity = (super->z.WORD / 0x18000) << 0xc;
            break;
        case 3:
            super->z.WORD = Q_16_16(-160.0);
            uVar1 = (Random() & 3) * 2;
            super->x.HALF.HI = gUnk_08129978[uVar1] + super->x.HALF.HI;
            super->y.HALF.HI = gUnk_08129978[uVar1 + 1] + super->y.HALF.HI;
            if ((uVar1 & 2) != 0) {
                super->x.HALF.HI += gUnk_08129988[Random() & 0xf];
                super->y.HALF.HI += gUnk_08129980[Random() & 7];
            } else {
                super->x.HALF.HI += gUnk_08129980[Random() & 7];
                super->y.HALF.HI += gUnk_08129988[Random() & 0xf];
            }
            SnapToTile(super);
            InitializeAnimation(super, 0);
            break;
    }
}

void GleerokProjectile_Action1(GleerokProjectileEntity* this) {
    if (super->type == 3) {
        if (GravityUpdate(super, Q_8_8(24.0)) == 0) {
            DoTileInteractionHere(super, 7);
            CreateFx(super, FX_ROCK, 0);
            DeleteThisEntity();
        }
    } else {
        GetNextFrame(super);
        LinearMoveUpdate(super);
        if ((super->type != 2) && (super->subtimer-- == 0)) {
            super->subtimer = 30;
            sub_08004596(super, GetFacingDirection(super, &gPlayerEntity.base));
        }
        if (GravityUpdate(super, 0) == 0) {
            super->action = 2;
            sub_080A90D8(this);
            if (super->type == 2) {
                super->timer = 15;
                InitializeAnimation(super, 0x54);
            } else {
                InitializeAnimation(super, 0x52);
            }
        }
    }
}

void GleerokProjectile_Action2(GleerokProjectileEntity* this) {
    GetNextFrame(super);
    if (super->type == 2) {
        if (super->timer-- == 0) {
            COLLISION_OFF(super);
            super->action = 3;
            InitializeAnimation(super, 0x55);
        } else {
            LinearMoveUpdate(super);
            sub_080A90D8(this);
        }
    } else {
        if ((super->frame & ANIM_DONE) != 0) {
            super->action = 3;
            COLLISION_OFF(super);
            InitializeAnimation(super, 0x53);
        }
    }
}

void GleerokProjectile_Action3(GleerokProjectileEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    }
}

void sub_080A90D8(GleerokProjectileEntity* this) {
    u32 tmp;

    if (this->unk_74 != TILE(super->x.HALF.HI, super->y.HALF.HI)) {
        this->unk_74 = TILE(super->x.HALF.HI, super->y.HALF.HI);
        tmp = GetTileTypeAtEntity(super);
        if ((tmp == 0x13) || (tmp == 0x34)) {
            sub_0807B7D8(0x34c, TILE(super->x.HALF.HI, super->y.HALF.HI), super->collisionLayer);
        }
    }
}

void (*const GleerokProjectile_Functions[])(GleerokProjectileEntity*) = {
    GleerokProjectile_OnTick,
    GleerokProjectile_OnTick,
    (void (*)(GleerokProjectileEntity*))DeleteEntity,
    (void (*)(GleerokProjectileEntity*))DeleteEntity,
    (void (*)(GleerokProjectileEntity*))DeleteEntity,
};
void (*const GleerokProjectile_Actions[])(GleerokProjectileEntity*) = {
    GleerokProjectile_Init,
    GleerokProjectile_Action1,
    GleerokProjectile_Action2,
    GleerokProjectile_Action3,
};
const s8 gUnk_08129978[] = { 80, 0, 0, 80, -96, 0, 0, -96 };
const s8 gUnk_08129980[] = { 0, 16, -16, 0, 16, -16, 16, -16 };
const s8 gUnk_08129988[] = { 0, -16, -32, -48, -64, -80, -96, -112, 0, 16, 32, 48, 64, 80, 96, 112 };
