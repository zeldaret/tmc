/**
 * @file darkNut.c
 * @ingroup Enemies
 *
 * @brief Dark Nut enemy
 */
#include "enemy.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u8 unk_74;
    /*0x75*/ u8 unk_75;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u8 unk_7c;
    /*0x7d*/ u8 unused2[7];
    /*0x84*/ u8 unk_84;
} DarkNutEntity;

typedef struct {
    u8 field_0x0;
    u8 field_0x1;
} PACKED stuct_080CAB14;

void sub_08021218(DarkNutEntity*, u32, u32);
void sub_0802124C(DarkNutEntity*);
u32 sub_08021274(u32, u32);
void sub_08021390(DarkNutEntity*);
void sub_080213B0(DarkNutEntity*);
void sub_080213D0(DarkNutEntity*, u32);
void sub_080213F0(DarkNutEntity*);
void sub_08021400(DarkNutEntity*);
void sub_08021414(DarkNutEntity*);
void sub_08021424(DarkNutEntity*);
u32 sub_080214FC(DarkNutEntity*);
void sub_08021540(DarkNutEntity*);
void sub_08021588(DarkNutEntity*);
void sub_0802159C(DarkNutEntity*);
void sub_08021600(DarkNutEntity*);
void sub_08021644(DarkNutEntity*);
u32 sub_08021664(DarkNutEntity*, Entity*);
u32 sub_0802169C(DarkNutEntity*, Entity*);

extern Entity* gUnk_020000B0;

extern void (*const DarkNut_Functions[])(DarkNutEntity*);
extern void (*const gUnk_080CAAB0[])(DarkNutEntity*);

extern const s8 gUnk_080CAB00[];
extern const s8 gUnk_080CAB04[];
extern const u8 gUnk_080CAB08[];
extern const s8 gUnk_080CAB0C[];
extern const s8 gUnk_080CAB10[];
extern const stuct_080CAB14 gUnk_080CAB14[];
extern const u8 gUnk_080CAB3A[];
extern const u8 gUnk_080CAB42[];
extern const u8 gUnk_080CAB4A[];
extern const u8 gUnk_080CAB52[];
extern const u8 gUnk_080CAB68[];

extern void (*const gUnk_080CAB58[])(DarkNutEntity*);

void DarkNut(DarkNutEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)DarkNut_Functions);
    EnemySetFXOffset(super, 0, 1, -22);
}

void DarkNut_OnTick(DarkNutEntity* this) {
    gUnk_080CAAB0[super->action](this);
}

void DarkNut_OnCollision(DarkNutEntity* this) {
    switch (super->contactFlags & 0x7f) {
        case 0x1c:
            super->action = 11;
            super->timer = gUnk_080CAB0C[super->type];
            super->hitType = 81;
            sub_08021218(this, 8, DirectionToAnimationState(super->knockbackDirection ^ 0x10));
            sub_08021588(this);
            EnemyCreateFX(super, FX_STARS);
            break;
        case 0x16:
            super->action = 11;
            super->timer = gUnk_080CAB10[super->type];
            super->hitType = 81;
            sub_08021218(this, 8, DirectionToAnimationState(super->knockbackDirection ^ 0x10));
            sub_08021588(this);
            EnemyCreateFX(super, FX_STARS);
            break;
        case 0x4b:
            if (super->action == 13 || super->action == 15 || super->action == 19 || super->action == 18)
                break;
            switch (this->unk_79) {
                case 8 ... 12:
                    this->unk_7a = gUnk_080CAB04[super->type];
                    break;
                case 4 ... 6:
                    this->unk_7a = gUnk_080CAB00[super->type];
                    break;
                default:
                    this->unk_7a = 0;
                    break;
            }
            super->action = 10;
            sub_08021218(this, 0xb, super->animationState);
            EnqueueSFX(SFX_15D);
            sub_08021588(this);
            break;
        case 0x4c:
            if (super->action == 15) {
                u8 bVar3 = 0xff;
                if (super->child != NULL) {
                    bVar3 = super->child->contactFlags & 0x7f;
                }
                if (bVar3 == 2) {
                    sub_080213D0(this, gUnk_080CAB08[super->type]);
                } else {
                    sub_080213D0(this, 0);
                }
            }
            break;
        default:
            if (super->health != this->unk_78) {
                sub_08021588(this);
                sub_08021390(this);
                EnemyDetachFX(super);
            }
            break;
    }
    this->unk_78 = super->health;
    EnemyFunctionHandlerAfterCollision(super, DarkNut_Functions);
}

