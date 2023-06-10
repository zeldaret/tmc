/**
 * @file mask.c
 * @ingroup Objects
 *
 * @brief Mask object
 */
#include "functions.h"
#include "object.h"

void Mask_Init(Entity*);
void Mask_Action1(Entity*);
void Mask_Action2(Entity*);
void Mask_Delete(Entity*);

void Mask(Entity* this) {
    static void (*const Mask_Actions[])(Entity*) = {
        Mask_Init,
        Mask_Action1,
        Mask_Action2,
        Mask_Delete,
    };
    Mask_Actions[this->action](this);
}

void Mask_Init(Entity* this) {
    if (this->type2 & 0xC0) {
        if (CheckFlags(this->field_0x86.HWORD)) {
            s32 field_0x0a;

            switch (this->type2 & 0xC0) {
                case 0x40:
                    field_0x0a = gRoomTransition.stairs_idx;

                    switch (field_0x0a) {
                        case 0x44D ... 0x44F:
                        case 0x182:
                            DeleteThisEntity();
                            break;
                        default:
                            ClearFlag(this->field_0x86.HWORD);
                    }

                    break;
                case 0x80:
                    DeleteThisEntity();
                    break;
            }
        }
    }

    this->action = 1;
    this->zVelocity = Q_16_16(1.5);

    this->field_0x78.HWORD = ((Random() & 7) << 10) | 0x2000;

    this->subtimer = this->timer >> 1;
    this->timer = 0;

    this->frameIndex = this->type2 & 0x3f;

    this->field_0x7c.HALF_U.HI = COORD_TO_TILE(this);
    this->field_0x7c.HALF_U.LO = GetTileIndex(this->field_0x7c.HALF_U.HI, 1);

    this->field_0x7a.HWORD = GetCollisionData((u16)this->field_0x7c.HALF.HI, 1);

    SetTile(0x4022, this->field_0x7c.HALF_U.HI, 1);
}

// Probably related to knocking it down
void Mask_Action1(Entity* this) {
    // Check for the first frame of bonking animation
    if (gPlayerEntity.action != PLAYER_BOUNCE) {
        return;
    }

    if (gPlayerEntity.animationState != 0) {
        return;
    }

    // Check if link is close enough to the mask
    if (this->y.HALF.HI + 40 < gPlayerEntity.y.HALF.HI) {
        return;
    }

    if (this->x.HALF.HI - gPlayerEntity.x.HALF.HI >= this->subtimer ||
        this->x.HALF.HI - gPlayerEntity.x.HALF.HI <= -this->subtimer) {
        return;
    }

    // Presumably, make the mask fall
    SetTile(this->field_0x7c.HALF_U.LO, this->field_0x7c.HALF_U.HI, 1);

    SetCollisionData(this->field_0x7a.HWORD, (u16)this->field_0x7c.HALF.HI, 1);

    this->action = 2;

    this->z.HALF.HI -= 0x20;
    this->y.HALF.HI += 0x20;

    this->spriteRendering.b3 = 2;
}

// Probably falling down
void Mask_Action2(Entity* this) {
    if (this->timer == 1) {
        this->action = 3;

        this->timer = 0;
        switch (this->type2 & 0xC0) {
            case 0x80:
                EnqueueSFX(SFX_SECRET);
            case 0x40:
                SetFlag(this->field_0x86.HWORD);
                break;
        }

        CreateFx(this, FX_POT_SHATTER, 0);

        CreateRandomItemDrop(this, 3);
    } else {
        sub_080044EC(this, this->field_0x78.HWORD);

        if (this->z.HALF.HI == 0) {
            this->timer++;
        }
    }
}

void Mask_Delete(Entity* this) {
    DeleteThisEntity();
}
