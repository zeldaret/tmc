/**
 * @file madderpillar.c
 * @ingroup Enemies
 *
 * @brief Madderpillar enemy
 */

#include "enemy.h"
#include "functions.h"
#include "hitbox.h"

void sub_08029E0C(Entity*);
void sub_08029EEC(Entity*);
void sub_0802A098(Entity*);
void sub_0802A16C(Entity*);
void sub_0802A058(Entity*);
bool32 sub_0802A14C(Entity*);
void sub_0802A18C(Entity*);
bool32 sub_08029FE4(Entity*);
void sub_08029FB4(Entity*, u32, u32);
void sub_0802A0F8(Entity*);
void sub_08029F0C(Entity*);

extern s16 gUnk_080B4488[];

extern void (*const gUnk_080CCD44[])(Entity*);
extern void (*const Madderpillar_Functions[])(Entity*);
extern void (*const gUnk_080CCD78[])(Entity*);
extern void (*const gUnk_080CCD88[])(Entity*);
extern const u8 gUnk_080CCDA0[];
extern void (*const gUnk_080CCDA8[])(Entity*);
extern const u8 gUnk_080CCDC8[];
extern const u16 gUnk_080CCDD4[];

void Madderpillar(Entity* this) {
    gUnk_080CCD44[this->type](this);
}

void sub_08029870(Entity* this) {
    Madderpillar_Functions[GetNextFunction(this)](this);
}

void Madderpillar_OnTick(Entity* this) {
    gUnk_080CCD78[this->action](this);
}

void Madderpillar_OnCollision(Entity* this) {
    if (this->action == 1) {
        switch (this->contactFlags & 0x7f) {
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
                this->action = 2;
                this->timer = 0;
                this->hitType = 0x6b;
                this->field_0x76.HALF.HI = 0;
                ChangeObjPalette(this, 0x7f);
                EnqueueSFX(SFX_HIT);
                this->child->action = 2;
                break;
        }
    }

    EnemyFunctionHandlerAfterCollision(this, Madderpillar_Functions);
}

void Madderpillar_OnDeath(Entity* this) {
    if (this->subtimer) {
        this->subtimer--;
    } else {
        GenericDeath(this);
    }
}

void Madderpillar_OnGrabbed(Entity* this) {
    /* ... */
}

void sub_0802999C(Entity* this) {
    if (gEntCount < 0x44) {
        Entity *ent1, *ent2, *ent3, *ent4, *ent5, *ent6;

        ent1 = CreateEnemy(MADDERPILLAR, 1);
        ent1->parent = this;
        PositionRelative(this, ent1, 0, 5);
        this->child = ent1;

        ent2 = CreateEnemy(MADDERPILLAR, 2);
        ent2->parent = this;
        PositionRelative(this, ent2, 0, 4);
        ent1->child = ent2;

        ent3 = CreateEnemy(MADDERPILLAR, 3);
        ent3->parent = this;
        PositionRelative(this, ent3, 0, 3);
        ent2->child = ent3;

        ent4 = CreateEnemy(MADDERPILLAR, 4);
        ent4->parent = this;
        PositionRelative(this, ent4, 0, 2);
        ent3->child = ent4;

        ent5 = CreateEnemy(MADDERPILLAR, 5);
        ent5->parent = this;
        PositionRelative(this, ent5, 0, 1);
        ent4->child = ent5;

        ent6 = CreateEnemy(MADDERPILLAR, 6);
        ent6->child = this;
        ent6->parent = this;
        PositionRelative(this, ent6, 0, 0);
        ent5->child = ent6;

        this->action = 1;
        COLLISION_ON(this);
        this->direction = DirectionRound(Random());
        this->speed = 0xa0;
        this->animationState = 0xff;
        this->y.WORD += 6;
        this->parent = this;
        this->field_0x74.HALF.LO = 0xff;
        this->field_0x74.HALF.HI = 0;
        this->field_0x76.HALF.HI = 1;
        sub_08029E0C(this);
        sub_08029EEC(this);
    }
}

void sub_08029A94(Entity* this) {
    UpdateAnimationSingleFrame(this);
    sub_0802A098(this);
}

