#define NENT_DEPRECATED
/**
 * @file chuchuBoss.c
 * @ingroup Enemies
 *
 * @brief Chuchu Boss enemy
 */
#include "global.h"
#include "enemy.h"
#include "object.h"
#include "functions.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    s8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u32 unk_08;
    u16 unk_0c;
    u16 unk_0e;
} Helper;

static_assert(sizeof(Helper) == 0x10);

typedef struct _ChuchuBossEntity {
    Entity base;
    struct _ChuchuBossEntity* unk_68;
    u8 unk_6c;
    struct {
        u8 unk0 : 1;
        u8 unk1 : 1;
    } PACKED unk_6d;
    u8 unk_6e[2];
    u8 unk_70[0x4];
    union SplitWord unk_74;
    union SplitWord unk_78;
    u8 unk_7c;
    u8 unk_7d;
    u16 unk_7e;
    u8 unk_80;
    u8 unk_81;
    union SplitHWord unk_82;
    Helper* unk_84;
} ChuchuBossEntity;

extern void (*const ChuchuBoss_Functions[])(ChuchuBossEntity*);
extern void (*const gUnk_080CC1B0[])(ChuchuBossEntity*);
typedef struct {
    u8 unk_00, unk_01, unk_2, unk_03;
} struct_080CC1B8;
extern const struct_080CC1B8 gUnk_080CC1B8[];
extern void (*const gUnk_080CC1C8[])(ChuchuBossEntity*);
extern void (*const gUnk_080CC1DC[])(ChuchuBossEntity*);
extern void (*const gUnk_080CC20C[])(ChuchuBossEntity*);
extern const u8 gUnk_080CC234[];
extern const u8 gUnk_080CC24F[];
extern void (*const gUnk_080CC258[])(ChuchuBossEntity*);
extern void (*const gUnk_080CC264[])(ChuchuBossEntity*);
extern void (*const gUnk_080CC26C[])(ChuchuBossEntity*);
extern const u8 gUnk_080CC278[];
extern const u16 gUnk_080CC27C[];
extern const u16 gUnk_080CC29C[];
extern const u16 gUnk_080CC2BC[];
extern const s8 gUnk_080CC2DC[];
extern Hitbox gUnk_080FD238;

void ChuchuBoss(Entity* this);
void ChuchuBoss_OnKnockback(ChuchuBossEntity* this);
void ChuchuBoss_OnTick(ChuchuBossEntity*);
void ChuchuBoss_OnDeath(ChuchuBossEntity*);
void sub_08025DD8(ChuchuBossEntity*);
void sub_08026060(ChuchuBossEntity*);
void sub_08026090(ChuchuBossEntity*);
void sub_08026110(ChuchuBossEntity*);
void sub_0802626C(ChuchuBossEntity*);
void sub_080262A8(ChuchuBossEntity*);
void sub_08026328(ChuchuBossEntity*);
void sub_08026358(ChuchuBossEntity*);
void sub_080263B4(ChuchuBossEntity*);
void sub_08026414(ChuchuBossEntity*);
void sub_0802647C(ChuchuBossEntity*);
void sub_080264AC(ChuchuBossEntity*);
void sub_080264D4(ChuchuBossEntity*);
void sub_0802650C(ChuchuBossEntity*);
void sub_0802653C(ChuchuBossEntity*);
void sub_08026580(ChuchuBossEntity*);
void sub_08026634(ChuchuBossEntity*);
void sub_08026750(ChuchuBossEntity*);
void sub_08026774(ChuchuBossEntity*);
void sub_080267D0(ChuchuBossEntity*);
void sub_08026808(ChuchuBossEntity*);
void sub_0802686C(ChuchuBossEntity*);
void sub_080268C8(ChuchuBossEntity*);
void sub_080268EC(ChuchuBossEntity*);
void sub_08026914(ChuchuBossEntity*);
void sub_0802694C(ChuchuBossEntity*);
void sub_08026968(ChuchuBossEntity*);
void sub_080269CC(ChuchuBossEntity*);
void sub_08026BE8(ChuchuBossEntity*);
void sub_08026C40(ChuchuBossEntity*);
void sub_08026E1C(ChuchuBossEntity*);
void sub_08026F1C(ChuchuBossEntity*);
void sub_08026FA4(ChuchuBossEntity*);
void sub_08027064(ChuchuBossEntity*);
void sub_0802720C(ChuchuBossEntity*);
void sub_080272D4(ChuchuBossEntity*);

// as-yet unknown types (could return things)
void sub_08027548();
void sub_0802757C();
void sub_080276F4();
void sub_080277B8();
void sub_080277F8();
void sub_08027870();
void sub_08027984();
void sub_080279AC();
bool32 sub_080279E8(ChuchuBossEntity*);
void sub_08027A60();
bool32 sub_08027AA4(ChuchuBossEntity*);
void sub_08027B98();
void sub_08027BBC();
bool32 sub_08027C54();
void sub_08027C7C(ChuchuBossEntity*, u32);
void sub_08027C9C();
void sub_08027D20();

// clang-format off
void (*const ChuchuBoss_Functions[])(ChuchuBossEntity*) = {
    ChuchuBoss_OnTick,
    ChuchuBoss_OnTick,
    ChuchuBoss_OnKnockback,
    ChuchuBoss_OnDeath,
    (void (*)(ChuchuBossEntity*)) GenericConfused,
};

