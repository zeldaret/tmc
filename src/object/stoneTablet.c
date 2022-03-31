#include "entity.h"
#include "room.h"
#include "functions.h"

void sub_080979CC(Entity*);
void nullsub_529(Entity*);

void StoneTablet(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080979CC,
        nullsub_529,
    };

    actionFuncs[this->action](this);
}

void sub_080979CC(Entity* this) {
    // TODO recreate as TileData[]
    static const u16 gUnk_081232EC[] = { 0x4022, 0xfffe, 0x4022, 0xffff, 0x4022, 0x0, 0x4022, 0x1, 0xffff };
    static const u16 gUnk_081232FE[] = { 0x4065, 0xffbf, 0x4022, 0xffc0, 0x4066, 0xffc1, 0x4029,
                                         0xffff, 0x4026, 0x0,    0x402a, 0x1,    0xffff };
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

void nullsub_529(Entity* this) {
}
