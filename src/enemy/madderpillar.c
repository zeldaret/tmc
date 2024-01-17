/**
 * @file madderpillar.c
 * @ingroup Enemies
 *
 * @brief Madderpillar enemy
 */
#include "enemy.h"
#include "functions.h"
#include "hitbox.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u8 unk_74;
    /*0x75*/ u8 unk_75;
    /*0x76*/ u8 unused2[1];
    /*0x77*/ u8 unk_77;
    /*0x78*/ union SplitHWord unk_78;
    /*0x7a*/ union SplitHWord unk_7a;
    /*0x7c*/ u8 unk_7c;
    /*0x7d*/ u8 unk_7d;
    /*0x7e*/ u8 unk_7e;
    /*0x7f*/ u8 unk_7f;
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
    /*0x84*/ u8 unk_84;
    /*0x85*/ u8 unk_85;
    /*0x86*/ u8 unk_86;
} MadderpillarEntity;

void sub_08029E0C(MadderpillarEntity* this);
void sub_08029EEC(MadderpillarEntity* this);
void sub_0802A098(MadderpillarEntity* this);
void sub_0802A16C(MadderpillarEntity* this);
void sub_0802A058(MadderpillarEntity* this);
bool32 sub_0802A14C(MadderpillarEntity* this);
void sub_0802A18C(MadderpillarEntity* this);
bool32 sub_08029FE4(MadderpillarEntity* this);
void sub_08029FB4(MadderpillarEntity* this, u32, u32);
void sub_0802A0F8(MadderpillarEntity* this);
void sub_08029F0C(MadderpillarEntity* this);

extern s16 gUnk_080B4488[];

extern void (*const gUnk_080CCD44[])(MadderpillarEntity*);
extern void (*const Madderpillar_Functions[])(MadderpillarEntity*);
extern void (*const gUnk_080CCD78[])(MadderpillarEntity*);
extern void (*const gUnk_080CCD88[])(MadderpillarEntity*);
extern const u8 gUnk_080CCDA0[];
extern void (*const gUnk_080CCDA8[])(MadderpillarEntity*);
extern const u8 gUnk_080CCDC8[];
extern const u16 gUnk_080CCDD4[];

void Madderpillar(MadderpillarEntity* this) {
    gUnk_080CCD44[super->type](this);
}

void sub_08029870(MadderpillarEntity* this) {
    Madderpillar_Functions[GetNextFunction(super)](this);
}

void Madderpillar_OnTick(MadderpillarEntity* this) {
    gUnk_080CCD78[super->action](this);
}

void Madderpillar_OnCollision(MadderpillarEntity* this) {
    if (super->action == 1) {
        switch (super->contactFlags & 0x7f) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 0xf:
            case 0x13:
            case 0x1b:
            case 0x1e:
                break;
            default:
                super->action = 2;
                super->timer = 0;
                super->hitType = 0x6b;
                this->unk_77 = 0;
                ChangeObjPalette(super, 0x7f);
                EnqueueSFX(SFX_HIT);
                super->child->action = 2;
                break;
        }
    }

    EnemyFunctionHandlerAfterCollision(super, Madderpillar_Functions);
}

void Madderpillar_OnDeath(MadderpillarEntity* this) {
    if (super->subtimer) {
        super->subtimer--;
    } else {
        GenericDeath(super);
    }
}

void Madderpillar_OnGrabbed(MadderpillarEntity* this) {
    /* ... */
}

void sub_0802999C(MadderpillarEntity* this) {
    if (gEntCount < 0x44) {
        Entity *ent1, *ent2, *ent3, *ent4, *ent5, *ent6;

        ent1 = CreateEnemy(MADDERPILLAR, 1);
        ent1->parent = super;
        PositionRelative(super, ent1, 0, 5);
        super->child = ent1;

        ent2 = CreateEnemy(MADDERPILLAR, 2);
        ent2->parent = super;
        PositionRelative(super, ent2, 0, 4);
        ent1->child = ent2;

        ent3 = CreateEnemy(MADDERPILLAR, 3);
        ent3->parent = super;
        PositionRelative(super, ent3, 0, 3);
        ent2->child = ent3;

        ent4 = CreateEnemy(MADDERPILLAR, 4);
        ent4->parent = super;
        PositionRelative(super, ent4, 0, 2);
        ent3->child = ent4;

        ent5 = CreateEnemy(MADDERPILLAR, 5);
        ent5->parent = super;
        PositionRelative(super, ent5, 0, 1);
        ent4->child = ent5;

        ent6 = CreateEnemy(MADDERPILLAR, 6);
        ent6->child = super;
        ent6->parent = super;
        PositionRelative(super, ent6, 0, 0);
        ent5->child = ent6;

        super->action = 1;
        COLLISION_ON(super);
        super->direction = DirectionRound(Random());
        super->speed = 0xa0;
        super->animationState = 0xff;
        super->y.WORD += 6;
        super->parent = super;
        this->unk_74 = 0xff;
        this->unk_75 = 0;
        this->unk_77 = 1;
        sub_08029E0C(this);
        sub_08029EEC(this);
    }
}

