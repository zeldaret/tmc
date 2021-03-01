#include "global.h"
#include "entity.h"
#include "room.h"

void SetTile(u32 tileIndex, s32 tilePosition, s32 layerIndex);
void sub_0808D618(Entity* ent);

extern RoomControls gRoomControls;
extern s16 gUnk_08121750[];
extern s16 gUnk_0812176A[];

void GiantLeaf(Entity* ent) {
    if (ent->action == 0) {
        ent->action = 1;
        ent->spriteSettings.b.draw = 1;
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
    tilePos = (((ent->x.HALF.HI - gRoomControls.roomOriginX) >> 4) & 0x3F) |
              ((((ent->y.HALF.HI - gRoomControls.roomOriginY) >> 4) & 0x3F) * 64);

    for (i = 0; i < 13; i++) {
        SetTile(16500, tilePos + arr[i], 1);
    }
}
