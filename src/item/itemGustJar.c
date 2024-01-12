#include "entity.h"
#include "functions.h"
#include "item.h"
#include "playeritem.h"
#include "tiles.h"

void (*const ItemGustJar_StateFunctions[])(ItemBehavior* this, u32);

void ItemGustJar(ItemBehavior* this, u32 index) {
    gPlayerState.framestate = PL_STATE_GUSTJAR;
    ItemGustJar_StateFunctions[this->stateID](this, index);
}

void sub_08076DF4(ItemBehavior* this, u32 index) {
    if (GetActTileInFront(&gPlayerEntity.base) != ACT_TILE_41 && gPlayerState.floor_type != SURFACE_DOOR &&
        gPlayerState.floor_type != SURFACE_DOOR_13 && gPlayerState.jump_status == 0) {
        sub_08077D38(this, index);
        this->timer = 0;
        this->playerAnimationState = gPlayerEntity.base.animationState;
        this->priority |= 0x80;
        this->priority++;
        gPlayerState.gustJarCharge = JAR_CHARGE_SMALL;
        gPlayerEntity.carriedEntity = NULL;
        gPlayerState.gustJarState = PL_JAR_SUCK;
        sub_08077BB8(this);
    } else {
        DeleteItemBehavior(this, index);
    }
}

void sub_08076E60(ItemBehavior* this, u32 index) {
    Entity* playerItem;

    if ((gPlayerState.gustJarState & 0xf) == 0) {
        DeleteItemBehavior(this, index);
    }
    if ((this->playerFrame & 0x80) != 0) {
        this->stateID = 2;
        SetItemAnim(this, ANIM_GUSTJAR_SUCK);
        gPlayerState.field_0xa = gPlayerState.field_0xa & ~(8 >> index);
        playerItem = CreatePlayerItem(PLAYER_ITEM_GUST, 0, 0, 0);
        if (playerItem != NULL) {
            playerItem->parent = &gPlayerEntity.base;
        }
    } else {
        UpdateItemAnim(this);
    }
}

void sub_08076EC8(ItemBehavior* this, u32 index) {
    if ((gPlayerState.gustJarState & 0xf) == PL_JAR_NONE) {
        DeleteItemBehavior(this, index);
        return;
    }

    if (IsItemActive(this)) {
        u32 animIndex;
        if (this->timer > 0xef) {
            gPlayerState.gustJarCharge = JAR_CHARGE_BIG;
        } else if (++this->timer > 0x77) {
            gPlayerState.gustJarCharge = JAR_CHARGE_MID;
        } else {
            gPlayerState.gustJarCharge = JAR_CHARGE_SMALL;
        }

        if (gPlayerEntity.base.subAction == 0x1b) {
            animIndex = ANIM_GUSTJAR_524;
        } else {
            if (gPlayerState.direction & DIR_NOT_MOVING_CHECK) {
                animIndex = ANIM_GUSTJAR_SUCK;
            } else {
                animIndex = ANIM_GUSTJAR_WALK;
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
    PlayerEntity* player;
    switch (gPlayerState.gustJarState & 0xf) {
        case PL_JAR_BLAST_UPDATE:
            if (this->playerFrame & 0x80) {
                if (this->subtimer) {
                    this->subtimer = 0;
                    this->timer = 0;
                    gPlayerState.gustJarCharge = JAR_CHARGE_SMALL;
                    player = &gPlayerEntity;
                    player->carriedEntity = NULL;
                    gPlayerState.gustJarState = PL_JAR_SUCK;
                    gPlayerState.field_0xa &= ~(8 >> index);
                    this->stateID = 2;
                    SetItemAnim(this, ANIM_GUSTJAR_SUCK);
                    item = CreatePlayerItem(PLAYER_ITEM_GUST, 0, 0, 0);
                    if (item) {
                        item->parent = &player->base;
                    }
                    return;
                } else {
                    gPlayerState.gustJarState = PL_JAR_BLAST_DONE;
                    SetItemAnim(this, ANIM_GUSTJAR_END);
                    return;
                }
            } else {
                if (IsItemActive(this)) {
                    this->subtimer = 1;
                }

                UpdateItemAnim(this);
                if ((gPlayerState.flags & PL_FLAGS2))
                    return;
                gPlayerEntity.base.direction =
                    DirectionTurnAround(Direction8FromAnimationState(gPlayerEntity.base.animationState));
                gPlayerEntity.base.speed = 0x80;
                UpdatePlayerMovement();

                return;
            }
            return;
        case PL_JAR_3:
            gPlayerState.gustJarState = PL_JAR_BLAST_INIT;
        case PL_JAR_BLAST_INIT:
            if (IsItemActive(this)) {
                this->subtimer = 1;
            }

            UpdateItemAnim(this);
            if (this->playerFrame & 1) {
                gPlayerState.gustJarState = PL_JAR_BLAST_UPDATE;
                gPlayerEntity.pulledJarEntity = NULL;
                if (gPlayerState.gustJarCharge) {
                    CreatePlayerItem(PLAYER_ITEM_GUST_BIG, 0, 0, 0);
                }
            }

            if (gPlayerState.flags & PL_FLAGS2)
                return;
            gPlayerEntity.base.direction =
                DirectionTurnAround(Direction8FromAnimationState(gPlayerEntity.base.animationState));
            gPlayerEntity.base.speed = 0x80;
            UpdatePlayerMovement();
            return;
        case PL_JAR_BLAST_DONE:
            UpdateItemAnim(this);
            if ((this->playerFrame & 0x80) == 0)
                return;
            break;
        case PL_JAR_ENT_ATTACHED:
            SetItemAnim(this, ANIM_GUSTJAR_BLOW);
            gPlayerState.gustJarState = PL_JAR_3;
            gPlayerState.gustJarCharge = JAR_CHARGE_NONE;
            return;
        case PL_JAR_SUCK:
        case PL_JAR_2:
        default:
            gPlayerState.gustJarState = PL_JAR_3;
            SetItemAnim(this, ANIM_GUSTJAR_BLOW);
            return;
        case PL_JAR_NONE:
            break;
    }
    gPlayerState.gustJarState = PL_JAR_NONE;
    gPlayerEntity.pulledJarEntity = NULL;
    DeleteItemBehavior(this, index);
}

void (*const ItemGustJar_StateFunctions[])(ItemBehavior*, u32) = {
    sub_08076DF4,
    sub_08076E60,
    sub_08076EC8,
    sub_08076F64,
};
