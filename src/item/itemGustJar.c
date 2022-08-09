#include "global.h"
#include "entity.h"
#include "item.h"
#include "functions.h"
#include "playeritem.h"

void (*const ItemGustJar_StateFunctions[])(ItemBehavior* this, u32);

void ItemGustJar(ItemBehavior* this, u32 index) {
    gPlayerState.framestate = PL_STATE_GUSTJAR;
    ItemGustJar_StateFunctions[this->stateID](this, index);
}

void sub_08076DF4(ItemBehavior* this, u32 index) {
    if (GetCollisionTileInFront(&gPlayerEntity) != 0x29 && gPlayerState.floor_type != SURFACE_DOOR &&
        gPlayerState.floor_type != SURFACE_DOOR_13 && gPlayerState.jump_status == 0) {
        sub_08077D38(this, index);
        this->timer = 0;
        this->playerAnimationState = gPlayerEntity.animationState;
        this->priority |= 0x80;
        this->priority++;
        gPlayerState.gustJarSpeed = 1;
        *(u32*)&gPlayerEntity.field_0x74 = 0;
        gPlayerState.field_0x1c = 1;
        sub_08077BB8(this);
    } else {
        DeleteItemBehavior(this, index);
    }
}

void sub_08076E60(ItemBehavior* this, u32 index) {
    Entity* playerItem;

    if ((gPlayerState.field_0x1c & 0xf) == 0) {
        DeleteItemBehavior(this, index);
    }
    if ((this->playerFrame & 0x80) != 0) {
        this->stateID = 2;
        SetItemAnim(this, 0x504);
        gPlayerState.field_0xa = gPlayerState.field_0xa & ~(8 >> index);
        playerItem = CreatePlayerItem(PLAYER_ITEM_GUST, 0, 0, 0);
        if (playerItem != NULL) {
            playerItem->parent = &gPlayerEntity;
        }
    } else {
        UpdateItemAnim(this);
    }
}

void sub_08076EC8(ItemBehavior* this, u32 index) {
    if ((gPlayerState.field_0x1c & 0xf) == 0) {
        DeleteItemBehavior(this, index);
        return;
    }

    if (IsItemActive(this)) {
        u32 animIndex;
        if (this->timer > 0xef) {
            gPlayerState.gustJarSpeed = 3;
        } else if (++this->timer > 0x77) {
            gPlayerState.gustJarSpeed = 2;
        } else {
            gPlayerState.gustJarSpeed = 1;
        }

        if (gPlayerEntity.subAction == 0x1b) {
            animIndex = 0x524;
        } else {
            if (gPlayerState.direction & 0x80) {
                animIndex = 0x504;
            } else {
                animIndex = 0x518;
            }
        }

        if (animIndex != this->animIndex) {
            SetItemAnim(this, animIndex);
        } else {
            UpdateItemAnim(this);
        }
        return;
    }

    this->stateID++;
    gPlayerState.field_0xa |= 8 >> index;
}

void sub_08076F64(ItemBehavior* this, u32 index) {
    Entity* item;
    Entity* player;
    switch (gPlayerState.field_0x1c & 0xf) {
        case 5:
            if (this->playerFrame & 0x80) {
                if (this->subtimer) {
                    this->subtimer = 0;
                    this->timer = 0;
                    gPlayerState.gustJarSpeed = 1;
                    player = &gPlayerEntity;
                    *(u32*)&player->field_0x74 = 0;
                    gPlayerState.field_0x1c = 1;
                    gPlayerState.field_0xa &= ~(8 >> index);
                    this->stateID = 2;
                    SetItemAnim(this, 0x504);
                    item = CreatePlayerItem(PLAYER_ITEM_GUST, 0, 0, 0);
                    if (item) {
                        item->parent = player;
                    }
                    return;
                } else {
                    gPlayerState.field_0x1c = 6;
                    SetItemAnim(this, 0x510);
                    return;
                }
            } else {
                if (IsItemActive(this)) {
                    this->subtimer = 1;
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
            if (IsItemActive(this)) {
                this->subtimer = 1;
            }

            UpdateItemAnim(this);
            if (this->playerFrame & 1) {
                gPlayerState.field_0x1c = 5;
                gPlayerEntity.field_0x70.WORD = 0;
                if (gPlayerState.gustJarSpeed) {
                    CreatePlayerItem(PLAYER_ITEM_GUST_BIG, 0, 0, 0);
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
            if ((this->playerFrame & 0x80) == 0)
                return;
            break;
        case 7:
            SetItemAnim(this, 0x514);
            gPlayerState.field_0x1c = 3;
            gPlayerState.gustJarSpeed = 0;
            return;
        case 1:
        case 2:
        default:
            gPlayerState.field_0x1c = 3;
            SetItemAnim(this, 0x514);
            return;
        case 0:
            break;
    }
    gPlayerState.field_0x1c = 0;
    gPlayerEntity.field_0x70.WORD = 0;
    DeleteItemBehavior(this, index);
}

void (*const ItemGustJar_StateFunctions[])(ItemBehavior*, u32) = {
    sub_08076DF4,
    sub_08076E60,
    sub_08076EC8,
    sub_08076F64,
};
