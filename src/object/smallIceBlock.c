/**
 * @file smallIceBlock.c
 * @ingroup Objects
 *
 * @brief Small Ice Block object
 */
#include "collision.h"
#include "functions.h"
#include "hitbox.h"
#include "item.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x4];
    /*0x6c*/ u16 unk_6c;
    /*0x6e*/ u8 unk_6e[0x2];
    /*0x70*/ u16 tilePos;
    /*0x72*/ u8 unk_72[0x14];
    /*0x86*/ u16 unk_86;
} SmallIceBlockEntity;

extern const s16 gUnk_080B4488[];

void sub_080996AC(SmallIceBlockEntity*);
void sub_08099468(SmallIceBlockEntity*);
bool32 sub_0809963C(SmallIceBlockEntity*);
u32 sub_08099618(u32);
void sub_080994B8(SmallIceBlockEntity*);
void SmallIceBlock_Action3(SmallIceBlockEntity*);
bool32 sub_0809953C(SmallIceBlockEntity*);
void sub_0809969C(SmallIceBlockEntity*);

extern void (*const SmallIceBlock_Actions[])(SmallIceBlockEntity*);
extern const u16 gUnk_08123748[];
extern const u16 gUnk_08123750[];

void SmallIceBlock(SmallIceBlockEntity* this) {
    if (super->type < 3) {
        SmallIceBlock_Actions[super->action](this);
    } else {
        sub_080996AC(this);
    }
}

void SmallIceBlock_Init(SmallIceBlockEntity* this) {
    Entity* obj;

    switch (super->type) {
        case 0:
        case 1:
        case 2:
            if (CheckFlags(this->unk_86)) {
                DeleteThisEntity();
            }
    }
    super->action = 1;
    super->flags |= 0x80;
    super->updatePriority = 3;
    super->collisionFlags = 7;
    super->hurtType = 0x48;
    super->hitType = 1;
    super->collisionMask = 0x80;
    super->hitbox = (Hitbox*)&gUnk_080FD408;
    sub_08099468(this);
    InitializeAnimation(super, super->type);
    obj = CreateObject(SMALL_ICE_BLOCK, 3, 0);
    if (obj != NULL) {
        obj->parent = super;
    }
}

void SmallIceBlock_Action1(SmallIceBlockEntity* this) {
    u32 tileType;
    Entity* obj;

    if (sub_0809963C(this)) {
        super->action = 3;
        super->timer = 0;
        EnqueueSFX(SFX_ICE_BLOCK_MELT);
        SmallIceBlock_Action3(this);
        if (super->type == 0) {
            SetFlag(this->unk_86);
        }
    } else {
        if (!sub_0800442E(super)) {
            tileType = GetTileTypeAtTilePos(this->tilePos, super->collisionLayer);
            if (tileType != SPECIAL_TILE_90) {
                switch (sub_08099618(tileType)) {
                    case 1:
                        super->action = 2;
                        super->timer = 22;
                        super->direction = ((tileType - 0x5b) & 3) << 3;
                        super->speed = 0x20;
                        sub_080994B8(this);
                        break;
                    case 0:
                        obj = CreateObject(SPECIAL_FX, FX_ICE, 0);
                        if (obj != NULL) {
                            CopyPosition(super, obj);
                        }
                        SetTile(this->unk_6c, this->tilePos, super->collisionLayer);
                        DeleteEntity(super);
                        break;

                    case 2:
                        this->unk_6c = (u16)tileType;
                        break;
                }
            }
        }
    }
}

void SmallIceBlock_Action2(SmallIceBlockEntity* this) {
    if (sub_0809953C(this)) {
        super->action = 1;
        sub_08099468(this);
        EnqueueSFX(SFX_ICE_BLOCK_STOP);
    }
}

void SmallIceBlock_Action3(SmallIceBlockEntity* this) {
    if (sub_0809963C(this) == 0) {
        if (super->timer >= 2) {
            super->timer -= 2;
        } else {
            super->timer = 0;
        }
        if (super->timer == 0) {
            super->action = 1;
            sub_0805EC60(super);
            return;
        }
    } else {
        super->timer++;
    }
    SetAffineInfo(super, 0x100, gUnk_08123748[super->timer >> 5], 0);
    if (super->type == 1) {
        CreateGroundItemWithFlags(super, ITEM_SMALL_KEY, 0, this->unk_86);
        SoundReq(SFX_SECRET);
    } else if (super->type == 2) {
        CreateGroundItemWithFlags(super, ITEM_BIG_KEY, 0, this->unk_86);
        SoundReq(SFX_SECRET);
    }
    super->action = 4;
    super->timer = 60;
    super->flags &= ~0x80;
}

void SmallIceBlock_Action4(SmallIceBlockEntity* this) {
    Entity* obj;
    s32 rand;
    s32 x;
    s32 y;

    if (--super->timer == 0) {
        DeleteThisEntity();
    } else {
        if (super->timer == 0x30) {
            SetTile(this->unk_6c, this->tilePos, super->collisionLayer);
        }
        SetAffineInfo(super, 0x100, (0x3c - super->timer) * 0x20 + 0x100, 0);
        if ((super->timer & 1) != 0) {
            obj = CreateObject(SPECIAL_FX, FX_DASH, 0x40);
            if (obj != NULL) {
                rand = Random();
                x = ((rand >> 0x10) % 9) - 4;
                y = rand & 0xf;
                obj->spritePriority.b0 = 3;
                PositionRelative(super, obj, Q_16_16(x), Q_16_16(-y));
            }
        }
    }
}

