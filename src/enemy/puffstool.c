/**
 * @file puffstool.c
 * @ingroup Enemies
 *
 * @brief Puffstool enemy
 */
#include "collision.h"
#include "enemy.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[16];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u16 unk_7c;
    /*0x7e*/ u16 unk_7e;
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unused2[1];
    /*0x84*/ u16 unk_84;
    /*0x86*/ u16 tilePos;
} PuffstoolEntity;

extern u8 gMapTileTypeToCollisionData[];

bool32 sub_080258C4(PuffstoolEntity*);
void sub_08025B18(PuffstoolEntity*);
void sub_08025C2C(PuffstoolEntity*);
void sub_08025BD4(PuffstoolEntity*);
void sub_080256B4(PuffstoolEntity*);
bool32 sub_08025C44(PuffstoolEntity*);
u32 sub_08025C60(PuffstoolEntity*);
bool32 sub_0802571C(PuffstoolEntity*);
void sub_08025A54(PuffstoolEntity*);
void sub_08025AE8(PuffstoolEntity*);
bool32 sub_0802594C(PuffstoolEntity*, u32);
bool32 sub_080257EC(PuffstoolEntity*, u32, u32);
bool32 sub_08025AB8(u32, u32);

extern void (*const Puffstool_Functions[])(PuffstoolEntity*);
extern void (*const gUnk_080CBFB4[])(PuffstoolEntity*);
extern const u8 gUnk_080CBFE8[];
extern void (*const gUnk_080CBFEC[])(PuffstoolEntity*);
extern const u8 gUnk_080CBFF8[];
extern const u16 gUnk_080CC000[];
extern const s8 gUnk_080CC020[];
extern const u8 gUnk_080CC050[];
extern const s8* const gUnk_080CC090[];
extern const s8 gUnk_080CC0A0[];
extern const s8 gUnk_080CC0A8[];
extern const s8 gUnk_080CC0BA[];
extern const s8 gUnk_080CC0C2[];

void Puffstool(PuffstoolEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)Puffstool_Functions);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void Puffstool_OnTick(PuffstoolEntity* this) {
    gUnk_080CBFB4[super->action](this);
}

void Puffstool_OnCollide(PuffstoolEntity* this) {
    u8 tmp;

    switch (super->contactFlags & 0x7f) {
        case 0 ... 3:
            /* ... */
            break;
        case 0x1b:
            EnemyDetachFX(super);

            tmp = gUnk_080CBFE8[(*(Entity**)&super->contactedEntity)->type];
            if (tmp < this->unk_82) {
                this->unk_82 -= gUnk_080CBFE8[(*(Entity**)&super->contactedEntity)->type];
            } else {
                this->unk_84 = 0x294;
                super->hitType = 0x83;
                this->unk_82 = 0;
                ChangeObjPalette(super, 0x7c);
            }
            super->action = 7;
            super->timer = 60;
            if (0 < super->zVelocity) {
                super->zVelocity = 0;
            }
            super->iframes = -0xc;
            super->knockbackDuration = 0;
            if (this->unk_80 == 0) {
                super->animationState = (*(Entity**)&super->contactedEntity)->direction >> 3;
                InitializeAnimation(super, super->animationState + 4);
                super->frameDuration = 6;
                this->unk_80 = 1;
            }
            break;
        default:
            if (super->hitType == 0x82 && super->iframes < 0) {
                Entity* entity = CreateObject(DIRT_PARTICLE, 2, 0);
                if (entity != NULL) {
                    entity->spritePriority.b0 = 3;
                    CopyPosition(super, entity);
                }
                EnqueueSFX(SFX_186);
            }
            break;
    }

    EnemyFunctionHandlerAfterCollision(super, Puffstool_Functions);
}

void Puffstool_OnDeath(PuffstoolEntity* this) {
    if ((super->gustJarState & 2) && super->timer == 1 && this->unk_82) {
        sub_08025B18(this);
    }
    GenericDeath(super);
}

void Puffstool_OnGrabbed(PuffstoolEntity* this) {
    GravityUpdate(super, Q_8_8(32.0));
    if (sub_0806F520(super)) {
        gUnk_080CBFEC[super->subAction](this);
    } else {
        sub_08025C2C(this);
    }
}

