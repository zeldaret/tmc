#include "object.h"

void MineralWaterSource_Init(Entity*);
void sub_080973DC(Entity*);

typedef struct {
    u8 type2;
    u8 hitboxWidth;
    u8 hitboxHeight;
    u8 hurtType;
} UnkStruct_MineralWater;

void MineralWaterSource(Entity* this) {
    static void (*const MineralWaterSourceActionFuncs[])(Entity*) = {
        MineralWaterSource_Init,
        sub_080973DC,
    };
    MineralWaterSourceActionFuncs[this->action](this);
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
    this->flags2 = 2;

    this->action = 1;
}

void sub_080973DC(Entity* this) {
    this->contactFlags = 0;
}
