/**
 * @file cabinFurniture.c
 * @ingroup Objects
 *
 * @brief Cabin Furniture object
 */
#define NENT_DEPRECATED
#include "asm.h"
#include "entity.h"
#include "flags.h"
#include "room.h"
#include "tiles.h"

typedef struct {
    Entity base;
    u8 filler[0x18];
    u16 tile;
} CabinFurnitureEntity;

void CabinFurniture_Init(CabinFurnitureEntity* this);
void CabinFurniture_Action1(CabinFurnitureEntity* this);
void CabinFurniture_Action2(CabinFurnitureEntity* this);
void nullsub_2(CabinFurnitureEntity* this);

void CabinFurniture(Entity* this) {
    static void (*const CabinFurniture_Actions[])(CabinFurnitureEntity*) = {
        CabinFurniture_Init,
        CabinFurniture_Action1,
        CabinFurniture_Action2,
    };
    CabinFurniture_Actions[this->action]((CabinFurnitureEntity*)this);
}

void CabinFurniture_Init(CabinFurnitureEntity* this) {
    u32 layer;
    u32 uVar6;
    u32 uVar7;

    this->tile = COORD_TO_TILE(super);
    layer = super->collisionLayer;
    UpdateSpriteForCollisionLayer(super);
    switch (super->type) {
        case 0:
            super->action = 2;
            super->spritePriority.b0 = 6;
            uVar7 = this->tile;
            uVar6 = uVar7 - 1;
            SetMetaTile(SPECIAL_META_TILE_34, uVar6, layer);
            SetMetaTile(SPECIAL_META_TILE_34, uVar7, layer);
            SetMetaTile(SPECIAL_META_TILE_34, uVar7 + 1, layer);
            SetMetaTile(SPECIAL_META_TILE_34, uVar7 + 0x3f, layer);
            SetMetaTile(SPECIAL_META_TILE_34, uVar7 + 0x40, layer);
            SetMetaTile(SPECIAL_META_TILE_34, uVar7 + 0x41, layer);
            SetMetaTile(SPECIAL_META_TILE_61, uVar7 - 0x41, layer);
            SetMetaTile(SPECIAL_META_TILE_61, uVar7 - 0x40, layer);
            SetMetaTile(SPECIAL_META_TILE_38, uVar7 - 0x3f, layer);
            SetMetaTile(SPECIAL_META_TILE_38, uVar7 - 0x81, layer);
            SetMetaTile(SPECIAL_META_TILE_38, uVar7 - 0x80, layer);
            break;
        case 1:
            super->action = 1;
            uVar6 = this->tile;
            SetMetaTile(SPECIAL_META_TILE_34, uVar6, layer);
            SetMetaTile(SPECIAL_META_TILE_34, uVar6 + 0x40, layer);
            SetMetaTile(SPECIAL_META_TILE_37, uVar6 + 0x41, layer);
            if (CheckLocalFlag(0x4f) == 0) {
                SetMetaTile(SPECIAL_META_TILE_47, uVar6 + 1, layer);
            } else {
                SetMetaTile(SPECIAL_META_TILE_45, uVar6 + 1, layer);
            }
            break;
        case 2:
            super->action = 1;
            uVar7 = this->tile;
            uVar6 = uVar7 - 0x41;
            SetMetaTile(SPECIAL_META_TILE_34, uVar6, layer);
            SetMetaTile(SPECIAL_META_TILE_34, uVar7 - 0x40, layer);
            SetMetaTile(SPECIAL_META_TILE_34, uVar7 - 1, layer);
            SetMetaTile(SPECIAL_META_TILE_34, uVar7, layer);
            break;
    }
}

void CabinFurniture_Action1(CabinFurnitureEntity* this) {
}

void CabinFurniture_Action2(CabinFurnitureEntity* this) {
    nullsub_2(this);
}

void nullsub_2(CabinFurnitureEntity* this) {
}