void sub_08025180(PuffstoolEntity* this) {
    super->subAction = 1;
    super->timer = Random();
    super->animationState = (((*(Entity**)&super->contactedEntity)->direction ^ 0x10) >> 3);
    InitializeAnimation(super, super->animationState + 4);
    EnemyDetachFX(super);
}

void sub_080251AC(PuffstoolEntity* this) {
    if (this->unk_82 >= 4) {
        this->unk_82 -= 3;
        if ((--super->timer & 3) == 0) {
            sub_08025BD4(this);
        }
    } else {
        this->unk_84 = 0x294;
        super->hitType = 0x83;
        this->unk_82 = 0;
        ChangeObjPalette(super, 0x7c);
    }
    GetNextFrame(super);
}

void sub_080251FC(PuffstoolEntity* this) {
    sub_0804A720(super);
    this->unk_82 = 240;
    super->direction = Random() & 0x1c;
    this->unk_80 = 0;
    sub_080256B4(this);
    InitializeAnimation(super, 0);
}

void sub_08025230(PuffstoolEntity* this) {
    if (this->unk_81)
        this->unk_81--;

    sub_08025C44(this);
    GetNextFrame(super);
    if (--super->timer == 0) {
        super->timer = (Random() & 3) + 4;
        super->direction = sub_08025C60(this);
    }

    if (super->collisions != COL_NONE) {
        if (--super->subtimer == 0) {
            sub_0800417E(super, super->collisions);
        }
    } else {
        super->subtimer = 30;
    }

    if (this->unk_78 == 0) {
        if (sub_0802571C(this)) {
            super->action = 2;
            super->timer = 240;
            this->tilePos = COORD_TO_TILE(super);
        }
    } else {
        this->unk_78--;
    }
}

void sub_080252E0(PuffstoolEntity* this) {
    u32 tilePos;

    super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, this->unk_7c, this->unk_7e);

    sub_08025C44(this);
    GetNextFrame(super);

    tilePos = COORD_TO_TILE(super);
    if (tilePos == this->tilePos) {
        if (--super->timer == 0) {
            sub_080256B4(this);
        }
    } else {
        this->tilePos = tilePos;
        super->timer = 240;
    }

    if (super->x.HALF.HI == this->unk_7c && super->y.HALF.HI == this->unk_7e) {
        super->action = 3;
        super->timer = 30;
        super->subtimer = 0;
        super->zVelocity = Q_16_16(1.5);
        InitializeAnimation(super, 1);
    }
}

void sub_0802538C(PuffstoolEntity* this) {
    if (super->timer) {
        super->timer--;
    } else {
        if (super->frame == 0) {
            GetNextFrame(super);
        } else {
            GravityUpdate(super, Q_8_8(32.0));
            if (super->zVelocity < Q_16_16(0.125)) {
                super->action = 4;
                InitializeAnimation(super, 2);
            }
        }
    }
}

void sub_080253D4(PuffstoolEntity* this) {
    GetNextFrame(super);
    if (!GravityUpdate(super, Q_8_8(32.0))) {
        if (super->subtimer == 0) {
            super->action = 5;
            InitializeAnimation(super, 3);
        } else {
            super->action = 6;
            super->timer = 30;
            InitializeAnimation(super, 3);
            sub_08025A54(this);
            sub_08025AE8(this);
        }
    }
}

void sub_0802541C(PuffstoolEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 3;
        super->subtimer = 1;
        super->zVelocity = Q_16_16(2.0);
        InitializeAnimation(super, 1);
    }
}

void sub_0802544C(PuffstoolEntity* this) {
    if (super->frame == 0) {
        GetNextFrame(super);
    } else {
        if (--super->timer == 0) {
            sub_080256B4(this);
            InitializeAnimation(super, 0);
        }
    }
}

void sub_0802547C(PuffstoolEntity* this) {
    GravityUpdate(super, Q_8_8(32.0));
    GetNextFrame(super);
    if ((super->timer & 7) == 0) {
        sub_08025BD4(this);
    }

    if (--super->timer == 0) {
        sub_08025C2C(this);
    }
}

