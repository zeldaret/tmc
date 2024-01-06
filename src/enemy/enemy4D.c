/**
 * @file enemy4D.c
 * @ingroup Enemies
 *
 * @brief Enemy4D enemy
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x5];
    /*0x6d*/ u8 unk_6d;
    /*0x6e*/ u8 unk_6e;
    /*0x6f*/ u8 unk_6f;
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u8 unk_74[0x4];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u8 unk_7c;
    /*0x7d*/ u8 unk_7d;
    /*0x7e*/ u8 unk_7e;
    /*0x7f*/ u8 unk_7f;
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
    /*0x84*/ u16 unk_84;
    /*0x86*/ u16 unk_86;
} Enemy4DEntity;

extern void sub_0803E9A4(Entity*);      // ballChainSoldier
extern void sub_0803E94C(Entity*, u32); // ballChainSoldier

extern Entity* gUnk_020000B0;

void sub_0803EE8C(Enemy4DEntity*);
bool32 sub_0803EF20(Enemy4DEntity*);
bool32 sub_0803EEA4(Enemy4DEntity*);
bool32 sub_0803EF04(Enemy4DEntity*, u32);
void Enemy4D_OnTick(Enemy4DEntity*);
void Enemy4D_OnCollision(Enemy4DEntity*);
void Enemy4D_OnKnockback(Enemy4DEntity*);
void Enemy4D_OnDeath(Enemy4DEntity*);
void Enemy4D_OnGrabbed(Enemy4DEntity*);
void Enemy4D_Init(Enemy4DEntity*);
void Enemy4D_Action1(Enemy4DEntity*);
void Enemy4D_Action2(Enemy4DEntity*);
void Enemy4D_Action3(Enemy4DEntity*);
void Enemy4D_Action4(Enemy4DEntity*);
void Enemy4D_Action5(Enemy4DEntity*);
void Enemy4D_Action6(Enemy4DEntity*);
void Enemy4D_Action7(Enemy4DEntity*);
void Enemy4D_Action8(Enemy4DEntity*);
void Enemy4D_Action9(Enemy4DEntity*);
void Enemy4D_Action10(Enemy4DEntity*);
bool32 sub_0803EF70(Entity*, Entity*);
bool32 sub_0803EF74(Entity*, Entity*);
bool32 sub_0803EFAC(Entity*, Entity*);

void (*const Enemy4D_Functions[])(Enemy4DEntity*) = {
    Enemy4D_OnTick,
    Enemy4D_OnCollision,
    Enemy4D_OnKnockback,
    Enemy4D_OnDeath,
    (void (*)(Enemy4DEntity*))GenericConfused,
    Enemy4D_OnGrabbed,
};

void Enemy4D(Enemy4DEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)Enemy4D_Functions);
}

void Enemy4D_OnTick(Enemy4DEntity* this) {
    static void (*const Enemy4D_Actions[])(Enemy4DEntity*) = {
        Enemy4D_Init,    Enemy4D_Action1, Enemy4D_Action2, Enemy4D_Action3, Enemy4D_Action4,  Enemy4D_Action5,
        Enemy4D_Action6, Enemy4D_Action7, Enemy4D_Action8, Enemy4D_Action9, Enemy4D_Action10,
    };
    Enemy4D_Actions[super->action](this);
}

void Enemy4D_OnCollision(Enemy4DEntity* this) {
    EnemyFunctionHandlerAfterCollision(super, Enemy4D_Functions);
}

void Enemy4D_OnKnockback(Enemy4DEntity* this) {
    GenericKnockback(super);
    Enemy4D_OnTick(this);
}

void Enemy4D_OnDeath(Enemy4DEntity* this) {
    EnemyCreateDeathFX((Enemy*)super, 0xff, 0x57);
}

void Enemy4D_OnGrabbed(Enemy4DEntity* this) {
}

