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
    u32 uVar1;
    u32 uVar6;
    u32 uVar7;

    this->tile = COORD_TO_TILE(super);
    uVar1 = super->collisionLayer;
    UpdateSpriteForCollisionLayer(super);
    switch (super->type) {
        case 0:
            super->action = 2;
            super->spritePriority.b0 = 6;
            uVar7 = this->tile;
            uVar6 = uVar7 - 1;
            SetTile(0x4022, uVar6, uVar1);
            SetTile(0x4022, uVar7, uVar1);
            SetTile(0x4022, uVar7 + 1, uVar1);
            SetTile(0x4022, uVar7 + 0x3f, uVar1);
            SetTile(0x4022, uVar7 + 0x40, uVar1);
            SetTile(0x4022, uVar7 + 0x41, uVar1);
            SetTile(0x403d, uVar7 - 0x41, uVar1);
            SetTile(0x403d, uVar7 - 0x40, uVar1);
            SetTile(0x4026, uVar7 - 0x3f, uVar1);
            SetTile(0x4026, uVar7 - 0x81, uVar1);
            SetTile(0x4026, uVar7 - 0x80, uVar1);
            break;
        case 1:
            super->action = 1;
            uVar6 = this->tile;
            SetTile(0x4022, uVar6, uVar1);
            SetTile(0x4022, uVar6 + 0x40, uVar1);
            SetTile(0x4025, uVar6 + 0x41, uVar1);
            if (CheckLocalFlag(0x4f) == 0) {
                SetTile(0x402f, uVar6 + 1, uVar1);
            } else {
                SetTile(0x402d, uVar6 + 1, uVar1);
            }
            break;
        case 2:
            super->action = 1;
            uVar7 = this->tile;
            uVar6 = uVar7 - 0x41;
            SetTile(0x4022, uVar6, uVar1);
            SetTile(0x4022, uVar7 - 0x40, uVar1);
            SetTile(0x4022, uVar7 - 1, uVar1);
            SetTile(0x4022, uVar7, uVar1);
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
