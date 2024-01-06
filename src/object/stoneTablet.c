/**
 * @file stoneTablet.c
 * @ingroup Objects
 *
 * @brief Stone Tablet object
 */
#include "entity.h"
#include "functions.h"
#include "room.h"
#include "tiles.h"

void StoneTablet_Init(Entity*);
void StoneTablet_Action1(Entity*);

void StoneTablet(Entity* this) {
    static void (*const StoneTablet_Actions[])(Entity*) = {
        StoneTablet_Init,
        StoneTablet_Action1,
    };

    StoneTablet_Actions[this->action](this);
}

void StoneTablet_Init(Entity* this) {
    // TODO recreate as TileData[]
    static const u16 gUnk_081232EC[] = {
        SPECIAL_TILE_34, -2, SPECIAL_TILE_34, -1, SPECIAL_TILE_34, 0, SPECIAL_TILE_34, 1, 0xffff,
    };
    static const u16 gUnk_081232FE[] = {
        SPECIAL_TILE_101, -65, SPECIAL_TILE_34, -64, SPECIAL_TILE_102, -63, SPECIAL_TILE_41, -1,
        SPECIAL_TILE_38,  0,   SPECIAL_TILE_42, 1,   0xffff,
    };
    this->action = 1;
    this->spriteSettings.draw = 1;
    if (this->type == 3) {
        this->frameIndex = 0;
        SetMultipleTiles((TileData*)gUnk_081232FE, COORD_TO_TILE(this), this->collisionLayer);
    } else {
        this->frameIndex = this->type;
        SetMultipleTiles((TileData*)gUnk_081232EC, COORD_TO_TILE(this), this->collisionLayer);
    }
}

void StoneTablet_Action1(Entity* this) {
}
