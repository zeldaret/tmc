/**
 * @file stalfos.c
 * @ingroup Enemies
 *
 * @brief Stalfos enemy
 */
#include "collision.h"
#include "enemy.h"
#include "functions.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x10];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u8 unk_7c;
    /*0x7d*/ u8 unk_7d;
} StalfosEntity;

extern Entity* gUnk_020000B0;

extern void (*const Stalfos_Functions[])(StalfosEntity*);
extern void (*const Stalfos_Actions[])(StalfosEntity*);
extern void (*const Stalfos_SubActions[])(StalfosEntity*);
extern const u8 gUnk_080CF8F8[];
extern const u8 gUnk_080CF900[];
extern const u16 gUnk_080CF910[];
extern const u8 gUnk_080CF918[];
extern const u8 gUnk_080CF928[];
extern const u8 gUnk_080CF92C[];
extern const u8 gUnk_080CF930[];
extern const u16 gUnk_080CF938[];

void sub_0803981C(StalfosEntity*);
void sub_08039A48(StalfosEntity*);
void sub_08039A00(StalfosEntity*, u32);
void sub_0803998C(StalfosEntity*);
bool32 sub_08039758(StalfosEntity*);
void sub_08039858(StalfosEntity*);
void sub_0803992C(StalfosEntity*);
void sub_080399C4(StalfosEntity*);
void sub_08039A20(StalfosEntity*);
void sub_08039A70(StalfosEntity*);
void sub_08039AD4(StalfosEntity*);
u32 sub_080398C0(StalfosEntity*);
u32 sub_08039B28(StalfosEntity*);

void Stalfos(StalfosEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)&Stalfos_Functions);
    EnemySetFXOffset(super, 0, 1, -0x12);
}

void Stalfos_OnTick(StalfosEntity* this) {
    Stalfos_Actions[super->action](this);
    if (this->unk_7c != 0) {
        if (--this->unk_7c != 0) {
            super->hitType = 0x45;
        } else {
            super->hitType = this->unk_7d;
        }
    }
    if (super->z.HALF.HI != 0) {
        if (super->z.HALF.HI < -8) {
            super->spriteOrientation.flipY = 1;
            super->spriteRendering.b3 = 1;
        } else {
            UpdateSpriteForCollisionLayer(super);
        }
    }
}

void Stalfos_OnCollision(StalfosEntity* this) {
    Entity* r0;
    Entity* r1;
    u32 r2;
    if (super->hitType == 0x44) {
        switch (super->contactFlags & 0x7f) {
            case 4 ... 6:
                if (super->iframes < 1) {
                    super->action = 4;
                    super->direction = super->knockbackDirection;
                    super->animationState = ((((super->direction + 4) & 0x18) ^ 0x10) >> 3);
                    super->speed = 0x120;
                    sub_0803981C(this);
                }
                break;
        }
    }
    r2 = super->contactFlags;
    if (r2 == 0x9d) {
        r1 = super->child;
        if (r1 == NULL) {
            if (super->action < 9) {
                r1 = EnemyCreateProjectile(super, STALFOS_PROJECTILE, 1);
                if (r1 != NULL) {
                    r1->frameIndex = super->animationState << 1;
                    r1->type2 = 2;
                    EnqueueSFX(SFX_186);
                }
                sub_08039A48(this);
                this->unk_78 += 0x5a;
            }
        } else {
            r0 = r1;
            r0->contactFlags = r2;
            EnqueueSFX(SFX_186);
            super->child = NULL;
            sub_08039A48(this);
            this->unk_78 += 0x5a;
        }
        super->collisionMask &= 0xfb;
    }
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(super, Stalfos_Functions);
}

void Stalfos_OnDeath(StalfosEntity* this) {
    if (super->type == 0) {
        EnemyCreateDeathFX((Enemy*)super, 0xf3, 0);
    } else {
        GenericDeath(super);
    }
}

void Stalfos_OnGrabbed(StalfosEntity* this) {
    if (sub_0806F520(super)) {
        Stalfos_SubActions[super->subAction](this);
    }
}

void Stalfos_SubAction0(StalfosEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 0x5a;
}

void Stalfos_SubAction1(StalfosEntity* this) {
    sub_0806F4E8(super);
}

