/**
 * @file object68.c
 * @ingroup Objects
 *
 * @brief Object68 object
 * Handles effects of using water, mineral water or a fairy in a bottle in PlayerItemBottle_UseOther.
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "item.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
} Object68Entity;

extern u32 sub_080B1A0C(Entity*, s32, s32);

void sub_08094774(Object68Entity*);
void sub_080948D0(Object68Entity*);
void sub_080948E8(Object68Entity*);
void sub_08094980(Object68Entity*, u32, u32);

void Object68(Object68Entity* this) {
    static void (*const gUnk_08122A10[])(Object68Entity*) = {
        sub_08094774,
        sub_080948D0,
    };
    gUnk_08122A10[super->action](this);
}

void sub_08094774(Object68Entity* this) {
    static const s8 gUnk_08122A18[] = { 0, -8, 8, 1, 2, 8, -8, 1 };
    Entity* effect;
    Entity* child;
    super->action = 1;
    switch (super->type) {
        case 0:
            effect = CreateFx(super, FX_WATER_SPLASH, 0);
            super->child = effect;
            if (effect != NULL) {
                PositionRelative(&gPlayerEntity, effect, gUnk_08122A18[gPlayerEntity.animationState & 6] << 0x10,
                                 gUnk_08122A18[gPlayerEntity.animationState | 1] << 0x10);
            }
            CopyPosition(super->child, super);
            sub_08094980(this, 0x4032, 0x4033);
            sub_08094980(this, 0x4061, 0x4022);
            break;
        case 1:
            effect = CreateFx(super, FX_GREEN_SPLASH2, 0);
            super->child = effect;
            if (effect != NULL) {
                PositionRelative(&gPlayerEntity, effect, gUnk_08122A18[gPlayerEntity.animationState & 6] << 0x10,
                                 gUnk_08122A18[gPlayerEntity.animationState | 1] << 0x10);
            }
            if (super->type2 == 0) {
                CopyPosition(super->child, super);
                super->actionDelay = 0;
                super->spritePriority.b0 = 0;
                super->spriteRendering.b3 = 0;
                sub_08094980(this, 0x403b, 0x403c);
                sub_08094980(this, 0x4061, 0x4022);
                return;
            }
            break;
        case 2:
            child = CreateGroundItem(&gPlayerEntity, ITEM_FAIRY, 0);
            super->child = child;
            if (child != NULL) {
                child->actionDelay = 1;
            }
            break;
        case 3 ... 8:
            break;
    }
    DeleteThisEntity();
}

void sub_080948D0(Object68Entity* this) {
    static void (*const gUnk_08122A20[])(Object68Entity*) = {
        NULL,
        sub_080948E8,
    };
    gUnk_08122A20[super->type](this);
}

void sub_080948E8(Object68Entity* this) {
    if (super->actionDelay < 0x3c) {
        super->z.WORD -= 0x4000;
        if ((super->actionDelay & 3) == 0) {
            super->child = CreateFx(super, FX_DASH, 0x40);
            if (super->child != NULL) {
                super->child->spriteRendering.b3 = super->spriteRendering.b3;
                super->child->spritePriority.b0 = super->spritePriority.b0;
                if ((Random() & 1) != 0) {
                    super->child->x.HALF.HI += (Random() & 0xf);
                } else {
                    super->child->x.HALF.HI -= (Random() & 0xf);
                }
            }
        }
        super->actionDelay++;
    } else {
        DeleteThisEntity();
    }
}

void sub_08094980(Object68Entity* this, u32 searchTileIndex, u32 replaceTileIndex) {
    static const s8 gUnk_08122A28[] = {
        0, 0, -8, 0, 8, 0, 0, 8, 0, -8, 0, 0,
    };
    s32 xOffset;
    s32 yOffset;
    u32 index = 0;
    while (index < 10) {
        xOffset = gUnk_08122A28[index];
        yOffset = gUnk_08122A28[index + 1];
        if (searchTileIndex == sub_080B1A0C(super, xOffset, yOffset)) {
            SetTile(replaceTileIndex, TILE(super->x.HALF.HI + xOffset, super->y.HALF.HI + yOffset),
                    super->collisionLayer);
        }
        index += 2;
    }
}
