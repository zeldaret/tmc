/**
 * @file mineralWaterSource.c
 * @ingroup Objects
 *
 * @brief Mineral Water Source object
 */
#include "object.h"

void MineralWaterSource_Init(Entity*);
void MineralWaterSource_Action1(Entity*);

typedef struct {
    u8 type2;
    u8 hitboxWidth;
    u8 hitboxHeight;
    u8 hurtType;
} UnkStruct_MineralWater;

void MineralWaterSource(Entity* this) {
    static void (*const MineralWaterSource_Actions[])(Entity*) = {
        MineralWaterSource_Init,
        MineralWaterSource_Action1,
    };
    MineralWaterSource_Actions[this->action](this);
}

void MineralWaterSource_Init(Entity* this) {
    static const UnkStruct_MineralWater MineralWaterSourceParameters[] = {
        { 0x27, 0x30, 0x20, 0x4D },
    };
    const UnkStruct_MineralWater* unknownParameters;

    if (AllocMutableHitbox(this) == NULL) {
        return;
    }

    unknownParameters = &MineralWaterSourceParameters[this->type];

    this->type2 = unknownParameters->type2;
    this->hurtType = unknownParameters->hurtType;

    this->hitbox->width = unknownParameters->hitboxWidth;
    this->hitbox->height = unknownParameters->hitboxHeight;

    COLLISION_ON(this);

    this->collisionFlags = 7;
    this->hitType = 145;
    this->collisionMask = 2;

    this->action = 1;
}

void MineralWaterSource_Action1(Entity* this) {
    this->contactFlags = 0;
}
