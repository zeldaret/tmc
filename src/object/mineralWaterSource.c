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

extern bool32 sub_0806FBD8(Entity*);

void MineralWaterSource(Entity* this) {
    MineralWaterSourceActionFuncs[this->action](this);
}

void MineralWaterSource_Init(Entity* this) {
    UnkStruct_MineralWater* unknownParameters;

    if (!sub_0806FBD8(this)) {
        return;
    }

    unknownParameters = &MineralWaterSourceParameters[this->entityType.form];

    this->entityType.parameter = unknownParameters->field_0x00;
    this->field_0x40 = unknownParameters->field_0x03;

    this->boundingBox->unknown[6] = unknownParameters->field_0x01;
    this->boundingBox->unknown[7] = unknownParameters->field_0x02;

    this->flags |= 0x80;

    this->field_0x3c = 7;
    this->damageType = 145;
    this->flags2 = 2;

    this->action = 1;
}

void sub_080973DC(Entity* this) {
    this->bitfield = 0;
}
