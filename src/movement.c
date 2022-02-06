#include "global.h"
#include "entity.h"
#include "room.h"
#include "area.h"
#include "game.h"
#include "asm.h"
#include "item.h"
#include "coord.h"
#include "coord.h"

/** Collisions. */
typedef enum {
    COL_NONE = 0x0,
    COL_NORTH_WEST = 0x2,
    COL_NORTH_EAST = 0x4,
    COL_NORTH_FULL = 0x6,
    COL_NORTH_ANY = 0xe,
    COL_SOUTH_WEST = 0x20,
    COL_SOUTH_EAST = 0x40,
    COL_SOUTH_FULL = 0x60,
    COL_SOUTH_ANY = 0xe0,
    COL_WEST_SOUTH = 0x200,
    COL_WEST_NORTH = 0x400,
    COL_WEST_FULL = 0x600,
    COL_WEST_ANY = 0xe00,
    COL_EAST_SOUTH = 0x2000,
    COL_EAST_NORTH = 0x4000,
    COL_EAST_FULL = 0x6000,
    COL_EAST_ANY = 0xe000,
} Collisions;

extern u8* GetLayerByIndex(u32);

extern u8 gExitList_RoyalValley_ForestMaze[];
extern u8 gUnk_08135190[];
extern u8 gUnk_08134FBC[];
extern u8 gUnk_08135048[];
extern u8 gUnk_0813A76C[];

extern const u16 gUnk_08133918[];
extern const u16 gUnk_08133938[];
extern const u16 gUnk_08133958[];
extern const u16 gUnk_08133978[];
extern const u16 gUnk_08133998[];
extern const u16 gUnk_081339B8[];
extern const u16 gUnk_081339D8[];
extern const u16 gUnk_081339F8[];
extern u32 (*const gUnk_08133A18[])(u32, u32);
extern const u8 gUnk_08133A40[];
extern const u8 gUnk_08133A5A[];
extern const u8 gUnk_08133A67[];
extern u32 (*const gUnk_08133F48[])(Entity*, u32, u32, u32);

u32 sub_080AE4CC(u8*, s32, s32, s32);
void sub_080AE58C(Entity*, u32, u32);
u32 sub_080AE7E8(Entity*, u32, s32, s32);
bool32 sub_080AF0C8(Entity*);

u32 sub_080AE3E4(void) {
    return 0;
}

u32 sub_080AE3E8(void) {
    return 1;
}

u32 sub_080AE3EC(u32 param_1, u32 param_2) {
    return gUnk_08133918[param_2 & 0xf] >> (param_1 & 0xf) & 1;
}

u32 sub_080AE408(u32 param_1, u32 param_2) {
    return gUnk_08133938[param_2 & 0xf] >> (param_1 & 0xf) & 1;
}

u32 sub_080AE424(u32 param_1, u32 param_2) {
    return gUnk_08133958[param_2 & 0xf] >> (param_1 & 0xf) & 1;
}

u32 sub_080AE440(u32 param_1, u32 param_2) {
    return gUnk_08133978[param_2 & 0xf] >> (param_1 & 0xf) & 1;
}

u32 sub_080AE45C(u32 param_1, u32 param_2) {
    return gUnk_08133998[param_2 & 0xf] >> (param_1 & 0xf) & 1;
}

u32 sub_080AE478(u32 param_1, u32 param_2) {
    return gUnk_081339B8[param_2 & 0xf] >> (param_1 & 0xf) & 1;
}

u32 sub_080AE494(u32 param_1, u32 param_2) {
    return gUnk_081339D8[param_2 & 0xf] >> (param_1 & 0xf) & 1;
}

u32 sub_080AE4B0(u32 param_1, u32 param_2) {
    return gUnk_081339F8[param_2 & 0xf] >> (param_1 & 0xf) & 1;
}

