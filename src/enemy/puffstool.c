/**
 * @file puffstool.c
 * @ingroup Enemies
 *
 * @brief Puffstool enemy
 */

#include "collision.h"
#include "enemy.h"
#include "object.h"

extern u8 gUnk_080B3E80[];

bool32 sub_080258C4(Entity*);
void sub_08025B18(Entity*);
void sub_08025C2C(Entity*);
void sub_08025BD4(Entity*);
void sub_080256B4(Entity*);
bool32 sub_08025C44(Entity*);
u32 sub_08025C60(Entity*);
bool32 sub_0802571C(Entity*);
void sub_08025A54(Entity*);
void sub_08025AE8(Entity*);
bool32 sub_0802594C(Entity*, u32);
bool32 sub_080257EC(Entity*, u32, u32);
bool32 sub_08025AB8(u32, u32);

extern void (*const Puffstool_Functions[])(Entity*);
extern void (*const gUnk_080CBFB4[])(Entity*);
extern const u8 gUnk_080CBFE8[];
extern void (*const gUnk_080CBFEC[])(Entity*);
extern const u8 gUnk_080CBFF8[];
extern const u16 gUnk_080CC000[];
extern const s8 gUnk_080CC020[];
extern const u8 gUnk_080CC050[];
extern const s8* const gUnk_080CC090[];
extern const s8 gUnk_080CC0A0[];
extern const s8 gUnk_080CC0A8[];
extern const s8 gUnk_080CC0BA[];
extern const s8 gUnk_080CC0C2[];

void Puffstool(Entity* this) {
    EnemyFunctionHandler(this, Puffstool_Functions);
    SetChildOffset(this, 0, 1, -0x10);
}

void Puffstool_OnTick(Entity* this) {
    gUnk_080CBFB4[this->action](this);
}

void Puffstool_OnCollide(Entity* this) {
    u8 tmp;

    switch (this->contactFlags & 0x7f) {
        case 0 ... 3:
            /* ... */
            break;
        case 0x1b:
            sub_0804AA1C(this);

            tmp = gUnk_080CBFE8[(*(Entity**)&this->contactedEntity)->type];
            if (tmp < this->field_0x82.HALF.LO) {
                this->field_0x82.HALF.LO -= gUnk_080CBFE8[(*(Entity**)&this->contactedEntity)->type];
            } else {
                this->cutsceneBeh.HWORD = 0x294;
                this->hitType = 0x83;
                this->field_0x82.HALF.LO = 0;
                ChangeObjPalette(this, 0x7c);
            }
            this->action = 7;
            this->timer = 60;
            if (0 < this->zVelocity) {
                this->zVelocity = 0;
            }
            this->iframes = -0xc;
            this->knockbackDuration = 0;
            if (this->field_0x80.HALF.LO == 0) {
                this->animationState = (*(Entity**)&this->contactedEntity)->direction >> 3;
                InitializeAnimation(this, this->animationState + 4);
                this->frameDuration = 6;
                this->field_0x80.HALF.LO = 1;
            }
            break;
        default:
            if (this->hitType == 0x82 && this->iframes < 0) {
                Entity* ent = CreateObject(DIRT_PARTICLE, 2, 0);
                if (ent != NULL) {
                    ent->spritePriority.b0 = 3;
                    CopyPosition(this, ent);
                }
                EnqueueSFX(SFX_186);
            }
            break;
    }

    EnemyFunctionHandlerAfterCollision(this, Puffstool_Functions);
}

void Puffstool_OnDeath(Entity* this) {
    if ((this->gustJarState & 2) && this->timer == 1 && this->field_0x82.HALF.LO) {
        sub_08025B18(this);
    }
    GenericDeath(this);
}

void Puffstool_OnGrabbed(Entity* this) {
    GravityUpdate(this, Q_8_8(32.0));
    if (sub_0806F520(this)) {
        gUnk_080CBFEC[this->subAction](this);
    } else {
        sub_08025C2C(this);
    }
}