void sub_08029AA4(Entity* this) {
    if (this->field_0x76.HALF.HI != 0) {
        this->action = 3;
        this->speed = 0x108;
        this->hitType = 0x6a;
        this->field_0x7a.HWORD = 0x168;
        this->field_0x74.HALF.HI = 4;
        sub_08029EEC(this);
        EnqueueSFX(SFX_19D);
    }
}

void sub_08029AE0(Entity* this) {
    UpdateAnimationSingleFrame(this);
    sub_0802A16C(this);
    sub_0802A098(this);
    if (--this->field_0x7a.HWORD == 0) {
        this->action = 1;
        this->speed = 0xa0;
        this->field_0x74.HALF.HI = 0;
        sub_08029EEC(this);
        ChangeObjPalette(this, 0x77);
        EnqueueSFX(SFX_182);
    }
}

void sub_08029B2C(Entity* this) {
    if (sub_0802A14C(this)) {
        if (this->field_0x86.HALF.LO) {
            if (--this->timer == 0) {
                CreateFx(this, FX_GIANT_EXPLOSION3, 0);
                DeleteEntity(this);
            }
        } else {
            COLLISION_OFF(this);
            this->timer = -(this->type * 15 - 90);
            this->field_0x86.HALF.LO = 1;
        }
    } else {
        gUnk_080CCD88[this->action](this);
    }
}

void sub_08029B90(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    sub_0802A058(this);
    if (this->type < 2) {
        InitializeAnimation(this, 0);
    } else {
        InitializeAnimation(this, 4);
    }
}

void sub_08029BC4(Entity* this) {
    u32 uVar1;
    u32 uVar2;

    sub_0802A18C(this);
    uVar1 = this->x.HALF.HI;
    uVar2 = this->y.HALF.HI;
    if (sub_08029FE4(this)) {
        u32 index;
        if (this->type < 2) {
            index = 0;
        } else {
            index = 4;
        }
        InitializeAnimation(this, this->animationState + index);
    }
    sub_08029FB4(this, this->x.HALF.HI - uVar1, this->y.HALF.HI - uVar2);
}

void sub_08029C08(Entity* this) {
    this->action = 3;
    this->timer = gUnk_080CCDA0[this->type];
    this->hitType = 0x6b;
    this->child->action = 2;
}

void sub_08029C2C(Entity* this) {
    if (--this->timer == 0) {
        this->action = 4;
        ChangeObjPalette(this, 0x7f);
        EnqueueSFX(SFX_MENU_CANCEL);
    }
}

void sub_08029C50(Entity* this) {
    if (this->parent->field_0x76.HALF.HI != 0) {
        this->action = 5;
        this->hitType = 0x6a;
    }
}

void sub_08029C6C(Entity* this) {
    sub_0802A18C(this);
    sub_08029BC4(this);
    if (this->parent->action != 3) {
        this->action = 1;
        ChangeObjPalette(this, 0x77);
    } else {
        sub_0802A16C(this);
    }
}

void sub_08029C98(Entity* this) {
    if (sub_0802A14C(this)) {
        CreateFx(this, FX_GIANT_EXPLOSION3, 0);
        DeleteEntity(this);
    } else {
        gUnk_080CCDA8[this->action](this);
    }
}

void sub_08029CCC(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    sub_0802A058(this);
    InitializeAnimation(this, 8);
}

void sub_08029CF0(Entity* this) {
    if (sub_08029FE4(this)) {
        InitializeAnimation(this, this->animationState + 8);
    }
}

void sub_08029D08(Entity* this) {
    this->action = 3;
    this->timer = 71;
}

void sub_08029D14(Entity* this) {
    if (this->timer != 0) {
        if (--this->timer == 0) {
            InitializeAnimation(this, this->animationState + 0xc);
            ChangeObjPalette(this, 0x7f);
            EnqueueSFX(SFX_MENU_CANCEL);
        }
    } else {
        GetNextFrame(this);
        if (this->frame & ANIM_DONE) {
            this->action = 4;
            this->timer = 120;
            this->hitType = 0x6c;
            this->hitbox = (Hitbox*)&gUnk_080FD298;
            EnqueueSFX(SFX_6B);
        }
    }
}