bool32 sub_080AE4CC(u8* layer, s32 param_2, s32 param_3, s32 param_4) {
    u32 tmp = layer[TILE(param_2, param_3)];
    if (tmp == 0) {
        if (param_4 == 4) {
            return TRUE;
        } else {
            return FALSE;
        }
    } else {
        if (tmp <= 0xf) {

            if (gUnk_08133A40[param_4 * 2 + ((tmp + 1) >> 4)] == 0) {
                return FALSE;
            }
            if (gUnk_08133A40[param_4 * 2 + ((tmp + 1) >> 4)] == 1) {
                return TRUE;
            }
            if ((param_3 & 8) == 0) {
                tmp = (u32)(layer[TILE(param_2, param_3)]);
                tmp >>= 2;
            }
            if ((param_2 & 8) == 0) {
                tmp >>= 1;
            }
            return tmp & 1;

        } else {
            if (tmp == 0xff) {
                return gUnk_08133A18[gUnk_08133A5A[param_4]](param_2, param_3);
            } else {
                if (tmp > 0x6f) {
                    return TRUE;
                }
                return gUnk_08133A18[gUnk_08133A67[param_4 * 0x60 + tmp - 0x10]](param_2, param_3);
            }
        }
    }
    return FALSE;
}

NONMATCH("asm/non_matching/movement/sub_080AE58C.inc", void sub_080AE58C(Entity* this, u32 param_2, u32 param_3)) {
    u8* layer;
    u32 uVar2;
    s32 iVar3;
    u32 uVar4;
    u32 uVar5;
    u32 uVar6;
    u32 uVar7;
    s32 iVar8;
    s32 iVar9;
    u32 uVar10;
    u32 uVar11;
    Hitbox* pHVar12;
    s32 iVar13;
    u16 uVar14;
    s32 iVar15;

    layer = GetLayerByIndex(this->collisionLayer);
    layer += 0x2004;
    iVar8 = this->hitbox->offset_x + this->x.HALF.HI;
    iVar9 = this->hitbox->offset_y + this->y.HALF.HI;
    uVar2 = this->hitbox->unk2[0];
    uVar10 = this->hitbox->unk2[1];
    if ((param_2 & 0xf) != 0) {
        if (0xf >= param_2) {
            iVar15 = iVar8 + uVar2;
            iVar3 = sub_080AE4CC(layer, iVar15, iVar9, param_3);
            uVar2 = sub_080AE4CC(layer, iVar15, iVar9 + uVar10, param_3);
            uVar10 = sub_080AE4CC(layer, iVar15, iVar9 - uVar10, param_3);
            uVar2 = ((iVar3 << 1 | uVar2) << 1 | uVar10) << 6;
        } else {
            iVar15 = iVar8 - uVar2;
            iVar3 = sub_080AE4CC(layer, iVar15, iVar9, param_3);
            uVar2 = sub_080AE4CC(layer, iVar15, iVar9 + uVar10, param_3);
            uVar2 = iVar3 << 1 | uVar2;
            iVar13 = iVar9 - uVar10;
            uVar10 = sub_080AE4CC(layer, iVar15, iVar13, param_3);
            uVar2 = (uVar2 << 1 | uVar10) << 2;
        }
    } else {
        iVar15 = iVar8 + uVar2;
        iVar3 = sub_080AE4CC(layer, iVar15, iVar9, param_3);
        uVar11 = sub_080AE4CC(layer, iVar15, iVar9 + uVar10, param_3);
        iVar13 = iVar9 - uVar10;
        uVar4 = sub_080AE4CC(layer, iVar15, iVar13, param_3);
        iVar15 = iVar8 - uVar2;
        uVar5 = sub_080AE4CC(layer, iVar15, iVar9, param_3);
        uVar2 = sub_080AE4CC(layer, iVar15, iVar9 + uVar10, param_3);
        uVar2 = (((iVar3 << 1 | uVar11) << 1 | uVar4) << 2 | uVar5) << 1 | uVar2;
        uVar10 = sub_080AE4CC(layer, iVar15, iVar13, param_3);
        uVar2 = (uVar2 << 1 | uVar10) << 2;
    }
    uVar10 = this->hitbox->unk2[2];
    uVar11 = this->hitbox->unk2[3];
    if (((param_2 - 8) & 0xf) == 0) {
        iVar15 = iVar9 + uVar11;
        uVar4 = sub_080AE4CC(layer, iVar8, iVar15, param_3);
        uVar5 = sub_080AE4CC(layer, iVar8 + uVar10, iVar15, param_3);
        iVar3 = iVar8 - uVar10;
        uVar6 = sub_080AE4CC(layer, iVar3, iVar15, param_3);
        iVar9 -= uVar11;
        uVar7 = sub_080AE4CC(layer, iVar8, iVar9, param_3);
        uVar11 = sub_080AE4CC(layer, iVar8 + uVar10, iVar9, param_3);
        uVar11 = ((((uVar2 | uVar4) << 1 | uVar5) << 1 | uVar6) << 2 | uVar7) << 1 | uVar11;
        uVar2 = sub_080AE4CC(layer, iVar3, iVar9, param_3);
        this->collisions = ((uVar11 << 1 | uVar2) << 1);
    } else {
        if (param_2 - 8 < 0x10) {
            iVar9 += uVar11;
            uVar11 = sub_080AE4CC(layer, iVar8, iVar9, param_3);
            uVar4 = sub_080AE4CC(layer, iVar8 + uVar10, iVar9, param_3);
            uVar10 = sub_080AE4CC(layer, iVar8 - uVar10, iVar9, param_3);
            this->collisions = ((((uVar2 | uVar11) << 1 | uVar4) << 1 | uVar10) << 5);
        } else {
            iVar9 -= uVar11;
            uVar4 = sub_080AE4CC(layer, iVar8, iVar9, param_3);
            uVar11 = sub_080AE4CC(layer, iVar8 + uVar10, iVar9, param_3);
            uVar11 = (uVar2 << 4 | uVar4) << 1 | uVar11;
            iVar3 = iVar8 - uVar10;
            uVar2 = sub_080AE4CC(layer, iVar3, iVar9, param_3);
            this->collisions = ((uVar11 << 1 | uVar2) << 1);
        }
    }
}
END_NONMATCH

