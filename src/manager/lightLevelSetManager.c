/**
 * @file lightLevelSetManager.c
 * @ingroup Managers
 *
 * @brief Changes the light level when a flag is set.
 */
#include "manager/lightLevelSetManager.h"
#include "flags.h"
#include "functions.h"
#include "game.h"
#include "object.h"
#include "room.h"
#include "tiles.h"

void sub_0805BE94(LightLevelSetManager*);
void sub_0805BEC4(LightLevelSetManager*);
void LightLevelSetManager_Type0(LightLevelSetManager*);
void LightLevelSetManager_Type1(LightLevelSetManager*);
void LightLevelSetManager_Type2(LightLevelSetManager*);
void LightLevelSetManager_Type3(LightLevelSetManager*);
void sub_0805BE70(LightLevelSetManager* this, u32 tileType);

void LightLevelSetManager_Main(Manager* this) {
    static void (*const LightLevelSetManager_Types[])(LightLevelSetManager*) = {
        LightLevelSetManager_Type0,
        LightLevelSetManager_Type1,
        LightLevelSetManager_Type2,
        LightLevelSetManager_Type3,
    };
    LightLevelSetManager_Types[this->type]((LightLevelSetManager*)this);
}

void LightLevelSetManager_Type0(LightLevelSetManager* this) {
    if (super->action == 0) {
        super->action = 1;
        super->subtimer = 30;
        if (CheckFlags(this->field_0x3e) != 0) {
            sub_0805BE94(this);
        }
    }
    if ((CheckFlags(this->field_0x3e) != 0) && (--super->subtimer == 0)) {
        sub_0805BEC4(this);
        sub_0805BE94(this);
    }
}

void LightLevelSetManager_Type1(LightLevelSetManager* this) {
    switch (super->action) {
        case 0:
            super->action = 1;
            super->subtimer = 30;
            if (CheckFlags(this->field_0x3e) != 0) {
                sub_0805BE70(this, TILE_TYPE_117);
                super->action = 2;
            }
            break;
        case 1:
            if (CheckFlags(this->field_0x3e) != 0 && --super->subtimer == 0) {
                super->subtimer = 30;
                sub_0805BEC4(this);
                sub_0805BE70(this, TILE_TYPE_118);
            }
            break;
        case 2:
            if (CheckFlags(this->field_0x3e) == 0 && --super->subtimer == 0) {
                super->subtimer = 30;
                sub_0805BE70(this, TILE_TYPE_117);
            }
            break;
    }
}

void LightLevelSetManager_Type2(LightLevelSetManager* this) {
    if (super->action == 0) {
        if (CheckFlags(this->field_0x3e) != 0) {
            sub_0805BE94(this);
        }
        this->field_0x20 =
            ((s16)this->field_0x38 >> 4 & 0x3fU) | ((s32)((this->field_0x3a << 0x10) >> 0x14 & 0x3fU) << 6);
        super->action = 1;
    } else {
        if (GetTileTypeAtTilePos(this->field_0x20, super->type2) == TILE_TYPE_118) {
            SetFlag(this->field_0x3e);
            ChangeLightLevel(super->timer);
            DeleteThisEntity();
        }
    }
}

void LightLevelSetManager_Type3(LightLevelSetManager* this) {
    u8 bVar1;
    u16 uVar2;
    u32 uVar3;

    switch (super->action) {
        case 0:
            if (CheckFlags(this->field_0x3e) != 0 || CheckFlags(this->field_0x3c) != 0) {
                sub_0805BE94(this);
            }
            this->field_0x20 =
                ((s16)this->field_0x38 >> 4 & 0x3fU) | (((s32)(this->field_0x3a << 0x10) >> 0x14 & 0x3fU) << 6);
            super->action = 1;
            break;

        case 1:
            if (GetTileTypeAtTilePos(this->field_0x20, super->type2) != TILE_TYPE_118) {
                return;
            }
            SetFlag(this->field_0x3e);
            ChangeLightLevel(super->timer);
            super->action = 2;
            this->field_0x22 = this->field_0x36 * 0x3c;
            return;
            break;

        default:
            if (--this->field_0x22 == 0) {
                CreateDustAt(*(s16*)&this->field_0x38, *(s16*)&this->field_0x3a, super->type2);
                ClearFlag(this->field_0x3e);
                RestorePrevTileEntity(this->field_0x20, super->type2);
                ChangeLightLevel(-super->timer);
                super->action = 1;
            } else {
                if (CheckFlags(this->field_0x3c) == 0) {
                    return;
                }
                sub_0805BEC4(this);
                DeleteThisEntity();
            }
            break;
    }
}

void sub_0805BE70(LightLevelSetManager* this, u32 tileType) {
    SetTileType(tileType,
                ((this->field_0x38 << 0x10) >> 0x14 & 0x3fU) | ((this->field_0x3a << 0x10) >> 0x14 & 0x3fU) << 6,
                super->type2);
}

void sub_0805BE94(LightLevelSetManager* this) {
    SetTileType(TILE_TYPE_118,
                ((this->field_0x38 << 0x10) >> 0x14 & 0x3fU) | ((this->field_0x3a << 0x10) >> 0x14 & 0x3fU) << 6,
                super->type2);
    ChangeLightLevel(super->timer);
    DeleteThisEntity();
}

void sub_0805BEC4(LightLevelSetManager* this) {
    Entity* object = CreateObject(FLAME, 1, 0);
    if (object != NULL) {
        *(s8*)(&object->flags + 1) = ((*(s8*)(&object->flags + 1)) & (-0x10)) | 3;
        object->x.HALF.HI = this->field_0x38 + gRoomControls.origin_x;
        object->y.HALF.HI = this->field_0x3a + gRoomControls.origin_y;
        object->collisionLayer = super->type2;
        object->spritePriority.b0 = 2;
    }
}
