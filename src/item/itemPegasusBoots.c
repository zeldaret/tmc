#include "asm.h"
#include "effects.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "playeritem.h"
#include "save.h"
#include "sound.h"

void sub_08076964(ItemBehavior*, u32);
void sub_080768F8(ItemBehavior*, u32);
void sub_08076A88(ItemBehavior*, u32);

extern u16 gUnk_0800275C[];
extern u8 gUnk_0811BE38[];

void ItemPegasusBoots(ItemBehavior* this, u32 index) {
    static void (*const ItemPegasusBoots_StateFunctions[])(ItemBehavior * beh, u32) = {
        sub_080768F8,
        sub_08076964,
        sub_08076A88,
    };
    u32 bVar1;
    Entity* fx;
    u32 uVar4;

    if (gPlayerEntity.unk_7a != 0) {
        gPlayerState.dash_state = 0;
        gPlayerState.itemAnimPriority = 0;
        DeleteItemBehavior(this, index);
    } else {
        --this->timer;
        if ((this->timer & 7) == 0) {
            SoundReq(SFX_PLY_LAND);
        }
        if (((gPlayerState.flags & PL_MINISH) == 0) && ((this->timer & 7) == 0)) {
            if (gPlayerState.floor_type == SURFACE_SWAMP) {
                if (gPlayerEntity.base.spriteOffsetY == 0) {
                    CreateFx(&gPlayerEntity.base, FX_GREEN_SPLASH, 0);
                }
            } else {
                fx = CreateFx(&gPlayerEntity.base, FX_DASH, 0x40);
                if ((fx != NULL) && (fx->y.HALF.HI = fx->y.HALF.HI + 2, this->stateID != 2)) {
                    uVar4 = Random() & 3;
                    if ((Random() & 1) != 0) {
                        uVar4 = -uVar4;
                    }
                    fx->y.HALF.HI += uVar4;
                    uVar4 = Random() & 7;
                    if ((Random() & 1) != 0) {
                        uVar4 = -uVar4;
                    }
                    fx->x.HALF.HI += uVar4;
                }
            }
        }
        ItemPegasusBoots_StateFunctions[this->stateID](this, index);
    }
}

void sub_080768F8(ItemBehavior* this, u32 index) {
    u32 bVar1;
    u32 bVar2;

    bVar1 = gPlayerState.gustJarState | gPlayerState.attack_status | gPlayerState.heldObject | gPlayerState.jump_status;
    bVar2 = (gPlayerState.flags & PL_IN_MINECART);
    bVar1 |= bVar2;
    if (bVar1 == 0) {
        gPlayerState.dash_state = 1;
        gPlayerState.bow_state = bVar1;
        if (!(gPlayerState.flags & PL_MINISH)) {
            this->timer = 0x10;
        } else {
            gPlayerState.animation = ANIM_DASH_CHARGE_MINISH;
        }
        sub_08077D38(this, index);
        sub_08076964(this, index);
    } else {
        gPlayerState.dash_state = 0;
        gPlayerState.itemAnimPriority = 0;
        DeleteItemBehavior(this, index);
    }
}

void sub_08076964(ItemBehavior* this, u32 index) {
    Entity* entity;
    u32 uVar3;
    if (IsItemActive(this) && gPlayerEntity.base.z.WORD == 0 && gPlayerState.dash_state) {
        UpdateItemAnim(this);

        if ((gPlayerState.flags & PL_MINISH) == 0) {
            UpdateItemAnim(this);
        }

        if ((++gPlayerState.dash_state) == 0x1e) {
            if ((gPlayerState.flags & PL_FLAGS2) != 0) {
                gPlayerState.dash_state = 0;
                DeleteItemBehavior(this, index);
                return;
            }
            gPlayerState.dash_state = 0x40;
            gPlayerState.field_0xa &= ~(8 >> index);
            this->stateID++;
            if (HasSwordEquipped() && (gPlayerState.flags & PL_MINISH) == 0 &&
                (gPlayerState.skills & SKILL_DASH_ATTACK) != 0) {
                gPlayerState.lastSwordMove = SWORD_MOVE_DASH;
                SetItemAnim(this, ANIM_DASH);
                entity = CreatePlayerItemWithParent(this, PLAYER_ITEM_DASH_SWORD);
                if (entity != NULL) {
                    if (ItemIsSword(gSave.stats.equipped[SLOT_A]) != 0) {
                        uVar3 = gSave.stats.equipped[SLOT_A];
                    } else {
                        uVar3 = gSave.stats.equipped[SLOT_B];
                    }
                    ((GenericEntity*)entity)->field_0x68.HALF.LO = uVar3;
                    return;
                }
            } else if (!(gPlayerState.flags & PL_MINISH)) {
                SetItemAnim(this, ANIM_WALK);
                return;
            } else {
                gPlayerState.animation = ANIM_DASH_MINISH;
                return;
            }
        } else {
            return;
        }
    }
    gPlayerState.dash_state = 0;
    DeleteItemBehavior(this, index);
}

void sub_08076A88(ItemBehavior* this, u32 index) {
    u32 uVar1;
    u32 uVar2;
    u8* ptr;

    if ((IsItemActive(this) != 0) && (gPlayerState.dash_state != 0)) {
        if (!(gPlayerState.flags & PL_MINISH)) {
            gPlayerEntity.base.speed = 0x300;
        } else {
            gPlayerEntity.base.speed = 0x280;
        }
        uVar2 = gUnk_0800275C[(gPlayerEntity.base.animationState & 0xe) * 4];
        if (uVar2 == (gPlayerEntity.base.collisions & uVar2)) {
            if (this->subtimer != 0) {
                gPlayerEntity.base.action = PLAYER_BOUNCE;
                gPlayerEntity.base.subAction = 0;
                COLLISION_OFF(&gPlayerEntity.base);
                gPlayerState.field_0x38 = 0;
                gPlayerState.direction = DIR_NONE;
                return;
            }
            this->subtimer = 1;
            return;
        }
        ptr = gUnk_0811BE38;
        if ((*(u16*)&ptr[(gPlayerEntity.base.animationState & 0xfe)] & gPlayerState.playerInput.heldInput) == 0) {
            this->direction = (this->playerAnimationState & 0xe) * 4;
            if ((gPlayerState.direction != DIR_NONE) && (gPlayerState.direction != this->direction)) {
                if (((gPlayerState.direction - this->direction) & (0x3 | DIR_DIAGONAL | DirectionNorth | DirectionEast |
                                                                   DirectionSouth | DirectionWest)) < DirectionSouth) {
                    this->direction = this->direction + 2;
                }
                this->direction--;
                this->direction &= 0x3 | DIR_DIAGONAL | DirectionNorth | DirectionEast | DirectionSouth | DirectionWest;
            }
            gPlayerState.direction = this->direction;
            UpdateItemAnim(this);
            return;
        }
    }
    gPlayerState.dash_state = 0;
    DeleteItemBehavior(this, index);
}