void Stalfos_SubAction2(StalfosEntity* this) {
    Entity* projectile = super->child;
    if (projectile == NULL) {
        projectile = EnemyCreateProjectile(super, STALFOS_PROJECTILE, 1);
        if (projectile != NULL) {
            projectile->frameIndex = super->animationState << 1;
            projectile->type2 = 1;
        }
    } else {
        COLLISION_ON(projectile);
    }
    super->child = NULL;
    super->gustJarState &= 0xfb;
    super->collisionMask &= 0xfb;
    sub_08039A48(this);
    this->unk_78 += 0x5a;
}

void Stalfos_Init(StalfosEntity* this) {
    sub_0804A720(super);
    super->animationState = Random() & 3;
    this->unk_7b = 0;
    this->unk_7c = 0;
    this->unk_7d = super->hitType;
    sub_08039A00(this, 0);
    if (super->type2 == 0) {
        sub_0803998C(this);
    } else {
        super->action = 4;
        super->direction = 0xff;
        super->animationState = (((GetFacingDirection(super, &gPlayerEntity.base) + 4) & 0x18) >> 3);
        sub_0803981C(this);
    }
}

void Stalfos_Action1(StalfosEntity* this) {
    if (GravityUpdate(super, Q_8_8(24.0)) == 0 && sub_08039758(this) == 0 && --this->unk_78 == 0) {
        super->action = 2;
        super->timer = 10;
        sub_08039858(this);
    }
}

void Stalfos_Action2(StalfosEntity* this) {
    if (sub_08039758(this) == 0 && --super->timer == 0) {
        sub_0803992C(this);
    }
}

void Stalfos_Action3(StalfosEntity* this) {
    if (sub_08039758(this) == 0) {
        if (ProcessMovement0(super)) {
            UpdateAnimationSingleFrame(super);
            if (--this->unk_78 == 0) {
                sub_0803998C(this);
            }
        } else {
            this->unk_7b = this->unk_7b << 1 | 1;
            sub_0803998C(this);
        }
    }
}

void Stalfos_Action4(StalfosEntity* this) {
    ProcessMovement2(super);
    if (GravityUpdate(super, Q_8_8(24.0)) == 0) {
        sub_0803998C(this);
        this->unk_7c = 0x5a;
        EnqueueSFX(SFX_PLY_LAND);
    }
}

void Stalfos_Action5(StalfosEntity* this) {
    ProcessMovement2(super);
    GravityUpdate(super, Q_8_8(24.0));
    if (super->zVelocity < 0) {
        super->action = 6;
        super->timer = 15;
    }
}

void Stalfos_Action6(StalfosEntity* this) {
    if (super->timer != 0) {
        super->timer--;
    } else {
        u16 tmp = super->z.HALF.HI += 4;

        if (-1 < (tmp * 0x10000)) {
            super->action = 7;
            super->timer = 10;
            super->z.HALF.HI = 0;
            this->unk_7a = 0x78;
            this->unk_7c = 0x3c;
            sub_080399C4(this);
            EnqueueSFX(SFX_14B);
        }
    }
}

void Stalfos_Action7(StalfosEntity* this) {
    if (--super->timer == 0) {
        sub_0803998C(this);
    }
}

void Stalfos_Action8(StalfosEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (--super->timer == 0) {
        sub_08039A00(this, 0x3c);
        sub_0803998C(this);
    } else if ((super->timer & 0x1f) == 0) {
        sub_08039A20(this);
    }
}

void Stalfos_Action9(StalfosEntity* this) {
    if (GravityUpdate(super, Q_8_8(24.0)) == 0 && --this->unk_78 == 0) {
        sub_08039A70(this);
    }
}

void Stalfos_Action11(StalfosEntity* this) {
    ProcessMovement2(super);
    UpdateAnimationSingleFrame(super);
    if (--this->unk_78 == 0) {
        sub_08039AD4(this);
    }
}

void Stalfos_Action12(StalfosEntity* this) {
    UpdateAnimationSingleFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        if (super->type2 == 1) {
            sub_0803998C(this);
            DeleteEntity(super->child);
            super->child = NULL;
        } else {
            sub_08039A48(this);
        }
        super->collisionMask |= 4;
        this->unk_78 += 0x3c;
    }
}

