/**
 * @file bigIceBlock.c
 * @ingroup Objects
 *
 * @brief Big Ice Block object
 */
#include "functions.h"
#include "hitbox.h"
#include "item.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x4];
    /*0x6c*/ u16 unk_6c;
    /*0x6e*/ u16 unk_6e;
    /*0x70*/ u8 unk_70[0x16];
    /*0x86*/ u16 unk_86;
} BigIceBlockEntity;

extern void (*const BigIceBlock_Actions[])(BigIceBlockEntity*);
extern const u16 gUnk_081237B0[];

void sub_08099D30(BigIceBlockEntity*);
void sub_08099910(BigIceBlockEntity*);
extern bool32 sub_0809963C(BigIceBlockEntity*);
void BigIceBlock_Action2(BigIceBlockEntity*);
extern bool32 sub_0809963C(BigIceBlockEntity*);
void sub_08099C18(BigIceBlockEntity*);

void BigIceBlock(BigIceBlockEntity* this) {
    if (super->type < 4) {
        BigIceBlock_Actions[super->action](this);
    } else {
        sub_08099D30(this);
    }
}

void BigIceBlock_Init(BigIceBlockEntity* this) {
    Entity* obj;

    if (CheckFlags(this->unk_86)) {
        DeleteThisEntity();
    }
    super->action = 1;
    super->flags |= 0x80;
    super->updatePriority = 3;
    super->collisionFlags = 7;
    super->hurtType = 0x48;
    super->hitType = 1;
    super->collisionMask = 0x80;
    super->hitbox = (Hitbox*)&gUnk_080FD190;
    sub_08099910(this);
    InitializeAnimation(super, super->type);
    obj = CreateObject(BIG_ICE_BLOCK, 4, 0);
    if (obj != NULL) {
        obj->parent = super;
    }
}

void BigIceBlock_Action1(BigIceBlockEntity* this) {
    if (sub_0809963C(this)) {
        super->action = 2;
        super->timer = 0;
        EnqueueSFX(SFX_ICE_BLOCK_MELT);
        BigIceBlock_Action2(this);
    }
}

