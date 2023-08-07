/**
 * @file bigIceBlock.c
 * @ingroup Objects
 *
 * @brief Big Ice Block object
 */
#define NENT_DEPRECATED
#include "functions.h"
#include "hitbox.h"
#include "item.h"
#include "object.h"

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
    super->flags2 = 0x80;
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
    s32 iVar1;
    u32 uVar3;
    u32 position;

    position = COORD_TO_TILE(super);
    this->unk_6e = position;
    uVar2 = (((super->x.HALF.HI & 8)) >> 0x3) + ((super->y.HALF.HI & 8) >> 2);
    this->unk_6c = uVar2;

    switch (uVar2) {
        default:
            SetTile(0x4022, position - 0x41, super->collisionLayer);
            SetTile(0x4022, position - 0x40, super->collisionLayer);
            SetTile(0x4022, position - 1, super->collisionLayer);
            SetTile(0x4022, position, super->collisionLayer);
            break;
        case 1:
            iVar1 = sub_080B1AE0(position - 0x41, super->collisionLayer);
            uVar3 = 0x4024;
            if (iVar1 == 0x12) {
                uVar3 = 0x4079;
            }
            SetTile(uVar3, position - 0x41, super->collisionLayer);
            SetTile(0x4022, position - 0x40, super->collisionLayer);
            iVar1 = sub_080B1AE0(position - 0x3f, super->collisionLayer);
            uVar3 = 0x4025;
            if (iVar1 == 0x12) {
                uVar3 = 0x407b;
            }
            SetTile(uVar3, position - 0x3f, super->collisionLayer);
            iVar1 = sub_080B1AE0(position - 1, super->collisionLayer);
            uVar3 = 0x4024;
            if (iVar1 == 0x12) {
                uVar3 = 0x4079;
            }
            SetTile(uVar3, position - 1, super->collisionLayer);
            SetTile(0x4022, position, super->collisionLayer);
            iVar1 = sub_080B1AE0(position + 1, super->collisionLayer);
            uVar3 = 0x4025;
            if (iVar1 == 0x12) {
                uVar3 = 0x407b;
            }
            SetTile(uVar3, position + 1, super->collisionLayer);
            return;
            break;
        case 2:
            iVar1 = sub_080B1AE0(position - 0x41, super->collisionLayer);
            uVar3 = 0x4023;
            if (iVar1 == 0x12) {
                uVar3 = 0x4077;
            }
            SetTile(uVar3, position - 0x41, super->collisionLayer);
            iVar1 = sub_080B1AE0(position - 0x40, super->collisionLayer);
            uVar3 = 0x4023;
            if (iVar1 == 0x12) {
                uVar3 = 0x4077;
            }
            SetTile(uVar3, position - 0x40, super->collisionLayer);
            SetTile(0x4022, position - 1, super->collisionLayer);
            SetTile(0x4022, position, super->collisionLayer);
            iVar1 = sub_080B1AE0(position + 0x3f, super->collisionLayer);
            uVar3 = 0x4026;
            if (iVar1 == 0x12) {
                uVar3 = 0x407c;
            }
            SetTile(uVar3, position + 0x3f, super->collisionLayer);
            iVar1 = sub_080B1AE0(position + 0x40, super->collisionLayer);
            uVar3 = 0x4026;
            if (iVar1 == 0x12) {
                uVar3 = 0x407c;
            }
            SetTile(uVar3, position + 0x40, super->collisionLayer);
            break;
        case 3:
            iVar1 = sub_080B1AE0(position - 0x41, super->collisionLayer);
            uVar3 = 0x4027;
            if (iVar1 == 0x12) {
                uVar3 = 0x4075;
            }
            SetTile(uVar3, position - 0x41, super->collisionLayer);
            iVar1 = sub_080B1AE0(position - 0x40, super->collisionLayer);
            uVar3 = 0x4023;
            if (iVar1 == 0x12) {
                uVar3 = 0x4077;
            }
            SetTile(uVar3, position - 0x40, super->collisionLayer);
            iVar1 = sub_080B1AE0(position - 0x3f, super->collisionLayer);
            uVar3 = 0x4028;
            if (iVar1 == 0x12) {
                uVar3 = 0x4076;
            }
            SetTile(uVar3, position - 0x3f, super->collisionLayer);
            iVar1 = sub_080B1AE0(position - 1, super->collisionLayer);
            uVar3 = 0x4024;
            if (iVar1 == 0x12) {
                uVar3 = 0x4079;
            }
            SetTile(uVar3, position - 1, super->collisionLayer);
            SetTile(0x4022, position, super->collisionLayer);
            iVar1 = sub_080B1AE0(position + 1, super->collisionLayer);
            uVar3 = 0x4025;
            if (iVar1 == 0x12) {
                uVar3 = 0x407b;
            }
            SetTile(uVar3, position + 1, super->collisionLayer);
            iVar1 = sub_080B1AE0(position + 0x3f, super->collisionLayer);
            uVar3 = 0x4029;
            if (iVar1 == 0x12) {
                uVar3 = 0x4078;
            }
            SetTile(uVar3, position + 0x3f, super->collisionLayer);
            iVar1 = sub_080B1AE0(position + 0x40, super->collisionLayer);
            uVar3 = 0x4026;
            if (iVar1 == 0x12) {
                uVar3 = 0x407c;
            }
            SetTile(uVar3, position + 0x40, super->collisionLayer);
            iVar1 = sub_080B1AE0(position + 0x41, super->collisionLayer);
            uVar3 = 0x402a;
            if (iVar1 == 0x12) {
                uVar3 = 0x407a;
            }
            SetTile(uVar3, position + 0x41, super->collisionLayer);
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
