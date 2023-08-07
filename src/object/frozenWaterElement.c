/**
 * @file frozenWaterElement.c
 * @ingroup Objects
 *
 * @brief Frozen Water Element object
 */
#define NENT_DEPRECATED
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0xc];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u8 unk_76[0xa];
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
} FrozenWaterElementEntity;

void sub_0809C0A8(FrozenWaterElementEntity*);
void sub_0809C23C(FrozenWaterElementEntity*);
void FrozenWaterElement_Init(FrozenWaterElementEntity*);
void FrozenWaterElement_Action1(FrozenWaterElementEntity*);
void FrozenWaterElement_Action2(FrozenWaterElementEntity*);

void FrozenWaterElement(FrozenWaterElementEntity* this) {
    static void (*const FrozenWaterElement_Actions[])(FrozenWaterElementEntity*) = {
        FrozenWaterElement_Init,
        FrozenWaterElement_Action1,
        FrozenWaterElement_Action2,
    };
    FrozenWaterElement_Actions[super->action](this);
}

void FrozenWaterElement_Init(FrozenWaterElementEntity* this) {
    Entity* obj;
    if (CheckFlags(0x9b)) {
        DeleteThisEntity();
    }
    obj = CreateObject(FROZEN_OCTOROK, 0, 0);
    super->child = obj;
    if (obj != NULL) {
        super->action = 1;
        super->updatePriority = 3;
        super->frameIndex = 0;
        super->spriteRendering.b0 = 3;
        sub_0809C0A8(this);
        SetAffineInfo(super, 0xcc, 0xcc, 0);
    }
}

void FrozenWaterElement_Action1(FrozenWaterElementEntity* this) {
    SetAffineInfo(super, 0xcc, 0xcc, 0);
    if (CheckFlags(OUGONTEKI_G)) {
        Entity* obj = CreateObject(WATER_ELEMENT, 0, 0);
        if (obj != NULL) {
            gRoomControls.camera_target = obj;
            (super->child)->child = obj;
            PositionRelative(super, obj, 0, 0x40000);
            super->action = 2;
            this->unk_74 = 0x140;
            EnqueueSFX(SFX_ICE_BLOCK_MELT);
        }
    }
}

void FrozenWaterElement_Action2(FrozenWaterElementEntity* this) {
    static const u8 gUnk_08123DC0[] = {
        3, 7, 15, 31, 63, 63, 63, 63, 63, 63, 63, 0,
    };
    s32 rand;
    u32 value;
    Entity* effect;
    s32 tmp;
    s32 tmp2;

    if (--this->unk_74 == 0) {
        (super->child)->subtimer = 1;
        sub_0809C23C(this);
        CheckFlags(0x9b);
        DeleteThisEntity();
    } else {
        if ((this->unk_74 & 0x1f) == 0) {
            EnqueueSFX(SFX_ICE_BLOCK_MELT);
        }
        if (this->unk_74 < 0x78) {
            tmp2 = ((0x78 - this->unk_74) << 5);
            tmp2 += 0xcc;
            SetAffineInfo(super, ((0x78 - this->unk_74) << 4) + 0xcc, tmp2, 0);
            sub_0806FCF4(super, tmp2, 8, 0);
            super->spriteOffsetY += 8;
        }
        value = gUnk_08123DC0[this->unk_74 >> 5];
        effect = CreateObject(SPECIAL_FX, FX_DASH, 0x40);
        if (effect != NULL) {
            rand = Random();
            tmp = (((rand >> 0x10) & value) - ((value + 1) >> 1));
            tmp2 = (((value >> 1) & rand) - ((value + 1) >> 2));
            effect->spritePriority.b0 = 3;
            effect->x.HALF.HI = this->unk_80 + gRoomControls.origin_x + tmp;
            effect->y.HALF.HI = this->unk_82 + gRoomControls.origin_y + tmp2;
        }
        effect = CreateObject(SPECIAL_FX, FX_DEATH, 0x40);
        if (effect != NULL) {
            rand = Random();
            tmp = (((rand >> 0x10) & value) - ((value + 1) >> 1));
            tmp2 = ((value >> 1) & rand);
            effect->spritePriority.b0 = 3;
            effect->x.HALF.HI = this->unk_80 + gRoomControls.origin_x + tmp;
            effect->y.HALF.HI = this->unk_82 + gRoomControls.origin_y + tmp2;
        }
    }
}