void (*const gUnk_080CC1B0[])(ChuchuBossEntity*) = {
    sub_08025DD8,
    sub_08026060,
};

const struct_080CC1B8 gUnk_080CC1B8[] = {
    {0, 4, 0, 0},
    {0, 4, 0, 0},
    {1, 4, 0, 0},
    {2, 4, 0, 0},
};

void (*const gUnk_080CC1C8[])(ChuchuBossEntity*) = {
    sub_08026110,
    sub_080272D4,
    sub_0802720C,
    sub_0802720C,
    sub_08026090,
};

void (*const gUnk_080CC1DC[])(ChuchuBossEntity*) = {
    sub_0802626C,
    sub_08026580,
    sub_08026634,
    sub_08026750,
    sub_0802686C,
    sub_080268C8,
    sub_0802694C,
    sub_08026C40,
    sub_08026E1C,
    sub_08026FA4,
    sub_08027064,
    sub_08026F1C,
};

void (*const gUnk_080CC20C[])(ChuchuBossEntity*) = {
    sub_080262A8,
    sub_08026328,
    sub_08026358,
    sub_080263B4,
    sub_08026414,
    sub_0802647C,
    sub_080264AC,
    sub_080264D4,
    sub_0802650C,
    sub_0802653C,
};

const u8 gUnk_080CC234[] = {
    0x3C, 0x1E, 0x1E, 0x1E,
    0x1E, 0x0F, 0x0F, 0x0F,
    0x04, 0x04, 0x04, 0x04,
    0x04, 0x04, 0x0A, 0x0A,
    0x0A, 0x0F, 0x0F, 0x0F,
    0x1E, 0x1E, 0x2D, 0x0A,
    0x5A, 0x1E, 0xFF,
};

const u8 gUnk_080CC24F[] = {
    2, 2, 4, 4,
    4, 6, 6, 8,
};

void (*const gUnk_080CC258[])(ChuchuBossEntity*) = {
    sub_08026774,
    sub_080267D0,
    sub_08026808,
};

void (*const gUnk_080CC264[])(ChuchuBossEntity*) = {
    sub_080268EC,
    sub_08026914,
};

void (*const gUnk_080CC26C[])(ChuchuBossEntity*) = {
    sub_08026968,
    sub_080269CC,
    sub_08026BE8,
};

const u8 gUnk_080CC278[] = {
    150, 180, 210, 250,
};

const u16 gUnk_080CC27C[] = {
     0x80,  0x8, 0x100,  0x6,
     0x80, 0x18, 0x100,  0x8,
    0x180,  0x6, 0x100, 0x10,
      0x0,  0x0,  0xA0, 0x18,
};

const u16 gUnk_080CC29C[] = {
     0x80, 0x8, 0x100,  0x4,
     0x80, 0xC,  0x80,  0x6,
    0x200, 0x6, 0x100,  0xC,
      0x0, 0x0,  0xA0, 0x14,
};

const u16 gUnk_080CC2BC[] = {
     0x80, 0x8, 0x100,  0x0,
     0x60, 0x2,  0x80,  0x2,
    0x200, 0x6, 0x100,  0x8,
      0x0, 0x0,  0xA0, 0x10,
};


const s8 gUnk_080CC2DC[] = {
    -7, -9, -7,
};
// clang-format on

void ChuchuBoss(Entity* this) {
    ChuchuBoss_Functions[GetNextFunction(this)]((ChuchuBossEntity*)this);
}

void ChuchuBoss_OnKnockback(ChuchuBossEntity* this) {
    GenericKnockback(super);
    if (super->type == 0) {
        sub_08027870(super);
    }
}

NONMATCH("asm/non_matching/chuchuBoss/ChuchuBoss_OnDeath.inc", void ChuchuBoss_OnDeath(ChuchuBossEntity* this)) {
    sub_08078B48();
    if (super->type == 0) {
        if (super->subAction != 0xC) {
            super->subAction = 0xC;
            this->unk_84->unk_03 = 0;
            InitAnimationForceUpdate(super->child, 9);
        } else {
            switch (this->unk_84->unk_03) {
                case 0:
                    sub_08027C7C(this, 0x3F);
                    this->unk_84->unk_03 = 1;
                    this->unk_7d = 0x78;
                    break;
                case 1:
                    if (this->unk_7d-- == 0) {
                        ((GenericEntity*)super->child)->field_0x6c.HALF.HI |= 2;
                        this->unk_68->unk_6d.unk1 = 1;
                        ((GenericEntity*)super->parent)->field_0x6c.HALF.HI |= 2;
                        super->child->health = 0;
                        this->unk_68->base.health = 0;
                        super->parent->health = 0;
                        gPauseMenuOptions.disabled = 0;
                        SoundReq(SFX_BOSS_DIE);
                        GenericDeath(super);
                    } else {
                        u32 tmp = 0x3F;
                        if (this->unk_7d <= 0x50) {
                            tmp = 0xF;
                            if (this->unk_7d > 0x1E) {
                                tmp = 0x1F;
                            }
                        }
                        sub_08027C7C(this, tmp);
                    }
                    break;
                default:
                    break;
            }
        }
        sub_08027870(super);
    } else {
        if (this->unk_6d.unk1) {
            this->unk_6d.unk1 = 1;
            DeleteThisEntity();
        }
    }
}
END_NONMATCH

void ChuchuBoss_OnTick(ChuchuBossEntity* this) {
    gUnk_080CC1B0[super->action](this);
}

