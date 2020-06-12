#include "global.h"
#include "entity.h"
#include "room.h"

void SetTile(u32 tileIndex, s32 tilePosition, s32 layerIndex);
s32 GetTileType(s32 tilePosition, s32 layerIndex);
void sub_08078B48();
void sub_0805E780();

extern Entity gLinkEntity;
extern RoomControls gRoomControls;
extern void (*gUnk_08124C08[])(Entity *);

void sub_080A0E98(Entity* ent)
{
    gUnk_08124C08[ent->action](ent);
}

void sub_080A0EB0(Entity* ent)
{
    u32 tilePos;

    ent->action = 1;
    tilePos = (((ent->x.HALF.HI - gRoomControls.roomOriginX) >> 4) & 0x3F) | ((((ent->y.HALF.HI - gRoomControls.roomOriginY) >> 4) & 0x3F) * 64);
    ent->field_0x80 = tilePos;
    SetTile(16509, ent->field_0x80, 1);
}

void sub_080A0EF0(Entity* ent)
{
    s32 tileIndex;
  
    tileIndex = GetTileType(ent->field_0x80, 1);
    if (tileIndex != 16509)
    {
        sub_08078B48();
        gLinkEntity.x.WORD = ent->x.WORD;
        gLinkEntity.y.HALF.HI = ent->y.HALF.HI + 4;
        sub_0805E780();
    }
}
