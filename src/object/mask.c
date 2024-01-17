/**
 * @file mask.c
 * @ingroup Objects
 *
 * @brief Mask object
 */
#include "functions.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[16];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ u16 unk_7c;
    /*0x7e*/ u16 unk_7e;
    /*0x80*/ u8 unused2[6];
    /*0x86*/ u16 unk_86;
} MaskEntity;

void Mask_Init(MaskEntity* this);
void Mask_Action1(MaskEntity* this);
void Mask_Action2(MaskEntity* this);
void Mask_Delete(MaskEntity* this);

void Mask(MaskEntity* this) {
    static void (*const Mask_Actions[])(MaskEntity*) = {
        Mask_Init,
        Mask_Action1,
        Mask_Action2,
        Mask_Delete,
    };
    Mask_Actions[super->action](this);
}

void Mask_Init(MaskEntity* this) {
    if (super->type2 & 0xC0) {
        if (CheckFlags(this->unk_86)) {
            s32 field_0x0a;

            switch (super->type2 & 0xC0) {
                case 0x40:
                    field_0x0a = gRoomTransition.stairs_idx;

                    switch (field_0x0a) {
                        case 0x44D ... 0x44F:
                        case 0x182:
                            DeleteThisEntity();
                            break;
                        default:
                            ClearFlag(this->unk_86);
                    }

                    break;
                case 0x80:
                    DeleteThisEntity();
                    break;
            }
        }
    }

    super->action = 1;
    super->zVelocity = Q_16_16(1.5);

    this->unk_78 = ((Random() & 7) << 10) | 0x2000;

    super->subtimer = super->timer >> 1;
    super->timer = 0;

    super->frameIndex = super->type2 & 0x3f;

    this->unk_7e = COORD_TO_TILE(super);
    this->unk_7c = GetTileIndex(this->unk_7e, LAYER_BOTTOM);

    this->unk_7a = GetCollisionDataAtTilePos(this->unk_7e, LAYER_BOTTOM);

    SetTile(SPECIAL_TILE_34, this->unk_7e, LAYER_BOTTOM);
}

// Probably related to knocking it down
void Mask_Action1(MaskEntity* this) {
    // Check for the first frame of bonking animation
    if (gPlayerEntity.base.action != PLAYER_BOUNCE) {
        return;
    }

    if (gPlayerEntity.base.animationState != 0) {
        return;
    }

    // Check if link is close enough to the mask
    if (super->y.HALF.HI + 40 < gPlayerEntity.base.y.HALF.HI) {
        return;
    }

    if (super->x.HALF.HI - gPlayerEntity.base.x.HALF.HI >= super->subtimer ||
        super->x.HALF.HI - gPlayerEntity.base.x.HALF.HI <= -super->subtimer) {
        return;
    }

    // Presumably, make the mask fall
    SetTile(this->unk_7c, this->unk_7e, LAYER_BOTTOM);

    SetCollisionData(this->unk_7a, this->unk_7e, 1);

    super->action = 2;

    super->z.HALF.HI -= 0x20;
    super->y.HALF.HI += 0x20;

    super->spriteRendering.b3 = 2;
}

// Probably falling down
void Mask_Action2(MaskEntity* this) {
    if (super->timer == 1) {
        super->action = 3;

        super->timer = 0;
        switch (super->type2 & 0xC0) {
            case 0x80:
                EnqueueSFX(SFX_SECRET);
            case 0x40:
                SetFlag(this->unk_86);
                break;
        }

        CreateFx(super, FX_POT_SHATTER, 0);

        CreateRandomItemDrop(super, 3);
    } else {
        BounceUpdate(super, this->unk_78);

        if (super->z.HALF.HI == 0) {
            super->timer++;
        }
    }
}

void Mask_Delete(MaskEntity* this) {
    DeleteThisEntity();
}