NONMATCH("asm/non_matching/chuchuBoss/sub_08025DD8.inc", void sub_08025DD8(ChuchuBossEntity* this)) {
    super->action = 1;
    if (super->type == 8) {
        super->type = 4;
        super->hitbox = super->child->hitbox;
    } else {
        super->spritePriority.b0 = gUnk_080CC1B8[super->type & 3].unk_01;
        this->unk_74.HALF.HI = 0xa0;
        this->unk_78.HALF.HI = 0xa0;
        this->unk_7e = 0;
        super->spriteRendering.b0 = 3;
        if ((super->type & 3) == 1) {
            InitAnimationForceUpdate(super, 0);
        } else {
            InitializeAnimation(super, gUnk_080CC1B8[super->type & 3].unk_00);
        }
        switch (super->type & 3) {
            Hitbox* hitbox;
            case 0:
                super->type2 = super->type & 3;
                this->unk_84 = zMalloc(sizeof(Helper));
                if (!this->unk_84 || !AllocMutableHitbox(super)) {
                    GenericDeath(super);
                    return;
                }
                super->myHeap = this->unk_84;
                super->hitbox->offset_x = gUnk_080FD238.offset_x;
                super->hitbox->offset_y = gUnk_080FD238.offset_y;
                super->hitbox->unk2[0] = gUnk_080FD238.unk2[0];
                super->hitbox->unk2[1] = gUnk_080FD238.unk2[1];
                super->hitbox->unk2[2] = gUnk_080FD238.unk2[2];
                super->hitbox->unk2[3] = gUnk_080FD238.unk2[3];
                super->hitbox->width = gUnk_080FD238.width;
                super->hitbox->height = gUnk_080FD238.height;
                super->subAction = 0;
                this->unk_6d.unk0 = 1;
                this->unk_84->unk_06 = 0;
                this->unk_84->unk_05 = 0;
                this->unk_84->unk_01 = 0xF;
                this->unk_84->unk_03 = 0;
                this->unk_84->unk_04 = 0;
                this->unk_84->unk_0e = super->x.HALF.HI;
                this->unk_68 = (ChuchuBossEntity*)CreateEnemy(CHUCHU_BOSS, super->type | 3);
                if (this->unk_68) {
                    this->unk_68->base.collisionLayer = super->collisionLayer;
                    this->unk_68->base.x.HALF.HI = super->x.HALF.HI;
                    this->unk_68->base.y.HALF.HI = super->y.HALF.HI - 0xE;
                    this->unk_68->base.timer = 0xE;
                    this->unk_68->base.parent = super;
                    this->unk_68->unk_68 = this;
                }
                super->parent = CreateEnemy(CHUCHU_BOSS, super->type | 2);
                if (super->parent) {
                    super->parent->collisionLayer = super->collisionLayer;
                    super->parent->x.HALF.HI = super->x.HALF.HI;
                    super->parent->y.HALF.HI = this->unk_68->base.y.HALF.HI - 0x12;
                    super->parent->timer = 0x12;
                    super->parent->parent = (Entity*)this->unk_68;
                    this->unk_68->base.child = super->parent;
                    ((ChuchuBossEntity*)super->parent)->unk_68 = this;
                }
                super->child = CreateEnemy(CHUCHU_BOSS, super->type | 1);
                if (super->child) {
                    super->child->collisionLayer = super->collisionLayer;
                    super->child->x.HALF.HI = super->x.HALF.HI;
                    super->child->y.HALF.HI = super->parent->y.HALF.HI - 0xe;
                    super->child->timer = 0xe;
                    super->child->parent = super->parent;
                    super->child->child = super;
                    super->parent->child = super->child;
                    ((ChuchuBossEntity*)super->child)->unk_68 = this;
                }
                {
                    Entity* tmp;
                    tmp = CreateEnemy(CHUCHU_BOSS, 8);
                    if (tmp) {
                        tmp->child = super;
                    }
                    tmp = CreateObjectWithParent(super, OBJECT_49, 1, 0);
                    if (tmp) {
                        tmp->child = super->child;
                    }
                    if (super->type != 0) {
                        tmp = CreateObjectWithParent(super, OBJECT_49, 3, 0);
                        if (tmp) {
                            tmp->child = super->child;
                        }
                    }
                }
                break;
            case 1 ... 3:
                hitbox = super->hitbox;
                if (!AllocMutableHitbox(super)) {
                    this->unk_68->base.health = 0;
                    return;
                }
                super->hitbox->offset_x = hitbox->offset_x;
                super->hitbox->offset_y = hitbox->offset_y;
                super->hitbox->unk2[0] = hitbox->unk2[0];
                super->hitbox->unk2[1] = hitbox->unk2[1];
                super->hitbox->unk2[2] = hitbox->unk2[2];
                super->hitbox->unk2[3] = hitbox->unk2[3];
                super->hitbox->width = hitbox->width;
                super->hitbox->height = hitbox->height;
                break;
        }
        super->type &= 3;
        sub_08026060(this);
    }
}
END_NONMATCH

void sub_08026060(ChuchuBossEntity* this) {
    gUnk_080CC1C8[super->type](this);
    SetAffineInfo(super, this->unk_74.HALF_U.HI, this->unk_78.HALF_U.HI, this->unk_7e);
}

