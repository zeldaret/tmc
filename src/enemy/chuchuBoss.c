/**
 * @file chuchuBoss.c
 * @ingroup Enemies
 *
 * @brief Chuchu Boss enemy
 */
#include "enemy.h"
#include "functions.h"
#include "object.h"
#include "tiles.h"

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
    u8 unk_0c;
    u8 unk_0d;
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
    union SplitHWord unk_7e;
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

typedef struct {
    u16 unk0;
    u8 unk2;
} ChuchuStruct;

extern const ChuchuStruct gUnk_080CC27C[];
extern const ChuchuStruct gUnk_080CC29C[];
extern const ChuchuStruct gUnk_080CC2BC[];
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
void sub_08027870(ChuchuBossEntity*);
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
Entity* sub_08027D20(ChuchuBossEntity*);

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

const ChuchuStruct gUnk_080CC27C[] = {
     {0x80,  0x8}, {0x100,  0x6},
     {0x80, 0x18}, {0x100,  0x8},
    {0x180,  0x6}, {0x100, 0x10},
      {0x0,  0x0},  {0xA0, 0x18},
};

const ChuchuStruct gUnk_080CC29C[] = {
     {0x80, 0x8}, {0x100,  0x4},
     {0x80, 0xC}, { 0x80,  0x6},
    {0x200, 0x6}, {0x100,  0xC},
      {0x0, 0x0},  {0xA0, 0x14},
};

const ChuchuStruct gUnk_080CC2BC[] = {
     {0x80, 0x8}, {0x100,  0x0},
     {0x60, 0x2}, { 0x80,  0x2},
    {0x200, 0x6}, {0x100,  0x8},
      {0x0, 0x0},  {0xA0, 0x10},
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
        sub_08027870(this);
    }
}

void ChuchuBoss_OnDeath(ChuchuBossEntity* this) {
    Entity* child;
    Entity* parent;

    PausePlayer();
    if (super->type == 0) {
        if (super->subAction != 12) {
            super->subAction = 12;
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
                        ((Enemy*)super->child)->enemyFlags |= EM_FLAG_BOSS_KILLED;
                        this->unk_68->unk_6d.unk1 = 1;
                        ((Enemy*)super->parent)->enemyFlags |= EM_FLAG_BOSS_KILLED;
                        parent = super->child;
                        child = super->parent;
                        this->unk_68->base.health = 0;
                        child->health = 0;
                        parent->health = 0;
                        gPauseMenuOptions.disabled = 0;
                        SoundReq(SFX_BOSS_DIE);
                        GenericDeath(super);
                    } else {
                        bool32 b = this->unk_7d <= 0x50;
                        u32 tmp = 0x3F;
                        if (this->unk_7d <= 0x50) {
                            if (this->unk_7d > 0x1E) {
                                tmp = 0x1F;
                            } else {
                                tmp = 0xF;
                            }
                        } else {
                        }
                        sub_08027C7C(this, tmp);
                    }
                    break;
                default:
                    break;
            }
        }
        sub_08027870(this);
    } else {
        if (this->unk_6d.unk1) {
            this->unk_6d.unk1 = 1;
            DeleteThisEntity();
        }
    }
}

void ChuchuBoss_OnTick(ChuchuBossEntity* this) {
    gUnk_080CC1B0[super->action](this);
}