void sub_080254B4(PuffstoolEntity* this) {
    GravityUpdate(super, Q_8_8(32.0));
    if (super->frame & ANIM_DONE) {
        if (super->z.HALF.HI == 0) {
            if (this->unk_84 == 0) {
                super->hitType = 0x82;
                this->unk_82 = -0x10;
                sub_080256B4(this);
            } else {
                super->action = 0xc;
                EnemyCreateFX(super, FX_STARS);
            }
            InitializeAnimation(super, 0);
        }
    } else {
        GetNextFrame(super);
    }
}

void sub_08025514(PuffstoolEntity* this) {
    GetNextFrame(super);
    if (sub_0802594C(this, super->timer++)) {
        super->action = 2;
        super->timer = 240;
        this->unk_81 = 120;
    } else if (3 < super->timer) {
        super->action = 10;
        super->timer = 32;
    }
}

void sub_08025554(PuffstoolEntity* this) {
    Entity* entity = sub_08049DF4(1);
    if (entity == NULL) {
        sub_080256B4(this);
    } else {
        if ((super->timer & 3) == 0) {
            super->direction = GetFacingDirection(entity, super);
        }
        sub_08025C44(this);
        GetNextFrame(super);
        if (super->timer != 0) {
            super->timer--;
        } else {
            if (!sub_080258C4(this)) {
                sub_080256B4(this);
            }
        }
    }
}

void sub_080255AC(PuffstoolEntity* this) {
    Entity* entity = sub_08049DF4(1);
    if (entity == NULL) {
        sub_080256B4(this);
    } else {
        if (this->unk_81 != 0) {
            this->unk_81--;
        }

        if (--super->timer == 0) {
            s32 tmp;

            super->timer = (Random() & 3) + 4;

            tmp = Random() & 0xf;
            if (tmp < 8) {
                tmp--;
            }
            tmp -= 7;

            super->direction = (GetFacingDirection(entity, super) + tmp) & (0x3 | DirectionNorthWest);
        }

        if (this->unk_78 == 0) {
            if (sub_080258C4(this) == 0) {
                sub_080256B4(this);
            }
        } else {
            this->unk_78--;
        }
        sub_08025C44(this);
        GetNextFrame(super);
    }
}

void sub_0802563C(PuffstoolEntity* this) {
    GetNextFrame(super);

    if (--this->unk_84 == 0) {
        ChangeObjPalette(super, 0x28);
        super->hitType = 0x82;
        this->unk_82 = 240;
        sub_080256B4(this);
        EnemyDetachFX(super);
    } else if (this->unk_84 < 120) {
        u32 tmp3 = gUnk_080CBFF8[this->unk_84 >> 4];
        if ((this->unk_84 & tmp3) == 0) {
            if (this->unk_84 & (tmp3 + 1)) {
                ChangeObjPalette(super, 124);
            } else {
                ChangeObjPalette(super, 40);
            }
        }
    }
}

void sub_080256B4(PuffstoolEntity* this) {
    super->action = 1;
    super->timer = (Random() & 3) + 4;
    super->subtimer = 30;
    super->direction = (super->direction + 7 + ((s32)Random() % 7) * 4) & DirectionNorthWest;
    this->unk_78 = gUnk_080CC000[Random() & 0xf];
    this->unk_7a = ((s32)Random() % 0x18) << 1;
    this->unk_7b = 0;
}

bool32 sub_0802571C(PuffstoolEntity* this) {
    RoomControls* ctrl = &gRoomControls;
    u16 roomX = (super->x.HALF.HI - ctrl->origin_x + 8) & -0x10;
    u16 roomY = (super->y.HALF.HI - ctrl->origin_y + 8) & -0x10;
    u16 unk = this->unk_7a;
    u16 i;

    for (i = 0; i < 4; i++) {
        u16 sVar3 = roomX + gUnk_080CC020[unk + 0];
        u16 sVar4 = roomY + gUnk_080CC020[unk + 1];

        if (sub_080257EC(this, sVar3, sVar4)) {
            this->unk_7c = sVar3 + ctrl->origin_x;
            this->unk_7e = sVar4 + ctrl->origin_y;
            return TRUE;
        }

        unk += 2;
        if (0x2f < unk) {
            unk = 0;
        }
    }

    this->unk_7a = unk;
    this->unk_7b++;
    return FALSE;
}