void sub_08026090(ChuchuBossEntity* this) {
    if (super->subAction == 0) {
        if (super->child->health == 0) {
            super->flags &= ~0x80;
            super->subAction = 1;
            super->timer = 250;
            gRoomControls.camera_target = super;
        }
        super->flags = super->child->flags;
        super->hitbox = super->child->hitbox;
        if (super->child->hitType == 0x7E) {
            super->hitType = 0x7E;
        } else {
            super->hitType = 0x7C;
        }
        CopyPosition(super->child, super);
    } else {
        sub_08078B48();
        if (super->timer-- == 0) {
            gRoomControls.camera_target = &gPlayerEntity;
            DeleteThisEntity();
        }
    }
}

void sub_08026110(ChuchuBossEntity* this) {
    s32 uVar2;
    s32 uVar3;

    gUnk_080CC1DC[super->subAction](this);
    if ((this->unk_84->unk_08 == 0) && ((u8)this->unk_84->unk_05 != 0)) {
        if (super->subAction == 8) {
            this->unk_84->unk_05 -= 0x40;
        } else {
            this->unk_84->unk_05 -= 0x20;
        }
        if (this->unk_84->unk_05 < 0) {
            this->unk_84->unk_05 = 0;
        }
    }

    if (this->unk_80 != 0) {
        if (super->timer == 0) {
            this->unk_74.WORD -= this->unk_80 * 0x1000;
            this->unk_78.WORD -= this->unk_80 * 0x1000;
            uVar3 = this->unk_74.HALF_U.HI;
            uVar2 = this->unk_82.HALF.LO + (u8)this->unk_84->unk_05;
            if (uVar3 <= uVar2) {
                this->unk_74.HALF.HI = uVar2;
            }
            uVar3 = this->unk_78.HALF_U.HI;
            uVar2 = this->unk_82.HALF.LO;
            uVar2 += (u8)this->unk_84->unk_05;
            if (uVar3 <= uVar2) {
                this->unk_78.HALF.HI = uVar2;
            }
            uVar3 = this->unk_74.HALF_U.HI;
            uVar2 = this->unk_82.HALF.LO;
            uVar2 += (u8)this->unk_84->unk_05;
            if ((uVar3 <= uVar2) && (this->unk_78.HALF_U.HI <= uVar2)) {
                super->timer ^= 1;
            }
        } else {
            this->unk_74.WORD += this->unk_80 * 0x1000;
            this->unk_78.WORD += this->unk_80 * 0x1000;
            uVar3 = this->unk_74.HALF_U.HI;
            uVar2 = this->unk_81 + (u8)this->unk_84->unk_05;
            if (uVar3 >= uVar2) {
                this->unk_74.HALF.HI = uVar2;
            }
            uVar3 = this->unk_78.HALF_U.HI;
            uVar2 = this->unk_81;
            uVar2 += (u8)this->unk_84->unk_05;
            if (uVar3 >= uVar2) {
                this->unk_78.HALF.HI = uVar2;
            }
            uVar3 = this->unk_74.HALF_U.HI;
            uVar2 = this->unk_81;
            uVar2 += (u8)this->unk_84->unk_05;
            if ((uVar3 >= uVar2) && (this->unk_78.HALF_U.HI >= uVar2)) {

                super->timer ^= 1;
            }
        }
    }
    super->hitbox->width = (u8)((u32)((0x10000 / this->unk_74.HALF_U.HI) * 7) >> 7);
    super->hitbox->height = (u8)((u32)((0x10000 / this->unk_78.HALF_U.HI) * 3) >> 7);
    if (super->z.HALF.HI == 0) {
        sub_0800445C(super);
    }
}

void sub_0802626C(ChuchuBossEntity* this) {
    gPauseMenuOptions.disabled = 1;
    gUnk_080CC20C[this->unk_84->unk_03](this);
    if (gPlayerEntity.action != 23 && gPlayerEntity.action != 15) {
        sub_08078B48();
    }
}

void sub_080262A8(ChuchuBossEntity* this) {
    this->unk_82.HALF.LO = 0x90;
    this->unk_81 = 0xb0;
    this->unk_80 = 8;
    super->timer = 1;
    sub_080276F4(super, 6, 1);
    if (super->type2 == 0) {
        gPlayerState.animation = 0x104;
        this->unk_84->unk_03 = 1;
    } else {
        this->unk_7c = 0;
        this->unk_7d = 0x1e;
        this->unk_84->unk_03 = 3;
        gPlayerEntity.animationState = 0;
        gRoomControls.camera_target = super;
        gRoomControls.unk5 = 1;
        SetTile(0x4022, 0x2c8, 1);
    }
}

void sub_08026328(ChuchuBossEntity* this) {
    if (gPlayerEntity.action != 23) {
        this->unk_7d = 0x78;
        this->unk_84->unk_03++;
        sub_08078AC0(10, 0, 0);
    }
}

void sub_08026358(ChuchuBossEntity* this) {
    u32 bVar1;

    if (gPlayerEntity.action != 15) {
        bVar1 = --this->unk_7d;
        if (bVar1 == 0) {
            this->unk_7c = 0;
            this->unk_7d = 0x1e;
            this->unk_84->unk_03++;
            gPlayerEntity.animationState = 0;
            gRoomControls.camera_target = super;
            gRoomControls.unk5 = 1;
        } else if (bVar1 < 0x61) {
            if (bVar1 < 0x5c) {
                gPlayerEntity.animationState = 4;
            } else {
                gPlayerEntity.animationState = 2;
            }
        }
    }
}