void sub_08029D78(Entity* this) {
    sub_0802A0F8(this);
    if (--this->timer == 0) {
        this->action = 5;
        this->hitType = 0x6a;
        this->hitbox = (Hitbox*)&gUnk_080FD2A0;
        InitializeAnimation(this, this->animationState + 0x10);
    }
}

void sub_08029DAC(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 6;
        this->parent->field_0x76.HALF.HI = 1;
        InitializeAnimation(this, this->animationState + 8);
    }
}

void sub_08029DDC(Entity* this) {
    this->action = 7;
}

void sub_08029DE4(Entity* this) {
    sub_08029CF0(this);
    if (this->parent->action != 3) {
        this->action = 1;
        ChangeObjPalette(this, 0x77);
    } else {
        sub_0802A16C(this);
    }
}

void sub_08029E0C(Entity* this) {
    u32 tile;
    s32 uVar4;
    s32 iVar3;
    u32 i;
    u32 uVar2;
    const u8* ptr;
    u32 local_24;
    u32 dir;

    uVar2 = (this->direction >> 3) * 3;
    ptr = &gUnk_080CCDC8[uVar2];
    uVar4 = (Random() & 1) * 2 - 1;
    iVar3 = ((s32)Random() & 0xf) % 3;
    tile = COORD_TO_TILE(this);
    for (i = 0; i < 3; i++) {
        dir = ptr[iVar3];
        if (GetCollisionDataAtMetaTilePos(gUnk_080B4488[dir >> 3] + tile, this->collisionLayer) == 0) {
            local_24 = dir;
            if (this->direction - this->field_0x74.HALF.LO != dir - this->direction)
                break;
        }
        iVar3 = (iVar3 + uVar4 + 3) % 3;
    }

    if (i == 3) {
        dir = local_24;
    }

    if (this->field_0x74.HALF.LO != this->direction) {
        this->field_0x74.HALF.LO = this->direction;
    }
    this->direction = dir;
    sub_08029F0C(this);
}

void sub_08029EEC(Entity* this) {
    u32 uVar1 = (this->direction >> 3) + this->field_0x74.HALF.HI;
    if (uVar1 != this->animationState) {
        this->animationState = uVar1;
        InitAnimationForceUpdate(this, uVar1);
    }
}

void sub_08029F0C(Entity* this) {
    switch (this->direction >> 3) {
        case 0: // UP
            this->field_0x78.HWORD = this->y.HALF.HI - 0x10;
            break;
        case 1: // RIGHT
            this->field_0x78.HWORD = this->x.HALF.HI + 0x10;
            break;
        case 2: // DOWN
            this->field_0x78.HWORD = this->y.HALF.HI + 0x10;
            break;
        case 3: // LEFT
            this->field_0x78.HWORD = this->x.HALF.HI - 0x10;
            break;
    }
}

bool32 sub_08029F48(Entity* this) {
    switch (this->direction >> 3) {
        case 0: // UP
            if (this->y.HALF.HI <= this->field_0x78.HWORD) {
                this->y.HALF.HI = this->field_0x78.HWORD;
                return TRUE;
            }
            break;
        case 1: // RIGHT
            if (this->x.HALF.HI >= this->field_0x78.HWORD) {
                this->x.HALF.HI = this->field_0x78.HWORD;
                return TRUE;
            }
            break;
        case 2: // DOWN
            if (this->y.HALF.HI >= this->field_0x78.HWORD) {
                this->y.HALF.HI = this->field_0x78.HWORD;
                return TRUE;
            }
            break;
        case 3: // LEFT
            if (this->x.HALF.HI <= this->field_0x78.HWORD) {
                this->x.HALF.HI = this->field_0x78.HWORD;
                return TRUE;
            }
            break;
    }

    return FALSE;
}

void sub_08029FB4(Entity* this, u32 x, u32 y) {
    u8* dst = (u8*)&this->child->field_0x78;
    s32 unk = this->parent->field_0x7c.BYTES.byte2;
    u8 idx = unk % 0xe;
    dst[idx] = ((x + 8) & 0xf) | (((y + 8) & 0xf) << 4);
}

