/**
 * @file well.c
 * @ingroup Objects
 *
 * @brief Well object
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "global.h"
#include "player.h"
#include "room.h"

void Well_Init(Entity*);
void Well_Action1(Entity*);

void Well(Entity* this) {
    static void (*const Well_Actions[])(Entity*) = {
        Well_Init,
        Well_Action1,
    };
    Well_Actions[this->action](this);
}

void Well_Init(Entity* this) {
    u32 tilePos;

    this->action = 1;
    tilePos = COORD_TO_TILE(this);
    this->field_0x80.HWORD = tilePos;
    SetTile(0x407d, this->field_0x80.HWORD, 1);
}

void Well_Action1(Entity* this) {
    s32 tileIndex;

    tileIndex = GetTileType(this->field_0x80.HWORD, 1);
    if (tileIndex != 0x407d) {
        sub_08078B48();
        gPlayerEntity.x.WORD = this->x.WORD;
        gPlayerEntity.y.HALF.HI = this->y.HALF.HI + 4;
        DeleteThisEntity();
    }
}
