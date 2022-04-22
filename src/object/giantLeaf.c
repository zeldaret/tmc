#include "object.h"

void sub_0808D618(Entity* ent);

void GiantLeaf(Entity* ent) {
    if (ent->action == 0) {
        ent->action = 1;
        ent->spriteSettings.draw = 1;
        ent->spriteRendering.b3 = 3;
        ent->spritePriority.b0 = 7;
        ent->frameIndex = ent->type;
        sub_0808D618(ent);
    }
}

void sub_0808D618(Entity* ent) {
    static const s16 gUnk_08121750[] = {
        0x41, 0x40, 0x3f, 0x3e, 0x1, 0x0, -0x1, -0x2, -0x3e, -0x3f, -0x40, -0x41, -0x7e,
    };
    static const s16 gUnk_0812176A[] = {
        0x3f, 0x40, 0x41, 0x42, -0x1, 0x0, 0x1, 0x2, -0x42, -0x41, -0x40, -0x3f, -0x82,
    };
    u32 tilePos;
    const s16* arr;
    u32 i;

    arr = (ent->type != 0) ? gUnk_0812176A : gUnk_08121750;
    tilePos = (((ent->x.HALF.HI - gRoomControls.origin_x) >> 4) & 0x3F) |
              ((((ent->y.HALF.HI - gRoomControls.origin_y) >> 4) & 0x3F) * 64);

    for (i = 0; i < 13; i++) {
        SetTile(16500, tilePos + arr[i], 1);
    }
}