u32 sub_080AE7E8(Entity* param_1, u32 param_2, s32 param_3, s32 param_4) {
    return gUnk_08133F48[param_3](param_1, param_2, param_3 << 3, param_4);
}

bool32 sub_080AE800(Entity* this, s32 radius, s32 angle, u32 param_4) {
    s32 tmpX = 0;
    s32 tmpY = 0;
    if ((this->collisions & COL_NORTH_ANY) != COL_NONE) {
        if ((this->collisions & COL_NORTH_ANY) == COL_NORTH_WEST) {
            if ((this->collisions & COL_EAST_ANY) == COL_NONE) {
                tmpX = radius * 0x100;
                this->x.WORD += tmpX;
                sub_080AE58C(this, 4, param_4);
                if ((this->collisions & COL_NORTH_ANY) == COL_NONE) {
                    tmpY = gSineTable[0x40] * radius;
                    tmpX = radius * 0x100;
                    this->y.WORD -= tmpY;
                }
            }
        } else {
            if ((this->collisions & COL_NORTH_ANY) == COL_NORTH_EAST) {
                if ((this->collisions & COL_WEST_ANY) == COL_NONE) {
                    tmpX = radius * 0x100;
                    this->x.WORD += radius * -0x100;
                    sub_080AE58C(this, 0x1c, param_4);
                    if ((this->collisions & COL_NORTH_ANY) == COL_NONE) {
                        tmpY = gSineTable[0x40] * radius;
                        tmpX = radius * 0x100;
                        this->y.WORD -= tmpY;
                    }
                }
            }
        }
    } else {
        tmpX = gSineTable[0x40] * radius;
        this->y.WORD -= tmpX;
    }
    if ((tmpX + 0x3333U < 0x6666) && (tmpY + 0x3333U < 0x6666)) {
        return FALSE;
    } else {
        return TRUE;
    }
}

NONMATCH("asm/non_matching/movement/sub_080AE8D8.inc",
         bool32 sub_080AE8D8(Entity* this, s32 radius, s32 angle, u32 param_4)) {
    s32 moveA = 0;
    s32 moveB = 0;
    if (((this->collisions & COL_NORTH_ANY) == COL_NONE) || ((this->collisions & COL_EAST_ANY) == COL_NONE)) {
        if ((this->collisions & (COL_NORTH_ANY | COL_EAST_ANY)) == COL_NONE) {
            moveA = radius * gSineTable[angle + 0x40];
            this->y.WORD -= moveA;
            moveB = radius * gSineTable[angle];
            this->x.WORD += moveB;
        } else {
            if ((this->collisions & COL_NORTH_ANY) == COL_NORTH_WEST) {
                moveA = radius * 0x100;
                this->x.WORD += moveA;
                sub_080AE58C(this, 4, param_4);
            } else {
                if ((this->collisions & COL_EAST_ANY) == COL_EAST_NORTH) {
                    moveA = radius * 0x100;
                    this->y.WORD -= moveA;
                    sub_080AE58C(this, 4, param_4);
                }
            }
            if ((this->collisions & COL_NORTH_ANY) == COL_NONE) {
                moveB = gSineTable[angle + 0x40] * radius;
                this->y.WORD -= moveB;
            }
            if ((this->collisions & COL_EAST_ANY) == COL_NONE) {
                moveB = gSineTable[angle] * radius;
                this->x.WORD += moveB;
            }
        }
    }
    if (((moveA >= -0x3333) && (moveA < 0x3333)) && ((moveB >= -0x3333) && (moveB < 0x3333))) {
        return FALSE;
    } else {
        return TRUE;
    }
}
END_NONMATCH