void sub_08025180(Entity* this) {
    this->subAction = 1;
    this->timer = Random();
    this->animationState = (((*(Entity**)&this->contactedEntity)->direction ^ 0x10) >> 3);
    InitializeAnimation(this, this->animationState + 4);
    sub_0804AA1C(this);
}

void sub_080251AC(Entity* this) {
    if (this->field_0x82.HALF.LO >= 4) {
        this->field_0x82.HALF.LO -= 3;
        if ((--this->timer & 3) == 0) {
            sub_08025BD4(this);
        }
    } else {
        this->cutsceneBeh.HWORD = 0x294;
        this->hitType = 0x83;
        this->field_0x82.HALF.LO = 0;
        ChangeObjPalette(this, 0x7c);
    }
    GetNextFrame(this);
}

void sub_080251FC(Entity* this) {
    sub_0804A720(this);
    this->field_0x82.HALF.LO = 240;
    this->direction = Random() & 0x1c;
    this->field_0x80.HALF.LO = 0;
    sub_080256B4(this);
    InitializeAnimation(this, 0);
}

void sub_08025230(Entity* this) {
    if (this->field_0x80.HALF.HI)
        this->field_0x80.HALF.HI--;

    sub_08025C44(this);
    GetNextFrame(this);
    if (--this->timer == 0) {
        this->timer = (Random() & 3) + 4;
        this->direction = sub_08025C60(this);
    }

    if (this->collisions != COL_NONE) {
        if (--this->subtimer == 0) {
            sub_0800417E(this, this->collisions);
        }
    } else {
        this->subtimer = 30;
    }

    if (this->field_0x78.HWORD == 0) {
        if (sub_0802571C(this)) {
            this->action = 2;
            this->timer = 240;
            this->field_0x86.HWORD = COORD_TO_TILE(this);
        }
    } else {
        this->field_0x78.HWORD--;
    }
}

void sub_080252E0(Entity* this) {
    u32 tile;

    this->direction = CalculateDirectionTo(this->x.HALF.HI, this->y.HALF.HI, (u16)this->field_0x7c.HALF.LO,
                                           (u16)this->field_0x7c.HALF.HI);

    sub_08025C44(this);
    GetNextFrame(this);

    tile = COORD_TO_TILE(this);
    if (tile == this->field_0x86.HWORD) {
        if (--this->timer == 0) {
            sub_080256B4(this);
        }
    } else {
        this->field_0x86.HWORD = tile;
        this->timer = 240;
    }

    if (this->x.HALF.HI == (u16)this->field_0x7c.HALF.LO && this->y.HALF.HI == (u16)this->field_0x7c.HALF.HI) {
        this->action = 3;
        this->timer = 30;
        this->subtimer = 0;
        this->zVelocity = Q_16_16(1.5);
        InitializeAnimation(this, 1);
    }
}

void sub_0802538C(Entity* this) {
    if (this->timer) {
        this->timer--;
    } else {
        if (this->frame == 0) {
            GetNextFrame(this);
        } else {
            GravityUpdate(this, Q_8_8(32.0));
            if (this->zVelocity < Q_16_16(0.125)) {
                this->action = 4;
                InitializeAnimation(this, 2);
            }
        }
    }
}

void sub_080253D4(Entity* this) {
    GetNextFrame(this);
    if (!GravityUpdate(this, Q_8_8(32.0))) {
        if (this->subtimer == 0) {
            this->action = 5;
            InitializeAnimation(this, 3);
        } else {
            this->action = 6;
            this->timer = 30;
            InitializeAnimation(this, 3);
            sub_08025A54(this);
            sub_08025AE8(this);
        }
    }
}

void sub_0802541C(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 3;
        this->subtimer = 1;
        this->zVelocity = Q_16_16(2.0);
        InitializeAnimation(this, 1);
    }
}

void sub_0802544C(Entity* this) {
    if (this->frame == 0) {
        GetNextFrame(this);
    } else {
        if (--this->timer == 0) {
            sub_080256B4(this);
            InitializeAnimation(this, 0);
        }
    }
}