bool32 sub_080257EC(PuffstoolEntity* this, u32 x, u32 y) {
    u16 tileType = GetTileTypeAtRoomCoords(x - 0x00, y - 0x00, super->collisionLayer);
    if (tileType != TILE_TYPE_786 && gMapTileTypeToActTile[tileType] != ACT_TILE_22 &&
        gMapTileTypeToCollisionData[tileType] == 0) {
        return TRUE;
    }

    tileType = GetTileTypeAtRoomCoords(x - 0x10, y - 0x00, super->collisionLayer);
    if (tileType != TILE_TYPE_786 && gMapTileTypeToActTile[tileType] != ACT_TILE_22 &&
        gMapTileTypeToCollisionData[tileType] == 0) {
        return TRUE;
    }

    tileType = GetTileTypeAtRoomCoords(x - 0x00, y - 0x10, super->collisionLayer);
    if (tileType != TILE_TYPE_786 && gMapTileTypeToActTile[tileType] != ACT_TILE_22 &&
        gMapTileTypeToCollisionData[tileType] == 0) {
        return TRUE;
    }

    tileType = GetTileTypeAtRoomCoords(x - 0x10, y - 0x10, super->collisionLayer);
    if (tileType != TILE_TYPE_786 && gMapTileTypeToActTile[tileType] != ACT_TILE_22 &&
        gMapTileTypeToCollisionData[tileType] == 0) {
        return TRUE;
    }

    return FALSE;
}

bool32 sub_080258C4(PuffstoolEntity* this) {
    Entity* entity = sub_08049DF4(1);
    if (entity == NULL) {
        return FALSE;
    } else {
        s32 iVar4;
        s32 iVar1;
        iVar4 = entity->x.HALF.HI - super->x.HALF.HI;
        iVar4 = iVar4 * iVar4;
        iVar1 = entity->y.HALF.HI - super->y.HALF.HI;
        iVar1 = iVar1 * iVar1;
        iVar4 = iVar4 + iVar1;
        if (this->unk_84 == 0 && this->unk_81 == 0 && 0x400 >= iVar4) {
            super->action = 9;
            super->timer = 0;
            return TRUE;
        } else if (0x900 >= iVar4) {
            super->action = 11;
            super->timer = 1;
            this->unk_78 = gUnk_080CC050[Random() & 0xf];
            return TRUE;
        } else {
            return FALSE;
        }
    }
}

bool32 sub_0802594C(PuffstoolEntity* this, u32 param_2) {
    s16 xDiff;
    s16 yDiff;
    s16 x;
    u32 layer;
    const s8* unk = gUnk_080CC090[param_2];
    layer = super->collisionLayer;
    xDiff = (super->x.HALF.HI - gRoomControls.origin_x + 8) & -0x10;
    yDiff = (super->y.HALF.HI - gRoomControls.origin_y + 8) & -0x10;
    do {
        u8 bVar7;
        u8 bVar4;
        s16 y;
        u8 bVar5;
        u8 bVar6;
        x = xDiff + unk[0];
        y = yDiff + unk[1];
        bVar4 = GetCollisionDataAtWorldCoords(x - 0x00, y - 0x00, layer);
        bVar5 = GetCollisionDataAtWorldCoords(x - 0x10, y - 0x00, layer);
        bVar6 = GetCollisionDataAtWorldCoords(x - 0x00, y - 0x10, layer);
        bVar7 = GetCollisionDataAtWorldCoords(x - 0x10, y - 0x10, layer);
        if ((bVar4 | bVar5 | bVar6 | bVar7) == 0) {
            this->unk_7c = gRoomControls.origin_x + x;
            this->unk_7e = gRoomControls.origin_y + y;
            return TRUE;
        }
        unk += 2;
    } while (unk[0] != 0x7f);

    return FALSE;
}