void BigIceBlock_Action2(BigIceBlockEntity* this) {
    u32 tmp;
    if (!sub_0809963C(this)) {
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
    tmp = gUnk_081237B0[super->timer >> 5];
    SetAffineInfo(super, 0x100, tmp, 0);
    if (super->type != 1) {
        if (super->type != 2) {
            SetFlag(this->unk_86);
        } else {
            CreateGroundItemWithFlags(super, ITEM_SMALL_KEY, 0, this->unk_86);
        }
    }
    super->action = 3;
    super->timer = 60;
    super->flags &= ~0x80;
}

void sub_08099880(BigIceBlockEntity* this) {
    Entity* obj;
    s32 rand;
    u8 uVar3;
    u32 uVar4;
    s32 x;

    if (--super->timer == 0) {
        DeleteThisEntity();
    } else {
        if (super->timer == 0x30) {
            sub_08099C18(this);
        }
        uVar4 = (0x3c - super->timer) * 0x20 + 0x100;
        SetAffineInfo(super, 0x100, uVar4, 0);
        sub_0806FCF4(super, uVar4, 2, 0);
        obj = CreateObject(SPECIAL_FX, FX_DASH, 0x40);
        if (obj != NULL) {
            rand = Random();
            x = ((rand >> 0x10) % 0x21) - 0x10;
            rand = (rand & 0xf) - 4;
            obj->spritePriority.b0 = 3;
            PositionRelative(super, obj, x * 0x10000, rand * 0x10000);
        }
    }
}

void sub_08099910(BigIceBlockEntity* this) {
    u32 uVar2;
    s32 actTile;
    u32 tileIndex;
    u32 tilePos;

    tilePos = COORD_TO_TILE(super);
    this->unk_6e = tilePos;
    uVar2 = (((super->x.HALF.HI & 8)) >> 0x3) + ((super->y.HALF.HI & 8) >> 2);
    this->unk_6c = uVar2;

    switch (uVar2) {
        default:
            SetTile(SPECIAL_TILE_34, tilePos - 0x41, super->collisionLayer);
            SetTile(SPECIAL_TILE_34, tilePos - 0x40, super->collisionLayer);
            SetTile(SPECIAL_TILE_34, tilePos - 1, super->collisionLayer);
            SetTile(SPECIAL_TILE_34, tilePos, super->collisionLayer);
            break;
        case 1:
            actTile = GetActTileAtTilePos(tilePos - 0x41, super->collisionLayer);
            tileIndex = SPECIAL_TILE_36;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_121;
            }
            SetTile(tileIndex, tilePos - 0x41, super->collisionLayer);
            SetTile(SPECIAL_TILE_34, tilePos - 0x40, super->collisionLayer);
            actTile = GetActTileAtTilePos(tilePos - 0x3f, super->collisionLayer);
            tileIndex = SPECIAL_TILE_37;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_123;
            }
            SetTile(tileIndex, tilePos - 0x3f, super->collisionLayer);
            actTile = GetActTileAtTilePos(tilePos - 1, super->collisionLayer);
            tileIndex = SPECIAL_TILE_36;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_121;
            }
            SetTile(tileIndex, tilePos - 1, super->collisionLayer);
            SetTile(SPECIAL_TILE_34, tilePos, super->collisionLayer);
            actTile = GetActTileAtTilePos(tilePos + 1, super->collisionLayer);
            tileIndex = SPECIAL_TILE_37;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_123;
            }
            SetTile(tileIndex, tilePos + 1, super->collisionLayer);
            return;
            break;
        case 2:
            actTile = GetActTileAtTilePos(tilePos - 0x41, super->collisionLayer);
            tileIndex = SPECIAL_TILE_35;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_119;
            }
            SetTile(tileIndex, tilePos - 0x41, super->collisionLayer);
            actTile = GetActTileAtTilePos(tilePos - 0x40, super->collisionLayer);
            tileIndex = SPECIAL_TILE_35;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_119;
            }
            SetTile(tileIndex, tilePos - 0x40, super->collisionLayer);
            SetTile(SPECIAL_TILE_34, tilePos - 1, super->collisionLayer);
            SetTile(SPECIAL_TILE_34, tilePos, super->collisionLayer);
            actTile = GetActTileAtTilePos(tilePos + 0x3f, super->collisionLayer);
            tileIndex = SPECIAL_TILE_38;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_124;
            }
            SetTile(tileIndex, tilePos + 0x3f, super->collisionLayer);
            actTile = GetActTileAtTilePos(tilePos + 0x40, super->collisionLayer);
            tileIndex = SPECIAL_TILE_38;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_124;
            }
            SetTile(tileIndex, tilePos + 0x40, super->collisionLayer);
            break;
        case 3:
            actTile = GetActTileAtTilePos(tilePos - 0x41, super->collisionLayer);
            tileIndex = SPECIAL_TILE_39;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_117;
            }
            SetTile(tileIndex, tilePos - 0x41, super->collisionLayer);
            actTile = GetActTileAtTilePos(tilePos - 0x40, super->collisionLayer);
            tileIndex = SPECIAL_TILE_35;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_119;
            }
            SetTile(tileIndex, tilePos - 0x40, super->collisionLayer);
            actTile = GetActTileAtTilePos(tilePos - 0x3f, super->collisionLayer);
            tileIndex = SPECIAL_TILE_40;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_118;
            }
            SetTile(tileIndex, tilePos - 0x3f, super->collisionLayer);
            actTile = GetActTileAtTilePos(tilePos - 1, super->collisionLayer);
            tileIndex = SPECIAL_TILE_36;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_121;
            }
            SetTile(tileIndex, tilePos - 1, super->collisionLayer);
            SetTile(SPECIAL_TILE_34, tilePos, super->collisionLayer);
            actTile = GetActTileAtTilePos(tilePos + 1, super->collisionLayer);
            tileIndex = SPECIAL_TILE_37;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_123;
            }
            SetTile(tileIndex, tilePos + 1, super->collisionLayer);
            actTile = GetActTileAtTilePos(tilePos + 0x3f, super->collisionLayer);
            tileIndex = SPECIAL_TILE_41;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_120;
            }
            SetTile(tileIndex, tilePos + 0x3f, super->collisionLayer);
            actTile = GetActTileAtTilePos(tilePos + 0x40, super->collisionLayer);
            tileIndex = SPECIAL_TILE_38;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_124;
            }
            SetTile(tileIndex, tilePos + 0x40, super->collisionLayer);
            actTile = GetActTileAtTilePos(tilePos + 0x41, super->collisionLayer);
            tileIndex = SPECIAL_TILE_42;
            if (actTile == ACT_TILE_18) {
                tileIndex = SPECIAL_TILE_122;
            }
            SetTile(tileIndex, tilePos + 0x41, super->collisionLayer);
            break;
    }
}