void sub_0802547C(Entity* this) {
    GravityUpdate(this, Q_8_8(32.0));
    GetNextFrame(this);
    if ((this->timer & 7) == 0) {
        sub_08025BD4(this);
    }

    if (--this->timer == 0) {
        sub_08025C2C(this);
    }
}

void sub_080254B4(Entity* this) {
    GravityUpdate(this, Q_8_8(32.0));
    if (this->frame & ANIM_DONE) {
        if (this->z.HALF.HI == 0) {
            if (this->cutsceneBeh.HWORD == 0) {
                this->hitType = 0x82;
                this->field_0x82.HALF.LO = -0x10;
                sub_080256B4(this);
            } else {
                this->action = 0xc;
                Create0x68FX(this, FX_STARS);
            }
            InitializeAnimation(this, 0);
        }
    } else {
        GetNextFrame(this);
    }
}

void sub_08025514(Entity* this) {
    GetNextFrame(this);
    if (sub_0802594C(this, this->timer++)) {
        this->action = 2;
        this->timer = 240;
        this->field_0x80.HALF.HI = 120;
    } else if (3 < this->timer) {
        this->action = 10;
        this->timer = 32;
    }
}

void sub_08025554(Entity* this) {
    Entity* ent = sub_08049DF4(1);
    if (ent == NULL) {
        sub_080256B4(this);
    } else {
        if ((this->timer & 3) == 0) {
            this->direction = GetFacingDirection(ent, this);
        }
        sub_08025C44(this);
        GetNextFrame(this);
        if (this->timer != 0) {
            this->timer--;
        } else {
            if (!sub_080258C4(this)) {
                sub_080256B4(this);
            }
        }
    }
}

void sub_080255AC(Entity* this) {
    Entity* ent = sub_08049DF4(1);
    if (ent == NULL) {
        sub_080256B4(this);
    } else {
        if (this->field_0x80.HALF.HI != 0) {
            this->field_0x80.HALF.HI--;
        }

        if (--this->timer == 0) {
            s32 tmp;

            this->timer = (Random() & 3) + 4;

            tmp = Random() & 0xf;
            if (tmp < 8) {
                tmp--;
            }
            tmp -= 7;

            this->direction = (GetFacingDirection(ent, this) + tmp) & (0x3 | DirectionNorthWest);
        }

        if (this->field_0x78.HWORD == 0) {
            if (sub_080258C4(this) == 0) {
                sub_080256B4(this);
            }
        } else {
            this->field_0x78.HWORD--;
        }
        sub_08025C44(this);
        GetNextFrame(this);
    }
}

void sub_0802563C(Entity* this) {
    GetNextFrame(this);

    if (--this->cutsceneBeh.HWORD == 0) {
        ChangeObjPalette(this, 0x28);
        this->hitType = 0x82;
        this->field_0x82.HALF.LO = 240;
        sub_080256B4(this);
        sub_0804AA1C(this);
    } else if (this->cutsceneBeh.HWORD < 120) {
        u32 tmp3 = gUnk_080CBFF8[this->cutsceneBeh.HWORD >> 4];
        if ((this->cutsceneBeh.HWORD & tmp3) == 0) {
            if (this->cutsceneBeh.HWORD & (tmp3 + 1)) {
                ChangeObjPalette(this, 124);
            } else {
                ChangeObjPalette(this, 40);
            }
        }
    }
}

void sub_080256B4(Entity* this) {
    this->action = 1;
    this->timer = (Random() & 3) + 4;
    this->subtimer = 30;
    this->direction = (this->direction + 7 + ((s32)Random() % 7) * 4) & DirectionNorthWest;
    this->field_0x78.HWORD = gUnk_080CC000[Random() & 0xf];
    this->field_0x7a.HALF.LO = ((s32)Random() % 0x18) << 1;
    this->field_0x7a.HALF.HI = 0;
}