void sub_0809C0A8(FrozenWaterElementEntity* this) {
    u32 position = COORD_TO_TILE(super);
    SetTile(0x4022, position - 0x41, super->collisionLayer);
    SetTile(0x4022, position - 0x40, super->collisionLayer);
    SetTile(0x4022, position - 0x3f, super->collisionLayer);
    SetTile(0x4022, position - 2, super->collisionLayer);
    SetTile(0x4022, position - 1, super->collisionLayer);
    SetTile(0x4022, position, super->collisionLayer);
    SetTile(0x4022, position + 1, super->collisionLayer);
    SetTile(0x4022, position + 2, super->collisionLayer);
    SetTile(0x4022, position + 0x3e, super->collisionLayer);
    SetTile(0x4022, position + 0x3f, super->collisionLayer);
    SetTile(0x4022, position + 0x40, super->collisionLayer);
    SetTile(0x4022, position + 0x41, super->collisionLayer);
    SetTile(0x4022, position + 0x42, super->collisionLayer);
    SetTile(0x4022, position + 0x7f, super->collisionLayer);
    SetTile(0x4022, position + 0x80, super->collisionLayer);
    SetTile(0x4022, position + 0x81, super->collisionLayer);
    SetTile(0x4022, position + 0x13f, super->collisionLayer);
    SetTile(0x4022, position + 0x140, super->collisionLayer);
    SetTile(0x4022, position + 0x141, super->collisionLayer);
    SetTile(0x4022, position + 0x17f, super->collisionLayer);
    SetTile(0x4022, position + 0x181, super->collisionLayer);
    SetTile(0x4022, position + 0x1bd, super->collisionLayer);
    SetTile(0x4022, position + 0x1be, super->collisionLayer);
    SetTile(0x4022, position + 0x1bf, super->collisionLayer);
    SetTile(0x4022, position + 0x1c1, super->collisionLayer);
    SetTile(0x4022, position + 0x1c2, super->collisionLayer);
    SetTile(0x4022, position + 0x1c3, super->collisionLayer);
}

void sub_0809C23C(FrozenWaterElementEntity* this) {
    u32 position = COORD_TO_TILE(super);
    RestorePrevTileEntity(position - 0x41, super->collisionLayer);
    RestorePrevTileEntity(position - 0x40, super->collisionLayer);
    RestorePrevTileEntity(position - 0x3f, super->collisionLayer);
    RestorePrevTileEntity(position - 2, super->collisionLayer);
    RestorePrevTileEntity(position - 1, super->collisionLayer);
    RestorePrevTileEntity(position, super->collisionLayer);
    RestorePrevTileEntity(position + 1, super->collisionLayer);
    RestorePrevTileEntity(position + 2, super->collisionLayer);
    RestorePrevTileEntity(position + 0x3e, super->collisionLayer);
    RestorePrevTileEntity(position + 0x3f, super->collisionLayer);
    RestorePrevTileEntity(position + 0x40, super->collisionLayer);
    RestorePrevTileEntity(position + 0x41, super->collisionLayer);
    RestorePrevTileEntity(position + 0x42, super->collisionLayer);
    RestorePrevTileEntity(position + 0x7f, super->collisionLayer);
    RestorePrevTileEntity(position + 0x80, super->collisionLayer);
    RestorePrevTileEntity(position + 0x81, super->collisionLayer);
    RestorePrevTileEntity(position + 0x13f, super->collisionLayer);
    RestorePrevTileEntity(position + 0x140, super->collisionLayer);
    RestorePrevTileEntity(position + 0x141, super->collisionLayer);
    RestorePrevTileEntity(position + 0x17f, super->collisionLayer);
    RestorePrevTileEntity(position + 0x181, super->collisionLayer);
    RestorePrevTileEntity(position + 0x1bd, super->collisionLayer);
    RestorePrevTileEntity(position + 0x1be, super->collisionLayer);
    RestorePrevTileEntity(position + 0x1bf, super->collisionLayer);
    RestorePrevTileEntity(position + 0x1c1, super->collisionLayer);
    RestorePrevTileEntity(position + 0x1c2, super->collisionLayer);
    RestorePrevTileEntity(position + 0x1c3, super->collisionLayer);
}
