#include "global.h"
#include "entity.h"
#include "item.h"
#include "functions.h"

void (*const ItemGustJar_StateFunctions[])(ItemBehavior* beh, u32);

void ItemGustJar(ItemBehavior* this, u32 idx) {
    gPlayerState.framestate = PL_STATE_GUSTJAR;
    ItemGustJar_StateFunctions[this->stateID](this, idx);
}

void sub_08076DF4(ItemBehavior* this, u32 idx) {
    if (sub_0807A894(&gPlayerEntity) != 0x29 && gPlayerState.floor_type != SURFACE_DOOR &&
        gPlayerState.floor_type != SURFACE_DOOR_13 && gPlayerState.jump_status == 0) {
        sub_08077D38(this, idx);
        this->field_0x5[2] = 0;
        this->field_0x5[5] = gPlayerEntity.animationState;
        this->field_0x5[4] |= 0x80;
        this->field_0x5[4]++;
        gPlayerState.gustJarSpeed = 1;
        *(u32*)&gPlayerEntity.field_0x74 = 0;
        gPlayerState.field_0x1c = 1;
        sub_08077BB8(this);
    } else {
        DeletePlayerItem(this, idx);
    }
}

void sub_08076E60(ItemBehavior* this, u32 idx) {
    Entity* playerItem;

    if ((gPlayerState.field_0x1c & 0xf) == 0) {
        DeletePlayerItem(this, idx);
    }
    if ((this->field_0x5[9] & 0x80) != 0) {
        this->stateID = 2;
        sub_08077DF4(this, 0x504);
        gPlayerState.field_0xa = gPlayerState.field_0xa & ~(8 >> idx);
        playerItem = CreatePlayerItem(0x10, 0, 0, 0);
        if (playerItem != NULL) {
            playerItem->parent = &gPlayerEntity;
        }
    } else {
        UpdateItemAnim(this);
    }
}

void sub_08076EC8(ItemBehavior* this, u32 idx) {
    if ((gPlayerState.field_0x1c & 0xf) == 0) {
        DeletePlayerItem(this, idx);
        return;
    }

    if (sub_08077EFC(this)) {
        u32 val;
        if (this->field_0x5[2] > 0xef) {
            gPlayerState.gustJarSpeed = 3;
        } else if (++this->field_0x5[2] > 0x77) {
            gPlayerState.gustJarSpeed = 2;
        } else {
            gPlayerState.gustJarSpeed = 1;
        }

        if (gPlayerEntity.subAction == 0x1b) {
            val = 0x524;
        } else {
            if (gPlayerState.field_0xd & 0x80) {
                val = 0x504;
            } else {
                val = 0x518;
            }
        }

        if (val != *(u16*)&this->field_0x10) {
            sub_08077DF4(this, val);
        } else {
            UpdateItemAnim(this);
        }
        return;
    }

    this->stateID++;
    gPlayerState.field_0xa |= 8 >> idx;
}

void sub_08076F64(ItemBehavior* this, u32 idx) {
    Entity* item;
    Entity* player;
    switch (gPlayerState.field_0x1c & 0xf) {
        case 5:
            if (this->field_0x5[9] & 0x80) {
                if (this->field_0x5[3]) {
                    this->field_0x5[3] = 0;
                    this->field_0x5[2] = 0;
                    gPlayerState.gustJarSpeed = 1;
                    player = &gPlayerEntity;
                    *(u32*)&player->field_0x74 = 0;
                    gPlayerState.field_0x1c = 1;
                    gPlayerState.field_0xa &= ~(8 >> idx);
                    this->stateID = 2;
                    sub_08077DF4(this, 0x504);
                    item = CreatePlayerItem(0x10, 0, 0, 0);
                    if (item) {
                        item->parent = player;
                    }
                    return;
                } else {
                    gPlayerState.field_0x1c = 6;
                    sub_08077DF4(this, 0x510);
                    return;
                }
            } else {
                if (sub_08077EFC(this)) {
                    this->field_0x5[3] = 1;
                }

                UpdateItemAnim(this);
                if ((gPlayerState.flags & PL_FLAGS2))
                    return;
                gPlayerEntity.direction =
                    DirectionTurnAround(Direction8FromAnimationState(gPlayerEntity.animationState));
                gPlayerEntity.speed = 0x80;
                UpdatePlayerMovement();

                return;
            }
            return;
        case 3:
            gPlayerState.field_0x1c = 4;
        case 4:
            if (sub_08077EFC(this)) {
                this->field_0x5[3] = 1;
            }

            UpdateItemAnim(this);
            if (this->field_0x5[9] & 1) {
                gPlayerState.field_0x1c = 5;
                gPlayerEntity.field_0x70.WORD = 0;
                if (gPlayerState.gustJarSpeed) {
                    CreatePlayerItem(0x11, 0, 0, 0);
                }
            }

            if (gPlayerState.flags & PL_FLAGS2)
                return;
            gPlayerEntity.direction = DirectionTurnAround(Direction8FromAnimationState(gPlayerEntity.animationState));
            gPlayerEntity.speed = 0x80;
            UpdatePlayerMovement();
            return;
        case 6:
            UpdateItemAnim(this);
            if ((this->field_0x5[9] & 0x80) == 0)
                return;
            break;
        case 7:
            sub_08077DF4(this, 0x514);
            gPlayerState.field_0x1c = 3;
            gPlayerState.gustJarSpeed = 0;
            return;
        case 1:
        case 2:
        default:
            gPlayerState.field_0x1c = 3;
            sub_08077DF4(this, 0x514);
            return;
        case 0:
            break;
    }
    gPlayerState.field_0x1c = 0;
    gPlayerEntity.field_0x70.WORD = 0;
    DeletePlayerItem(this, idx);
}

void (*const ItemGustJar_StateFunctions[])(ItemBehavior* beh, u32) = {
    sub_08076DF4,
    sub_08076E60,
    sub_08076EC8,
    sub_08076F64,
};