bool32 sub_080AE9CC(Entity* this, s32 radius, s32 angle, u32 param_4) {
    s32 moveA = 0;
    s32 moveB = 0;
    if ((this->collisions & COL_EAST_ANY) != COL_NONE) {
        if ((this->collisions & COL_EAST_ANY) == COL_EAST_SOUTH) {
            if ((this->collisions & COL_SOUTH_ANY) == COL_NONE) {
                moveA = radius * 0x100;
                this->y.WORD += moveA;
                sub_080AE58C(this, 0xc, param_4);
                if ((this->collisions & COL_EAST_ANY) == COL_NONE) {
                    moveB = gSineTable[angle] * radius;
                    this->x.WORD += moveB;
                }
            }
        } else {
            if ((this->collisions & COL_EAST_ANY) == COL_EAST_NORTH) {
                if ((this->collisions & COL_NORTH_ANY) == COL_NONE) {
                    moveA = radius * 0x100;
                    this->y.WORD = this->y.WORD -= moveA;
                    sub_080AE58C(this, 4, param_4);
                    if ((this->collisions & COL_EAST_ANY) == COL_NONE) {
                        moveB = gSineTable[angle] * radius;
                        this->x.WORD += moveB;
                    }
                }
            }
        }
    } else {
        moveA = gSineTable[angle] * radius;
        this->x.WORD += moveA;
    }
    if (((moveA >= -0x3333) && (moveA < 0x3333)) && ((moveB >= -0x3333) && (moveB < 0x3333))) {
        return FALSE;
    } else {
        return TRUE;
    }
}

NONMATCH("asm/non_matching/movement/sub_080AEAC0.inc",
         bool32 sub_080AEAC0(Entity* this, s32 radius, s32 angle, u32 param_4)) {
    s32 moveA = 0;
    s32 moveB = 0;
    if (((this->collisions & COL_SOUTH_ANY) == COL_NONE) || ((this->collisions & COL_EAST_ANY) == COL_NONE)) {
        if ((this->collisions & (COL_SOUTH_ANY | COL_EAST_ANY)) == COL_NONE) {
            moveA = gSineTable[angle + 0x40] * radius;
            this->y.WORD -= moveA;
            moveB = gSineTable[angle] * radius;
            this->x.WORD += moveB;
        } else {
            if ((this->collisions & COL_SOUTH_ANY) == COL_SOUTH_WEST) {
                moveA = radius * 0x100;
                this->x.WORD += moveA;
                sub_080AE58C(this, 0xc, param_4);
            } else if ((this->collisions & COL_EAST_ANY) == COL_EAST_SOUTH) {
                moveA = radius * 0x100;
                this->y.WORD += moveA;
                sub_080AE58C(this, 0xc, param_4);
            }
            if ((this->collisions & COL_SOUTH_ANY) == COL_NONE) {
                moveB = gSineTable[angle + 0x40] * radius;
                this->y.WORD -= moveB;
            }
            if ((this->collisions & COL_EAST_ANY) == COL_NONE) {
                moveB = gSineTable[angle] * radius;
                this->x.WORD += moveB;
            }
        }
    }
    if (((moveA >= -0x3333) && (moveA < 0x3333)) && ((moveB >= -0x3333) && (moveB < 0x3333))) {
        return FALSE;
    } else {
        return TRUE;
    }
}
END_NONMATCH