void DarkNut_OnGrabbed(DarkNutEntity* this) {
}

void sub_08020D70(DarkNutEntity* this) {
    sub_0804A720(super);
    super->action = 1;
    this->unk_75 = 0;
    this->unk_78 = super->health;
    super->animationState = -1;
    sub_08021218(this, 0, 2);
}

void sub_08020D9C(DarkNutEntity* this) {
    if (sub_08049FDC(super, 1))
        sub_080213F0(this);
}

void sub_08020DB4(DarkNutEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE)
        sub_08021390(this);
}

void sub_08020DD4(DarkNutEntity* this) {
    if (sub_080214FC(this)) {
        sub_080213F0(this);
    } else if (--this->unk_76 == 0) {
        super->action = 5;
        sub_08021218(this, 5, super->animationState);
    } else {
        if (--super->timer == 0)
            sub_08021540(this);
        ProcessMovement0(super);
        UpdateAnimationSingleFrame(super);
    }
}

void sub_08020E28(DarkNutEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE)
        sub_080213B0(this);
}

void sub_08020E48(DarkNutEntity* this) {
    if (sub_080214FC(this)) {
        sub_080213F0(this);
    } else {
        UpdateAnimationSingleFrame(super);
        if (super->frame & ANIM_DONE)
            sub_080213B0(this);
    }
}

void sub_08020E78(DarkNutEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE)
        sub_08021390(this);
}

void sub_08020E98(DarkNutEntity* this) {
    if (PlayerInRange(super, 1, 56)) {
        if (sub_0802169C(this, gUnk_020000B0)) {
            super->action = 8;
            sub_08021218(this, 7, super->animationState);
        } else {
            super->direction = GetFacingDirection(gUnk_020000B0, super);
            if (ProcessMovement0(super) == 0) {
                super->action = 8;
                sub_08021218(this, 7, super->animationState);
            } else {
                super->direction = DirectionTurnAround(super->direction);
                sub_0802124C(this);
                sub_08021644(this);
            }
        }
    } else {
        if (gUnk_020000B0 == NULL) {
            sub_08021414(this);
        } else {
            super->direction = GetFacingDirection(super, gUnk_020000B0);
            ProcessMovement0(super);
            sub_0802124C(this);
            sub_08021644(this);
        }
    }
}

void sub_08020F28(DarkNutEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE)
        sub_08021400(this);
}

void sub_08020F48(DarkNutEntity* this) {
    if (PlayerInRange(super, 1, 0x48)) {
        if (sub_08021664(this, gUnk_020000B0)) {
            u32 uVar2 = sub_0804A044(super, gUnk_020000B0, 9);
            if (uVar2 == 0xff) {
                sub_08021424(this);
            } else {
                Entity* pEVar3;

                super->action = 14;
                sub_08021218(this, 13, uVar2 >> 3);
                pEVar3 = EnemyCreateProjectile(super, DARK_NUT_SWORD_SLASH, 1);
                if (pEVar3) {
                    pEVar3->parent = super;
                    super->child = pEVar3;
                }
            }
        } else {
            sub_08021424(this);
        }
    } else {
        sub_08021390(this);
    }
}

void sub_08020FAC(DarkNutEntity* this) {
    if (super->frame & ANIM_DONE) {
        if (this->unk_7a) {
            this->unk_7a--;
        } else {
            super->iframes = -8;
            sub_08021390(this);
        }
    } else {
        UpdateAnimationSingleFrame(super);
    }
}

void sub_08020FE4(DarkNutEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (--super->timer == 0) {
        super->action = 12;
        sub_08021218(this, 9, super->animationState);
        EnemyDetachFX(super);
    }
}

void sub_08021010(DarkNutEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE) {
        super->hitType = 0x56;
        sub_080213F0(this);
    }
}

void sub_08021038(DarkNutEntity* this) {
    if (super->child == NULL && super->frame) {
        Entity* pEVar2 = (Entity*)EnemyCreateProjectile(super, DARK_NUT_SWORD_SLASH, 0);
        if (pEVar2) {
            pEVar2->parent = super;
            super->child = pEVar2;
        }
        EnqueueSFX(SFX_10E);
    }

    if (super->frame & ANIM_DONE) {
        sub_08021588(this);
        if (this->unk_7c) {
            this->unk_7c--;
        } else {
            sub_08021390(this);
        }
    } else {
        UpdateAnimationSingleFrame(super);
        if (super->frame == 4)
            super->hitType = 81;
    }
}

