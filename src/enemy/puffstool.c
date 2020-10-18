#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern u32 sub_080002E0(u32, u32);
extern u32 sub_080002C8(u16, u8);
extern u16 sub_080002A8(u32, u32, u32);
extern u16 sub_080002D4(u32, u32, u32);
extern void sub_0804AA1C(Entity*);
extern Entity* sub_08049DF4(u32);
extern void sub_0807B7D8(u32, u32, u32);

extern u8 gUnk_080B37A0[];
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

extern void (*const gUnk_080CBF9C[])(Entity*);
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
    EnemyFunctionHandler(this, gUnk_080CBF9C);
    SetChildOffset(this, 0, 1, -0x10);
}

void sub_08025008(Entity* this) {
    gUnk_080CBFB4[this->action](this);
}

void sub_08025020(Entity* this) {
    u8 tmp;

    switch (this->bitfield & 0x7f) {
        case 0 ... 3:
            /* ... */
            break;
        case 0x1b:
            sub_0804AA1C(this);

            tmp = gUnk_080CBFE8[(*(Entity**)&this->field_0x4c)->entityType.form];
            if (tmp < this->field_0x82.HALF.LO) {
                this->field_0x82.HALF.LO -= gUnk_080CBFE8[(*(Entity**)&this->field_0x4c)->entityType.form];
            } else {
                this->cutsceneBeh.HWORD = 0x294;
                this->damageType = 0x83;
                this->field_0x82.HALF.LO = 0;
                sub_0801D2B4(this, 0x7c);
            }
            this->action = 7;
            this->actionDelay = 0x3c;
            if (0 < this->field_0x20) {
                this->field_0x20 = 0;
            }
            this->hurtBlinkTime = -0xc;
            this->field_0x42 = 0;
            if (this->field_0x80.HALF.LO == 0) {
                this->animationState = (*(Entity**)&this->field_0x4c)->direction >> 3;
                InitializeAnimation(this, this->animationState + 4);
                this->frameDuration = 6;
                this->field_0x80.HALF.LO = 1;
            }
            break;
        default:
            if (this->damageType == 0x82 && this->hurtBlinkTime < 0) {
                Entity* ent = CreateObject(0x21, 2, 0);
                if (ent != NULL) {
                    ent->spritePriority.b0 = 3;
                    CopyPosition(this, ent);
                }
                EnqueueSFX(0x186);
            }
            break;
    }

    sub_0804AA30(this, gUnk_080CBF9C);
}

void sub_0802511C(Entity* this) {
    if ((this->field_0x3a & 2) && this->actionDelay == 1 && this->field_0x82.HALF.LO) {
        sub_08025B18(this);
    }
    sub_0804A7D4(this);
}

void sub_0802514C(Entity* this) {
    sub_08003FC4(this, 0x2000);
    if (sub_0806F520(this)) {
        gUnk_080CBFEC[this->previousActionFlag](this);
    } else {
        sub_08025C2C(this);
    }
}

void sub_08025180(Entity* this) {
    this->previousActionFlag = 1;
    this->actionDelay = Random();
    this->animationState = (((*(Entity**)&this->field_0x4c)->direction ^ 0x10) >> 3);
    InitializeAnimation(this, this->animationState + 4);
    sub_0804AA1C(this);
}

