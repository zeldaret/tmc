#include "global.h"
#include "asm.h"
#include "entity.h"
#include "room.h"
#include "player.h"
#include "functions.h"

void sub_080A0EB0(Entity*);
void sub_080A0EF0(Entity*);

void Well(Entity* ent) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080A0EB0,
        sub_080A0EF0,
    };
    actionFuncs[ent->action](ent);
}

void sub_080A0EB0(Entity* ent) {
    u32 tilePos;

    ent->action = 1;
    tilePos = COORD_TO_TILE(ent);
    ent->field_0x80.HWORD = tilePos;
    SetTile(16509, ent->field_0x80.HWORD, 1);
}

void sub_080A0EF0(Entity* ent) {
    s32 tileIndex;

    tileIndex = GetTileType(ent->field_0x80.HWORD, 1);
    if (tileIndex != 0x407D) {
        sub_08078B48();
        gPlayerEntity.x.WORD = ent->x.WORD;
        gPlayerEntity.y.HALF.HI = ent->y.HALF.HI + 4;
        DeleteThisEntity();
    }
}