void Enemy4D_Init(Enemy4DEntity* this) {
    Entity* projectile;

    sub_0804A720(super);
    projectile = EnemyCreateProjectile(super, BALL_AND_CHAIN, 0);
    if (projectile != NULL) {
        projectile->parent = super;
        super->child = projectile;
        COLLISION_ON(super);
        super->spriteSettings.draw = TRUE;
        super->animationState = IdleEast;
        this->unk_7b = 0;
        this->unk_7c = 0;
        this->unk_7e = 0x28;
        this->unk_7f = 0xfe;
        this->unk_80 = super->x.HALF.HI;
        this->unk_82 = super->y.HALF.HI;
        InitAnimationForceUpdate(super, super->animationState << 2);
        sub_0803EE8C(this);
    }
}
void Enemy4D_Action1(Enemy4DEntity* this) {
    this->unk_7c -= 0xa;
    if (sub_08049DF4(1)) {
        super->direction = DirectionRoundUp(GetFacingDirection(super, gUnk_020000B0));
        sub_0803E94C(super, 0);
    }
    sub_0803E9A4(super);
    if (EntityWithinDistance(super, this->unk_80, this->unk_82, 2) == FALSE) {
        super->action = 4;
        sub_0803E94C(super, 0x10);
    } else {
        if (sub_0803EF20(this) == FALSE) {
            sub_0803EEA4(this);
        }
    }
}

void Enemy4D_Action2(Enemy4DEntity* this) {
    this->unk_7c -= 0x10;
    sub_0803E9A4(super);
    if (this->unk_7e > 0x1c) {
        this->unk_7e--;
    }
    if (--this->unk_78 == 0) {
        super->action = 3;
        this->unk_7b = 0;
    }
}

void Enemy4D_Action3(Enemy4DEntity* this) {
    this->unk_7c -= 0xa;
    sub_0803E9A4(super);
    if (this->unk_7e < 0x28) {
        this->unk_7e++;
    } else {
        sub_0803EE8C(this);
    }
}

void Enemy4D_Action4(Enemy4DEntity* this) {
    this->unk_7c -= 0xa;
    sub_0803E9A4(super);
    if (EntityWithinDistance(super, this->unk_80, this->unk_82, 1)) {
        super->x.HALF.HI = this->unk_80;
        super->y.HALF.HI = this->unk_82;
        sub_0803EE8C(this);
        sub_0803E94C(super, 0);
    } else {
        if (super->knockbackDuration == 0) {
            super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, this->unk_80, this->unk_82);
            sub_0803E94C(super, 0x10);
            ProcessMovement0(super);
        }
    }
}

void Enemy4D_Action5(Enemy4DEntity* this) {
    s32 tmp;
    this->unk_7c -= 0xc;
    sub_0803E9A4(super);
    tmp = this->unk_7e - 4;
    this->unk_7e = tmp;
    if ((tmp * 0x1000000) < 1) {
        this->unk_7e = 0;
        super->action = 6;
        super->timer = 15;
        InitAnimationForceUpdate(super, super->animationState + 0x20);
    }
}

void Enemy4D_Action6(Enemy4DEntity* this) {

    static const u8 gUnk_080D08C4[] = {
        0,
        68,
        128,
        188,
    };
    if (--super->timer == 0) {
        super->action = 7;
        super->timer = 1;
        this->unk_7c = gUnk_080D08C4[super->animationState];
        this->unk_7f = 0xf6;
        EnqueueSFX(SFX_15B);
    }
}

void Enemy4D_Action7(Enemy4DEntity* this) {
    if ((super->frame & ANIM_DONE) == 0) {
        UpdateAnimationSingleFrame(super);
    } else {
        if (--super->timer == 0) {
            super->timer = 2;
            this->unk_7f++;
        }
        if (this->unk_7f != 0) {
            this->unk_7e += 5;
        } else {
            super->action = 8;
            super->timer = 30;
            InitScreenShake(8, 0);
        }
    }
}

