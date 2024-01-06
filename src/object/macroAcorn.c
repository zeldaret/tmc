/**
 * @file macroAcorn.c
 * @ingroup Objects
 *
 * @brief Macro Acorn object
 */
#include "entity.h"
#include "map.h"
#include "object.h"
#include "physics.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[24];
    /*0x80*/ u16 unk_80;
} MacroAcornEntity;

void MacroAcorn_Init(MacroAcornEntity* this);
void MacroAcorn_Action1(MacroAcornEntity* this);
void sub_0809E5F0(MacroAcornEntity* this);

void MacroAcorn(MacroAcornEntity* this) {
    static void (*const MacroAcorn_Actions[])(MacroAcornEntity*) = {
        MacroAcorn_Init,
        MacroAcorn_Action1,
    };
    MacroAcorn_Actions[super->action](this);
}

void MacroAcorn_Init(MacroAcornEntity* this) {
    u32 bVar2;
    Entity* pEVar3;

    super->action = 1;
    if (super->type == 0xff) {
        super->frameIndex = super->type2;
    } else {
        bVar2 = (super->type & 1) ? 4 : 0;
        if ((super->type & 2)) {
            if (gEntCount < 0x45) {
                super->frameIndex = bVar2;
                pEVar3 = CreateObject(HUGE_ACORN, 0xff, ++bVar2);
                CopyPosition(super, pEVar3);
                pEVar3 = CreateObject(HUGE_ACORN, 0xff, ++bVar2);
                PositionRelative(super, pEVar3, 0, 0x10000);
                pEVar3->spriteOffsetY = -1;
                pEVar3 = CreateObject(HUGE_ACORN, 0xff, ++bVar2);
                CopyPosition(super, pEVar3);
            } else {
                DeleteThisEntity();
            }
        } else {
            pEVar3 = CreateObject(HUGE_ACORN, 0xff, bVar2 + 1);
            if (pEVar3 == NULL) {
                DeleteThisEntity();
            } else {
                super->frameIndex = bVar2;
                CopyPosition(super, pEVar3);
            }
        }
        sub_0809E5F0(this);
    }

    if ((super->frameIndex & 1) != 0) {
        super->spriteRendering.b3 = 3;
        super->spritePriority.b0 = 7;
    }
}

void MacroAcorn_Action1(MacroAcornEntity* this) {
}

void sub_0809E5F0(MacroAcornEntity* this) {
    u32 position = COORD_TO_TILE(super);
    this->unk_80 = position;
    switch (super->type) {
        case 2:
            SetTile(SPECIAL_TILE_34, position + TILE_POS(3, -1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_109, position + TILE_POS(4, -1), LAYER_BOTTOM);
        case 0:
            SetTile(SPECIAL_TILE_108, position + TILE_POS(-2, -1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(-1, -1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(0, -1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(1, -1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(-2, 0), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(-1, 0), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(0, 0), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(1, 0), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_110, position + TILE_POS(-2, 1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(-1, 1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(0, 1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_111, position + TILE_POS(1, 1), LAYER_BOTTOM);
            break;
        case 3:
            SetTile(SPECIAL_TILE_34, position + TILE_POS(-4, -1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_108, position + TILE_POS(-5, -1), LAYER_BOTTOM);
        case 1:
            SetTile(SPECIAL_TILE_34, position + TILE_POS(-2, -1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(-1, -1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(0, -1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_109, position + TILE_POS(1, -1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(-2, 0), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(-1, 0), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(0, 0), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(1, 0), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_110, position + TILE_POS(-2, 1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(-1, 1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, position + TILE_POS(0, 1), LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_111, position + TILE_POS(1, 1), LAYER_BOTTOM);
            break;
    }
}