void sub_08025DD8(ChuchuBossEntity* this) {
    super->action = 1;
    if (super->type == 8) {
        super->type = 4;
        super->hitbox = super->child->hitbox;
    } else {
        super->spritePriority.b0 = gUnk_080CC1B8[super->type & 3].unk_01;
        this->unk_74.HALF.HI = 0xa0;
        this->unk_78.HALF.HI = 0xa0;
        this->unk_7e.HWORD = 0;
        super->spriteRendering.b0 = 3;
        if ((super->type & 3) == 1) {
            InitAnimationForceUpdate(super, 0);
        } else {
            InitializeAnimation(super, gUnk_080CC1B8[super->type & 3].unk_00);
        }
        switch (super->type & 3) {
            Hitbox* hitbox;
            case 0:
                super->type2 = super->type;
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
                    MEMORY_BARRIER;
                    this->unk_68->unk_68 = this;
                }
                super->parent = CreateEnemy(CHUCHU_BOSS, super->type | 2);
                if (super->parent) {
                    super->parent->collisionLayer = super->collisionLayer;
                    super->parent->x.HALF.HI = super->x.HALF.HI;
                    super->parent->y.HALF.HI = this->unk_68->base.y.HALF.HI - 0x12;
                    super->parent->timer = 0x12;
                    super->parent->parent = (Entity*)this->unk_68;
                    MEMORY_BARRIER;
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
                    tmp = CreateObjectWithParent(super, CHUCHU_BOSS_START_PARTICLE, 1, 0);
                    if (tmp) {
                        tmp->child = super->child;
                    }
                    if (super->type != 0) {
                        tmp = CreateObjectWithParent(super, CHUCHU_BOSS_START_PARTICLE, 3, 0);
                        if (tmp) {
                            tmp->child = super->child;
                        }
                    }
                }
                break;
            case 1:
            case 2:
            case 3:
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

void sub_08026060(ChuchuBossEntity* this) {
    gUnk_080CC1C8[super->type](this);
    SetAffineInfo(super, this->unk_74.HALF_U.HI, this->unk_78.HALF_U.HI, this->unk_7e.HWORD);
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
        PausePlayer();
        if (super->timer-- == 0) {
            gRoomControls.camera_target = &gPlayerEntity.base;
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
    if (gPlayerEntity.base.action != PLAYER_ROOMTRANSITION && gPlayerEntity.base.action != PLAYER_ROOM_EXIT) {
        PausePlayer();
    }
}

void sub_080262A8(ChuchuBossEntity* this) {
    this->unk_82.HALF.LO = 0x90;
    this->unk_81 = 0xb0;
    this->unk_80 = 8;
    super->timer = 1;
    sub_080276F4(super, 6, 1);
    if (super->type2 == 0) {
        gPlayerState.animation = ANIM_WALK;
        this->unk_84->unk_03 = 1;
    } else {
        this->unk_7c = 0;
        this->unk_7d = 0x1e;
        this->unk_84->unk_03 = 3;
        gPlayerEntity.base.animationState = 0;
        gRoomControls.camera_target = super;
        gRoomControls.scrollSpeed = 1;
        SetTile(SPECIAL_TILE_34, TILE_POS(8, 11), LAYER_BOTTOM);
    }
}

void sub_08026328(ChuchuBossEntity* this) {
    if (gPlayerEntity.base.action != PLAYER_ROOMTRANSITION) {
        this->unk_7d = 0x78;
        this->unk_84->unk_03++;
        sub_08078AC0(10, 0, 0);
    }
}

void sub_08026358(ChuchuBossEntity* this) {
    u32 bVar1;

    if (gPlayerEntity.base.action != PLAYER_ROOM_EXIT) {
        bVar1 = --this->unk_7d;
        if (bVar1 == 0) {
            this->unk_7c = 0;
            this->unk_7d = 0x1e;
            this->unk_84->unk_03++;
            gPlayerEntity.base.animationState = 0;
            gRoomControls.camera_target = super;
            gRoomControls.scrollSpeed = 1;
        } else if (bVar1 < 0x61) {
            if (bVar1 < 0x5c) {
                gPlayerEntity.base.animationState = 4;
            } else {
                gPlayerEntity.base.animationState = 2;
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
            CreateObjectWithParent(super, CHUCHU_BOSS_START_PARTICLE, super->type2, 0);
        }
    }
}

void sub_08026414(ChuchuBossEntity* this) {
    Entity* parent;
    Entity* child;

    if (this->unk_7c-- == 0) {
        super->z.HALF.HI = -192;
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
        gRoomControls.camera_target = &gPlayerEntity.base;
    }
    sub_08027870(this);
}

void sub_0802653C(ChuchuBossEntity* this) {
    if (gRoomControls.reload_flags == 0) {
        gRoomControls.scrollSpeed = 4;
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
            super->direction = GetFacingDirection(super, &gPlayerEntity.base);
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
        sub_08027870(this);
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
            super->direction = GetFacingDirection(super, &gPlayerEntity.base);
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
    sub_08027870(this);
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
        super->direction = GetFacingDirection(super, &gPlayerEntity.base);
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
        sub_08027870(this);
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
    sub_08027870(this);
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
        entity = (GenericEntity*)CreateObjectWithParent(super, CHUCHU_BOSS_PARTICLE, 0, 0);
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
        entity = (GenericEntity*)CreateObjectWithParent(&pEVar7->base, CHUCHU_BOSS_START_PARTICLE, 10, 0);
        if (entity != NULL) {
            *(u32*)&entity->cutsceneBeh = this->unk_7c;
        }
    } else if (pEVar7->unk_74.HALF_U.HI < 0xf0) {
        pEVar7->unk_74.WORD += 0x40000;
        pEVar7->unk_78.WORD -= 0x8000;
    }
    sub_08027870(this);
}

void sub_08026BE8(ChuchuBossEntity* this) {
    Entity* child;

    child = super->child;
    child->collisionMask &= ~1;
    if (this->unk_7c == 0) {
        super->subAction = 7;
        this->unk_84->unk_03 = 0;
        this->unk_7d = 0x2d;
        child->flags &= ~0x80;
        child->collisionMask |= 1;
        SoundReq(SFX_155);
    } else {
        this->unk_7c--;
    }
    sub_08027870(this);
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
    sub_08027870(this);
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
        PausePlayer();
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

    PausePlayer();
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
    sub_08027870(this);
}

void sub_08027064(ChuchuBossEntity* this) {
    u32 uVar2;
    ChuchuBossEntity* pEVar5;
    ChuchuBossEntity* pEVar7;
    ChuchuBossEntity* pEVar10;

    pEVar10 = (ChuchuBossEntity*)super->child;
    pEVar5 = this->unk_68;
    pEVar7 = (ChuchuBossEntity*)super->parent;
    super->speed = 0x60;
    if (pEVar10->base.animIndex != 10 && ((gRoomTransition.frameCount & 0xf) == 0)) {
        SoundReq(SFX_PLY_JUMP);
    }
    if (this->unk_84->unk_03 != 0) {
        if (super->y.HALF.HI != gPlayerEntity.base.y.HALF.HI) {
            if ((gRoomTransition.frameCount & 0xf) == 0) {
                if (super->y.HALF.HI > gPlayerEntity.base.y.HALF.HI) {
                    this->unk_84->unk_0c = 0;
                } else {
                    this->unk_84->unk_0c = 0x10;
                }
            }
            super->direction = this->unk_84->unk_0c;
            ProcessMovement0(super);
        }
    }
    if (*(char*)((int)pEVar10 + 0x85) == 1) {
        if ((s8)pEVar10->unk_82.HALF.HI < 1) {
            super->direction = 24;
        } else {
            super->direction = 8;
        }
    } else {
        if ((s8)pEVar10->unk_82.HALF.HI <= -1) {
            super->direction = 24;
        } else {
            super->direction = 8;
        }
    }
    if (this->unk_84->unk_03 == 0) {
        if (super->x.HALF.HI == this->unk_84->unk_0e) {
            *(char*)((int)pEVar7 + 0x84) = 1;
            *(char*)((int)pEVar5 + 0x84) = 1;
            *(char*)((int)pEVar10 + 0x84) = 1;
            this->unk_7c = 0x1e;
            this->unk_84->unk_03++;
        } else {
            ProcessMovement0(super);
        }
    } else if (pEVar10->unk_7d != 0 && pEVar5->unk_7d != 0 && pEVar7->unk_7d != 0) {
        if (this->unk_7c-- == 0) {
            *(char*)((int)pEVar7 + 0x84) = 1;
            *(char*)((int)pEVar5 + 0x84) = 1;
            *(char*)((int)pEVar10 + 0x84) = 1;
            uVar2 = 0;
            if (this->unk_84->unk_03 > 1) {
                if (super->x.HALF.HI > gPlayerEntity.base.x.HALF.HI) {
                    uVar2 = 24;
                } else {
                    uVar2 = 8;
                }
            }
            if (this->unk_84->unk_03 == 5 || super->direction == uVar2) {
                super->subAction = 6;
                sub_080276F4(this, 7, 1);
                this->unk_84->unk_03 = 0;
                this->unk_7d = 0xf;
            } else {
                this->unk_84->unk_03++;
            }
        }
    } else {
        if (this->unk_84->unk_03 != 4) {
            this->unk_7c = 0x1e;
        } else {
            this->unk_7c = 0x3c;
        }
    }
    sub_08027870(this);
}

void sub_0802720C(ChuchuBossEntity* this) {
    super->subAction = super->parent->subAction;
    switch (super->subAction) {
        case 1:
        case 2:
        case 12:
            this->unk_78.HALF.HI = 0xa0;
            this->unk_74.HALF.HI = 0xa0;
            sub_0802757C(this);
            break;
        case 3:
        case 5:
            if (this->unk_82.HALF.HI == 0)
                break;
            this->unk_7d = 0;
            sub_0802757C(this);
            break;
        default:
            break;
        case 8:
            if (super->subtimer < 4) {
                sub_0802757C(this);
                if (this->unk_82.HALF.HI == 0) {
                    super->subtimer++;
                }
            }
            break;
        case 10:
            if (this->unk_7d == 0) {
                case 4:
                    sub_0802757C(this);
                    break;
            } else {
                if (*(char*)&this->unk_84 != 0) {
                    this->unk_7d = 0;
                    *(char*)&this->unk_84 = 0;
                }
                break;
            }
        case 0:
            sub_0802757C(this);
            break;
    }
    super->z.WORD = super->parent->z.WORD;
}

void sub_080272D4(ChuchuBossEntity* this) {
    Entity* pEVar3;
    u8 temp;

    switch (super->parent->subAction) {
        case 1:
        case 2:
        case 12:
            this->unk_78.HALF.HI = 0xa0;
            this->unk_74.HALF.HI = 0xa0;
            sub_0802757C(this);
            break;
        case 3:
        case 5:
            if (this->unk_82.HALF.HI == 0)
                break;
        case 4:
            sub_0802757C(this);
            break;
        case 8:
            if (super->subtimer < 3) {
                sub_0802757C(this);
                if (this->unk_82.HALF.HI == 0) {
                    super->subtimer++;
                }
            }
            break;
        case 6:
            super->hitbox->width = (u32)((0x10000 / this->unk_78.HALF_U.HI) * 9) >> 7;
            super->hitbox->height = (u32)((0x10000 / this->unk_74.HALF_U.HI) * 5) >> 6;
            if (*(char*)&this->unk_84 == 0)
                break;
            if (super->contactFlags & CONTACT_NOW) {
                if (super->iframes != 0) {
                    ((ChuchuBossEntity*)super->child)->unk_68->base.iframes = super->iframes;
                    super->child->parent->iframes = super->iframes;
                    super->child->iframes = super->iframes;
                    pEVar3 = sub_08027D20((ChuchuBossEntity*)super->child);
                    if (pEVar3 != NULL) {
                        pEVar3->x.HALF.HI = super->x.HALF.HI + 1;
                        pEVar3->spriteOffsetY = super->spriteOffsetY + 0x20;
                        pEVar3->spriteOffsetX = super->spriteOffsetX;
                    }
                    if (sub_08027C54(super->child) == 0 || ((ChuchuBossEntity*)super->child)->unk_84->unk_04 != 2) {
                        SoundReq(SFX_BOSS_HIT);
                    } else {
                        PausePlayer();
                        gRoomControls.camera_target = super->child;
                        gPauseMenuOptions.disabled = 1;
                        gRoomControls.camera_target->subAction = 9;
                        SoundReq(SFX_BOSS_DIE);
                    }
                }
            }
            sub_08027A60(this);
            sub_0800445C(super);
            break;

        case 9:
            super->hitbox->width = (u32)((0x10000 / this->unk_78.HALF_U.HI) * 9) >> 7;
            super->hitbox->height = (u32)((0x10000 / this->unk_74.HALF_U.HI) * 5) >> 6;
            sub_0800445C(super);
            break;
        case 10:
            if (this->unk_7d == 0) {
                sub_0802757C(this);
            } else if (*(char*)&this->unk_84 != 0) {
                this->unk_7d = 0;
                *(char*)&this->unk_84 = 0;
            }
            temp = this->unk_82.HALF.HI + (this->unk_81 / 2);
            if ((temp) > (u32)this->unk_81) {
                if ((s8)this->unk_82.HALF.HI > 0) {
                    if (super->animIndex != 12) {
                        InitAnimationForceUpdate(super, 12);
                    }
                } else if (super->animIndex != 11) {
                    InitAnimationForceUpdate(super, 11);
                }
            } else if (super->animIndex != 10) {
                InitAnimationForceUpdate(super, 10);
            }
            break;
        case 0:
            if (((ChuchuBossEntity*)super->child)->unk_84->unk_03 == 8) {
                sub_0802757C(this);
                if (this->unk_7d == 1) {
                    if (this->unk_81 != 0) {
                        this->unk_81 -= 4;
                    }
                }
            }
            break;
    }
    super->z.WORD = super->parent->z.WORD;
    super->contactFlags = 0;
    UpdateAnimationSingleFrame(super);
}

void sub_08027548(ChuchuBossEntity* this, u32 param_2) {
    super->subAction = 1;
    sub_08027B98(this, 0x90, 0xb0, 8, 0xff);
    this->unk_7d = 0;
    sub_080276F4(this, 0, param_2);
}

void sub_0802757C(ChuchuBossEntity* this) {
    u32 cVar2;

    if (this->unk_7d != 0) {
        if (super->type != 1) {
            if (((ChuchuBossEntity*)super->child)->unk_7d != 0) {
                this->unk_7d = 0;
            }
        } else {
            this->unk_7d--;
        }
    } else {
        if (*(u8*)((int)this + 0x85) == 1) {
            this->unk_82.HWORD += *(u16*)((int)this + 0x86);
            if ((s8)this->unk_82.HALF.HI >= (s8)this->unk_81) {
                *(u8*)((int)this + 0x85) = 0;
                if (super->type == 1) {
                    this->unk_7d =
                        (((ChuchuBossEntity*)super->parent)->unk_81 << 8) / *(u16*)((int)super->parent + 0x86) + 1;
                } else {
                    this->unk_7d = 1;
                }
                this->unk_82.HWORD = this->unk_81 << 8;
            }
        } else {
            this->unk_82.HWORD -= *(u16*)((int)this + 0x86);
            if ((s8)this->unk_82.HALF.HI <= -this->unk_81) {
                cVar2 = 1;
                *(u8*)((int)this + 0x85) = cVar2;
                if (super->type == 1) {
                    this->unk_7d =
                        (((ChuchuBossEntity*)super->parent)->unk_81 << 8) / *(u16*)((int)super->parent + 0x86) + 1;
                } else {
                    this->unk_7d = 1;
                }
                this->unk_82.HWORD = (-this->unk_81) << 8;
            }
        }
    }
    super->y.WORD = super->parent->y.WORD + super->parent->spriteOffsetY * 0x10000;
    super->x.WORD = super->parent->x.WORD + (s8)super->parent->spriteOffsetX * 0x10000;
    LinearMoveAngle(super, super->timer << 8, this->unk_82.HALF.HI);
    if (super->type != 1) {
        super->child->y.WORD = super->y.WORD;
        super->child->x.WORD = super->x.WORD;
        LinearMoveAngle(super->child, super->child->timer << 8, ((ChuchuBossEntity*)super->child)->unk_82.HALF.HI);
        sub_080279AC(this->unk_68, super->child, super->child->type);
    }
    sub_080279AC(this->unk_68, this, super->type);
    this->unk_7e.HALF.HI = -this->unk_82.HALF.HI;
}

void sub_080276F4(ChuchuBossEntity* this, u32 param_2, u32 param_3) {
    u32 tempzero;
    ChuchuBossEntity* pEVar2;
    ChuchuBossEntity* pEVar5;
    ChuchuBossEntity* pEVar6;
    int iVar3;
    int iVar4;
    int iVar5;
    const ChuchuStruct* ptr;
    const ChuchuStruct* ptr2;
    const ChuchuStruct* ptr3;

    pEVar6 = (ChuchuBossEntity*)super->child;
    pEVar5 = this->unk_68;
    pEVar2 = (ChuchuBossEntity*)super->parent;
    *(u8*)((int)pEVar2 + 0x84) = tempzero = 0;
    *(u8*)((int)pEVar5 + 0x84) = 0;
    *(u8*)((int)pEVar6 + 0x84) = 0;
    pEVar2->unk_7e.HWORD = tempzero;
    pEVar5->unk_7e.HWORD = 0;
    pEVar6->unk_7e.HWORD = 0;
    pEVar2->unk_7d = 0;
    pEVar5->unk_7d = 0;
    ptr = gUnk_080CC27C;
    ptr += param_2;
    iVar3 = ptr->unk0;
    *(u16*)((int)pEVar6 + 0x86) = iVar3;
    pEVar6->unk_81 = ptr->unk2;
    ptr2 = gUnk_080CC2BC;
    ptr2 += param_2;
    iVar4 = ptr2->unk0;
    *(u16*)((int)pEVar5 + 0x86) = iVar4;
    pEVar5->unk_81 = ptr2->unk2;
    ptr3 = (ChuchuStruct*)gUnk_080CC29C;
    iVar5 = ptr3[param_2].unk0;
    *(u16*)((int)pEVar2 + 0x86) = iVar5;
    pEVar2->unk_81 = ptr3[param_2].unk2;
    if (param_3 == 0) {
        *(u8*)((int)pEVar2 + 0x85) = 0;
        *(u8*)((int)pEVar5 + 0x85) = 0;
        *(u8*)((int)pEVar6 + 0x85) = 0;
        pEVar2->unk_82.HWORD = 0;
        pEVar5->unk_82.HWORD = 0;
        pEVar6->unk_82.HWORD = 0;
        pEVar6->unk_7d = (pEVar2->unk_81 << 7) / (*(u16*)((int)pEVar2 + 0x86)) + 1;
    }
}

void sub_080277B8(ChuchuBossEntity* this, u32 param_2, s32 param_3) {
    ChuchuBossEntity* pEVar1;

    pEVar1 = (ChuchuBossEntity*)super->child;
    if (param_2 > pEVar1->unk_78.HALF_U.HI) {
        pEVar1->unk_78.HALF.HI += param_3;
        pEVar1->unk_74.WORD -= Q_16_16(1.5);
    } else {
        pEVar1->unk_78.HALF.HI = param_2;
        pEVar1->unk_7c = 8;
        this->unk_84->unk_03++;
    }
    sub_080277F8(this);
}

void sub_080277F8(ChuchuBossEntity* this) {
    u32 uVar1;
    ChuchuBossEntity* pEVar3;
    ChuchuBossEntity* pEVar4;
    ChuchuBossEntity* pEVar5;

    pEVar3 = (ChuchuBossEntity*)super->child;
    pEVar5 = this->unk_68;
    pEVar4 = (ChuchuBossEntity*)super->parent;
    uVar1 = super->x.HALF_U.HI;
    pEVar5->base.x.HALF.HI = uVar1;
    pEVar5->base.timer = 14;
    pEVar5->base.y.HALF.HI = super->y.HALF.HI - 14;
    pEVar4->base.x.HALF.HI = uVar1;
    pEVar4->base.timer = 18 - ((pEVar3->unk_78.HALF_U.HI - 0xa0) >> 4);
    pEVar4->base.y.HALF.HI = pEVar5->base.y.HALF.HI - pEVar4->base.timer;
    pEVar3->base.x.HALF.HI = uVar1;
    if (pEVar3->unk_78.HALF_U.HI >= 0xa1) {
        pEVar3->base.timer = 14 - ((pEVar3->unk_78.HALF_U.HI - 0xa0) >> 2);
        if ((pEVar3->base.timer & 0x80) != 0) {
            pEVar3->base.timer = 0;
        }
    } else {
        pEVar3->base.timer = 14;
    }
    pEVar3->base.y.HALF.HI = pEVar4->base.y.HALF.HI - pEVar3->base.timer;
    pEVar4->unk_74.WORD = pEVar3->unk_74.WORD;
    pEVar4->unk_78.WORD = pEVar3->unk_78.WORD;
    pEVar5->unk_74.WORD = pEVar3->unk_74.WORD;
    pEVar5->unk_78.WORD = pEVar3->unk_78.WORD;
    sub_08027984(this);
}

void sub_08027870(ChuchuBossEntity* this) {
    u32 cVar1;
    u32 uVar2;
    u32 uVar3;
    ChuchuBossEntity* pEVar5;
    ChuchuBossEntity* pEVar7;
    ChuchuBossEntity* pEVar6;

    pEVar5 = (ChuchuBossEntity*)super->child;
    pEVar7 = this->unk_68;
    pEVar6 = (ChuchuBossEntity*)super->parent;
    pEVar6->unk_74.WORD = pEVar5->unk_74.WORD;
    pEVar6->unk_78.WORD = pEVar5->unk_78.WORD;
    pEVar7->unk_74.WORD = pEVar5->unk_74.WORD;
    pEVar7->unk_78.WORD = pEVar5->unk_78.WORD;
    pEVar5->unk_7e.HALF.HI = -pEVar5->unk_82.HALF.HI;
    pEVar7->unk_7e.HALF.HI = -pEVar7->unk_82.HALF.HI;
    pEVar6->unk_7e.HALF.HI = -pEVar6->unk_82.HALF.HI;
    if (pEVar7->unk_78.HALF_U.HI >= 0xa1) {
        uVar2 = 14;
    } else {
        uVar2 = ((0xa0 - pEVar7->unk_78.HALF_U.HI) >> 3) + 14;
    }
    pEVar7->base.timer = uVar2;
    if (pEVar6->unk_78.HALF_U.HI >= 0xa1) {
        pEVar6->base.timer = 18 - ((pEVar5->unk_78.HALF_U.HI - 0xa0) >> 4);
    } else {
        pEVar6->base.timer = ((0xa0 - pEVar6->unk_78.HALF_U.HI) >> 2) + 18;
    }
    if (pEVar5->unk_78.HALF_U.HI >= 0xa1) {
        uVar3 = 0xe - ((pEVar5->unk_78.HALF_U.HI - 0xa0) >> 2);
        pEVar5->base.timer = uVar3;
        if ((uVar3 & 0x80) != 0) {
            pEVar5->base.timer = 0;
        }
    } else {
        if (pEVar5->unk_78.HALF_U.HI < 0x80) {
            cVar1 = ((0xa0 - pEVar5->unk_78.HALF_U.HI) >> 2);
        } else {
            cVar1 = ((0xa0 - pEVar5->unk_78.HALF_U.HI) >> 1);
        }
        pEVar5->base.timer = cVar1 + 14;
    }
    pEVar7->base.x.WORD = super->x.WORD;
    pEVar7->base.y.WORD = super->y.WORD;
    LinearMoveAngle(&pEVar7->base, pEVar7->base.timer << 8, pEVar7->unk_82.HALF.HI);
    pEVar6->base.x.WORD = pEVar7->base.x.WORD;
    pEVar6->base.y.WORD = pEVar7->base.y.WORD;
    LinearMoveAngle(&pEVar6->base, pEVar6->base.timer << 8, pEVar6->unk_82.HALF.HI);
    pEVar5->base.x.WORD = pEVar6->base.x.WORD;
    pEVar5->base.y.WORD = pEVar6->base.y.WORD;
    LinearMoveAngle(&pEVar5->base, pEVar5->base.timer << 8, pEVar5->unk_82.HALF.HI);
    sub_08027984(this);
}

void sub_08027984(ChuchuBossEntity* this) {
    ChuchuBossEntity* child;
    ChuchuBossEntity* pEVar1;
    ChuchuBossEntity* pEVar2;

    child = (ChuchuBossEntity*)super->child;
    pEVar1 = this->unk_68;
    pEVar2 = (ChuchuBossEntity*)super->parent;
    sub_080279AC(this, child, child->base.type);
    sub_080279AC(this, pEVar1, pEVar1->base.type);
    sub_080279AC(this, pEVar2, pEVar2->base.type);
}

void sub_080279AC(ChuchuBossEntity* this, Entity* param_2, s32 param_3) {
    s32 temp;

    temp = 4 - param_3;
    param_2->spriteOffsetX = param_2->x.HALF_U.HI - super->x.HALF_U.HI;
    param_2->spriteOffsetY = param_2->y.HALF.HI - (super->y.HALF.HI + temp);
    param_2->x.HALF.HI = super->x.HALF_U.HI;
    param_2->y.HALF.HI = super->y.HALF.HI + temp;
    param_2->hitbox->offset_x = param_2->spriteOffsetX;
    param_2->hitbox->offset_y = param_2->spriteOffsetY;
}

bool32 sub_080279E8(ChuchuBossEntity* this) {
    u32 sVar1;
    u32 sVar2;
    ChuchuBossEntity* pEVar4;

    pEVar4 = (ChuchuBossEntity*)super->child;
    if (this->unk_81 == 0x80) {
        if (this->unk_74.HALF_U.HI - (u8)this->unk_84->unk_05 == 0x80) {
            sub_08027B98(this, this->unk_82.HALF.LO, 0xa0, 0x20, 1);
        }
    } else {
        if (pEVar4->unk_74.HALF_U.HI >= 0xa1) {
            pEVar4->unk_74.HALF_U.HI = pEVar4->unk_74.HALF_U.HI - 4;
        } else {
            pEVar4->unk_74.HALF_U.HI = 0xa0;
        }
        if (pEVar4->unk_78.HALF_U.HI >= 0xa1) {
            pEVar4->unk_78.HALF_U.HI = pEVar4->unk_78.HALF_U.HI - 4;
        } else {
            pEVar4->unk_78.HALF_U.HI = 0xa0;
        }
        if ((pEVar4->unk_74.HALF_U.HI == 0xa0) && (pEVar4->unk_78.HALF_U.HI == 0xa0)) {
            return TRUE;
        }
    }
    return FALSE;
}

void sub_08027A60(ChuchuBossEntity* this) {
    int iVar1;
    int iVar2;
    u32 bVar3;

    if ((this->unk_7c & 0x80) != 0) {
        this->unk_74.WORD += Q_16_16(0.25);
    } else {
        this->unk_74.WORD -= Q_16_16(0.25);
    }
    this->unk_7c++;
    if ((this->unk_7c & 0x7f) == 0x28) {
        this->unk_7c = (this->unk_7c & 0x80) ^ 0x80;
    }
}

bool32 sub_08027AA4(ChuchuBossEntity* this) {
    u32 uVar3;
    s32 iVar4;
    Helper* pHelper;

    if ((super->contactFlags & CONTACT_NOW) == 0) {
        return FALSE;
    }
    switch (super->contactFlags & 0x7f) {
        case 19:
            SoundReq(SFX_WATER_SPLASH);
            CreateObjectWithParent(super, CHUCHU_BOSS_START_PARTICLE, 9, super->type2);
            SoundReq(SFX_155);
            pHelper = this->unk_84;
            super->iframes = 3;
            pHelper->unk_06++;
            iVar4 = pHelper->unk_06;
            uVar3 = (iVar4 / 3);
            if (((u8)uVar3 << 3) != (u8)pHelper->unk_05) {
                pHelper->unk_05 = (uVar3 << 3);
            }
            pHelper->unk_08 = 0xb4;
            if (-1 < pHelper->unk_05) {
                break;
            }
            pHelper->unk_01 = 0x40;
            super->hitType = 0;
            if (super->subAction == 2) {
                sub_08027BBC(this);
            }
            sub_08027D20(this);
            SoundReq(SFX_BOSS_HIT);
            return TRUE;
        case 27:
            super->iframes = -30;
            switch (super->contactedEntity->type + 1) {
                case 3:
                    super->knockbackDuration = 26;
                    super->knockbackSpeed = Q_8_8(1.75);
                    break;
                case 2:
                    super->knockbackDuration = 20;
                    super->knockbackSpeed = Q_8_8(1.5);
                    break;
                case 1:
                    super->knockbackDuration = 16;
                    super->knockbackSpeed = Q_8_8(1);
                    break;
            }
            return TRUE;
    }
    return FALSE;
}

void sub_08027B98(ChuchuBossEntity* this, u32 unk1, u32 unk2, u32 unk3, u32 unk4) {
    this->unk_82.HALF.LO = unk1;
    this->unk_81 = unk2;
    this->unk_80 = unk3;
    if (unk4 != 0xff) {
        super->timer = unk4;
    } else {
        super->timer = 1;
    }
}

void sub_08027BBC(ChuchuBossEntity* this) {
    ChuchuBossEntity* pEVar3;
    ChuchuBossEntity* pEVar5;
    ChuchuBossEntity* pEVar6;
    ChuchuBossEntity* pEVar7;

    super->subAction = 10;
    this->unk_84->unk_01 = 0;
    sub_080276F4(this, 7, 1);
    ((ChuchuBossEntity*)super->child)->unk_7d = 0;
    super->speed = 0;
    this->unk_84->unk_03 = 0;
    if (super->x.HALF.HI > this->unk_84->unk_0e) {
        super->direction = 0x18;
        pEVar5 = (ChuchuBossEntity*)super->child;
        pEVar3 = (ChuchuBossEntity*)super->parent;
        *(u8*)((int)this->unk_68 + 0x85) = 0;
        *(u8*)((int)pEVar3 + 0x85) = 0;
        *(u8*)((int)pEVar5 + 0x85) = 0;
    } else {
        super->direction = 8;
        pEVar6 = (ChuchuBossEntity*)super->child;
        pEVar7 = (ChuchuBossEntity*)super->parent;
        *(u8*)((int)this->unk_68 + 0x85) = 1;
        *(u8*)((int)pEVar7 + 0x85) = 1;
        *(u8*)((int)pEVar6 + 0x85) = 1;
    }
    super->animationState = super->direction >> 2;
    if (super->y.HALF.HI != gPlayerEntity.base.y.HALF.HI) {
        if (super->y.HALF.HI > gPlayerEntity.base.y.HALF.HI) {
            this->unk_84->unk_0c = 0;
        } else {
            this->unk_84->unk_0c = 0x10;
        }
    }
}

bool32 sub_08027C54(ChuchuBossEntity* this) {
    if ((u8)gUnk_080CC2DC[this->unk_84->unk_04] > super->child->health) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_08027C7C(ChuchuBossEntity* this, u32 param_2) {
    sub_08027C9C(super->child, param_2);
    sub_08027C9C(this->unk_68, param_2);
    sub_08027C9C(super->parent, param_2);
}

void sub_08027C9C(ChuchuBossEntity* this, u32 param_2) {
    Entity* fxEnt;

    if ((Random() & param_2) == 0) {
        fxEnt = CreateFx(super, FX_GIANT_EXPLOSION3, 0);
        if (fxEnt != NULL) {
            fxEnt->x.HALF.HI = ((s8)super->spriteOffsetX - super->hitbox->width) + fxEnt->x.HALF.HI;
            fxEnt->x.HALF.HI += ((s32)Random()) % (super->hitbox->width << 1);
            fxEnt->y.HALF.HI += ((short)super->spriteOffsetY - super->hitbox->height);
            fxEnt->y.HALF.HI += ((s32)Random()) % (super->hitbox->height << 1);
            fxEnt->spritePriority.b0 = 0;
        }
    }
}

Entity* sub_08027D20(ChuchuBossEntity* this) {
    Entity* r4 = CreateObjectWithParent(super, CHUCHU_BOSS_PARTICLE, 0, 0);
    if (r4 != NULL) {
        r4->spriteIndex = 0xc9;
#ifdef EU
        r4->spriteVramOffset = super->spriteVramOffset;
        r4->palette.b.b0 = super->palette.b.b0;
#endif
        r4->y.HALF.HI++;
        r4->spriteOffsetY = 8;
#ifndef EU
        LoadFixedGFX(r4, 0x3e);
        if (super->type2 == 0) {
            LoadObjPalette(r4, 0x2b);
        } else {
            LoadObjPalette(r4, 0x2c);
        }
#endif
    }
    return r4;
}