/* The optimizer is strong within you. */
bool32 sub_08029FE4(Entity* this) {
    u8 state;
    u8* dst = (u8*)&this->field_0x78;
    s32 unk = this->parent->field_0x7c.BYTES.byte2 + 1;
    s8 iVar6 = (dst[unk % 0xe] & 0xf) - 8;
    s8 iVar5 = (dst[unk % 0xe] >> 4) - 8;
    this->x.HALF.HI += iVar6;
    this->y.HALF.HI += iVar5;
    GetNextFrame(this);

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

    if (state != 0xff && state != this->animationState) {
        this->animationState = state;
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_0802A058(Entity* this) {
    this->field_0x78.HALF.LO = 0x88;
    this->field_0x78.HALF.HI = 0x88;
    this->field_0x7a.HALF.LO = 0x88;
    this->field_0x7a.HALF.HI = 0x88;
    this->field_0x7c.BYTES.byte0 = 0x88;
    this->field_0x7c.BYTES.byte1 = 0x88;
    this->field_0x7c.BYTES.byte2 = 0x88;
    this->field_0x7c.BYTES.byte3 = 0x88;
    this->field_0x80.HALF.LO = 0x88;
    this->field_0x80.HALF.HI = 0x88;
    this->field_0x82.HALF.LO = 0x88;
    this->field_0x82.HALF.HI = 0x88;
    this->cutsceneBeh.HALF.LO = 0x88;
    this->cutsceneBeh.HALF.HI = 0x88;
}

void sub_0802A098(Entity* this) {
    u32 uVar1;
    u32 uVar2;
    s32 unk = (++this->field_0x7c.BYTES.byte2, this->field_0x7c.BYTES.byte2);
    u8 idx = unk % 0xe;
    if (idx == 0) {
        this->field_0x7c.BYTES.byte2 = 0;
    }
    uVar1 = this->x.HALF.HI;
    uVar2 = this->y.HALF.HI;
    ProcessMovement0(this);
    if (sub_08029F48(this)) {
        sub_08029E0C(this);
        sub_08029EEC(this);
        EnqueueSFX(SFX_PLACE_OBJ);
    }

    sub_08029FB4(this, this->x.HALF.HI - uVar1, this->y.HALF.HI - uVar2);
}

void sub_0802A0F8(Entity* this) {
    if (this->health != 0) {
        if ((this->contactFlags & 0x80) && this->iframes != 0) {
            Entity* ent = this;
            u32 i;
            for (i = 0; i < 6; i++) {
                ent = ent->child;
                ent->iframes = this->iframes;
            }
        }
    } else {
        this->parent->flags &= ~ENT_COLLIDE;
        this->parent->health = 0;
        this->parent->subtimer = 105;
    }
}

bool32 sub_0802A14C(Entity* this) {
    u32 ret = FALSE;

    if (this->parent->health == 0 || this->field_0x86.HALF.LO) {
        ret = TRUE;
    } else {
        ret = FALSE;
    }
    return ret;
}

void sub_0802A16C(Entity* this) {
    ChangeObjPalette(this, gUnk_080CCDD4[this->parent->field_0x7a.HWORD >> 2 & 3]);
}

void sub_0802A18C(Entity* this) {
    if (this->contactFlags & 0x80) {
        switch (this->contactFlags & 0x7f) {
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
void (*const gUnk_080CCD44[])(Entity*) = {
    sub_08029870,
    sub_08029B2C,
    sub_08029B2C,
    sub_08029B2C,
    sub_08029B2C,
    sub_08029B2C,
    sub_08029C98,
};

void (*const Madderpillar_Functions[])(Entity*) = {
    Madderpillar_OnTick,
    Madderpillar_OnCollision,
    Madderpillar_OnTick,
    Madderpillar_OnDeath,
    GenericConfused,
    Madderpillar_OnGrabbed,
};

void (*const gUnk_080CCD78[])(Entity*) = {
    sub_0802999C,
    sub_08029A94,
    sub_08029AA4,
    sub_08029AE0,
};

void (*const gUnk_080CCD88[])(Entity*) = {
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

void (*const gUnk_080CCDA8[])(Entity*) = {
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