void sub_080263B4(ChuchuBossEntity* this) {
    u32 bVar3;

    if (this->unk_7d-- == 0) {
        bVar3 = this->unk_7d = gUnk_080CC234[this->unk_7c++];
        if ((bVar3 & 0xff) == 0xff) {
            this->unk_7c = 0x78;
            this->unk_84->unk_03++;
        } else {
            CreateObjectWithParent(super, OBJECT_49, super->type2, 0);
        }
    }
}

void sub_08026414(ChuchuBossEntity* this) {
    Entity* parent;
    Entity* child;

    if (this->unk_7c-- == 0) {
        super->z.HALF.HI = 0xff40;
        child = super->child;
        parent = super->parent;
        this->unk_68->base.spriteSettings.draw = 1;
        parent->spriteSettings.draw = 1;
        child->spriteSettings.draw = 1;
        super->spriteSettings.draw = 1;
        this->unk_84->unk_03++;
        SoundReq(SFX_1A2);
    }
}

void sub_0802647C(ChuchuBossEntity* this) {
    if (GravityUpdate(super, 0x4000) == 0) {
        InitScreenShake(0x10, 0);
        SoundReq(SFX_1A1);
        this->unk_84->unk_03++;
    }
}

void sub_080264AC(ChuchuBossEntity* this) {
    sub_080277B8(this, 0xd0, 8);
    if (this->unk_84->unk_03 != 6) {
        InitAnimationForceUpdate(super->child, 4);
        sub_08027D20(this);
    }
}

void sub_080264D4(ChuchuBossEntity* this) {
    if (sub_080279E8(this)) {
        this->unk_84->unk_03++;
        this->unk_7d = 0x3c;
        sub_080276F4(this, 5, 0);
        SoundReq(BGM_BOSS_THEME);
    }
    sub_080277F8(this);
}

void sub_0802650C(ChuchuBossEntity* this) {
    if (((ChuchuBossEntity*)super->child)->unk_81 == 0) {
        this->unk_84->unk_03++;
        gRoomControls.camera_target = &gPlayerEntity;
    }
    sub_08027870(super);
}

void sub_0802653C(ChuchuBossEntity* this) {
    if (gRoomControls.reload_flags == 0) {
        gRoomControls.unk5 = 4;
        sub_08027B98(this, 0x90, 0xb0, 4, 0xff);
        sub_08027548(this, 0);
        InitAnimationForceUpdate(super->child, 0);
        gPauseMenuOptions.disabled = 0;
    }
}

void sub_08026580(ChuchuBossEntity* this) {
    u32 cVar2;

    sub_08027AA4(this);
    if (this->unk_84->unk_01 == 64) {
        sub_08027BBC(this);
    } else {
        if (this->unk_7d-- == 0) {
            super->speed = 0;
            super->subAction = 2;
            this->unk_7c = 0x3c;
            super->direction = GetFacingDirection(super, &gPlayerEntity);
            if (this->unk_84->unk_04 == 2) {
                this->unk_80 = 0x48;
                this->unk_81 += 16;
            } else {
                this->unk_80 = 16;
            }
            if ((this->unk_84->unk_01 & 0xa0) != 0) {
                this->unk_7d = 0;
                this->unk_7c = 0;
            } else {
                this->unk_7d = cVar2 = gUnk_080CC24F[Random() & 7] + 1;
                if (this->unk_84->unk_04 == 2) {
                    this->unk_7d = cVar2 * 2;
                }
            }
        }
        sub_08027870(super);
    }
}

void sub_08026634(ChuchuBossEntity* this) {
    if (sub_08027AA4(this)) {
        return;
    }
    if (this->unk_7d == 0) {
        if (this->unk_7c-- != 0) {
            return;
        }
        if ((this->unk_84->unk_01 & 0x40) == 0) {
            if ((this->unk_84->unk_01 & 0x80) != 0) {
                this->unk_84->unk_00--;
                if (this->unk_84->unk_00 == 0) {
                    this->unk_84->unk_01 = 1;
                }
            } else {
                this->unk_84->unk_01 = 1;
                if (this->unk_84->unk_04 == 2 && ((Random() & 3) != 0)) {
                    this->unk_84->unk_00 = 4;
                    this->unk_84->unk_01 = 0x81;
                }
            }
        }
        super->subAction = 3;
        this->unk_84->unk_03 = 0;
        sub_08027B98(this, 0x90, 0x90, 0xc, 0);
        super->zVelocity = Q_16_16(7);
        super->speed = 0x180;
    } else {
        if ((gRoomTransition.frameCount & 0x7f) == 0) {
            super->direction = GetFacingDirection(super, &gPlayerEntity);
        }
        if (this->unk_84->unk_04 == 2) {
            super->speed = 0x100;
        } else {
            super->speed = 0xc0;
        }
        if (super->timer != 0) {
            if ((gRoomTransition.frameCount & 7) == 0) {
                SoundReq(SFX_19E);
            }
            ProcessMovement0(super);
        }
        if (this->unk_74.HALF_U.HI == this->unk_81) {
            this->unk_7d--;
        }
    }
    sub_08027870(super);
}

void sub_08026750(ChuchuBossEntity* this) {
    sub_08027AA4(this);
    gUnk_080CC258[this->unk_84->unk_03](this);
}

