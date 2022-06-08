#include "item.h"
#include "physics.h"
#include "sound.h"
#include "functions.h"
#include "playeritem.h"
#include "functions.h"

void sub_08075FF8(ItemBehavior*, u32);
void sub_08076488(ItemBehavior*, u32);
void sub_08076518(ItemBehavior*, u32);
void sub_080765E0(ItemBehavior*, u32);

void ItemBomb(ItemBehavior* this, u32 idx) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08075FF8, NULL, sub_08076488, sub_08076518, sub_080765E0,
    };
    stateFuncs[this->stateID](this, idx);
}

void sub_08075FF8(ItemBehavior* this, u32 idx) {
    static const s8 gUnk_0811BDAC[] = {
        0, -8, 4, -1, 0, 2, -4, -1,
    };
    Entity* entity;
    u32 maxBombs;
    u32 bombCount;
    const s8* pos;
    s32 x;
    s32 y;

    if ((gPlayerState.jump_status | gPlayerState.field_0x3[1]) == 0) {
        bombCount = 0;
        for (entity = FindEntityByID(PLAYER_ITEM, PLAYER_ITEM_BOMB, 2); entity != NULL;
             entity = FindNextDuplicateID(entity, 2)) {
            bombCount++;
        }
        maxBombs = this->behaviorID == 7 ? 3 : 1;
        if (maxBombs > bombCount) {
            entity = CreatePlayerItemWithParent(this, PLAYER_ITEM_BOMB);
            if (entity != NULL) {
                pos = &gUnk_0811BDAC[gPlayerEntity.animationState & 6];
                PositionRelative(&gPlayerEntity, entity, Q_16_16(pos[0]), Q_16_16(pos[1]));
                ModBombs(-1);
                SoundReq(SFX_PLACE_OBJ);
            }
        }
    }
    DeletePlayerItem(this, idx);
}

void sub_08076088(ItemBehavior* this, Entity* param_2, u32 param_3) {
    if (param_2 != NULL) {
        if ((param_2->carryFlags & 1) != 0) {
            return;
        }
        param_2->action = 2;
        param_2->subAction = param_2->carryFlags & 1;
    }

    this->field_0x18 = param_2;
    if ((gPlayerState.flags & PL_NO_CAP)) {
        sub_08077DF4(this, 0x928);
    } else {
        sub_08077DF4(this, 0x338);
    }
    gPlayerState.heldObject = 3;
    gPlayerState.framestate = 4;
    this->stateID = 2;
    this->field_0xf = 0xf;
    if ((gPlayerEntity.field_0x78.HALF.HI & 0x80)) {
        gPlayerEntity.field_0x78.HALF.HI = 0;
        COLLISION_ON(&gPlayerEntity);
        gPlayerState.heldObject = 4;
        gPlayerState.keepFacing = ~(8 >> param_3) & gPlayerState.keepFacing;
        gPlayerState.field_0xa = ~(8 >> param_3) & gPlayerState.field_0xa;
        this->stateID = 3;
        this->field_0xf = 0;
    } else {
        gPlayerState.field_0xa |= (8 >> param_3);
        gPlayerState.keepFacing |= (8 >> param_3);
    }

    param_2 = CreatePlayerItemWithParent(this, PLAYER_ITEM_13);
    if (param_2 == NULL) {
        PlayerCancelHoldItem(this, param_3);
    } else {
        Entity* playerEnt = &gPlayerEntity;
        *(Entity**)&playerEnt->field_0x74 = param_2;
        playerEnt->subtimer = 0;
        param_2->child = this->field_0x18;
        param_2->carryFlags = playerEnt->carryFlags;
        param_2->parent = (Entity*)this;
        this->field_0x18 = param_2;
        param_2->type2 = this->field_0x2[1];
        param_2->timer = this->field_0x5[2];
        param_2->subtimer = this->field_0x5[3];
        if ((this->field_0x18->carryFlags & 0xf0) == 0x10) {
            this->field_0x5[2] = 8;
        } else {
            this->field_0x5[2] = 0;
        }
        SoundReq(SFX_PLY_LIFT);
    }
}