void sub_080251AC(Entity* this) {
    if (this->field_0x82.HALF.LO >= 4) {
        this->field_0x82.HALF.LO -= 3;
        if ((--this->actionDelay & 3) == 0) {
            sub_08025BD4(this);
        }
    } else {
        this->cutsceneBeh.HWORD = 0x294;
        this->damageType = 0x83;
        this->field_0x82.HALF.LO = 0;
        sub_0801D2B4(this, 0x7c);
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
    if (--this->actionDelay == 0) {
        this->actionDelay = (Random() & 3) + 4;
        this->direction = sub_08025C60(this);
    }

    if (this->collisions != 0) {
        if (--this->field_0xf == 0) {
            sub_0800417E(this, this->collisions);
        }
    } else {
        this->field_0xf = 30;
    }

    if (this->field_0x78.HWORD == 0) {
        if (sub_0802571C(this)) {
            this->action = 2;
            this->actionDelay = 240;
            this->field_0x86.HWORD = COORD_TO_TILE(this);
        }
    } else {
        this->field_0x78.HWORD--;
    }
}

void sub_080252E0(Entity* this) {
    u32 tile;

    this->direction =
        sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, (u16)this->field_0x7c.HALF.LO, (u16)this->field_0x7c.HALF.HI);

    sub_08025C44(this);
    GetNextFrame(this);

    tile = COORD_TO_TILE(this);
    if (tile == this->field_0x86.HWORD) {
        if (--this->actionDelay == 0) {
            sub_080256B4(this);
        }
    } else {
        this->field_0x86.HWORD = tile;
        this->actionDelay = 240;
    }

    if (this->x.HALF.HI == (u16)this->field_0x7c.HALF.LO && this->y.HALF.HI == (u16)this->field_0x7c.HALF.HI) {
        this->action = 3;
        this->actionDelay = 0x1e;
        this->field_0xf = 0;
        this->field_0x20 = 0x18000;
        InitializeAnimation(this, 1);
    }
}

void sub_0802538C(Entity* this) {
    if (this->actionDelay) {
        this->actionDelay--;
    } else {
        if (this->frames.all == 0) {
            GetNextFrame(this);
        } else {
            sub_08003FC4(this, 0x2000);
            if (this->field_0x20 < 0x2000) {
                this->action = 4;
                InitializeAnimation(this, 2);
            }
        }
    }
}

void sub_080253D4(Entity* this) {
    GetNextFrame(this);
    if (!sub_08003FC4(this, 0x2000)) {
        if (this->field_0xf == 0) {
            this->action = 5;
            InitializeAnimation(this, 3);
        } else {
            this->action = 6;
            this->actionDelay = 0x1e;
            InitializeAnimation(this, 3);
            sub_08025A54(this);
            sub_08025AE8(this);
        }
    }
}

void sub_0802541C(Entity* this) {
    GetNextFrame(this);
    if (this->frames.all & 0x80) {
        this->action = 3;
        this->field_0xf = 1;
        this->field_0x20 = 0x20000;
        InitializeAnimation(this, 1);
    }
}

void sub_0802544C(Entity* this) {
    if (this->frames.all == 0) {
        GetNextFrame(this);
    } else {
        if (--this->actionDelay == 0) {
            sub_080256B4(this);
            InitializeAnimation(this, 0);
        }
    }
}

void sub_0802547C(Entity* this) {
    sub_08003FC4(this, 0x2000);
    GetNextFrame(this);
    if ((this->actionDelay & 7) == 0) {
        sub_08025BD4(this);
    }

    if (--this->actionDelay == 0) {
        sub_08025C2C(this);
    }
}

void sub_080254B4(Entity* this) {
    sub_08003FC4(this, 0x2000);
    if (this->frames.all & 0x80) {
        if (this->height.HALF.HI == 0) {
            if (this->cutsceneBeh.HWORD == 0) {
                this->damageType = 0x82;
                this->field_0x82.HALF.LO = -0x10;
                sub_080256B4(this);
            } else {
                this->action = 0xc;
                sub_0804A9FC(this, 0x1c);
            }
            InitializeAnimation(this, 0);
        }
    } else {
        GetNextFrame(this);
    }
}

void sub_08025514(Entity* this) {
    GetNextFrame(this);
    if (sub_0802594C(this, this->actionDelay++)) {
        this->action = 2;
        this->actionDelay = 240;
        this->field_0x80.HALF.HI = 120;
    } else if (3 < this->actionDelay) {
        this->action = 10;
        this->actionDelay = 0x20;
    }
}

