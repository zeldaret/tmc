#include "asm.h"
#include "item.h"
#include "sound.h"
#include "functions.h"
#include "effects.h"

extern void (*const gUnk_0811BDCC[])(ItemBehavior* beh, u32);

void sub_08076964(ItemBehavior*, u32);

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
        gUnk_0811BDCC[this->stateID](this, arg1);
    }
}

void sub_080768F8(ItemBehavior* this, u32 arg1) {
    u32 bVar1;
    u32 bVar2;

    bVar1 = gPlayerState.field_0x1c | gPlayerState.field_0x3[1] | gPlayerState.heldObject | gPlayerState.jumpStatus;
    bVar2 = (gPlayerState.flags & 0x1000);
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

ASM_FUNC("asm/non_matching/itemPegasusBoots/sub_08076964.inc", void sub_08076964(ItemBehavior* this, u32 arg1))

ASM_FUNC("asm/non_matching/itemPegasusBoots/sub_08076A88.inc", void sub_08076A88(ItemBehavior* this, u32 arg1))