bool32 sub_080AEBB4(Entity* this, s32 radius, s32 angle, u32 param_4) {
    s32 moveA = 0;
    s32 moveB = 0;

    if ((this->collisions & COL_SOUTH_ANY) != COL_NONE) {
        if ((this->collisions & COL_SOUTH_ANY) == COL_SOUTH_WEST) {
            if ((this->collisions & COL_EAST_ANY) == COL_NONE) {
                moveA = radius * 0x100;
                this->x.WORD += moveA;
                sub_080AE58C(this, 0xc, param_4);
                if ((this->collisions & COL_SOUTH_ANY) == COL_NONE) {
                    moveB = gSineTable[angle + 0x40] * radius;
                    this->y.WORD -= moveB;
                }
            }
        } else {
            if ((this->collisions & COL_SOUTH_ANY) == COL_SOUTH_EAST) {
                if ((this->collisions & COL_WEST_ANY) == COL_NONE) {
                    moveA = radius * 0x100;
                    this->x.WORD -= moveA;
                    sub_080AE58C(this, 0x14, param_4);
                    if ((this->collisions & COL_SOUTH_ANY) == COL_NONE) {
                        moveB = gSineTable[angle + 0x40] * radius;
                        this->y.WORD -= moveB;
                    }
                }
            }
        }
    } else {
        moveA = gSineTable[angle + 0x40] * radius;
        this->y.WORD -= moveA;
    }
    if (((moveA >= -0x3333) && (moveA < 0x3333)) && ((moveB >= -0x3333) && (moveB < 0x3333))) {
        return FALSE;
    } else {
        return TRUE;
    }
}

NONMATCH("asm/non_matching/movement/sub_080AECAC.inc",
         bool32 sub_080AECAC(Entity* this, s32 radius, s32 angle, u32 param_4)) {
    s32 moveA = 0;
    s32 moveB = 0;
    if (((this->collisions & COL_SOUTH_ANY) == COL_NONE) || ((this->collisions & COL_WEST_ANY) == COL_NONE)) {
        if ((this->collisions & (COL_SOUTH_ANY | COL_WEST_ANY)) == COL_NONE) {
            moveB = gSineTable[angle + 0x40] * radius;
            this->y.WORD -= moveB;
            moveA = gSineTable[angle] * radius;
            this->x.WORD += moveA;
        } else {
            if ((this->collisions & COL_SOUTH_ANY) == COL_SOUTH_EAST) {
                moveB = radius * 0x100;
                this->x.WORD -= moveB;
                sub_080AE58C(this, 0x14, param_4);
            } else {
                if ((this->collisions & COL_WEST_ANY) == COL_WEST_SOUTH) {
                    moveB = radius * 0x100;
                    this->y.WORD += moveB;
                    sub_080AE58C(this, 0x14, param_4);
                }
            }
            if ((this->collisions & COL_SOUTH_ANY) == COL_NONE) {
                moveA = gSineTable[angle + 0x40] * radius;
                this->y.WORD -= moveA;
            }
            if ((this->collisions & COL_WEST_ANY) == COL_NONE) {
                moveA = gSineTable[angle] * radius;
                this->x.WORD += moveA;
            }
        }
    }
    if (((moveA >= -0x3333) && (moveA < 0x3333)) && ((moveB >= -0x3333) && (moveB < 0x3333))) {
        return FALSE;
    } else {
        return TRUE;
    }
}
END_NONMATCH

bool32 sub_080AEDA0(Entity* this, s32 radius, s32 angle, u32 param_4) {
    s32 moveA = 0;
    s32 moveB = 0;

    if ((this->collisions & COL_WEST_ANY) != COL_NONE) {

        if ((this->collisions & COL_WEST_ANY) == COL_WEST_SOUTH) {
            if ((this->collisions & COL_SOUTH_ANY) == COL_NONE) {
                moveA = radius * 0x100;
                this->y.WORD += moveA;
                sub_080AE58C(this, 0x1c, param_4);
                if ((this->collisions & COL_WEST_ANY) == COL_NONE) {
                    moveB = gSineTable[angle] * radius;
                    this->x.WORD += moveB;
                }
            }
        } else {
            if ((this->collisions & COL_WEST_ANY) == COL_WEST_NORTH) {
                if ((this->collisions & COL_NORTH_ANY) == COL_NONE) {
                    moveA = radius * 0x100;
                    this->y.WORD = this->y.WORD + radius * -0x100;
                    sub_080AE58C(this, 0x1c, param_4);
                    if ((this->collisions & COL_WEST_ANY) == COL_NONE) {
                        moveB = gSineTable[angle] * radius;
                        this->x.WORD += moveB;
                    }
                }
            }
        }
    } else {
        moveA = gSineTable[angle] * radius;
        this->x.WORD += moveA;
    }

    if (((moveA >= -0x3333) && (moveA < 0x3333)) && ((moveB >= -0x3333) && (moveB < 0x3333))) {
        return FALSE;
    } else {
        return TRUE;
    }
}