void sub_080210A8(DarkNutEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & 1) {
        super->frame = 0;
        sub_08021588(this);
        EnqueueSFX(SFX_15D);
    } else if (super->frame & ANIM_DONE) {
        sub_08021390(this);
    }
}

void sub_080210E4(DarkNutEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & 1) {
        Entity* entity;

        super->frame &= ~1;
        entity = EnemyCreateProjectile(super, DARK_NUT_SWORD_SLASH, 2);
        if (entity != NULL) {
            entity->parent = super;
            super->child = entity;
        }

        EnqueueSFX(SFX_10E);
    }

    sub_08021644(this);
    if ((super->frame & 0x10) &&
        (!ProcessMovement0(super) || (super->child && (super->child->contactFlags & CONTACT_NOW)))) {
        sub_080213D0(this, 0);
    } else {
        if (--this->unk_76 == 0)
            sub_080213D0(this, 0);
    }
}

void sub_08021170(DarkNutEntity* this) {
    if (super->frame & ANIM_DONE) {
        if (this->unk_7b) {
            this->unk_7b--;
        } else {
            sub_08021390(this);
        }
    } else {
        UpdateAnimationSingleFrame(super);
    }
}

void sub_080211A0(DarkNutEntity* this) {
    if (sub_080214FC(this)) {
        sub_08021390(this);
    } else {
        UpdateAnimationSingleFrame(super);
        if (super->frame & ANIM_DONE)
            sub_080213B0(this);
    }
}

void sub_080211D0(DarkNutEntity* this)

{
    UpdateAnimationSingleFrame(super);
    sub_0802159C(this);

    if (super->frame & ANIM_DONE)
        sub_08021390(this);
}

void sub_080211F4(DarkNutEntity* this) {
    UpdateAnimationSingleFrame(super);
    sub_08021600(this);

    if (super->frame & ANIM_DONE)
        sub_08021390(this);
}

void sub_08021218(DarkNutEntity* this, u32 param_2, u32 param_3) {
    const stuct_080CAB14* unk;

    if (this->unk_74 == param_2 && super->animationState == param_3)
        return;

    super->animationState = param_3;
    this->unk_74 = param_2;

    unk = &gUnk_080CAB14[param_2];
    super->spriteIndex = unk->field_0x1;
    InitAnimationForceUpdate(super, unk->field_0x0 + param_3);
}

void sub_0802124C(DarkNutEntity* this) {
    u32 iVar1 = sub_08021274(super->animationState, super->direction);
    if (iVar1 != 0xff) {
        sub_08021218(this, this->unk_74, iVar1);
    } else {
        UpdateAnimationSingleFrame(super);
    }
}

u32 sub_08021274(u32 animationState, u32 dir) {
    if (((dir & 7) - 3 < 3) && (((dir & 0x18) >> 3 == animationState || (((dir + 8) & 0x18) >> 3 == animationState)))) {
        return 0xff;
    }

    dir = DirectionToAnimationState(DirectionRoundUp(dir));
    if (animationState == dir) {
        return 0xff;
    }
    return dir;
}

void sub_080212B0(DarkNutEntity* this) {
    u8 tmp;

    switch (this->unk_75) {
        default:
            this->unk_75 = 1;
            tmp = gUnk_080CAB3A[Random() & 7];
            break;
        case 1:
            this->unk_75 = 2;
            tmp = gUnk_080CAB42[Random() & 7];
            break;
        case 2:
            this->unk_75 = 0;
            tmp = gUnk_080CAB4A[Random() & 7];
            break;
    }

    if (super->type < 2 && tmp == 2)
        tmp = gUnk_080CAB52[Random() & 3];

    super->child = NULL;
    gUnk_080CAB58[tmp](this);
}

void sub_08021328(DarkNutEntity* this) {
    super->action = 13;
    this->unk_7c = gUnk_080CAB68[super->type];
    sub_08021218(this, 0xc, super->animationState);
}

void sub_0802134C(DarkNutEntity* this) {
    super->action = 15;
    super->direction = DirectionFromAnimationState(super->animationState);
    super->speed = 0x200;
    this->unk_76 = 0x78;
    sub_08021218(this, 0xe, super->animationState);
}