void sub_08026774(ChuchuBossEntity* this) {
    if ((((ChuchuBossEntity*)super->child)->unk_82.HALF.HI | ((ChuchuBossEntity*)super->parent)->unk_82.HALF.HI |
         this->unk_68->unk_82.HALF.HI) == 0) {
        if (this->unk_7d-- != 0) {
            return;
        }
        sub_08027B98(this, 0x80, 0x80, 0x40, 0);
        this->unk_84->unk_03 = 1;
        InitAnimationForceUpdate(super->child, 1);
    }
    sub_080277F8(this);
}

void sub_080267D0(ChuchuBossEntity* this) {
    sub_080277B8(this, 0xf0, 8);
    if (this->unk_84->unk_03 != 1) {
        sub_08027B98(this, 0xe0, 0xc0, 0x20, 0xff);
        InitAnimationForceUpdate(super->child, 2);
    }
}

void sub_08026808(ChuchuBossEntity* this) {
    u32 uVar1;
    ChuchuBossEntity* pEVar4;
    ChuchuBossEntity* pEVar5;
    ChuchuBossEntity* pEVar6;

    pEVar4 = (ChuchuBossEntity*)super->child;
    pEVar6 = this->unk_68;
    pEVar5 = (ChuchuBossEntity*)super->parent;

    if (pEVar4->unk_74.HALF_U.HI < 0xc0) {
        pEVar4->unk_74.HALF_U.HI += 4;
    }
    if (pEVar4->unk_78.HALF_U.HI > 0xb0) {
        pEVar4->unk_78.HALF_U.HI -= 8;
    } else {
        super->direction = GetFacingDirection(super, &gPlayerEntity);
        super->subAction = 4;
        pEVar4->unk_78.HALF_U.HI = 0xa0;
        pEVar5->unk_78.HALF_U.HI = 0xa0;
        pEVar6->unk_78.HALF_U.HI = 0xa0;
        sub_080276F4(this, 1, 0);
        SoundReq(SFX_1A2);
    }
    sub_080277F8(this);
}

void sub_0802686C(ChuchuBossEntity* this) {
    if (GravityUpdate(super, 0x4000) != 0) {
        ProcessMovement0(super);
    } else {
        InitScreenShake(0x10, 0);
        super->subAction = 5;
        this->unk_84->unk_03 = 0;
        sub_08027B98(this, 0x80, 0x80, 0x80, 0);
        sub_08027870(super);
        InitAnimationForceUpdate(super->child, 3);
        SoundReq(SFX_1A1);
    }
}

void sub_080268C8(ChuchuBossEntity* this) {
    sub_08027AA4(this);
    gUnk_080CC264[this->unk_84->unk_03](this);
}

void sub_080268EC(ChuchuBossEntity* this) {
    sub_080277B8(this, 0xd0, 8);
    if (this->unk_84->unk_03 != 0) {
        InitAnimationForceUpdate(super->child, 4);
        sub_08027D20(this);
    }
}

void sub_08026914(ChuchuBossEntity* this) {
    if (sub_080279E8(this)) {
        sub_08027B98(this, 0x90, 0xb0, 4, 0xff);
        sub_08027548(this, 0);
        InitAnimationForceUpdate(super->child, 0);
    }
    sub_080277F8(this);
}

void sub_0802694C(ChuchuBossEntity* this) {
    gUnk_080CC26C[this->unk_84->unk_03](this);
}

void sub_08026968(ChuchuBossEntity* this) {
    s32 sVar5;
    ChuchuBossEntity* pEVar6;
    ChuchuBossEntity* pEVar7;
    ChuchuBossEntity* pEVar8;

    if (this->unk_7d-- == 0) {
        this->unk_84->unk_03++;
    } else {
        pEVar7 = (ChuchuBossEntity*)super->child;
        pEVar8 = this->unk_68;
        pEVar6 = (ChuchuBossEntity*)super->parent;
        if (DirectionIsVertical(super->direction)) {
            sVar5 = 0x100;
        } else {
            sVar5 = -0x100;
        }
        pEVar8->unk_82.HWORD += sVar5;
        pEVar6->unk_82.HWORD += sVar5;
        pEVar7->unk_82.HWORD += sVar5;
    }
    sub_08027870(super);
}