void Enemy4D_Action8(Enemy4DEntity* this) {
    if (--super->timer == 0) {
        super->action = 9;
    }
}

void Enemy4D_Action9(Enemy4DEntity* this) {
    u8 tmp;
    tmp = this->unk_7e = this->unk_7e - 2;
    if (tmp < 0xb) {
        super->action = 0xa;
        super->timer = 60;
        super->direction = super->animationState << 3;
        this->unk_7c = 0;
        this->unk_7f = 0xfe;
        sub_0803E94C(super, 0x10);
    } else if (tmp < 0x13) {
        super->child->flags &= ~ENT_COLLIDE;
    }
}

void Enemy4D_Action10(Enemy4DEntity* this) {
    if (super->timer != 0) {
        if (--super->timer == 0) {
            super->child->flags |= ENT_COLLIDE;
            sub_0803E94C(super, 0);
        }
    } else {
        this->unk_7c -= 0xa;
        sub_0803E9A4(super);
        if (++this->unk_7e > 0x27) {
            sub_0803EE8C(this);
        }
    }
}

void sub_0803EE8C(Enemy4DEntity* this) {
    super->action = 1;
    this->unk_7a = 0x1e;
    sub_0803E94C(super, 0);
}

bool32 sub_0803EEA4(Enemy4DEntity* this) {
    s32 tmp;
    if (sub_08049FDC(super, 1)) {
        if (sub_0803EF04(this, 0x4e) != 0) {
            tmp = sub_0804A044(super, gUnk_020000B0, 0x12);
            if (tmp != 0xff) {
                if (--this->unk_7a == 0) {
                    super->action = 5;
                    super->direction = tmp;
                    sub_0803E94C(super, 0);
                    return TRUE;
                }
                return FALSE;
            }
        }
    }
    this->unk_7a = 0x1e;
    return FALSE;
}

bool32 sub_0803EF04(Enemy4DEntity* this, u32 distance) {
    return EntityWithinDistance(super, gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI - 4, distance);
}

bool32 sub_0803EF20(Enemy4DEntity* this) {
    static bool32 (*const gUnk_080D08C8[])(Entity*, Entity*) = {
        sub_0803EF70, sub_0803EF70, sub_0803EF70, sub_0803EF74, sub_0803EFAC, sub_0803EF70, sub_0803EF70, sub_0803EF70,
        sub_0803EF70, sub_0803EF70, sub_0803EF70, sub_0803EF70, sub_0803EF70, sub_0803EF70, sub_0803EF70, sub_0803EFAC,
        sub_0803EF70, sub_0803EFAC, sub_0803EFAC, sub_0803EFAC, sub_0803EF70, sub_0803EF70, sub_0803EFAC,
    };
    Entity* it;
    LinkedList* list = &gEntityLists[2];

    for (it = list->first; it != (Entity*)list; it = it->next) {
        if ((it->kind == 8) && gUnk_080D08C8[it->id](super, it)) {
            super->action = 2;
            this->unk_78 = 0xb4;
            this->unk_7b = 1;
            return TRUE;
        }
    }
    return FALSE;
}

bool32 sub_0803EF70(Entity* param_1, Entity* param_2) {
    return FALSE;
}

bool32 sub_0803EF74(Entity* param_1, Entity* param_2) {
    if (EntityWithinDistance(param_1, param_2->x.HALF.HI, param_2->y.HALF.HI, 0x50)) {
        if (4 >= (((param_2->direction - GetFacingDirection(param_2, param_1)) + 2) & 0x1f)) {
            return TRUE;
        }
    }
    return FALSE;
}

bool32 sub_0803EFAC(Entity* param_1, Entity* param_2) {
    if (EntityInRectRadius(param_1, param_2, 0x50, 0x50)) {
        u32 tmp = sub_0804A044(param_2, param_1, 0x1c);
        if (tmp != 0xff) {
            if (tmp == param_2->direction) {
                return TRUE;
            }
        }
    }
    return FALSE;
}