void sub_08021370(DarkNutEntity* this) {
    super->action = 18;
    sub_08021218(this, 0x10, super->animationState);
}

void sub_08021380(DarkNutEntity* this) {
    super->action = 19;
    sub_08021218(this, 0x11, super->animationState);
}

void sub_08021390(DarkNutEntity* this) {
    super->action = 7;
    super->speed = 0x200;
    super->hitType = 0x56;
    sub_08021218(this, 6, super->animationState);
}

void sub_080213B0(DarkNutEntity* this) {
    super->action = 3;
    super->timer = 1;
    super->speed = 0xc0;
    this->unk_76 = 0xf0;
    sub_08021218(this, 3, super->animationState);
}

void sub_080213D0(DarkNutEntity* this, u32 param_2) {
    super->action = 16;
    this->unk_7b = param_2;
    sub_08021218(this, 0xf, super->animationState);
    sub_08021588(this);
}

void sub_080213F0(DarkNutEntity* this) {
    super->action = 6;
    sub_08021218(this, 1, super->animationState);
}

void sub_08021400(DarkNutEntity* this) {
    super->action = 9;
    super->speed = 0x60;
    sub_08021218(this, 10, super->animationState);
}

void sub_08021414(DarkNutEntity* this) {
    super->action = 17;
    sub_08021218(this, 5, super->animationState);
}

void sub_08021424(DarkNutEntity* this) {
    s32 x, y;
    u32 tmp;

    u32 dir = GetFacingDirection(super, gUnk_020000B0);
    tmp = sub_08021274(super->animationState, dir);
    if (tmp != 0xff) {
        sub_08021218(this, this->unk_74, tmp);
    } else {
        tmp = super->animationState;
    }

    switch (tmp) {
        case 0:
            x = gUnk_020000B0->x.HALF.HI;
            y = gUnk_020000B0->y.HALF.HI + 0x2c;
            break;
        case 1:
            x = gUnk_020000B0->x.HALF.HI - 0x24;
            y = gUnk_020000B0->y.HALF.HI;
            break;
        case 2:
            x = gUnk_020000B0->x.HALF.HI;
            y = gUnk_020000B0->y.HALF.HI - 0x1d;
            break;
        default:
            x = gUnk_020000B0->x.HALF.HI + 0x24;
            y = gUnk_020000B0->y.HALF.HI;
            break;
    }

    if (!(6 < (x - super->x.HALF.HI) + 3U) && !(4 < (y - super->y.HALF.HI) + 2U)) {
        sub_080212B0(this);
    } else {
        super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, x, y);
        if (!ProcessMovement0(super)) {
            sub_080212B0(this);
        } else {
            UpdateAnimationSingleFrame(super);
        }
    }
}

u32 sub_080214FC(DarkNutEntity* this) {
    u32 direction;

    if (!sub_08049FDC(super, 1))
        return 0;

    direction = GetFacingDirection(super, gUnk_020000B0);
    if (4 < (direction - (super->frame & 0x1f)) - 2)
        return 0;

    super->animationState = DirectionToAnimationState(direction);
    return 1;
}

void sub_08021540(DarkNutEntity* this) {
    u32 tmp, tmp2;
    u32 rand;

    rand = Random();
    if (!sub_08049FA0(super) && (rand & 1)) {
        tmp2 = DirectionRoundUp(sub_08049EE4(super));
    } else {
        tmp2 = DirectionRound(rand >> 0x10);
    }
    super->direction = tmp2;

    tmp = sub_08021274(super->animationState, tmp2);
    if (tmp != 0xff)
        sub_08021218(this, 3, tmp);

    super->timer = 30;
}

void sub_08021588(DarkNutEntity* this) {
    if (super->child != NULL) {
        super->child->parent = NULL;
        super->child = NULL;
    }
}

void sub_0802159C(DarkNutEntity* this) {
    if (super->frame == 1) {
        Entity* entity;

        super->frame = 0;
        super->hitType = 0x51;
        entity = EnemyCreateProjectile(super, DARK_NUT_SWORD_SLASH, 3);
        if (entity != NULL) {
            entity->parent = super;
            super->child = entity;
        }
        EnqueueSFX(SFX_116);
    } else if (super->frame == 2) {
        super->frame = 0;
        sub_08021588(this);
    } else if (super->frame & 0x20) {
        super->frame &= ~0x20;
        EnqueueSFX(SFX_115);
    }
}