void sub_08025A54(PuffstoolEntity* this) {
    u32 layer = super->collisionLayer;
    s16 x = super->x.HALF.HI - gRoomControls.origin_x;
    s16 y = super->y.HALF.HI - gRoomControls.origin_y;

    const s8* offset = gUnk_080CC0A0;
    u32 i = 0;

    for (; i < 4; i++, offset += 2) {
        sub_08025AB8((((x + offset[0]) >> 4) & 0x3fU) | ((((y + offset[1]) >> 4) & 0x3fU) << 6), layer);
    }
}

bool32 sub_08025AB8(u32 tilePos, u32 layer) {
    if (GetCollisionDataAtTilePos(tilePos, layer))
        return FALSE;

    if (GetActTileAtTilePos(tilePos, layer) == ACT_TILE_10) {
        sub_0807B7D8(0x61, tilePos, layer);
        return TRUE;
    }

    return FALSE;
}

void sub_08025AE8(PuffstoolEntity* this) {
    Entity* entity;

    entity = CreateFx(super, FX_BROWN_SMOKE, 0);
    if (entity != NULL) {
        entity->y.WORD--;
    }

    entity = CreateFx(super, FX_BROWN_SMOKE_LARGE, 0);
    if (entity != NULL) {
        entity->y.WORD++;
    }
}

void sub_08025B18(PuffstoolEntity* this) {
    Entity* entity;

    s32 x = super->x.HALF.HI - gRoomControls.origin_x;
    s32 y = super->y.HALF.HI - gRoomControls.origin_y;
    u32 layer = super->collisionLayer;

    const s8* offset = gUnk_080CC0A8;
    u32 i = 0;

    for (; i < 9; i++, offset += 2) {
        sub_08025AB8((((x + offset[0]) >> 4) & 0x3fU) | ((((y + offset[1]) >> 4) & 0x3fU) << 6), layer);

        entity = CreateObject(DIRT_PARTICLE, 2, 0);
        if (entity != NULL) {
            PositionRelative(super, entity, Q_16_16(offset[0]), Q_16_16(offset[1]));
            entity->x.HALF.HI &= -0x10;
            entity->x.HALF.HI += 8;
            entity->y.HALF.HI &= -0x10;
            entity->y.HALF.HI += 8;
            entity->z.HALF.HI = -1;
        }
    }
}

void sub_08025BD4(PuffstoolEntity* this) {
    if (this->unk_82 && (super->frame & 1) == 0) {
        Entity* entity = CreateObject(DIRT_PARTICLE, 0, 0);
        if (entity != NULL) {
            PositionRelative(super, entity, Q_16_16(gUnk_080CC0BA[super->animationState * 2 + 0]),
                             Q_16_16(gUnk_080CC0BA[super->animationState * 2 + 1]));
            entity->z.HALF.HI = -10;
        }
    }
}

void sub_08025C2C(PuffstoolEntity* this) {
    super->action = 8;
    this->unk_80 = 0;
    InitializeAnimation(super, 8);
}

bool32 sub_08025C44(PuffstoolEntity* this) {
    if ((super->frame & 1) == 0) {
        return ProcessMovement0(super);
    } else {
        return FALSE;
    }
}

u32 sub_08025C60(PuffstoolEntity* this) {
    if (!sub_08049FA0(super) && (Random() & 1)) {
        return sub_08049EE4(super);
    }

    return (gUnk_080CC0C2[Random() & 7] + super->direction) & 0x1f;
}

// clang-format off
void (*const Puffstool_Functions[])(PuffstoolEntity*) = {
    Puffstool_OnTick,
    Puffstool_OnCollide,
    (void (*)(PuffstoolEntity*))GenericKnockback,
    Puffstool_OnDeath,
    (void (*)(PuffstoolEntity*))GenericConfused,
    Puffstool_OnGrabbed,
};

void (*const gUnk_080CBFB4[])(PuffstoolEntity*) = {
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

void (*const gUnk_080CBFEC[])(PuffstoolEntity*) = {
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