void sub_08099468(SmallIceBlockEntity* this) {
    this->tilePos = COORD_TO_TILE(super);
    this->unk_6c = GetTileIndex(this->tilePos, super->collisionLayer);
    SetTile(SPECIAL_TILE_90, this->tilePos, super->collisionLayer);
}

void sub_080994B8(SmallIceBlockEntity* this) {
    u16 tileType;

    EnqueueSFX(SFX_ICE_BLOCK_SLIDE);
    SetTile(this->unk_6c, this->tilePos, super->collisionLayer);
    if ((super->collisionLayer == 2) && (GetTileTypeAtTilePos(this->tilePos, 1) == SPECIAL_TILE_90)) {
        CloneTile(TILE_TYPE_784, this->tilePos, 1);
    }
    tileType = GetTileTypeAtTilePos(this->tilePos + gUnk_080B4488[super->direction >> 3], super->collisionLayer);
    if (tileType == 0x79 || tileType == 0x77) {
        super->spriteOffsetY = -2;
    }
}

bool32 sub_0809953C(SmallIceBlockEntity* this) {
    u8 bVar1;
    u8 uVar2;
    u32 uVar3;
    u16 uVar4;

    uVar3 = sub_0800442E(super);
    if (uVar3 != 0) {
        return FALSE;
    }
    ProcessMovement2(super);
    sub_0800445C(super);
    if (super->timer != 0) {
        super->speed += 0x10;
        if (--super->timer == 0) {
            super->speed = 0x200;
        }
    }
    switch (super->direction >> 3) {
        case 0:
            if ((super->collisions & COL_NORTH_ANY) == COL_NONE) {
                return FALSE;
            }
            if ((u32)(super->y.HALF.HI & 0xf) - 7 < 3) {
                super->y.HALF.HI = (super->y.HALF.HI & 0xfff0) + 8;
                return TRUE;
            }
            sub_0809969C(this);
            break;
        case 1:
            if ((super->collisions & COL_EAST_ANY) == COL_NONE) {
                return FALSE;
            }
            if ((u32)(super->x.HALF.HI & 0xf) - 7 < 3) {
                super->x.HALF.HI = (super->x.HALF.HI & 0xfff0) + 8;
                return TRUE;
            }
            sub_0809969C(this);
            break;
        case 2:
            if ((super->collisions & COL_SOUTH_ANY) == COL_NONE) {
                return FALSE;
            }
            if ((u32)(super->y.HALF.HI & 0xf) - 7 < 3) {
                super->y.HALF.HI = (super->y.HALF.HI & 0xfff0) + 8;
                return TRUE;
            }
            sub_0809969C(this);
            break;
        default:
            if ((super->collisions & COL_WEST_ANY) != COL_NONE) {
                if ((u32)(super->x.HALF.HI & 0xf) - 7 < 3) {
                    super->x.HALF.HI = (super->x.HALF.HI & 0xfff0) + 8;
                    return TRUE;
                }
                sub_0809969C(this);
            }
            break;
    }
    return FALSE;
}

u32 sub_08099618(u32 param_1) {
    const u16* it;
    for (it = gUnk_08123750; *it != 0; it += 2) {
        if (*it == param_1) {
            return it[1];
        }
    }
    return 0;
}

bool32 sub_0809963C(SmallIceBlockEntity* this) {
    u16* var;
    u16 x;
    u16 y;

    if (super->type2 != 0) {
        var = (u16*)GetCurrentRoomProperty(super->type2);
        if (CheckFlags(var[0])) {
            x = var[1] + gRoomControls.origin_x;
            y = var[2] + gRoomControls.origin_y;
            if (var[3] >= (u32)(super->x.HALF.HI - x) && var[4] >= (u32)(super->y.HALF.HI - y)) {
                return TRUE;
            }
        }
    }
    if (super->contactFlags == (CONTACT_NOW | 0x7)) {
        return TRUE;
    }
    return FALSE;
}

void sub_0809969C(SmallIceBlockEntity* this) {
    CreateFx(super, 0xd, 0);
    DeleteThisEntity();
}

void sub_080996AC(SmallIceBlockEntity* this) {
    if ((super->parent)->next == NULL) {
        DeleteThisEntity();
    }
    if (super->action == 0) {
        super->action = 1;
        InitializeAnimation(super, 3);
    }
    if ((super->parent)->action < 3) {
        super->spriteSettings.draw = 1;
        if ((super->frame & 1) != 0) {
            super->frame = 0;
            super->frameDuration = (Random() & 0x78) + 0x78;
        }
        GetNextFrame(super);
        CopyPositionAndSpriteOffset(super->parent, super);
        super->y.HALF.HI++;
        super->spriteOffsetY -= 0x11;
    } else {
        super->spriteSettings.draw = 0;
    }
}

void (*const SmallIceBlock_Actions[])(SmallIceBlockEntity*) = {
    SmallIceBlock_Init, SmallIceBlock_Action1, SmallIceBlock_Action2, SmallIceBlock_Action3, SmallIceBlock_Action4,
};
const u16 gUnk_08123748[] = {
    256,
    264,
    271,
    277,
};
const u16 gUnk_08123750[] = {
    SPECIAL_TILE_91,
    1,
    SPECIAL_TILE_92,
    1,
    SPECIAL_TILE_93,
    1,
    SPECIAL_TILE_94,
    1,
    TILE_TYPE_122,
    2,
    TILE_TYPE_120,
    2,
    0,
};
