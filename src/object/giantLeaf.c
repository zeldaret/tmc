/**
 * @file giantLeaf.c
 * @ingroup Objects
 *
 * @brief Giant Leaf object
 */
#include "map.h"
#include "object.h"

void sub_0808D618(Entity* this);

void GiantLeaf(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->spriteRendering.b3 = 3;
        this->spritePriority.b0 = 7;
        this->frameIndex = this->type;
        sub_0808D618(this);
    }
}

void sub_0808D618(Entity* this) {
    static const s16 gUnk_08121750[] = {
        0x41, 0x40, 0x3f, 0x3e, 0x1, 0x0, -0x1, -0x2, -0x3e, -0x3f, -0x40, -0x41, -0x7e,
    };
    static const s16 gUnk_0812176A[] = {
        0x3f, 0x40, 0x41, 0x42, -0x1, 0x0, 0x1, 0x2, -0x42, -0x41, -0x40, -0x3f, -0x82,
    };
    u32 tilePos;
    const s16* arr;
    u32 i;

    arr = (this->type != 0) ? gUnk_0812176A : gUnk_08121750;
    tilePos = (((this->x.HALF.HI - gRoomControls.origin_x) >> 4) & 0x3F) |
              ((((this->y.HALF.HI - gRoomControls.origin_y) >> 4) & 0x3F) * 64);

    for (i = 0; i < 13; i++) {
        SetTile(16500, tilePos + arr[i], LAYER_BOTTOM);
    }
}
