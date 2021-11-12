#include "global.h"
#include "entity.h"

extern void (*MineralWaterSourceActionFuncs[])(Entity*);

typedef struct {
    u8 field_0x00;
    u8 field_0x01;
    u8 field_0x02;
    u8 field_0x03;
} UnkStruct_MineralWater;

extern UnkStruct_MineralWater MineralWaterSourceParameters[];

extern bool32 AllocMutableHitbox(Entity*);

void MineralWaterSource(Entity* this) {
    MineralWaterSourceActionFuncs[this->action](this);
}

void MineralWaterSource_Init(Entity* this) {
    UnkStruct_MineralWater* unknownParameters;

    if (!AllocMutableHitbox(this)) {
        return;
    }

    unknownParameters = &MineralWaterSourceParameters[this->type];

    this->type2 = unknownParameters->field_0x00;
    this->hurtType = unknownParameters->field_0x03;

    this->hitbox->width = unknownParameters->field_0x01;
    this->hitbox->height = unknownParameters->field_0x02;

    COLLISION_ON(this);

    this->field_0x3c = 7;
    this->hitType = 145;
    this->flags2 = 2;

    this->action = 1;
}

void sub_080973DC(Entity* this) {
    this->bitfield = 0;
}