void sub_080269CC(ChuchuBossEntity* this) {
    s32 sVar1;
    ChuchuBossEntity* pEVar2;
    u32 uVar3;
    GenericEntity* entity;
    ChuchuBossEntity* pEVar4;
    ChuchuBossEntity* pEVar5;
    ChuchuBossEntity* pEVar6;
    ChuchuBossEntity* pEVar7;
    u8 temp;
    s32 temp2;
    u32 cVar8 = 0;

    pEVar7 = (ChuchuBossEntity*)super->child;
    pEVar2 = this->unk_68;
    pEVar4 = (ChuchuBossEntity*)super->parent;
    if (DirectionIsVertical(super->direction)) {
        sVar1 = -0x300;
    } else {
        sVar1 = 0x300;
    }

    temp2 = pEVar2->unk_82.HALF.HI + 0x20;
    if ((u8)temp2 <= 0x3f) {
        pEVar2->unk_82.HWORD += sVar1;
    } else {
        cVar8 = 1;
    }
    temp2 = pEVar4->unk_82.HALF.HI + 0x44;
    if ((u8)temp2 < 0x88) {
        pEVar4->unk_82.HWORD += sVar1;
    } else {
        cVar8++;
    }
    temp2 = pEVar7->unk_82.HALF.HI + 0x40;
    if ((u32)(temp2 - 0x20) > 0x40) {
        if (DirectionIsVertical(super->direction)) {
            if (pEVar7->base.animIndex != 6) {
                InitAnimationForceUpdate(&pEVar7->base, 6);
            }
        } else {
            if (pEVar7->base.animIndex != 5) {
                InitAnimationForceUpdate(&pEVar7->base, 5);
            }
        }
    }

    if ((temp2 << 0x18) >= 0) {
        pEVar7->unk_82.HWORD += sVar1;
    } else {
        cVar8++;
    }

    if (cVar8 == 3) {
        COLLISION_OFF(super);
        COLLISION_ON(&pEVar7->base);
        pEVar7->unk_74.HALF.HI += 3;
        InitScreenShake(0x20, 0);
        SoundReq(SFX_10B);
        entity = (GenericEntity*)CreateObjectWithParent(super, OBJECT_15, 0, 0);
        if (entity != NULL) {
            entity->base.spriteIndex = 0xc9;
#ifdef EU
            entity->base.spriteVramOffset = super->spriteVramOffset;
            entity->base.palette.b.b0 = super->palette.b.b0;
#endif
            entity->base.animIndex = 1;
            entity->base.y.HALF.HI += 0x10;
            entity->base.spritePriority.b0 = 0;
            entity->base.spriteRendering.b3 = pEVar7->base.spriteRendering.b3;
            entity->base.spriteOrientation.flipY = pEVar7->base.spriteOrientation.flipY;
            if (DirectionIsVertical(super->direction)) {
                entity->base.x.HALF.HI -= 0x38;
            } else {
                entity->base.x.HALF.HI += 0x38;
            }
#ifndef EU
            LoadFixedGFX(&entity->base, 0x3e);
            if (super->type2 == 0) {
                LoadObjPalette(&entity->base, 0x2b);
            } else {
                LoadObjPalette(&entity->base, 0x2c);
            }
#endif
        }
        pEVar6 = (ChuchuBossEntity*)super->parent;
        pEVar5 = (ChuchuBossEntity*)super->child;
        *(u8*)&this->unk_68->unk_84 = 1;
        *(u8*)&pEVar5->unk_84 = 1;
        *(u8*)&pEVar6->unk_84 = 1;
        pEVar4->unk_78.HALF.HI = 0x98;
        pEVar2->unk_78.HALF.HI = 0x98;
        pEVar7->unk_78.HALF.HI = 0x98;
        this->unk_7c = gUnk_080CC278[Random() & 3];
        this->unk_84->unk_03++;
        entity = (GenericEntity*)CreateObjectWithParent(&pEVar7->base, OBJECT_49, 10, 0);
        if (entity != NULL) {
            *(u32*)&entity->cutsceneBeh = this->unk_7c;
        }
    } else if (pEVar7->unk_74.HALF_U.HI < 0xf0) {
        pEVar7->unk_74.WORD += 0x40000;
        pEVar7->unk_78.WORD -= 0x8000;
    }
    sub_08027870(super);
}

void sub_08026BE8(ChuchuBossEntity* this) {
    Entity* child;

    child = super->child;
    child->flags2 &= ~1;
    if (this->unk_7c == 0) {
        super->subAction = 7;
        this->unk_84->unk_03 = 0;
        this->unk_7d = 0x2d;
        child->flags &= ~0x80;
        child->flags2 |= 1;
        SoundReq(SFX_155);
    } else {
        this->unk_7c--;
    }
    sub_08027870(super);
}

void sub_08026C40(ChuchuBossEntity* this) {
    u8 bVar2;
    int iVar5;
    ChuchuBossEntity* pEVar6;
    ChuchuBossEntity* pEVar7;
    ChuchuBossEntity* pEVar8;

    pEVar6 = (ChuchuBossEntity*)super->child;
    pEVar8 = this->unk_68;
    pEVar7 = (ChuchuBossEntity*)super->parent;
    if (this->unk_7d != 0) {
        if (--this->unk_7d != 0) {
            if ((this->unk_7d & 8) != 0) {
                pEVar6->unk_74.WORD += 0x20000;
                pEVar6->unk_78.WORD += 0x10000;
                return;
            }
            pEVar6->unk_74.WORD -= 0x20000;
            pEVar6->unk_78.WORD -= 0x10000;
            return;
        }
        if (DirectionIsVertical(super->direction)) {
            if (pEVar6->base.animIndex != 8) {
                InitAnimationForceUpdate(&pEVar6->base, 8);
            }
        } else {
            if (pEVar6->base.animIndex != 7) {
                InitAnimationForceUpdate(&pEVar6->base, 7);
            }
        }
    }
    if (this->unk_7c == 0) {
        if (DirectionIsVertical(super->direction)) {
            iVar5 = 0x300;
        } else {
            iVar5 = -0x300;
        }
    } else {
        if (DirectionIsVertical(super->direction)) {
            iVar5 = 0x480;
        } else {
            iVar5 = -0x480;
        }
    }
    bVar2 = pEVar8->unk_82.HALF.HI + 6;
    if (bVar2 >= 0xd) {
        pEVar8->unk_82.HWORD += iVar5 * 2;
        pEVar7->unk_82.HWORD += iVar5;
        pEVar6->unk_82.HWORD += iVar5;
    } else {
        pEVar8->unk_82.HWORD = 0;
        bVar2 = pEVar7->unk_82.HALF.HI + 6U;
        if (bVar2 >= 0xd) {
            pEVar7->unk_82.HWORD += iVar5 * 2;
            pEVar6->unk_82.HWORD += iVar5;
        } else {
            pEVar7->unk_82.HWORD = 0;
            bVar2 = pEVar6->unk_82.HALF.HI + 6U;
            if (bVar2 >= 0xd) {
                pEVar6->unk_82.HWORD += iVar5 * 2;
            } else {
                pEVar6->unk_82.HWORD = 0;
            }
        }
    }
    if (pEVar6->unk_74.HALF_U.HI >= 0xa1) {
        pEVar6->unk_74.WORD -= 0x40000;
    } else {
        pEVar6->unk_74.HALF_U.HI = 0xa0;
    }

    if (pEVar6->unk_78.HALF_U.HI < 0xa0) {
        pEVar6->unk_78.WORD += 0x8000;
    } else {
        sub_080276F4(this, 3, 0);
        pEVar6->unk_7d = 0;
        if (DirectionIsVertical(super->direction)) {
            *(u8*)((int)pEVar7 + 0x85) = 1;
            *(u8*)((int)pEVar8 + 0x85) = 1;
            *(u8*)((int)pEVar6 + 0x85) = 1;
        }
        super->subAction = 8;
        this->unk_7c = 4;
        pEVar7->base.subtimer = 0;
        pEVar8->base.subtimer = 0;
        pEVar6->base.subtimer = 0;
        sub_08027B98(this, 0x90, 0xb0, 0x10, 0);
    }
    sub_08027870(super);
}

