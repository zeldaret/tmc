#include "item.h"
#include "functions.h"
#include "sound.h"
#include "object.h"
#include "game.h"

extern s8 gUnk_08126EEC[];
extern Entity* sub_08077BD4(ItemBehavior*);
extern void sub_0807AB44(Entity*, s32, s32);
void sub_08075A0C(ItemBehavior*, u32);
void sub_08075ADC(ItemBehavior*, u32);
void sub_08075B54(ItemBehavior*, u32);
void sub_08075C9C(ItemBehavior*, u32);

void ItemLantern(ItemBehavior* this, u32 idx) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08075A0C,
        sub_08075ADC,
        sub_08075B54,
        sub_08075C9C,
    };
    stateFuncs[this->stateID](this, idx);
}

void sub_08075A0C(ItemBehavior* this, u32 idx) {
    Entity* object;
    u32 itemSlot;
    s8* tmp;
    itemSlot = IsItemEquipped(this->behaviorID);
    if (gPlayerState.heldObject != 0 || gPlayerState.queued_action == PLAYER_ROLL || gPlayerState.jump_status != 0 ||
        gPlayerState.item != NULL || (gPlayerState.flags & PL_MINISH) != 0) {
        ForceEquipItem(ITEM_LANTERN_OFF, itemSlot);
        gPlayerState.flags &= ~PL_USE_LANTERN;
        ForceEquipItem(ITEM_LANTERN_OFF, itemSlot);
        DeletePlayerItem(this, idx);
    } else {
        this->field_0x9 |= 0x80;
        sub_08077D38(this, idx);
        sub_08077BD4(this);
        sub_0806F948(&gPlayerEntity);
        this->behaviorID = 0x10;
        ForceEquipItem(ITEM_LANTERN_ON, itemSlot);
        tmp = &gUnk_08126EEC[gPlayerEntity.animationState & 6];
        object = CreateObjectWithParent(&gPlayerEntity, LAMP_PARTICLE, 1, 0);
        if (object != NULL) {
            object->spriteVramOffset = gPlayerEntity.spriteVramOffset;
            object->x.HALF.HI = tmp[0] + object->x.HALF.HI;
            object->y.HALF.HI = tmp[1] + object->y.HALF.HI;
        }
    }
}

void sub_08075ADC(ItemBehavior* this, u32 idx) {
    u32 bVar1;

    if (
#ifndef EU
        gPlayerState.item != NULL ||
#endif
        (this->playerFrame & 1) == 0 || (gPlayerState.flags & (PL_DISABLE_ITEMS | PL_CAPTURED)) != 0 ||
        sub_08079D48() == 0) {
        this->field_0xf = 0;
        this->stateID++;
        gPlayerState.flags |= PL_USE_LANTERN;
        bVar1 = 8 >> idx;
        gPlayerState.field_0x3[1] = gPlayerState.field_0x3[1] & ~((bVar1 << 4) | bVar1);
        bVar1 = ~bVar1;
        gPlayerState.field_0xa = bVar1 & gPlayerState.field_0xa;
        gPlayerState.keepFacing = bVar1 & gPlayerState.keepFacing;
        SoundReq(SFX_ITEM_LANTERN_ON);
    } else {
        UpdateItemAnim(this);
    }
}

void sub_08075B54(ItemBehavior* this, u32 idx) {
    u32 bVar1;
    u32 itemSlot;
    Entity* object;
    s8* tmp;

    if ((gPlayerState.flags & (PL_CAPTURED | PL_DISABLE_ITEMS)) == 0) {
        itemSlot = IsItemEquipped(this->behaviorID);
        if (!(((sub_08077F10(this) == 0) && (itemSlot < 2)) || (gPlayerState.jump_status != 0))) {
            ForceEquipItem(ITEM_LANTERN_OFF, itemSlot);
            gPlayerState.flags &= ~PL_USE_LANTERN;
            DeletePlayerItem(this, idx);
            SoundReq(SFX_ITEM_LANTERN_OFF);
        } else {
            if (((gPlayerState.queued_action != PLAYER_ROLL) && (gPlayerEntity.frameIndex < 0x37)) &&
                ((u16)gPlayerEntity.spriteIndex == 6)) {
                tmp = &gUnk_08126EEC[gPlayerEntity.animationState & 6];

                if ((gPlayerState.jump_status == 0) &&
                    (sub_080B1BA4(TILE(gPlayerEntity.x.HALF.HI + tmp[0], gPlayerEntity.y.HALF.HI + tmp[1]),
                                  gPlayerEntity.collisionLayer, 0x40) != 0)) {
                    this->field_0xf = 0xf;
                    this->stateID++;
                    gPlayerEntity.field_0x7a.HWORD = 2;
                    object = CreateObjectWithParent(&gPlayerEntity, LAMP_PARTICLE, 1, 0);
                    if (object != NULL) {
                        object->spriteVramOffset = gPlayerEntity.spriteVramOffset;
                        object->x.HALF.HI = tmp[0] + object->x.HALF.HI;
                        object->y.HALF.HI = tmp[1] + object->y.HALF.HI;
                    }
                    sub_08077DF4(this, 0x60c);
                    bVar1 = (8 >> (idx));
                    gPlayerState.field_0xa |= bVar1;
                    gPlayerState.keepFacing |= bVar1;
                }
            }
        }
    }
}

void sub_08075C9C(ItemBehavior* this, u32 idx) {
    s8* tmp;

    UpdateItemAnim(this);
    if ((this->playerFrame & 0x10) != 0) {
        tmp = &gUnk_08126EEC[gPlayerEntity.animationState & 6];
        sub_0807AB44(&gPlayerEntity, tmp[0], tmp[1]);
    }
    if ((this->playerFrame & 0x80) != 0) {
        this->field_0xf = 0;
        this->stateID--;
        gPlayerState.field_0xa = (~(8 >> idx)) & gPlayerState.field_0xa;
        gPlayerState.keepFacing = (~(8 >> idx)) & gPlayerState.keepFacing;
    } else {
        gPlayerEntity.field_0x7a.HWORD++;
    }
}
