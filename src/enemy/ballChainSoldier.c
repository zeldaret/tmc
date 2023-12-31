/**
 * @file ballChainSoldier.c
 * @ingroup Enemies
 *
 * @brief Ball Chain Soldier enemy
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"

typedef struct {
    Entity base;
    u8 filler[0x10];
    u16 unk_78;
    u8 unk_7a;
    u8 unk_7b;
    u8 unk_7c;
    u8 unk_7d;
    u8 unk_7e;
    u8 unk_7f;
} BallChainSoldierEntity;

extern Entity* gUnk_020000B0;

void (*const BallChainSoldier_Functions[])(BallChainSoldierEntity*);
void (*const gUnk_080D06F8[])(BallChainSoldierEntity*);
const u8 gUnk_080D0724[];
const u16 gUnk_080D0728[];
const u16 gUnk_080D0730[];

void sub_0803E86C(BallChainSoldierEntity*);
void sub_0803E9A4(BallChainSoldierEntity*);
bool32 sub_0803E9D4(BallChainSoldierEntity*);
void sub_0803E8CC(BallChainSoldierEntity*);
void sub_0803E92C(BallChainSoldierEntity*);
bool32 sub_0803EA64(BallChainSoldierEntity*);
void sub_0803E94C(BallChainSoldierEntity*, u32);
bool32 sub_0803EAD0(BallChainSoldierEntity*, u32);

void BallChainSoldier(Entity* this) {
    EnemyFunctionHandler(this, (EntityActionArray)BallChainSoldier_Functions);
}

void BallChainSoldier_OnTick(BallChainSoldierEntity* this) {
    gUnk_080D06F8[super->action](this);
}

void BallChainSoldier_OnCollision(BallChainSoldierEntity* this) {
    EnemyFunctionHandlerAfterCollision(super, BallChainSoldier_Functions);
}

void BallChainSoldier_OnKnockback(BallChainSoldierEntity* this) {
    GenericKnockback(super);
    BallChainSoldier_OnTick(this);
}

void BallChainSoldier_OnDeath(BallChainSoldierEntity* this) {
    EnemyCreateDeathFX((Enemy*)super, 0xff, 0x57);
}

void BallChainSoldier_OnGrabbed(BallChainSoldierEntity* this) {
}

void BallChainSoldier_Init(BallChainSoldierEntity* this) {
    Entity* entity;
    sub_0804A720(super);
    entity = EnemyCreateProjectile(super, BALL_AND_CHAIN, 0);
    if (entity == NULL)
        return;

    entity->parent = super;
    super->child = entity;
    COLLISION_ON(super);
    super->spriteSettings.draw = 1;
    super->animationState = Random() & 3;
    this->unk_7b = 0;
    this->unk_7c = 0;
    this->unk_7e = 0x20;
    this->unk_7f = 0xfe;
    InitAnimationForceUpdate(super, super->animationState << 2);
    sub_0803E86C(this);
}

void sub_0803E5E8(BallChainSoldierEntity* this) {
    this->unk_7c -= 0xa;
    sub_0803E9A4(this);
    if (sub_0803E9D4(this) == 0) {
        if (--this->unk_78 == 0) {
            sub_0803E8CC(this);
        }
    }
}

void sub_0803E61C(BallChainSoldierEntity* this) {
    this->unk_7c -= 0xa;
    sub_0803E9A4(this);
    if (sub_0803E9D4(this) == 0) {
        if (super->knockbackDuration == 0) {
            if (ProcessMovement0(super) == 0) {
                sub_0803E86C(this);
                return;
            }
        }

        if (--this->unk_78 == 0) {
            sub_0803E92C(this);
        }
    }
}

void sub_0803E66C(BallChainSoldierEntity* this) {
    this->unk_7c -= 0x10;
    sub_0803E9A4(this);
    if (this->unk_7e <= 0x21) {
        this->unk_7e++;
    }

    if (!sub_08049FDC(super, 1) || sub_0803EA64(this) == 0) {
        super->action = 4;
        this->unk_7b = 0;
    }
}

void sub_0803E6B4(BallChainSoldierEntity* this) {
    this->unk_7c -= 0xa;
    sub_0803E9A4(this);
    if (this->unk_7e > 0x20) {
        this->unk_7e--;
    } else {
        sub_0803E86C(this);
    }
}

void sub_0803E6E0(BallChainSoldierEntity* this) {
    this->unk_7c -= 0xc;
    sub_0803E9A4(this);
    this->unk_7e -= 4;
    if ((s8)this->unk_7e <= 0) {
        this->unk_7e = 0;
        super->action = 6;
        super->timer = 30;
        InitAnimationForceUpdate(super, super->animationState + 0x20);
    }
}

void sub_0803E71C(BallChainSoldierEntity* this) {
    if (--super->timer == 0) {
        super->action = 7;
        super->timer = 1;
        this->unk_7c = gUnk_080D0724[super->animationState];
        this->unk_7b = 0;
        this->unk_7f = 0xf6;
        EnqueueSFX(SFX_15B);
    }
}

void sub_0803E75C(BallChainSoldierEntity* this) {
    if ((super->frame & ANIM_DONE) == 0) {
        UpdateAnimationSingleFrame(super);
    } else {
        if (--super->timer == 0) {
            super->timer = 2;
            this->unk_7f++;
        }

        if (this->unk_7f) {
            this->unk_7e += 5;
        } else {
            super->action = 8;
            super->timer = 30;
            InitScreenShake(8, 0);
        }
    }
}

void sub_0803E7B4(BallChainSoldierEntity* this) {
    if (--super->timer == 0) {
        super->action = 9;
    }
}

void sub_0803E7CC(BallChainSoldierEntity* this) {
    this->unk_7e -= 2;
    if (this->unk_7e <= 0xa) {
        super->action = 0xa;
        super->timer = 90;
        super->direction = DirectionFromAnimationState(super->animationState);
        this->unk_7c = 0;
        this->unk_7f = 0xfe;
        sub_0803E94C(this, 0x10);
    } else if (this->unk_7e <= 0x12) {
        COLLISION_OFF(super->child);
    }
}

void sub_0803E818(BallChainSoldierEntity* this) {
    if (super->timer != 0) {
        if (--super->timer == 0) {
            COLLISION_ON(super->child);
            sub_0803E94C(this, 0);
        }
    } else {
        this->unk_7c -= 0xa;
        sub_0803E9A4(this);
        if (++this->unk_7e > 0x1f) {
            sub_0803E86C(this);
        }
    }
}

void sub_0803E86C(BallChainSoldierEntity* this) {
    if (sub_08049FDC(super, 1) && sub_0803EAD0(this, 0x50)) {
        super->direction = DirectionRoundUp(GetFacingDirection(super, gUnk_020000B0));
    }

    super->action = 1;
    this->unk_78 = gUnk_080D0728[Random() & 3];
    this->unk_7a = 4;
    sub_0803E94C(this, 0);
}

void sub_0803E8CC(BallChainSoldierEntity* this) {
    u32 rand = Random();
    u32 temp;
    u32 dir;
    if (sub_08049FA0(super) == 0 && (rand & 3)) {
        dir = sub_08049EE4(super) + 4;
        temp = 0x18;
    } else {
        temp = 0x18;
        dir = rand;
    }

    super->direction = dir & temp;
    super->action = 2;
    this->unk_78 = gUnk_080D0730[(rand >> 0x10) & 3];
    this->unk_7a = 4;
    sub_0803E94C(this, 0x10);
}

void sub_0803E92C(BallChainSoldierEntity* this) {
    if (Random() & 1) {
        sub_0803E86C(this);
    } else {
        sub_0803E8CC(this);
    }
}

void sub_0803E94C(BallChainSoldierEntity* this, u32 arg2) {
    s32 animationState = DirectionToAnimationState(super->direction);
    if ((super->animIndex & 0x10) == arg2) {
        u32 dir = super->direction & 7;
        s32 currentAnimationState = super->animationState;
        if (dir == 4) {
            if (((currentAnimationState - (super->direction >> 3)) & 3) <= 1)
                return;
        }
        if (animationState == currentAnimationState)
            return;
    }

    super->animationState = animationState;
    animationState = arg2 + (super->animIndex & 3) + animationState * 4;
    InitAnimationForceUpdate(super, animationState);
}

void sub_0803E9A4(BallChainSoldierEntity* this) {
    s32 val = ((this->unk_7c + 0x20) & 0xff) >> 6;
    if ((super->animIndex & 3) == val)
        return;
    InitAnimationForceUpdate(super, val + (super->animIndex & -4));
}

bool32 sub_0803E9D4(BallChainSoldierEntity* this) {
    u32 dir;
    if (sub_08049FDC(super, 1)) {
        if (sub_0803EAD0(this, 0x38)) {
            super->action = 3;
            super->direction = DirectionRoundUp(GetFacingDirection(super, gUnk_020000B0));
            this->unk_7b = 1;
            sub_0803E94C(this, 0);
            return 1;
        } else if (sub_0803EAD0(this, 0x4e)) {
            dir = sub_0804A044(super, gUnk_020000B0, 0x12);
            if (dir != 0xff) {
                if (--this->unk_7a != 0)
                    return 0;
                super->action = 5;
                super->direction = dir;
                this->unk_7a = 4;
                sub_0803E94C(this, 0);
                return 1;
            }
        }
    }

    this->unk_7a = 4;
    return 0;
}

bool32 sub_0803EA64(BallChainSoldierEntity* this) {
    u32 dir;
    if (sub_08049FDC(super, 1)) {
        if (sub_0803EAD0(this, 0x4e)) {
            dir = sub_0804A044(super, gUnk_020000B0, 0x12);
            if (dir != 0xff) {
                if (--this->unk_7a != 0)
                    return 1;
                super->action = 5;
                super->direction = dir;
                sub_0803E94C(this, 0);
                return 1;
            }
        }

        if (sub_0803EAD0(this, 0x38))
            return 1;
    }

    this->unk_7a = 4;
    return 0;
}

bool32 sub_0803EAD0(BallChainSoldierEntity* this, u32 distance) {
    return EntityWithinDistance(super, gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI - 4, distance);
}

void (*const BallChainSoldier_Functions[])(BallChainSoldierEntity*) = {
    BallChainSoldier_OnTick,
    BallChainSoldier_OnCollision,
    BallChainSoldier_OnKnockback,
    BallChainSoldier_OnDeath,
    (void (*const)(BallChainSoldierEntity*))GenericConfused,
    BallChainSoldier_OnGrabbed,
};

void (*const gUnk_080D06F8[])(BallChainSoldierEntity*) = {
    BallChainSoldier_Init, sub_0803E5E8, sub_0803E61C, sub_0803E66C, sub_0803E6B4, sub_0803E6E0,
    sub_0803E71C,          sub_0803E75C, sub_0803E7B4, sub_0803E7CC, sub_0803E818,
};

const u8 gUnk_080D0724[] = { 0, 0x44, 0x80, 0xBC };

const u16 gUnk_080D0728[] = { 0x1E, 0x32, 0x46, 0x5A };

const u16 gUnk_080D0730[] = { 0x3C, 0x5A, 0x78, 0x96 };
