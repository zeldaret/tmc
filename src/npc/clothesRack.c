/**
 * @file clothesRack.c
 * @ingroup NPCs
 *
 * @brief Clothes Rack NPC
 */
#include "npc.h"
#include "tiles.h"

void sub_0806DD90(Entity*);
void sub_0806DEC8(Entity*);

void ClothesRack(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0806DD90,
        sub_0806DEC8,
    };
    actionFuncs[this->action](this);
}

void sub_0806DD90(Entity* this) {
    u32 animIndex;
    u32 x;
    u32 y;

    this->action = 1;
    animIndex = 0;
    if (CheckGlobalFlag(DRUG_1)) {
        animIndex = 1;
    }
    if (CheckGlobalFlag(DRUG_2)) {
        animIndex = 2;
    }
    if (CheckGlobalFlag(DRUG_3)) {
        animIndex = 3;
    }
    InitializeAnimation(this, animIndex);
    x = this->x.HALF.HI;
    y = this->y.HALF.HI;
    SetTile(SPECIAL_TILE_114, TILE(x - 24, y - 16), this->collisionLayer);
    SetTile(SPECIAL_TILE_114, TILE(x - 24, y), this->collisionLayer);
    SetTile(SPECIAL_TILE_114, TILE(x - 24, y + 16), this->collisionLayer);
    SetTile(SPECIAL_TILE_114, TILE(x + 24, y - 16), this->collisionLayer);
    SetTile(SPECIAL_TILE_114, TILE(x + 24, y), this->collisionLayer);
    SetTile(SPECIAL_TILE_114, TILE(x + 24, y + 16), this->collisionLayer);
}

void sub_0806DEC8(Entity* this) {
    GetNextFrame(this);
}