bool32 sub_0802571C(Entity* this) {
    RoomControls* ctrl = &gRoomControls;
    u16 xDiff = (this->x.HALF.HI - ctrl->origin_x + 8) & -0x10;
    u16 yDiff = (this->y.HALF.HI - ctrl->origin_y + 8) & -0x10;
    u16 unk = this->field_0x7a.HALF.LO;
    u16 i;

    for (i = 0; i < 4; i++) {
        u16 sVar3 = xDiff + gUnk_080CC020[unk + 0];
        u16 sVar4 = yDiff + gUnk_080CC020[unk + 1];

        if (sub_080257EC(this, sVar3, sVar4)) {
            this->field_0x7c.HALF.LO = sVar3 + ctrl->origin_x;
            this->field_0x7c.HALF.HI = sVar4 + ctrl->origin_y;
            return TRUE;
        }

        unk += 2;
        if (0x2f < unk) {
            unk = 0;
        }
    }

    this->field_0x7a.HALF.LO = unk;
    this->field_0x7a.HALF.HI++;
    return FALSE;
}

bool32 sub_080257EC(Entity* this, u32 x, u32 y) {
    u16 tileType = sub_080B1A48(x - 0x00, y - 0x00, this->collisionLayer);
    if (tileType != 0x312 && gUnk_080B37A0[tileType] != 0x16 && gUnk_080B3E80[tileType] == 0) {
        return TRUE;
    }

    tileType = sub_080B1A48(x - 0x10, y - 0x00, this->collisionLayer);
    if (tileType != 0x312 && gUnk_080B37A0[tileType] != 0x16 && gUnk_080B3E80[tileType] == 0) {
        return TRUE;
    }

    tileType = sub_080B1A48(x - 0x00, y - 0x10, this->collisionLayer);
    if (tileType != 0x312 && gUnk_080B37A0[tileType] != 0x16 && gUnk_080B3E80[tileType] == 0) {
        return TRUE;
    }

    tileType = sub_080B1A48(x - 0x10, y - 0x10, this->collisionLayer);
    if (tileType != 0x312 && gUnk_080B37A0[tileType] != 0x16 && gUnk_080B3E80[tileType] == 0) {
        return TRUE;
    }

    return FALSE;
}

bool32 sub_080258C4(Entity* this) {
    Entity* ent = sub_08049DF4(1);
    if (ent == NULL) {
        return FALSE;
    } else {
        s32 iVar4;
        s32 iVar1;
        iVar4 = ent->x.HALF.HI - this->x.HALF.HI;
        iVar4 = iVar4 * iVar4;
        iVar1 = ent->y.HALF.HI - this->y.HALF.HI;
        iVar1 = iVar1 * iVar1;
        iVar4 = iVar4 + iVar1;
        if (this->cutsceneBeh.HWORD == 0 && this->field_0x80.HALF.HI == 0 && 0x400 >= iVar4) {
            this->action = 9;
            this->timer = 0;
            return TRUE;
        } else if (0x900 >= iVar4) {
            this->action = 11;
            this->timer = 1;
            this->field_0x78.HWORD = gUnk_080CC050[Random() & 0xf];
            return TRUE;
        } else {
            return FALSE;
        }
    }
}

// regalloc
bool32 sub_0802594C(Entity* this, u32 param_2) {
    s16 xDiff;
    s16 yDiff;
    s16 iVar9;
    u32 uVar1;
    const s8* unk = gUnk_080CC090[param_2];
    uVar1 = this->collisionLayer;
    xDiff = (this->x.HALF.HI - gRoomControls.origin_x + 8) & -0x10;
    yDiff = (this->y.HALF.HI - gRoomControls.origin_y + 8) & -0x10;
    do {
        u8 bVar7;
        u8 bVar4;
        s16 iVar11;
        u8 bVar5;
        u8 bVar6;
        iVar9 = xDiff + unk[0];
        iVar11 = yDiff + unk[1];
        bVar4 = sub_080B1B18(iVar9 - 0x00, iVar11 - 0x00, uVar1);
        bVar5 = sub_080B1B18(iVar9 - 0x10, iVar11 - 0x00, uVar1);
        bVar6 = sub_080B1B18(iVar9 - 0x00, iVar11 - 0x10, uVar1);
        bVar7 = sub_080B1B18(iVar9 - 0x10, iVar11 - 0x10, uVar1);
        if ((bVar4 | bVar5 | bVar6 | bVar7) == 0) {
            this->field_0x7c.HALF.LO = gRoomControls.origin_x + iVar9;
            this->field_0x7c.HALF.HI = gRoomControls.origin_y + iVar11;
            return TRUE;
        }
        unk += 2;
    } while (unk[0] != 0x7f);

    return 0;
}

