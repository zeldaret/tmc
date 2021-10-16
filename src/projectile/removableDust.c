#include "entity.h"
#include "enemy.h"
#include "coord.h"
#include "functions.h"
#include "flags.h"
#include "utils.h"

extern u32 sub_080002C8(u16, u8);
extern Entity* LoadRoomEntity(EntityData*);

extern void (*const RemovableDust_Functions[])(Entity*);
extern const u16 gUnk_08129FD0[];
extern const u16 gUnk_08129FE4[];
extern const s8 gUnk_08129FF8[];
extern const u8 gUnk_0812A004[];

void sub_080AA494(Entity*);
void sub_080AA534(Entity*);
void sub_080AA464(Entity*);
void sub_080AA544(Entity*);
void sub_080AA654(Entity*, u32);

void RemovableDust(Entity* this) {
    RemovableDust_Functions[GetNextFunction(this)](this);
}

void RemovableDust_OnTick(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->frameIndex = this->type;
        this->field_0x1c = 1;
        this->speed = this->field_0x86.HWORD;
        if (this->type == 0) {
            sub_080AA494(this);
        } else {
            sub_080AA534(this);
        }
    }
}

void sub_080AA450(Entity* this) {
    if (this->bitfield == 0x96) {
        sub_080AA464(this);
    }
}

void sub_080AA464(Entity* this) {
    Entity* entity;

    if (this->type == 0) {
        sub_080AA544(this);
    }
    entity = CreateObject(0x21, 3, 0);
    if (entity != NULL) {
        CopyPosition(this, entity);
    }
    DeleteEntity(this);
}

void sub_080AA494(Entity* this) {
    u32 tileType;
    const u16* iterator;
    u32 index;

    index = 0;
    tileType = GetTileTypeByEntity(this);
    iterator = gUnk_08129FD0;
    while (*iterator != 0) {
        if (*(iterator++) == tileType) {
            break;
        }
        index += 1;
    }
    if (CheckFlags((u16)this->speed) != 0) {
        if (index == 4) {
            sub_080AA654(this, TILE(this->x.HALF.HI, this->y.HALF.HI));
        }
        DeleteThisEntity();
    }
    this->type2 = index;
    this->spritePriority.b0 = 7;
    SetTile(0x4068, TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
}

void sub_080AA534(Entity* this) {
    this->collisionLayer = 3;
    UpdateSpriteForCollisionLayer(this);
}

void sub_080AA544(Entity* this) {
    u8* pbVar1;
    s32 iVar2;
    u32 uVar3;
    s32 iVar4;
    const u16* puVar5;
    u32 param;
    const s8* tmp;

    if (this->type2 < 9) {
        tmp = gUnk_08129FF8;
        param = TILE(this->x.HALF.HI, this->y.HALF.HI) + tmp[this->type2];
        uVar3 = 0;
        iVar4 = 0;
        do {
            iVar2 = sub_080002C8((param - tmp[uVar3]) & 0xffff, this->collisionLayer);
            if (iVar2 == 0x3e) {
                iVar4 += 1;
            }
            uVar3 += 1;
        } while (uVar3 < 9);

        if (iVar4 == 8) {
            uVar3 = 0;
            puVar5 = gUnk_08129FD0;
            do {
                sub_0807B7D8((u32)*puVar5, param - tmp[uVar3], this->collisionLayer);
                puVar5 += 1;
                uVar3 += 1;
            } while (uVar3 < 9);
            sub_080AA654(this, param);
            SetFlag((u16)this->speed);
        } else {
            sub_0807B7D8(gUnk_08129FE4[this->type2], param - tmp[this->type2], this->collisionLayer);
        }
    } else {
        sub_0807BA8C(TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
        SetFlag((u16)this->speed);
    }
}

void sub_080AA654(Entity* this, u32 param) {
    EntityData* entityData;
    entityData = (EntityData*)&this->field_0x68;

    MemCopy(&gUnk_0812A004, entityData, 0x10);

    entityData->xPos = ((u16)param & 0x3f) * 0x10 + 8;
    entityData->yPos = ((param & 0xfc0) >> 2) + 8;

    LoadRoomEntity(entityData);
}

void (*const RemovableDust_Functions[])(Entity*) = {
    RemovableDust_OnTick, sub_080AA450, DeleteEntity, DeleteEntity, DeleteEntity, sub_080AA464,
};
const u16 gUnk_08129FD0[] = { 387, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 0 };
const u16 gUnk_08129FE4[] = { 388, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 0 };
const s8 gUnk_08129FF8[] = { 65, 64, 63, 1, 0, -1, -63, -64, -65, 0, 0, 0 };
const u8 gUnk_0812A004[] = {
    9, 0, 3, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};