NONMATCH("asm/non_matching/movement/sub_080AEE94.inc",
         bool32 sub_080AEE94(Entity* this, s32 radius, s32 angle, u32 param_4)) {
    s32 moveA = 0;
    s32 moveB = 0;
    u32 colNorthAny = (this->collisions & COL_NORTH_ANY);
    u32 colWestAny = (this->collisions & COL_WEST_ANY);
    if ((colNorthAny == COL_NONE) || (colWestAny == COL_NONE)) {
        if ((colNorthAny | colWestAny) == COL_NONE) {
            moveA = gSineTable[angle + 0x40] * radius;
            this->y.WORD -= moveA;
            moveB = gSineTable[angle] * radius;
            this->x.WORD += moveB;
        } else {
            if (colNorthAny == COL_NORTH_EAST) {
                moveA = radius * 0x100;
                this->x.WORD -= moveA;
                sub_080AE58C(this, 0x1c, param_4);
            } else {
                if (colWestAny == COL_WEST_NORTH) {
                    moveA = radius * 0x100;
                    this->y.WORD -= moveA;
                    sub_080AE58C(this, 0x1c, param_4);
                }
            }
            if ((this->collisions & COL_NORTH_ANY) == COL_NONE) {
                moveB = gSineTable[angle + 0x40] * radius;
                this->y.WORD -= moveB;
            }
            if ((this->collisions & COL_WEST_ANY) == COL_NONE) {
                moveB = gSineTable[angle] * radius;
                this->x.WORD += moveB;
            }
        }
    }
    if (((moveA >= -0x3333) && (moveA < 0x3333)) && ((moveB >= -0x3333) && (moveB < 0x3333))) {
        return FALSE;
    } else {
        return TRUE;
    }
}
END_NONMATCH

u32 ProcessMovement(Entity* this) {
    u32 result;

    if ((this->direction & 0x80) == 0) {
        sub_080AE58C(this, this->direction, 0);
        result = sub_080AE7E8(this, this->speed, this->direction, 0);
    } else {
        result = 0;
    }
    return result;
}

u32 sub_080AEFB4(Entity* this) {
    u32 result;

    if ((this->direction & 0x80) == 0) {
        sub_080AE58C(this, this->direction, 1);
        result = sub_080AE7E8(this, this->speed, this->direction, 1);
    } else {
        result = 0;
    }
    return result;
}

u32 sub_080AEFE0(Entity* this) {
    u32 result;

    if ((this->direction & 0x80) == 0) {
        sub_080AE58C(this, this->direction, 2);
        result = sub_080AE7E8(this, this->speed, this->direction, 2);
    } else {
        result = 0;
    }
    return result;
}

u32 sub_080AF00C(Entity* this) {
    u32 result;

    if ((this->direction & 0x80) == 0) {
        sub_080AE58C(this, this->direction, 10);
        result = sub_080AE7E8(this, this->speed, this->direction, 10);
    } else {
        result = 0;
    }
    return result;
}

u32 sub_080AF038(Entity* this) {
    u32 result;

    if ((this->direction & 0x80) == 0) {
        sub_080AE58C(this, (u32)this->direction, 0xc);
        result = sub_080AE7E8(this, (s32)this->speed, this->direction, 0xc);
    } else {
        result = 0;
    }
    return result;
}

u32 sub_080AF064(Entity* this, u32 param_2, u32 param_3) {
    u32 result;

    if ((param_2 & 0x80) == 0) {
        sub_080AE58C(this, param_2, 0);
        result = sub_080AE7E8(this, param_3, param_2, 0);
    } else {
        result = 0;
    }
    return result;
}

