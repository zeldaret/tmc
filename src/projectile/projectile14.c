#include "entity.h"
#include "enemy.h"
#include "coord.h"
#include "functions.h"
#include "flags.h"
#include "utils.h"

extern void (*const gUnk_08129FB8[])(Entity*);

void sub_080AA494(Entity*);
void sub_080AA534(Entity*);

void sub_080AA464(Entity*);

void sub_080AA544(Entity*);

extern u16 gUnk_08129FD0[];
void sub_080AA654(Entity*, u32);

extern s8 gUnk_08129FF8[];
extern u16 gUnk_08129FE4[];
extern u32 sub_080002C8(u16, u8);

extern u32 gUnk_0812A004;
extern Entity* LoadRoomEntity(EntityData*);

void Projectile14(Entity* this) {
    gUnk_08129FB8[GetNextFunction(this)](this);
}

void sub_080AA41C(Entity* this) {
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
    u16* iterator;
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

NONMATCH("asm/non_matching/projectile14/sub_080AA544.inc", void sub_080AA544(Entity* this)) {
    u8* pbVar1;
    s32 iVar2;
    u32 uVar3;
    s32 iVar4;
    u16* puVar5;
    u32 param;
    s8* tmp;

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
            sub_0807B7D8(gUnk_08129FE4[this->type2],
                         param -
                             // TODO this array access is wrong
                             *((s8*)gUnk_08129FE4 + this->type2),
                         this->collisionLayer);
        }
    } else {
        sub_0807BA8C(TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
        SetFlag((u16)this->speed);
    }
}
END_NONMATCH

void sub_080AA654(Entity* this, u32 param) {
    EntityData* entityData;
    entityData = (EntityData*)&this->field_0x68;

    MemCopy(&gUnk_0812A004, entityData, 0x10);

    entityData->xPos = ((u16)param & 0x3f) * 0x10 + 8;
    entityData->yPos = ((param & 0xfc0) >> 2) + 8;

    LoadRoomEntity(entityData);
}