bool32 sub_08039758(StalfosEntity* this) {
    if (this->unk_7a != 0) {
        this->unk_7a--;
    }
    if (sub_08049FDC(super, 1) && (this->unk_7a == 0)) {
        if (super->type == 0) {
            if (EntityWithinDistance(super, gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI, 0x24)) {
                super->action = 5;
                super->speed = 0x180;
                super->direction = GetFacingDirection(super, gUnk_020000B0);
                super->animationState = (((super->direction + 4) & 0x18) >> 3);
                sub_0803981C(this);
                super->hitType = 0x46;
                this->unk_7d = 0x46;
                super->zVelocity = Q_16_16(2.5);
                return TRUE;
            }
        } else {
            if (EntityWithinDistance(super, gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI, 0x48)) {
                super->action = 8;
                super->timer = 60;
                super->direction = GetFacingDirection(super, gUnk_020000B0);
                InitAnimationForceUpdate(super, super->animationState + 0xc);
                return TRUE;
            }
        }
    }
    return FALSE;
}

void sub_0803981C(StalfosEntity* this) {
    super->zVelocity = Q_16_16(2.0);
    if (super->iframes == 0) {
        super->iframes = -0xc;
    }
    super->hitType = 0x45;
    this->unk_7d = 0x45;
    InitAnimationForceUpdate(super, super->animationState + 8);
    EnqueueSFX(SFX_12B);
}

void sub_08039858(StalfosEntity* this) {
    s32 iVar1;
    u32 uVar2;

    iVar1 = sub_080398C0(this);
    uVar2 = (u32)super->animationState * 8;
    if (((iVar1 + 4U) & 0x18) == uVar2) {
        if (this->unk_7b != 3) {
            return;
        }
        this->unk_7b = 0;
        iVar1 += ((Random() & 2) - 1) * 8;
    }
    uVar2 = ((iVar1 - uVar2) & 0x1f) >> 4 ^ 1;
    InitAnimationForceUpdate(super, gUnk_080CF8F8[(u32)super->animationState * 2 + uVar2]);
    super->animationState = ((uVar2 * 2 + super->animationState) - 1) & 3;
}

u32 sub_080398C0(StalfosEntity* this) {
    u32 rand = Random();
    if ((super->type == 0) && sub_08049FDC(super, 1) &&
        (EntityWithinDistance(super, gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI, 0x58) != 0)) {
        return GetFacingDirection(super, &gPlayerEntity.base);
    } else {
        if ((sub_08049FA0(super) == 0) && ((rand & 7) != 0)) {
            return sub_08049EE4(super);
        } else {
            return rand >> 0x10 & 0x18;
        }
    }
}

void sub_0803992C(StalfosEntity* this) {
    super->action = 3;
    super->speed = 0xe0;
    super->direction = super->animationState << 3;
    this->unk_78 = (u16)gUnk_080CF900[Random() & 0xf];
    CalculateEntityTileCollisions(super, super->direction, 0);
    if ((gUnk_080CF910[super->animationState] & super->collisions) != COL_NONE) {
        InitAnimationForceUpdate(super, super->animationState);
    } else {
        InitAnimationForceUpdate(super, super->animationState + 4);
    }
}

void sub_0803998C(StalfosEntity* this) {
    super->action = 1;
    super->hitType = 0x44;
    this->unk_7d = 0x44;
    this->unk_78 = gUnk_080CF918[Random() & 0xf];
    InitAnimationForceUpdate(super, super->animationState);
}

void sub_080399C4(StalfosEntity* this) {
    Entity* effect = CreateFx(super, FX_DASH, 0);
    if (effect != NULL) {
        effect->x.HALF.HI -= 4;
        effect->y.HALF.HI += 2;
    }
    effect = CreateFx(super, FX_DASH, 0);
    if (effect != NULL) {
        effect->x.HALF.HI += 4;
        effect->y.HALF.HI += 2;
    }
}

void sub_08039A00(StalfosEntity* this, u32 param_2) {
    this->unk_7a = gUnk_080CF928[Random() & 3] + param_2;
}