void sub_08029A94(MadderpillarEntity* this) {
    UpdateAnimationSingleFrame(super);
    sub_0802A098(this);
}

void sub_08029AA4(MadderpillarEntity* this) {
    if (this->unk_77 != 0) {
        super->action = 3;
        super->speed = 0x108;
        super->hitType = 0x6a;
        this->unk_7a.HWORD = 0x168;
        this->unk_75 = 4;
        sub_08029EEC(this);
        EnqueueSFX(SFX_19D);
    }
}

void sub_08029AE0(MadderpillarEntity* this) {
    UpdateAnimationSingleFrame(super);
    sub_0802A16C(this);
    sub_0802A098(this);
    if (--this->unk_7a.HWORD == 0) {
        super->action = 1;
        super->speed = 0xa0;
        this->unk_75 = 0;
        sub_08029EEC(this);
        ChangeObjPalette(super, 0x77);
        EnqueueSFX(SFX_182);
    }
}

void sub_08029B2C(MadderpillarEntity* this) {
    if (sub_0802A14C(this)) {
        if (this->unk_86) {
            if (--super->timer == 0) {
                CreateFx(super, FX_GIANT_EXPLOSION3, 0);
                DeleteEntity(super);
            }
        } else {
            COLLISION_OFF(super);
            super->timer = -(super->type * 15 - 90);
            this->unk_86 = 1;
        }
    } else {
        gUnk_080CCD88[super->action](this);
    }
}

void sub_08029B90(MadderpillarEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    sub_0802A058(this);
    if (super->type < 2) {
        InitializeAnimation(super, 0);
    } else {
        InitializeAnimation(super, 4);
    }
}

void sub_08029BC4(MadderpillarEntity* this) {
    u32 uVar1;
    u32 uVar2;

    sub_0802A18C(this);
    uVar1 = super->x.HALF.HI;
    uVar2 = super->y.HALF.HI;
    if (sub_08029FE4(this)) {
        u32 index;
        if (super->type < 2) {
            index = 0;
        } else {
            index = 4;
        }
        InitializeAnimation(super, super->animationState + index);
    }
    sub_08029FB4(this, super->x.HALF.HI - uVar1, super->y.HALF.HI - uVar2);
}

void sub_08029C08(MadderpillarEntity* this) {
    super->action = 3;
    super->timer = gUnk_080CCDA0[super->type];
    super->hitType = 0x6b;
    super->child->action = 2;
}

void sub_08029C2C(MadderpillarEntity* this) {
    if (--super->timer == 0) {
        super->action = 4;
        ChangeObjPalette(super, 0x7f);
        EnqueueSFX(SFX_MENU_CANCEL);
    }
}

void sub_08029C50(MadderpillarEntity* this) {
    if (((MadderpillarEntity*)super->parent)->unk_77 != 0) {
        super->action = 5;
        super->hitType = 0x6a;
    }
}

void sub_08029C6C(MadderpillarEntity* this) {
    sub_0802A18C(this);
    sub_08029BC4(this);
    if (super->parent->action != 3) {
        super->action = 1;
        ChangeObjPalette(super, 0x77);
    } else {
        sub_0802A16C(this);
    }
}

void sub_08029C98(MadderpillarEntity* this) {
    if (sub_0802A14C(this)) {
        CreateFx(super, FX_GIANT_EXPLOSION3, 0);
        DeleteEntity(super);
    } else {
        gUnk_080CCDA8[super->action](this);
    }
}

void sub_08029CCC(MadderpillarEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    sub_0802A058(this);
    InitializeAnimation(super, 8);
}

void sub_08029CF0(MadderpillarEntity* this) {
    if (sub_08029FE4(this)) {
        InitializeAnimation(super, super->animationState + 8);
    }
}

void sub_08029D08(MadderpillarEntity* this) {
    super->action = 3;
    super->timer = 71;
}

void sub_08029D14(MadderpillarEntity* this) {
    if (super->timer != 0) {
        if (--super->timer == 0) {
            InitializeAnimation(super, super->animationState + 0xc);
            ChangeObjPalette(super, 0x7f);
            EnqueueSFX(SFX_MENU_CANCEL);
        }
    } else {
        GetNextFrame(super);
        if (super->frame & ANIM_DONE) {
            super->action = 4;
            super->timer = 120;
            super->hitType = 0x6c;
            super->hitbox = (Hitbox*)&gUnk_080FD298;
            EnqueueSFX(SFX_6B);
        }
    }
}