void sub_08099C18(BigIceBlockEntity* this) {
    u32 tmp = this->unk_6e;
    switch (this->unk_6c) {
        default:
            RestorePrevTileEntity(tmp - 0x41, super->collisionLayer);
            RestorePrevTileEntity(tmp - 0x40, super->collisionLayer);
            RestorePrevTileEntity(tmp - 1, super->collisionLayer);
            RestorePrevTileEntity(tmp, super->collisionLayer);
            break;
        case 1:
            RestorePrevTileEntity(tmp - 0x41, super->collisionLayer);
            RestorePrevTileEntity(tmp - 0x40, super->collisionLayer);
            RestorePrevTileEntity(tmp - 0x3f, super->collisionLayer);
            RestorePrevTileEntity(tmp - 1, super->collisionLayer);
            RestorePrevTileEntity(tmp, super->collisionLayer);
            RestorePrevTileEntity(tmp + 1, super->collisionLayer);
            break;
        case 2:
            RestorePrevTileEntity(tmp - 0x41, super->collisionLayer);
            RestorePrevTileEntity(tmp - 0x40, super->collisionLayer);
            RestorePrevTileEntity(tmp - 1, super->collisionLayer);
            RestorePrevTileEntity(tmp, super->collisionLayer);
            RestorePrevTileEntity(tmp + 0x3f, super->collisionLayer);
            RestorePrevTileEntity(tmp + 0x40, super->collisionLayer);
            break;
        case 3:
            RestorePrevTileEntity(tmp - 0x41, super->collisionLayer);
            RestorePrevTileEntity(tmp - 0x40, super->collisionLayer);
            RestorePrevTileEntity(tmp - 0x3f, super->collisionLayer);
            RestorePrevTileEntity(tmp - 1, super->collisionLayer);
            RestorePrevTileEntity(tmp, super->collisionLayer);
            RestorePrevTileEntity(tmp + 1, super->collisionLayer);
            RestorePrevTileEntity(tmp + 0x3f, super->collisionLayer);
            RestorePrevTileEntity(tmp + 0x40, super->collisionLayer);
            RestorePrevTileEntity(tmp + 0x41, super->collisionLayer);
            break;
    }
}

void sub_08099D30(BigIceBlockEntity* this) {
    if ((super->parent)->next == NULL) {
        DeleteThisEntity();
    }
    if (super->action == 0) {
        super->action = 1;
        InitializeAnimation(super, 4);
        CopyPositionAndSpriteOffset(super->parent, super);
        super->y.HALF.HI++;
        super->spriteOffsetY--;
    }
    if ((super->parent)->action < 2) {
        super->spriteSettings.draw = 1;
        if ((super->frame & 1) != 0) {
            super->frame = 0;
            super->frameDuration = (Random() & 0x78) + 0x78;
        }
        GetNextFrame(super);
    } else {
        super->spriteSettings.draw = 0;
    }
}

void (*const BigIceBlock_Actions[])(BigIceBlockEntity*) = {
    BigIceBlock_Init,
    BigIceBlock_Action1,
    BigIceBlock_Action2,
    sub_08099880,
};
const u16 gUnk_081237B0[] = {
    256, 266, 275, 284, 293,
};
