/**
 * @file clothesRack.c
 * @ingroup NPCs
 *
 * @brief Clothes Rack NPC
 */
#include "npc.h"
#define NENT_DEPRECATED

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
    SetTile(0x4072, TILE(x - 0x18, y - 0x10), this->collisionLayer);
    SetTile(0x4072, TILE(x - 0x18, y), this->collisionLayer);
    SetTile(0x4072, TILE(x - 0x18, y + 0x10), this->collisionLayer);
    SetTile(0x4072, TILE(x + 0x18, y - 0x10), this->collisionLayer);
    SetTile(0x4072, TILE(x + 0x18, y), this->collisionLayer);
    SetTile(0x4072, TILE(x + 0x18, y + 0x10), this->collisionLayer);
}

void sub_0806DEC8(Entity* this) {
    GetNextFrame(this);
}