void sub_08029D78(MadderpillarEntity* this) {
    sub_0802A0F8(this);
    if (--super->timer == 0) {
        super->action = 5;
        super->hitType = 0x6a;
        super->hitbox = (Hitbox*)&gUnk_080FD2A0;
        InitializeAnimation(super, super->animationState + 0x10);
    }
}

void sub_08029DAC(MadderpillarEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 6;
        ((MadderpillarEntity*)super->parent)->unk_77 = 1;
        InitializeAnimation(super, super->animationState + 8);
    }
}

void sub_08029DDC(MadderpillarEntity* this) {
    super->action = 7;
}

void sub_08029DE4(MadderpillarEntity* this) {
    sub_08029CF0(this);
    if (super->parent->action != 3) {
        super->action = 1;
        ChangeObjPalette(super, 0x77);
    } else {
        sub_0802A16C(this);
    }
}

void sub_08029E0C(MadderpillarEntity* this) {
    u32 tilePos;
    s32 uVar4;
    s32 iVar3;
    u32 i;
    u32 uVar2;
    const u8* ptr;
    u32 local_24;
    u32 dir;

    uVar2 = (super->direction >> 3) * 3;
    ptr = &gUnk_080CCDC8[uVar2];
    uVar4 = (Random() & 1) * 2 - 1;
    iVar3 = ((s32)Random() & 0xf) % 3;
    tilePos = COORD_TO_TILE(super);
    for (i = 0; i < 3; i++) {
        dir = ptr[iVar3];
        if (GetCollisionDataAtTilePos(gUnk_080B4488[dir >> 3] + tilePos, super->collisionLayer) == 0) {
            local_24 = dir;
            if (super->direction - this->unk_74 != dir - super->direction)
                break;
        }
        iVar3 = (iVar3 + uVar4 + 3) % 3;
    }

    if (i == 3) {
        dir = local_24;
    }

    if (this->unk_74 != super->direction) {
        this->unk_74 = super->direction;
    }
    super->direction = dir;
    sub_08029F0C(this);
}

void sub_08029EEC(MadderpillarEntity* this) {
    u32 uVar1 = (super->direction >> 3) + this->unk_75;
    if (uVar1 != super->animationState) {
        super->animationState = uVar1;
        InitAnimationForceUpdate(super, uVar1);
    }
}

void sub_08029F0C(MadderpillarEntity* this) {
    switch (super->direction >> 3) {
        case 0: // UP
            this->unk_78.HWORD = super->y.HALF.HI - 0x10;
            break;
        case 1: // RIGHT
            this->unk_78.HWORD = super->x.HALF.HI + 0x10;
            break;
        case 2: // DOWN
            this->unk_78.HWORD = super->y.HALF.HI + 0x10;
            break;
        case 3: // LEFT
            this->unk_78.HWORD = super->x.HALF.HI - 0x10;
            break;
    }
}

bool32 sub_08029F48(MadderpillarEntity* this) {
    switch (super->direction >> 3) {
        case 0: // UP
            if (super->y.HALF.HI <= this->unk_78.HWORD) {
                super->y.HALF.HI = this->unk_78.HWORD;
                return TRUE;
            }
            break;
        case 1: // RIGHT
            if (super->x.HALF.HI >= this->unk_78.HWORD) {
                super->x.HALF.HI = this->unk_78.HWORD;
                return TRUE;
            }
            break;
        case 2: // DOWN
            if (super->y.HALF.HI >= this->unk_78.HWORD) {
                super->y.HALF.HI = this->unk_78.HWORD;
                return TRUE;
            }
            break;
        case 3: // LEFT
            if (super->x.HALF.HI <= this->unk_78.HWORD) {
                super->x.HALF.HI = this->unk_78.HWORD;
                return TRUE;
            }
            break;
    }

    return FALSE;
}

void sub_08029FB4(MadderpillarEntity* this, u32 x, u32 y) {
    u8* dst = (u8*)&((MadderpillarEntity*)super->child)->unk_78;
    s32 unk = ((MadderpillarEntity*)super->parent)->unk_7e;
    u8 idx = unk % 0xe;
    dst[idx] = ((x + 8) & 0xf) | (((y + 8) & 0xf) << 4);
}