void sub_08025A54(Entity* this) {
    u32 layer = this->collisionLayer;
    s16 x = this->x.HALF.HI - gRoomControls.origin_x;
    s16 y = this->y.HALF.HI - gRoomControls.origin_y;

    const s8* offset = gUnk_080CC0A0;
    u32 i = 0;

    for (; i < 4; i++, offset += 2) {
        sub_08025AB8((((x + offset[0]) >> 4) & 0x3fU) | ((((y + offset[1]) >> 4) & 0x3fU) << 6), layer);
    }
}

bool32 sub_08025AB8(u32 tile, u32 layer) {
    if (sub_080B1B44(tile, layer))
        return FALSE;

    if (sub_080B1AE0(tile, layer) == 10) {
        sub_0807B7D8(0x61, tile, layer);
        return TRUE;
    }

    return FALSE;
}

void sub_08025AE8(Entity* this) {
    Entity* ent;

    ent = CreateFx(this, FX_BROWN_SMOKE, 0);
    if (ent != NULL) {
        ent->y.WORD--;
    }

    ent = CreateFx(this, FX_BROWN_SMOKE_LARGE, 0);
    if (ent != NULL) {
        ent->y.WORD++;
    }
}

void sub_08025B18(Entity* this) {
    Entity* ent;

    s32 x = this->x.HALF.HI - gRoomControls.origin_x;
    s32 y = this->y.HALF.HI - gRoomControls.origin_y;
    u32 layer = this->collisionLayer;

    const s8* offset = gUnk_080CC0A8;
    u32 i = 0;

    for (; i < 9; i++, offset += 2) {
        sub_08025AB8((((x + offset[0]) >> 4) & 0x3fU) | ((((y + offset[1]) >> 4) & 0x3fU) << 6), layer);

        ent = CreateObject(DIRT_PARTICLE, 2, 0);
        if (ent != NULL) {
            PositionRelative(this, ent, Q_16_16(offset[0]), Q_16_16(offset[1]));
            ent->x.HALF.HI &= -0x10;
            ent->x.HALF.HI += 8;
            ent->y.HALF.HI &= -0x10;
            ent->y.HALF.HI += 8;
            ent->z.HALF.HI = -1;
        }
    }
}

void sub_08025BD4(Entity* this) {
    if (this->field_0x82.HALF.LO && (this->frame & 1) == 0) {
        Entity* ent = CreateObject(DIRT_PARTICLE, 0, 0);
        if (ent != NULL) {
            PositionRelative(this, ent, Q_16_16(gUnk_080CC0BA[this->animationState * 2 + 0]),
                             Q_16_16(gUnk_080CC0BA[this->animationState * 2 + 1]));
            ent->z.HALF.HI = -10;
        }
    }
}

void sub_08025C2C(Entity* this) {
    this->action = 8;
    this->field_0x80.HALF.LO = 0;
    InitializeAnimation(this, 8);
}

bool32 sub_08025C44(Entity* this) {
    if ((this->frame & 1) == 0) {
        return ProcessMovement0(this);
    } else {
        return FALSE;
    }
}

u32 sub_08025C60(Entity* this) {
    if (!sub_08049FA0(this) && (Random() & 1)) {
        return sub_08049EE4(this);
    }

    return (gUnk_080CC0C2[Random() & 7] + this->direction) & 0x1f;
}

