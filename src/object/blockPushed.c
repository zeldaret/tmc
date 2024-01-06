/**
 * @file blockPushed.c
 * @ingroup Objects
 *
 * @brief Block Pushed object
 */
#include "area.h"
#include "functions.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u32 unk_68;
} BlockPushedEntity;

extern void (*const BlockPushed_Actions[])(BlockPushedEntity*);
extern const Hitbox* const gUnk_0811F64C[];

void sub_080832D8(u32, BlockPushedEntity*);
void sub_080830B8(BlockPushedEntity*);

void BlockPushed(BlockPushedEntity* this) {
    BlockPushed_Actions[super->action](this);
}

void BlockPushed_Init(BlockPushedEntity* this) {
    u16 tmp;
    u32 tilePos;

    if (gRoomControls.area == AREA_MINISH_PATHS) {
        UnloadGFXSlots(super);
        if (LoadFixedGFX(super, 449) == 0) {
            super->spriteSettings.draw = 0;
            return;
        }
        super->spriteSettings.draw = 1;
    }
    super->action = 1;
    super->timer = 32;
    super->speed = 0x80;
    super->spritePriority.b0 = 6;
    tilePos = COORD_TO_TILE(super);
    tmp = super->type * 8;
    super->x.HALF.HI += tmp;
    super->y.HALF.HI += tmp;
    super->hitbox = (Hitbox*)gUnk_0811F64C[super->type];
    this->unk_68 = GetTileTypeAtTilePos(tilePos, super->collisionLayer);
    switch (super->type) {
        case 0:
            sub_080832D8(tilePos, this);
            break;
        case 1:
            sub_080832D8(tilePos, this);
            sub_080832D8(tilePos + 1, this);
            sub_080832D8(tilePos + 0x40, this);
            sub_080832D8(tilePos + 0x41, this);
            break;
        case 2:
            sub_080832D8(tilePos, this);
            sub_080832D8(tilePos + 1, this);
            sub_080832D8(tilePos + 2, this);
            sub_080832D8(tilePos + 0x40, this);
            sub_080832D8(tilePos + 0x41, this);
            sub_080832D8(tilePos + 0x42, this);
            sub_080832D8(tilePos + 0x80, this);
            sub_080832D8(tilePos + 0x81, this);
            sub_080832D8(tilePos + 0x82, this);
            break;
        default:
            sub_080832D8(tilePos, this);
            sub_080832D8(tilePos + 1, this);
            sub_080832D8(tilePos + 2, this);
            sub_080832D8(tilePos + 3, this);
            sub_080832D8(tilePos + 0x40, this);
            sub_080832D8(tilePos + 0x41, this);
            sub_080832D8(tilePos + 0x42, this);
            sub_080832D8(tilePos + 0x43, this);
            sub_080832D8(tilePos + 0x80, this);
            sub_080832D8(tilePos + 0x81, this);
            sub_080832D8(tilePos + 0x82, this);
            sub_080832D8(tilePos + 0x83, this);
            sub_080832D8(tilePos + 0xc0, this);
            sub_080832D8(tilePos + 0xc1, this);
            sub_080832D8(tilePos + 0xc2, this);
            sub_080832D8(tilePos + 0xc3, this);
            break;
    }
    EnqueueSFX(SFX_10F);
}

void BlockPushed_Action1(BlockPushedEntity* this) {
    LinearMoveUpdate(super);
    sub_0800445C(super);
    if (--super->timer == 0) {
        sub_080830B8(this);
    }
}

