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

void MacroAcorn_Init(Entity*);
void MacroAcorn_Action1(Entity*);
void sub_0809E5F0(Entity*);

void MacroAcorn(Entity* this) {
    static void (*const MacroAcorn_Actions[])(Entity*) = {
        MacroAcorn_Init,
        MacroAcorn_Action1,
    };
    MacroAcorn_Actions[this->action](this);
}

void MacroAcorn_Init(Entity* this) {
    u32 bVar2;
    Entity* pEVar3;

    this->action = 1;
    if (this->type == 0xff) {
        this->frameIndex = this->type2;
    } else {
        bVar2 = (this->type & 1) ? 4 : 0;
        if ((this->type & 2)) {
            if (gEntCount < 0x45) {
                this->frameIndex = bVar2;
                pEVar3 = CreateObject(HUGE_ACORN, 0xff, ++bVar2);
                CopyPosition(this, pEVar3);
                pEVar3 = CreateObject(HUGE_ACORN, 0xff, ++bVar2);
                PositionRelative(this, pEVar3, 0, 0x10000);
                pEVar3->spriteOffsetY = -1;
                pEVar3 = CreateObject(HUGE_ACORN, 0xff, ++bVar2);
                CopyPosition(this, pEVar3);
            } else {
                DeleteThisEntity();
            }
        } else {
            pEVar3 = CreateObject(HUGE_ACORN, 0xff, bVar2 + 1);
            if (pEVar3 == NULL) {
                DeleteThisEntity();
            } else {
                this->frameIndex = bVar2;
                CopyPosition(this, pEVar3);
            }
        }
        sub_0809E5F0(this);
    }

    if ((this->frameIndex & 1) != 0) {
        this->spriteRendering.b3 = 3;
        this->spritePriority.b0 = 7;
    }
}

void MacroAcorn_Action1(Entity* this) {
}

void sub_0809E5F0(Entity* this) {
    u32 position = COORD_TO_TILE(this);
    this->field_0x80.HWORD = position;
    switch (this->type) {
        case 2:
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(3, -1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_109, position + TILE_POS(4, -1), LAYER_BOTTOM);
        case 0:
            SetMetaTile(SPECIAL_META_TILE_108, position + TILE_POS(-2, -1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(-1, -1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(0, -1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(1, -1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(-2, 0), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(-1, 0), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(0, 0), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(1, 0), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_110, position + TILE_POS(-2, 1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(-1, 1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(0, 1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_111, position + TILE_POS(1, 1), LAYER_BOTTOM);
            break;
        case 3:
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(-4, -1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_108, position + TILE_POS(-5, -1), LAYER_BOTTOM);
        case 1:
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(-2, -1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(-1, -1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(0, -1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_109, position + TILE_POS(1, -1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(-2, 0), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(-1, 0), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(0, 0), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(1, 0), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_110, position + TILE_POS(-2, 1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(-1, 1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_34, position + TILE_POS(0, 1), LAYER_BOTTOM);
            SetMetaTile(SPECIAL_META_TILE_111, position + TILE_POS(1, 1), LAYER_BOTTOM);
            break;
    }
}
