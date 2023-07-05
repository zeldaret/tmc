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
    u32 uVar1;
    u32 uVar2;
    u32 x;
    u32 y;

    this->action = 1;
    uVar2 = 0;
    if (CheckGlobalFlag(DRUG_1)) {
        uVar2 = 1;
    }
    if (CheckGlobalFlag(DRUG_2) != 0) {
        uVar2 = 2;
    }
    if (CheckGlobalFlag(DRUG_3) != 0) {
        uVar2 = 3;
    }
    InitializeAnimation(this, uVar2);
    x = this->x.HALF.HI;
    y = this->y.HALF.HI;
    SetMetaTile(SPECIAL_META_TILE_114, TILE(x - 24, y - 16), this->collisionLayer);
    SetMetaTile(SPECIAL_META_TILE_114, TILE(x - 24, y), this->collisionLayer);
    SetMetaTile(SPECIAL_META_TILE_114, TILE(x - 24, y + 16), this->collisionLayer);
    SetMetaTile(SPECIAL_META_TILE_114, TILE(x + 24, y - 16), this->collisionLayer);
    SetMetaTile(SPECIAL_META_TILE_114, TILE(x + 24, y), this->collisionLayer);
    SetMetaTile(SPECIAL_META_TILE_114, TILE(x + 24, y + 16), this->collisionLayer);
}

void sub_0806DEC8(Entity* this) {
    GetNextFrame(this);
}