void sub_08026E1C(ChuchuBossEntity* this) {
    u32 uVar2;
    Entity* pEVar5;
    Entity* pEVar6;

    if (this->unk_7c == 0) {
        if (10 < super->child->subtimer + super->parent->subtimer + this->unk_68->base.subtimer) {
            COLLISION_ON(super);
            if (sub_08027C54(this)) {
                this->unk_84->unk_04++;
                ;
                super->child->health = 0xff;
            }
            if (this->unk_84->unk_04 == 3) {
                super->health = 0;
                COLLISION_OFF(super);
                pEVar6 = super->child;
                pEVar5 = super->parent;
                this->unk_68->base.flags = super->flags;
                uVar2 = super->flags;
                pEVar5->flags = uVar2;
                pEVar6->flags = uVar2;
                super->iframes = -0x3c;
                return;
            }
            this->unk_84->unk_00 = 4;
            this->unk_84->unk_01 = 0x81;
            COLLISION_ON(super);
            super->hitType = 0x7d;
            super->subAction = 11;
            this->unk_84->unk_03 = 0;
            InitAnimationForceUpdate(super->child, 0);
            sub_08027B98(this, 0x80, 0x80, 0x80, 0);
            this->unk_84->unk_01 = 0x21;
        }
    } else {
        this->unk_7c--;
        this->unk_84->unk_08 = 0;
        this->unk_84->unk_06 = 0;
    }
    if ((sub_08027C54(this)) && this->unk_84->unk_04 == 2) {
        sub_08027C7C(this, 0x3f);
        sub_08078B48();
    }
}

void sub_08026F1C(ChuchuBossEntity* this) {
    if ((this->unk_7c & 0x80) != 0) {
        if (sub_080279E8(this) != 0) {
            this->unk_84->unk_03 = 0;
            this->unk_7c &= 0xf;
            sub_08027B98(this, 0x80, 0x80, 0x80, 0);
            if (this->unk_7c == 2) {
                sub_08027548(this, 0);
            }
        }
        sub_080277F8(this);
    } else {
        sub_080277B8(this, 0xf0, 0x10);
        if (this->unk_84->unk_03 != 0) {
            this->unk_7c = (this->unk_7c + 1U) | 0x80;
            sub_08027B98(this, 0xc0, 0xc0, 0x20, 1);
        }
    }
}

void sub_08026FA4(ChuchuBossEntity* this) {
    u32 uVar1;
    ChuchuBossEntity* pEVar3;
    ChuchuBossEntity* pEVar4;

    sub_08078B48();
    COLLISION_OFF(super);
    pEVar4 = (ChuchuBossEntity*)super->child;
    pEVar3 = (ChuchuBossEntity*)super->parent;
    this->unk_68->base.flags = super->flags;
    uVar1 = super->flags;
    pEVar3->base.flags = uVar1;
    pEVar4->base.flags = uVar1;
    if (this->unk_7c != 0) {
        this->unk_7c = 1;
    }
    if (((ChuchuBossEntity*)super->child)->unk_78.HALF_U.HI < 0x98) {
        ((ChuchuBossEntity*)super->child)->unk_78.WORD += (0x10000 << this->unk_7c);
        ((ChuchuBossEntity*)super->child)->unk_74.WORD -= (0x20000 << this->unk_7c);
    } else {
        super->subAction = 7;
        COLLISION_OFF(super->child);
        this->unk_84->unk_03 = 0;
        this->unk_7d = 0x2d;
        SoundReq(SFX_155);
        if (DirectionIsVertical(super->direction)) {
            if (super->child->animIndex != 8) {
                InitAnimationForceUpdate(super->child, 8);
            }
        } else {
            if (super->child->animIndex != 7) {
                InitAnimationForceUpdate(super->child, 7);
            }
        }
    }
    sub_08027870(super);
}