/* The optimizer is strong within you. */
bool32 sub_08029FE4(MadderpillarEntity* this) {
    u8 state;
    u8* dst = (u8*)&this->unk_78;
    s32 unk = ((MadderpillarEntity*)super->parent)->unk_7e + 1;
    s8 iVar6 = (dst[unk % 0xe] & 0xf) - 8;
    s8 iVar5 = (dst[unk % 0xe] >> 4) - 8;
    super->x.HALF.HI += iVar6;
    super->y.HALF.HI += iVar5;
    GetNextFrame(super);

    state = 0xff;
    if (iVar6 != 0) {
        if (0 < iVar6) {
            state = 1;
        } else {
            state = 3;
        }
    }

    if (iVar5 != 0) {
        if (0 < iVar5) {
            state = 2;
        } else {
            state = 0;
        }
    }

    if (state != 0xff && state != super->animationState) {
        super->animationState = state;
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_0802A058(MadderpillarEntity* this) {
    this->unk_78.HALF.LO = 0x88;
    this->unk_78.HALF.HI = 0x88;
    this->unk_7a.HALF.LO = 0x88;
    this->unk_7a.HALF.HI = 0x88;
    this->unk_7c = 0x88;
    this->unk_7d = 0x88;
    this->unk_7e = 0x88;
    this->unk_7f = 0x88;
    this->unk_80 = 0x88;
    this->unk_81 = 0x88;
    this->unk_82 = 0x88;
    this->unk_83 = 0x88;
    this->unk_84 = 0x88;
    this->unk_85 = 0x88;
}

void sub_0802A098(MadderpillarEntity* this) {
    u32 uVar1;
    u32 uVar2;
    s32 unk = (++this->unk_7e, this->unk_7e);
    u8 idx = unk % 0xe;
    if (idx == 0) {
        this->unk_7e = 0;
    }
    uVar1 = super->x.HALF.HI;
    uVar2 = super->y.HALF.HI;
    ProcessMovement0(super);
    if (sub_08029F48(this)) {
        sub_08029E0C(this);
        sub_08029EEC(this);
        EnqueueSFX(SFX_PLACE_OBJ);
    }

    sub_08029FB4(this, super->x.HALF.HI - uVar1, super->y.HALF.HI - uVar2);
}

void sub_0802A0F8(MadderpillarEntity* this) {
    if (super->health != 0) {
        if ((super->contactFlags & CONTACT_NOW) && super->iframes != 0) {
            Entity* entity = super;
            u32 i;
            for (i = 0; i < 6; i++) {
                entity = entity->child;
                entity->iframes = super->iframes;
            }
        }
    } else {
        super->parent->flags &= ~ENT_COLLIDE;
        super->parent->health = 0;
        super->parent->subtimer = 105;
    }
}

bool32 sub_0802A14C(MadderpillarEntity* this) {
    u32 ret = FALSE;

    if (super->parent->health == 0 || this->unk_86) {
        ret = TRUE;
    } else {
        ret = FALSE;
    }
    return ret;
}

void sub_0802A16C(MadderpillarEntity* this) {
    ChangeObjPalette(super, gUnk_080CCDD4[((MadderpillarEntity*)super->parent)->unk_7a.HWORD >> 2 & 3]);
}

void sub_0802A18C(MadderpillarEntity* this) {
    if (super->contactFlags & CONTACT_NOW) {
        switch (super->contactFlags & 0x7f) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 0xf:
            case 0x13:
            case 0x1b:
            case 0x1e:
                break;
            default:
                EnqueueSFX(SFX_12E);
                break;
        }
    }
}

// clang-format off
void (*const gUnk_080CCD44[])(MadderpillarEntity*) = {
    sub_08029870,
    sub_08029B2C,
    sub_08029B2C,
    sub_08029B2C,
    sub_08029B2C,
    sub_08029B2C,
    sub_08029C98,
};

void (*const Madderpillar_Functions[])(MadderpillarEntity*) = {
    Madderpillar_OnTick,
    Madderpillar_OnCollision,
    Madderpillar_OnTick,
    Madderpillar_OnDeath,
    (void (*)(MadderpillarEntity*))GenericConfused,
    Madderpillar_OnGrabbed,
};

void (*const gUnk_080CCD78[])(MadderpillarEntity*) = {
    sub_0802999C,
    sub_08029A94,
    sub_08029AA4,
    sub_08029AE0,
};

void (*const gUnk_080CCD88[])(MadderpillarEntity*) = {
    sub_08029B90,
    sub_08029BC4,
    sub_08029C08,
    sub_08029C2C,
    sub_08029C50,
    sub_08029C6C,
};

const u8 gUnk_080CCDA0[] = {
    0x00, 0x24,
    0x30,
    0x3A,
    0x41,
    0x45,
    0x00,
    0x00,
};

void (*const gUnk_080CCDA8[])(MadderpillarEntity*) = {
    sub_08029CCC,
    sub_08029CF0,
    sub_08029D08,
    sub_08029D14,
    sub_08029D78,
    sub_08029DAC,
    sub_08029DDC,
    sub_08029DE4,
};

const u8 gUnk_080CCDC8[] = {
    0x08, 0x00,
    0x18, 0x00,
    0x10, 0x08,
    0x10, 0x08,
    0x18, 0x00,
    0x18, 0x10,
};

const u16 gUnk_080CCDD4[] = {
    0x80, 0x81,
    0x82, 0x81,
};
// clang-format on
