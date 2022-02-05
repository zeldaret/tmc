#include "asm.h"
#include "item.h"
#include "sound.h"
#include "functions.h"
#include "effects.h"
#include "game.h"
#include "save.h"

void (*const ItemPegasusBoots_StateFunctions[])(ItemBehavior* beh, u32);

void sub_08076964(ItemBehavior*, u32);
extern bool32 sub_0807A158();
extern Entity* CreatePlayerBomb(ItemBehavior*, u32);

extern u16 gUnk_0800275C[];
extern u8 gUnk_0811BE38[];

void ItemPegasusBoots(ItemBehavior* this, u32 arg1) {
    u32 bVar1;
    Entity* fx;
    u32 uVar4;

    if (gPlayerEntity.field_0x7a.HWORD != 0) {
        gPlayerState.dash_state = 0;
        gPlayerState.field_0xe = 0;
        sub_08077E78(this, arg1);
    } else {
        bVar1 = this->field_0x5[2] - 1;
        this->field_0x5[2] = bVar1;
        if ((bVar1 & 7) == 0) {
            SoundReq(SFX_PLY_LAND);
        }
        if (((gPlayerState.flags & PL_MINISH) == 0) && ((this->field_0x5[2] & 7) == 0)) {
            if (gPlayerState.floor_type == SURFACE_SWAMP) {
                if (gPlayerEntity.spriteOffsetY == 0) {
                    CreateFx(&gPlayerEntity, FX_GREEN_SPLASH, 0);
                }
            } else {
                fx = CreateFx(&gPlayerEntity, FX_DASH, 0x40);
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
        ItemPegasusBoots_StateFunctions[this->stateID](this, arg1);
    }
}

void sub_080768F8(ItemBehavior* this, u32 arg1) {
    u32 bVar1;
    u32 bVar2;

    bVar1 = gPlayerState.field_0x1c | gPlayerState.field_0x3[1] | gPlayerState.heldObject | gPlayerState.jump_status;
    bVar2 = (gPlayerState.flags & PL_IN_MINECART);
    bVar1 |= bVar2;
    if (bVar1 == 0) {
        gPlayerState.dash_state = 1;
        gPlayerState.field_0x1f[2] = bVar1;
        if ((gPlayerState.flags & PL_MINISH) == 0) {
            this->field_0x5[2] = 0x10;
        } else {
            gPlayerState.animation = 0xc14;
        }
        sub_08077D38(this, arg1);
        sub_08076964(this, arg1);
    } else {
        gPlayerState.dash_state = 0;
        gPlayerState.field_0xe = 0;
        sub_08077E78(this, arg1);
    }
}

void sub_08076964(ItemBehavior* this, u32 arg1) {
    Entity* bombEntity;
    u32 uVar3;
    if (sub_08077EFC(this) && gPlayerEntity.z.WORD == 0 && gPlayerState.dash_state) {
        UpdateItemAnim(this);

        if ((gPlayerState.flags & PL_MINISH) == 0) {
            UpdateItemAnim(this);
        }

        if ((++gPlayerState.dash_state) == 0x1e) {
            if ((gPlayerState.flags & PL_FLAGS2) != 0) {
                gPlayerState.dash_state = 0;
                sub_08077E78(this, arg1);
                return;
            }
            gPlayerState.dash_state = 0x40;
            gPlayerState.field_0xa &= ~(8 >> arg1);
            this->stateID++;
            if (sub_0807A158() && (gPlayerState.flags & PL_MINISH) == 0 && (gPlayerState.field_0xac & 4) != 0) {
                gPlayerState.field_0xab = 3;
                sub_08077DF4(this, 0x298);
                bombEntity = CreatePlayerBomb(this, 0xc);
                if (bombEntity != NULL) {
                    if (ItemIsSword(gSave.stats.itemButtons[SLOT_A]) != 0) {
                        uVar3 = gSave.stats.itemButtons[SLOT_A];
                    } else {
                        uVar3 = gSave.stats.itemButtons[SLOT_B];
                    }
                    bombEntity->field_0x68.HALF.LO = uVar3;
                    return;
                }
            } else if ((gPlayerState.flags & PL_MINISH) == 0) {
                sub_08077DF4(this, 0x104);
                return;
            } else {
                gPlayerState.animation = 0xc10;
                return;
            }
        } else {
            return;
        }
    }
    gPlayerState.dash_state = 0;
    sub_08077E78(this, arg1);
}

void sub_08076A88(ItemBehavior* this, u32 arg1) {
    u32 uVar1;
    u32 uVar2;
    u8* ptr;

    if ((sub_08077EFC(this) != 0) && (gPlayerState.dash_state != 0)) {
        if ((gPlayerState.flags & PL_MINISH) == 0) {
            gPlayerEntity.speed = 0x300;
        } else {
            gPlayerEntity.speed = 0x280;
        }
        uVar2 = gUnk_0800275C[(gPlayerEntity.animationState & 0xe) * 4];
        if (uVar2 == (gPlayerEntity.collisions & uVar2)) {
            if (this->field_0x5[3] != 0) {
                gPlayerEntity.action = 6;
                gPlayerEntity.subAction = 0;
                COLLISION_OFF(&gPlayerEntity);
                gPlayerState.field_0x38 = 0;
                gPlayerState.field_0xd = 0xff;
                return;
            }
            this->field_0x5[3] = 1;
            return;
        }
        ptr = gUnk_0811BE38;
        if ((*(u16*)&ptr[(gPlayerEntity.animationState & 0xfe)] & gPlayerState.field_0x90) == 0) {
            this->field_0x5[6] = (this->field_0x5[5] & 0xe) * 4;
            if ((gPlayerState.field_0xd != 0xff) && (gPlayerState.field_0xd != this->field_0x5[6])) {
                if (((gPlayerState.field_0xd - this->field_0x5[6]) & 0x1f) < 0x10) {
                    this->field_0x5[6] = this->field_0x5[6] + 2;
                }
                this->field_0x5[6]--;
                this->field_0x5[6] &= 0x1f;
            }
            gPlayerState.field_0xd = this->field_0x5[6];
            UpdateItemAnim(this);
            return;
        }
    }
    gPlayerState.dash_state = 0;
    sub_08077E78(this, arg1);
}

void (*const ItemPegasusBoots_StateFunctions[])(ItemBehavior* beh, u32) = {
    sub_080768F8,
    sub_08076964,
    sub_08076A88,
};
