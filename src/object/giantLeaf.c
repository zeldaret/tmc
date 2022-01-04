#include "object.h"

void sub_0808D618(Entity* ent);

extern s16 gUnk_08121750[];
extern s16 gUnk_0812176A[];

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
    u32 tilePos;
    s16* arr;
    u32 i;

    arr = (ent->type != 0) ? gUnk_0812176A : gUnk_08121750;
    tilePos = (((ent->x.HALF.HI - gRoomControls.origin_x) >> 4) & 0x3F) |
              ((((ent->y.HALF.HI - gRoomControls.origin_y) >> 4) & 0x3F) * 64);

    for (i = 0; i < 13; i++) {
        SetTile(16500, tilePos + arr[i], 1);
    }
}