void sub_08025554(Entity* this) {
    Entity* ent = sub_08049DF4(1);
    if (ent == NULL) {
        sub_080256B4(this);
    } else {
        if ((this->actionDelay & 3) == 0) {
            this->direction = GetFacingDirection(ent, this);
        }
        sub_08025C44(this);
        GetNextFrame(this);
        if (this->actionDelay != 0) {
            this->actionDelay--;
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

        if (--this->actionDelay == 0) {
            s32 tmp;

            this->actionDelay = (Random() & 3) + 4;

            tmp = Random() & 0xf;
            if (tmp < 8) {
                tmp -= 1;
            }
            tmp -= 7;

            this->direction = (GetFacingDirection(ent, this) + tmp) & 0x1f;
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
        sub_0801D2B4(this, 0x28);
        this->damageType = 0x82;
        this->field_0x82.HALF.LO = 240;
        sub_080256B4(this);
        sub_0804AA1C(this);
    } else if (this->cutsceneBeh.HWORD < 120) {
        u32 tmp3 = gUnk_080CBFF8[this->cutsceneBeh.HWORD >> 4];
        if ((this->cutsceneBeh.HWORD & tmp3) == 0) {
            if (this->cutsceneBeh.HWORD & (tmp3 + 1)) {
                sub_0801D2B4(this, 124);
            } else {
                sub_0801D2B4(this, 40);
            }
        }
    }
}

void sub_080256B4(Entity* this) {
    this->action = 1;
    this->actionDelay = (Random() & 3) + 4;
    this->field_0xf = 0x1e;
    this->direction = (this->direction + 7 + ((s32)Random() % 7) * 4) & 0x1c;
    this->field_0x78.HWORD = gUnk_080CC000[Random() & 0xf];
    this->field_0x7a.HALF.LO = ((s32)Random() % 0x18) << 1;
    this->field_0x7a.HALF.HI = 0;
}

bool32 sub_0802571C(Entity* this) {
    RoomControls* ctrl = &gRoomControls;
    u16 xDiff = (this->x.HALF.HI - ctrl->roomOriginX + 8) & -0x10;
    u16 yDiff = (this->y.HALF.HI - ctrl->roomOriginY + 8) & -0x10;
    u16 unk = this->field_0x7a.HALF.LO;
    u16 i;

    for (i = 0; i < 4; i++) {
        u16 sVar3 = xDiff + gUnk_080CC020[unk + 0];
        u16 sVar4 = yDiff + gUnk_080CC020[unk + 1];

        if (sub_080257EC(this, sVar3, sVar4)) {
            this->field_0x7c.HALF.LO = sVar3 + ctrl->roomOriginX;
            this->field_0x7c.HALF.HI = sVar4 + ctrl->roomOriginY;
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
    u16 tmp;

    tmp = sub_080002A8(x - 0x00, y - 0x00, this->collisionLayer);
    if (tmp != 0x312 && gUnk_080B37A0[tmp] != 0x16 && gUnk_080B3E80[tmp] == 0) {
        return TRUE;
    }

    tmp = sub_080002A8(x - 0x10, y - 0x00, this->collisionLayer);
    if (tmp != 0x312 && gUnk_080B37A0[tmp] != 0x16 && gUnk_080B3E80[tmp] == 0) {
        return TRUE;
    }

    tmp = sub_080002A8(x - 0x00, y - 0x10, this->collisionLayer);
    if (tmp != 0x312 && gUnk_080B37A0[tmp] != 0x16 && gUnk_080B3E80[tmp] == 0) {
        return TRUE;
    }

    tmp = sub_080002A8(x - 0x10, y - 0x10, this->collisionLayer);
    if (tmp != 0x312 && gUnk_080B37A0[tmp] != 0x16 && gUnk_080B3E80[tmp] == 0) {
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
            this->actionDelay = 0;
            return TRUE;
        } else if (0x900 >= iVar4) {
            this->action = 11;
            this->actionDelay = 1;
            this->field_0x78.HWORD = gUnk_080CC050[Random() & 0xf];
            return TRUE;
        } else {
            return FALSE;
        }
    }
}

#if NON_MATCHING
bool32 sub_0802594C(Entity* this, u32 param_2) {
    const s8* unk = gUnk_080CC090[param_2];
    u32 uVar1 = this->collisionLayer;
    RoomControls* ctrl = &gRoomControls;
    u16 xDiff = (this->x.HALF.HI - ctrl->roomOriginX + 8) & -0x10;
    u16 yDiff = (this->y.HALF.HI - ctrl->roomOriginY + 8) & -0x10;
    do {
        u16 iVar9 = xDiff + unk[0];
        u16 iVar11 = yDiff + unk[1];
        u32 bVar4 = sub_080002D4(iVar9 - 0x00, iVar11 - 0x00, uVar1);
        u32 bVar5 = sub_080002D4(iVar9 - 0x10, iVar11 - 0x00, uVar1);
        u32 bVar6 = sub_080002D4(iVar9 - 0x00, iVar11 - 0x10, uVar1);
        u32 bVar7 = sub_080002D4(iVar9 - 0x10, iVar11 - 0x10, uVar1);
        if ((bVar6 | bVar4 | bVar5 | bVar7) == 0) {
            this->field_0x7c.HALF.LO = ctrl->roomOriginX + iVar9;
            this->field_0x7c.HALF.HI = ctrl->roomOriginY + iVar11;
            return TRUE;
        }
        unk += 2;
    } while (unk[0] != 0x7f);

    return 0;
}
#else
NAKED
bool32 sub_0802594C(Entity* this, u32 param_2) {
    asm(".include \"asm/non_matching/puffstool/sub_0802594C.inc\"");
}
#endif

void sub_08025A54(Entity* this) {
    u32 layer = this->collisionLayer;
    s16 x = this->x.HALF.HI - gRoomControls.roomOriginX;
    s16 y = this->y.HALF.HI - gRoomControls.roomOriginY;

    const s8* offset = gUnk_080CC0A0;
    u32 i = 0;

    for (; i < 4; i++, offset += 2) {
        sub_08025AB8((((x + offset[0]) >> 4) & 0x3fU) | ((((y + offset[1]) >> 4) & 0x3fU) << 6), layer);
    }
}

bool32 sub_08025AB8(u32 tile, u32 layer) {
    if (sub_080002E0(tile, layer))
        return FALSE;

    if (sub_080002C8(tile, layer) == 10) {
        sub_0807B7D8(0x61, tile, layer);
        return TRUE;
    }

    return FALSE;
}

void sub_08025AE8(Entity* this) {
    Entity* ent;

    ent = CreateFx(this, 0x22, 0);
    if (ent) {
        ent->y.WORD--;
    }

    ent = CreateFx(this, 0x23, 0);
    if (ent) {
        ent->y.WORD++;
    }
}

void sub_08025B18(Entity* this) {
    Entity* ent;

    s32 x = this->x.HALF.HI - gRoomControls.roomOriginX;
    s32 y = this->y.HALF.HI - gRoomControls.roomOriginY;
    u32 layer = this->collisionLayer;

    const s8* offset = gUnk_080CC0A8;
    u32 i = 0;

    for (; i < 9; i++, offset += 2) {
        sub_08025AB8((((x + offset[0]) >> 4) & 0x3fU) | ((((y + offset[1]) >> 4) & 0x3fU) << 6), layer);

        ent = CreateObject(0x21, 2, 0);
        if (ent) {
            PositionRelative(this, ent, offset[0] * 0x10000, offset[1] * 0x10000);
            ent->x.HALF.HI &= -0x10;
            ent->x.HALF.HI += 8;
            ent->y.HALF.HI &= -0x10;
            ent->y.HALF.HI += 8;
            ent->height.HALF.HI = -1;
        }
    }
}

void sub_08025BD4(Entity* this) {
    if (this->field_0x82.HALF.LO && (this->frames.all & 1) == 0) {
        Entity* ent = CreateObject(0x21, 0, 0);
        if (ent) {
            PositionRelative(this, ent, gUnk_080CC0BA[this->animationState * 2 + 0] * 0x10000,
                             gUnk_080CC0BA[this->animationState * 2 + 1] * 0x10000);
            ent->height.HALF.HI = -10;
        }
    }
}

void sub_08025C2C(Entity* this) {
    this->action = 8;
    this->field_0x80.HALF.LO = 0;
    InitializeAnimation(this, 8);
}

bool32 sub_08025C44(Entity* this) {
    if ((this->frames.all & 1) == 0) {
        return ProcessMovement(this);
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
void (*const gUnk_080CBF9C[])(Entity*) = {
    sub_08025008,
    sub_08025020,
    sub_08001324,
    sub_0802511C,
    sub_08001242,
    sub_0802514C,
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