void sub_08039A20(StalfosEntity* this) {
    Entity* projectile = EnemyCreateProjectile(super, BONE_PROJECTILE, 0);
    if (projectile != NULL) {
        projectile->direction = super->direction;
        this->unk_7c = 0x3c;
        EnqueueSFX(SFX_FB);
    }
}

void sub_08039A48(StalfosEntity* this) {
    super->action = 9;
    super->hitType = 0x47;
    this->unk_7d = 0x47;
    this->unk_78 = 10;
    InitAnimationForceUpdate(super, super->animationState + 0x10);
}

void sub_08039A70(StalfosEntity* this) {
    u32 rand;
    super->action = 0xa;
    super->speed = 0xe0;
    rand = Random();
    this->unk_78 = gUnk_080CF92C[rand & 3];
    rand >>= 0x10;
    if ((sub_08049FA0(super) == 0) && ((rand & 7) != 0)) {
        super->direction = (sub_08049EE4(super) + 4) & 0x18;
    } else {
        super->direction = rand & 0x18;
    }
    super->animationState = super->direction >> 3;
    InitAnimationForceUpdate(super, super->animationState + 0x14);
}

void sub_08039AD4(StalfosEntity* this) {
    u32 position = sub_08039B28(this);
    if (position != 0xffff) {
        Entity* projectile = EnemyCreateProjectile(super, STALFOS_PROJECTILE, super->type2);
        if (projectile != NULL) {
            projectile->parent = super;
            super->action = 0xb;
            super->child = projectile;
            InitAnimationForceUpdate(super, super->animationState + 0x18);
            SetTile(SPECIAL_TILE_103, position, super->collisionLayer);
            return;
        }
    }
    sub_08039A48(this);
}

u32 sub_08039B28(StalfosEntity* this) {
    u32 tileType;
    u32 pos;
    const u16* ptr;
    const s8* ptr2;

    if (super->child != NULL) {
        return (u16)-1;
    }
    ptr2 = &gUnk_080CF930[super->animationState * 2];
    pos = COORD_TO_TILE_OFFSET(super, -ptr2[0], -ptr2[1]);
    tileType = GetTileTypeAtTilePos(pos, (u32)super->collisionLayer);
    ptr = gUnk_080CF938;

    do {
        if (ptr[0] == tileType) {
            super->type2 = ptr[1];
            return pos;
        }
        ptr += 2;
    } while (ptr[0] != 0);

    return (u16)-1;
}

void (*const Stalfos_Functions[])(StalfosEntity*) = {
    Stalfos_OnTick,
    Stalfos_OnCollision,
    (void (*)(StalfosEntity*))GenericKnockback,
    Stalfos_OnDeath,
    (void (*)(StalfosEntity*))GenericConfused,
    Stalfos_OnGrabbed,
};
void (*const Stalfos_Actions[])(StalfosEntity*) = {
    Stalfos_Init,    Stalfos_Action1, Stalfos_Action2, Stalfos_Action3, Stalfos_Action4,  Stalfos_Action5,
    Stalfos_Action6, Stalfos_Action7, Stalfos_Action8, Stalfos_Action9, Stalfos_Action11, Stalfos_Action12,
};
void (*const Stalfos_SubActions[])(StalfosEntity*) = {
    Stalfos_SubAction0,
    Stalfos_SubAction1,
    Stalfos_SubAction2,
};
const u8 gUnk_080CF8F8[] = {
    28, 29, 30, 31, 32, 33, 34, 35,
};
const u8 gUnk_080CF900[] = {
    60, 60, 90, 90, 90, 90, 120, 120, 120, 120, 120, 120, 120, 120, 150, 150,
};
const u16 gUnk_080CF910[] = {
    8,
    32768,
    128,
    2048,
};
const u8 gUnk_080CF918[] = {
    10, 10, 15, 15, 15, 15, 20, 20, 20, 20, 20, 25, 25, 25, 30, 30,
};
const u8 gUnk_080CF928[] = {
    30,
    60,
    60,
    90,
};
const u8 gUnk_080CF92C[] = {
    45,
    60,
    75,
    90,
};
const u8 gUnk_080CF930[] = {
    0, 248, 8, 0, 0, 8, 248, 0,
};
const u16 gUnk_080CF938[] = {
    16384, 0, 16480, 1, 0,
};