// clang-format off
void (*const Puffstool_Functions[])(Entity*) = {
    Puffstool_OnTick,
    Puffstool_OnCollide,
    GenericKnockback,
    Puffstool_OnDeath,
    GenericConfused,
    Puffstool_OnGrabbed,
};

void (*const gUnk_080CBFB4[])(Entity*) = {
    sub_080251FC,
    sub_08025230,
    sub_080252E0,
    sub_0802538C,
    sub_080253D4,
    sub_0802541C,
    sub_0802544C,
    sub_0802547C,
    sub_080254B4,
    sub_08025514,
    sub_08025554,
    sub_080255AC,
    sub_0802563C,
};

const u8 gUnk_080CBFE8[] = {
    40, 120, 240,  0x0
};

void (*const gUnk_080CBFEC[])(Entity*) = {
    sub_08025180,
    sub_080251AC,
    sub_080251AC,
};

const u8 gUnk_080CBFF8[] = {
    1, 1, 1, 3, 3, 3, 7, 7,
};

const u16 gUnk_080CC000[] = {
    30,   30,  90,  90,
    180, 180, 180, 180,
    180, 240, 240, 240,
    240, 240, 300, 300,
};

const s8 gUnk_080CC020[] = {
    -0x20, -0x20, -0x20, -0x10,
    -0x20,  0x00, -0x20,  0x10,
    -0x20,  0x20, -0x10, -0x20,
    -0x10, -0x10, -0x10,  0x00,
    -0x10,  0x10, -0x10,  0x20,
     0x00, -0x20,  0x00, -0x10,
     0x00,  0x10,  0x00,  0x20,
     0x10, -0x20,  0x10, -0x10,
     0x10,  0x00,  0x10,  0x10,
     0x10,  0x20,  0x20, -0x20,
     0x20, -0x10,  0x20,  0x00,
     0x20,  0x10,  0x20,  0x20,
};

const u8 gUnk_080CC050[] = {
     90, 120, 120,  90,
    180, 180, 180, 180,
};

const s8 gUnk_080CC058[] = {
    0x00, 0x00, 0x00, 0xF0,
    0xF0, 0x00, 0x10, 0x00,
    0x00, 0x10, 0x7F,
};

const s8 gUnk_080CC063[] = {
    0x00, 0x20, 0x10, 0x10,
    0x20, 0x00, 0x10, 0xF0,
    0x00, 0xE0, 0xF0, 0xF0,
    0xE0, 0x00, 0xF0, 0x10,
    0x7F,
};

const s8 gUnk_080CC074[] = {
    0xE0, 0xF0, 0xF0, 0xE0,
    0x10, 0xE0, 0x20, 0xF0,
    0x20, 0x10, 0x10, 0x20,
    0xF0, 0x20, 0xE0, 0x10,
    0x7F,
};

const s8 gUnk_080CC085[] = {
    0x20, 0x20, 0x20, 0xE0,
    0xE0, 0xFE, 0xE0, 0x20,
    0x7F,
};

const s8 *const gUnk_080CC090[] = {
    gUnk_080CC058,
    gUnk_080CC063,
    gUnk_080CC074,
    gUnk_080CC085,
};

const s8 gUnk_080CC0A0[] = {
    -0x8, -0x8,
    -0x8,  0x8,
     0x8, -0x8,
     0x8,  0x8,
};

const s8 gUnk_080CC0A8[] = {
    -0x10, -0x10,
     0x00, -0x10,
     0x10, -0x10,
    -0x10,  0x00,
     0x00,  0x00,
     0x10,  0x00,
    -0x10,  0x10,
     0x00,  0x10,
     0x10,  0x10,
};

const s8 gUnk_080CC0BA[] = {
     0x00, -0x10,
     0x13,  0x00,
     0x00,  0x14,
    -0x13,  0x00,
};

const s8 gUnk_080CC0C2[] = {
    -1, 1,
    -2, 2,
    -3, 3,
    -4, 4,
};
// clang-format on