u32 sub_080AF090(Entity* this) {
    u32 result;

    if (((this->direction & 0x80) == 0) && (sub_080AF0C8(this) == 0)) {
        sub_080AE58C(this, (u32)this->direction, 3);
        result = sub_080AE7E8(this, (s32)this->speed, this->direction, 3);
    } else {
        result = 0;
    }
    return result;
}

bool32 sub_080AF0C8(Entity* this) {
    u32 tileType = GetTileTypeByEntity(this);
    switch (tileType) {
        case 0x87:
            if (((this->direction + 7) & 0x1f) < 0x10) {
                this->collisions = COL_NORTH_ANY;
                return TRUE;
            }
            break;
        case 0x8a:
            if (((this->direction - 1) & 0x1f) < 0x10) {
                this->collisions = COL_EAST_ANY;
                return TRUE;
            }
            break;
        case 0x88:
            if (((this->direction - 9) & 0x1f) < 0x10) {
                this->collisions = COL_SOUTH_ANY;
                return TRUE;
            }
            break;
        case 0x89:
            if (((this->direction - 0x11) & 0x1f) < 0x10) {
                this->collisions = COL_WEST_ANY;
                return TRUE;
            }
            break;
    }
    return FALSE;
}

u32 sub_080AF134(Entity* this) {
    u32 result;

    if ((this->direction & 0x80) == 0) {
        sub_080AE58C(this, this->direction, 4);
        result = sub_080AE7E8(this, this->speed, this->direction, 4);
    } else {
        result = 0;
    }
    return result;
}

u32 sub_080AF160(Entity* this) {
    u32 result;

    if ((this->direction & 0x80) == 0) {
        sub_080AE58C(this, this->direction, 5);
        result = sub_080AE7E8(this, this->speed, this->direction, 5);
    } else {
        result = 0;
    }
    return result;
}

void sub_080AF18C(Entity* this) {
    this->knockbackDuration--;
    sub_080AE58C(this, this->knockbackDirection, 2);
    sub_080AE7E8(this, this->field_0x46, this->knockbackDirection, 2);
}

void sub_080AF1BC(Entity* this) {
    this->knockbackDuration--;
    sub_080AE58C(this, this->knockbackDirection, 1);
    sub_080AE7E8(this, this->field_0x46, this->knockbackDirection, 1);
}

u32 sub_080AF1EC(Entity* this) {
    u32 result;

    if ((this->direction & 0x80) == 0) {
        sub_080AE58C(this, this->direction, 6);
        result = sub_080AE7E8(this, this->speed, this->direction, 6);
    } else {
        result = 0;
    }
    return result;
}

u32 sub_080AF218(Entity* this, u32 param_2, u32 param_3) {
    u32 result;

    if ((param_2 & 0x80) == 0) {
        sub_080AE58C(this, param_2, 6);
        result = sub_080AE7E8(this, param_3, param_2, 6);
    } else {
        result = 0;
    }
    return result;
}

void sub_080AF244(Entity* param_1, u32 param_2, u32 param_3) {
    sub_080AE7E8(param_1, param_2, param_3, 2);
}

void sub_080AF250(s32 param_1) {
    gArea.pCurrentRoomInfo = GetCurrentRoomInfo();
    if (param_1 != 0) {
        (gArea.pCurrentRoomInfo)->exits = gUnk_08135190;
    } else {
        (gArea.pCurrentRoomInfo)->exits = gExitList_RoyalValley_ForestMaze;
    }
}

void sub_080AF284(void) {
    if (CheckPlayerInRegion(0x78, gRoomControls.height - 0x50, 0x78, 0x50)) {
        gArea.pCurrentRoomInfo = GetCurrentRoomInfo();
        (gArea.pCurrentRoomInfo)->exits = gUnk_08135048;
    } else {
        if (GetInventoryValue(ITEM_FOURSWORD) == 0) {
            return;
        }
        gArea.pCurrentRoomInfo = GetCurrentRoomInfo();
        (gArea.pCurrentRoomInfo)->exits = gUnk_08134FBC;
    }
}

void sub_080AF2E4(void) {
    if (GetInventoryValue(ITEM_FOURSWORD)) {
        gArea.pCurrentRoomInfo = GetCurrentRoomInfo();
        (gArea.pCurrentRoomInfo)->exits = gUnk_0813A76C;
    }
}