void sub_08021600(DarkNutEntity* this) {
    if (super->frame == 1) {
        Entity* entity;

        super->frame = 0;
        super->hitType = 0x51;
        entity = EnemyCreateProjectile(super, DARK_NUT_SWORD_SLASH, 4);
        if (entity != NULL) {
            entity->parent = super;
            super->child = entity;
        }
        EnqueueSFX(SFX_10E);
    } else if (super->frame == 2) {
        super->frame = 0;
        sub_08021588(this);
    }
}

void sub_08021644(DarkNutEntity* this) {
    if (super->frame & 0x20) {
        super->frame &= ~0x20;
        EnqueueSFX(SFX_PLY_LAND);
    }
}

u32 sub_08021664(DarkNutEntity* this, Entity* entity) {
    switch (super->animationState) {
        case 0:
            return sub_08049F1C(super, entity, 0x22);
        case 1:
            return sub_08049F1C(super, entity, 0x1a);
        case 2:
            return sub_08049F1C(super, entity, 0x13);
        case 3:
            return sub_08049F1C(super, entity, 0x1a);
    }
    return 0;
}

u32 sub_0802169C(DarkNutEntity* this, Entity* entity) {
    u32 ret;

    switch (super->animationState) {
        case 0:
            ret = 0x2c;
            break;
        case 2:
            ret = 0x1d;
            break;
        case 1:
        case 3:
            ret = 0x24;
            break;
        default:
            return 0;
    }

    if (sub_08049F1C(super, entity, ret)) {
        return 0;
    } else {
        return 1;
    }
}

// clang-format off
void (*const DarkNut_Functions[])(DarkNutEntity*) = {
    DarkNut_OnTick,
    DarkNut_OnCollision,
    (void (*)(DarkNutEntity*))GenericKnockback,
    (void (*)(DarkNutEntity*))GenericDeath,
    (void (*)(DarkNutEntity*))GenericConfused,
    DarkNut_OnGrabbed,
};
void (*const gUnk_080CAAB0[])(DarkNutEntity*) = {
    sub_08020D70,
    sub_08020D9C,
    sub_08020DB4,
    sub_08020DD4,
    sub_08020E28,
    sub_08020E48,
    sub_08020E78,
    sub_08020E98,
    sub_08020F28,
    sub_08020F48,
    sub_08020FAC,
    sub_08020FE4,
    sub_08021010,
    sub_08021038,
    sub_080210A8,
    sub_080210E4,
    sub_08021170,
    sub_080211A0,
    sub_080211D0,
    sub_080211F4,
};

const s8 gUnk_080CAB00[] = {
    30, 30, 20, 10,
};

const s8 gUnk_080CAB04[] = {
    60, 60, 45, 30,
};

const u8 gUnk_080CAB08[] = {
    90, 90, 60, 30,
};

const s8 gUnk_080CAB0C[] = {
    90, 90, 60, 30,
};

const s8 gUnk_080CAB10[] = {
    90, 90, 45, 8,
};

const stuct_080CAB14 gUnk_080CAB14[] = {
    {0x00, 0x62},
    {0x04, 0x62},
    {0x08, 0x62},
    {0x0C, 0x62},
    {0x10, 0x62},
    {0x14, 0x62},
    {0x18, 0x62},
    {0x1C, 0x62},
    {0x20, 0x62},
    {0x24, 0x62},
    {0x28, 0x62},
    {0x2C, 0x62},
    {0x00, 0x63},
    {0x04, 0x63},
    {0x08, 0x63},
    {0x0C, 0x63},
    {0x10, 0x63},
    {0x14, 0x63},
    {0x18, 0x63},
};

const u8 gUnk_080CAB3A[] = {
    0, 1, 1, 0, 3, 0, 1, 0,
};

const u8 gUnk_080CAB42[] = {
    1, 1, 3, 0, 1, 2, 0, 0,
};

const u8 gUnk_080CAB4A[] = {
    0, 0, 3, 1, 2, 2, 3, 1,
};

const u8 gUnk_080CAB52[] = {
    0, 3, 1, 0, 0, 0
};

void (*const gUnk_080CAB58[])(DarkNutEntity*) = {
    sub_08021328,
    sub_0802134C,
    sub_08021370,
    sub_08021380,
};

const u8 gUnk_080CAB68[] = {
    90, 90, 45, 7,
};
// clang-format on