void sub_080830B8(BlockPushedEntity* this) {
    s32 offset = super->type * 8;
    u32 pos = COORD_TO_TILE_OFFSET(super, offset, offset);

    switch (super->type) {
        case 0:
            if (sub_0800442E(super)) {
                return;
            }
            sub_0807B7D8(0x365, pos, super->collisionLayer);
            break;
        case 1:
            sub_0807B7D8(this->unk_68, pos, super->collisionLayer);
            sub_0807B7D8(0x36f, pos + 1, super->collisionLayer);
            sub_0807B7D8(0x370, pos + 0x40, super->collisionLayer);
            sub_0807B7D8(0x371, pos + 0x41, super->collisionLayer);
            break;
        case 2:
            sub_0807B7D8(this->unk_68, pos, super->collisionLayer);
            sub_0807B7D8(0x372, pos + 1, super->collisionLayer);
            sub_0807B7D8(0x36f, pos + 2, super->collisionLayer);
            sub_0807B7D8(0x374, pos + 0x40, super->collisionLayer);
            sub_0807B7D8(0x376, pos + 0x41, super->collisionLayer);
            sub_0807B7D8(0x375, pos + 0x42, super->collisionLayer);
            sub_0807B7D8(0x370, pos + 0x80, super->collisionLayer);
            sub_0807B7D8(0x373, pos + 0x81, super->collisionLayer);
            sub_0807B7D8(0x371, pos + 0x82, super->collisionLayer);
            break;
        default:
            sub_0807B7D8(this->unk_68, pos, super->collisionLayer);
            sub_0807B7D8(0x372, pos + 1, super->collisionLayer);
            sub_0807B7D8(0x372, pos + 2, super->collisionLayer);
            sub_0807B7D8(0x36f, pos + 3, super->collisionLayer);
            sub_0807B7D8(0x374, pos + 0x40, super->collisionLayer);
            sub_0807B7D8(0x376, pos + 0x41, super->collisionLayer);
            sub_0807B7D8(0x376, pos + 0x42, super->collisionLayer);
            sub_0807B7D8(0x375, pos + 0x43, super->collisionLayer);
            sub_0807B7D8(0x374, pos + 0x80, super->collisionLayer);
            sub_0807B7D8(0x376, pos + 0x81, super->collisionLayer);
            sub_0807B7D8(0x376, pos + 0x82, super->collisionLayer);
            sub_0807B7D8(0x375, pos + 0x83, super->collisionLayer);
            sub_0807B7D8(0x370, pos + 0xc0, super->collisionLayer);
            sub_0807B7D8(0x373, pos + 0xc1, super->collisionLayer);
            sub_0807B7D8(0x373, pos + 0xc2, super->collisionLayer);
            sub_0807B7D8(0x371, pos + 0xc3, super->collisionLayer);
            break;
    }
    DeleteEntity(super);
}

void sub_080832D8(u32 tilePos, BlockPushedEntity* this) {
    if (super->collisionLayer != 2) {
        if ((super->direction & 8) != 0) {
            sub_0807B7D8(TILE_TYPE_33, tilePos, super->collisionLayer);
        } else {
            sub_0807B7D8(TILE_TYPE_32, tilePos, super->collisionLayer);
        }
    } else {
        if ((super->direction & 8) != 0) {
            sub_0807B7D8(TILE_TYPE_47, tilePos, super->collisionLayer);
        } else {
            sub_0807B7D8(TILE_TYPE_46, tilePos, super->collisionLayer);
        }
    }
}

void (*const BlockPushed_Actions[])(BlockPushedEntity*) = {
    BlockPushed_Init,
    BlockPushed_Action1,
};
const Hitbox gUnk_0811F62C = { 0, 0, { 0, 0, 0, 0 }, 5, 4 };
const Hitbox gUnk_0811F634 = { 0, 0, { 0, 0, 0, 0 }, 13, 12 };
const Hitbox gUnk_0811F63C = { 0, 0, { 0, 0, 0, 0 }, 21, 20 };
const Hitbox gUnk_0811F644 = { 0, 0, { 0, 0, 0, 0 }, 29, 28 };

const Hitbox* const gUnk_0811F64C[] = {
    &gUnk_0811F62C,
    &gUnk_0811F634,
    &gUnk_0811F63C,
    &gUnk_0811F644,
};
