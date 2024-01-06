/**
 * @file linkEmptyingBottle.c
 * @ingroup Objects
 *
 * @brief Link Emptying Bottle object
 * Handles effects of using water, mineral water or a fairy in a bottle in PlayerItemBottle_UseOther.
 */
#include "functions.h"
#include "item.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
} LinkEmptyingBottleEntity;

extern u32 GetTileTypeRelativeToEntity(Entity*, s32, s32);

void LinkEmptyingBottle_Init(LinkEmptyingBottleEntity*);
void LinkEmptyingBottle_Action1(LinkEmptyingBottleEntity*);
void sub_080948E8(LinkEmptyingBottleEntity*);
void sub_08094980(LinkEmptyingBottleEntity*, u32, u32);

void LinkEmptyingBottle(LinkEmptyingBottleEntity* this) {
    static void (*const LinkEmptyingBottle_Actions[])(LinkEmptyingBottleEntity*) = {
        LinkEmptyingBottle_Init,
        LinkEmptyingBottle_Action1,
    };
    LinkEmptyingBottle_Actions[super->action](this);
}

void LinkEmptyingBottle_Init(LinkEmptyingBottleEntity* this) {
    static const s8 gUnk_08122A18[] = { 0, -8, 8, 1, 2, 8, -8, 1 };
    Entity* effect;
    Entity* child;
    super->action = 1;
    switch (super->type) {
        case 0:
            effect = CreateFx(super, FX_WATER_SPLASH, 0);
            super->child = effect;
            if (effect != NULL) {
                PositionRelative(&gPlayerEntity.base, effect,
                                 gUnk_08122A18[gPlayerEntity.base.animationState & 6] << 0x10,
                                 gUnk_08122A18[gPlayerEntity.base.animationState | 1] << 0x10);
            }
            CopyPosition(super->child, super);
            sub_08094980(this, SPECIAL_TILE_50, SPECIAL_TILE_51);
            sub_08094980(this, SPECIAL_TILE_97, SPECIAL_TILE_34);
            break;
        case 1:
            effect = CreateFx(super, FX_GREEN_SPLASH2, 0);
            super->child = effect;
            if (effect != NULL) {
                PositionRelative(&gPlayerEntity.base, effect,
                                 gUnk_08122A18[gPlayerEntity.base.animationState & 6] << 0x10,
                                 gUnk_08122A18[gPlayerEntity.base.animationState | 1] << 0x10);
            }
            if (super->type2 == 0) {
                CopyPosition(super->child, super);
                super->timer = 0;
                super->spritePriority.b0 = 0;
                super->spriteRendering.b3 = 0;
                sub_08094980(this, SPECIAL_TILE_59, SPECIAL_TILE_60);
                sub_08094980(this, SPECIAL_TILE_97, SPECIAL_TILE_34);
                return;
            }
            break;
        case 2:
            child = CreateGroundItem(&gPlayerEntity.base, ITEM_FAIRY, 0);
            super->child = child;
            if (child != NULL) {
                child->timer = 1;
            }
            break;
        case 3 ... 8:
            break;
    }
    DeleteThisEntity();
}

void LinkEmptyingBottle_Action1(LinkEmptyingBottleEntity* this) {
    static void (*const gUnk_08122A20[])(LinkEmptyingBottleEntity*) = {
        NULL,
        sub_080948E8,
    };
    gUnk_08122A20[super->type](this);
}

void sub_080948E8(LinkEmptyingBottleEntity* this) {
    if (super->timer < 0x3c) {
        super->z.WORD -= Q_16_16(0.25);
        if ((super->timer & 3) == 0) {
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
        super->timer++;
    } else {
        DeleteThisEntity();
    }
}

void sub_08094980(LinkEmptyingBottleEntity* this, u32 searchTileIndex, u32 replaceTileIndex) {
    static const s8 gUnk_08122A28[] = {
        0, 0, -8, 0, 8, 0, 0, 8, 0, -8, 0, 0,
    };
    s32 xOffset;
    s32 yOffset;
    u32 index = 0;
    while (index < 10) {
        xOffset = gUnk_08122A28[index];
        yOffset = gUnk_08122A28[index + 1];
        if (searchTileIndex == GetTileTypeRelativeToEntity(super, xOffset, yOffset)) {
            SetTile(replaceTileIndex, TILE(super->x.HALF.HI + xOffset, super->y.HALF.HI + yOffset),
                    super->collisionLayer);
        }
        index += 2;
    }
}
