#include "item.h"
#include "functions.h"
#include "sound.h"
#include "object.h"
#include "game.h"

extern void (*const gUnk_0811BD68[])(ItemBehavior*, u32);

extern s8 gUnk_08126EEC[];
extern Entity* sub_08077BD4(ItemBehavior*);

extern bool32 sub_08077F10(ItemBehavior*);

extern void sub_0807AB44(Entity*, s32, s32);

void ItemLantern(ItemBehavior* this, u32 arg1) {
    gUnk_0811BD68[this->stateID](this, arg1);
}

void sub_08075A0C(ItemBehavior* this, u32 arg1) {
    Entity* object;
    u32 itemSlot;
    s8* tmp;
    itemSlot = IsItemEquipped(this->behaviorID);
    if (gPlayerState.heldObject != 0 || gPlayerState.queued_action == PLAYER_ROLL || gPlayerState.jump_status != 0 ||
        gPlayerState.item != NULL || (gPlayerState.flags & PL_MINISH) != 0) {
        ForceEquipItem(ITEM_LANTERN_OFF, itemSlot);
        gPlayerState.flags &= ~PL_USE_LANTERN;
        ForceEquipItem(ITEM_LANTERN_OFF, itemSlot);
        sub_08077E78(this, arg1);
    } else {
        this->field_0x5[4] |= 0x80;
        sub_08077D38(this, arg1);
        sub_08077BD4(this);
        sub_0806F948(&gPlayerEntity);
        this->behaviorID = 0x10;
        ForceEquipItem(ITEM_LANTERN_ON, itemSlot);
        tmp = &gUnk_08126EEC[gPlayerEntity.animationState & 6];
        object = CreateObjectWithParent(&gPlayerEntity, OBJECT_45, 1, 0);
        if (object != NULL) {
            object->spriteVramOffset = gPlayerEntity.spriteVramOffset;
            object->x.HALF.HI = tmp[0] + object->x.HALF.HI;
            object->y.HALF.HI = tmp[1] + object->y.HALF.HI;
        }
    }
}

void sub_08075ADC(ItemBehavior* this, u32 arg1) {
    u32 bVar1;

    if (
#ifndef EU
        gPlayerState.item != NULL ||
#endif
        (this->field_0x5[9] & 1) == 0 || (gPlayerState.flags & (PL_DISABLE_ITEMS | PL_CAPTURED)) != 0 ||
        sub_08079D48() == 0) {
        this->field_0xf = 0;
        this->stateID += 1;
        gPlayerState.flags |= PL_USE_LANTERN;
        bVar1 = 8 >> arg1;
        gPlayerState.field_0x3[1] = gPlayerState.field_0x3[1] & ~((bVar1 << 4) | bVar1);
        bVar1 = ~bVar1;
        gPlayerState.field_0xa = bVar1 & gPlayerState.field_0xa;
        gPlayerState.keepFacing = bVar1 & gPlayerState.keepFacing;
        SoundReq(SFX_ITEM_LANTERN_ON);
    } else {
        UpdateItemAnim(this);
    }
}

void sub_08075B54(ItemBehavior* this, u32 arg1) {
    u32 bVar1;
    u32 itemSlot;
    Entity* object;
    s8* tmp;

    if ((gPlayerState.flags & (PL_CAPTURED | PL_DISABLE_ITEMS)) == 0) {
        itemSlot = IsItemEquipped(this->behaviorID);
        if (!(((sub_08077F10(this) == 0) && (itemSlot < 2)) || (gPlayerState.jump_status != 0))) {
            ForceEquipItem(ITEM_LANTERN_OFF, itemSlot);
            gPlayerState.flags &= ~PL_USE_LANTERN;
            sub_08077E78(this, arg1);
            SoundReq(SFX_ITEM_LANTERN_OFF);
        } else {
            if (((gPlayerState.queued_action != PLAYER_ROLL) && (gPlayerEntity.frameIndex < 0x37)) &&
                ((u16)gPlayerEntity.spriteIndex == 6)) {
                tmp = &gUnk_08126EEC[gPlayerEntity.animationState & 6];

                if ((gPlayerState.jump_status == 0) &&
                    (sub_080002F0(TILE(gPlayerEntity.x.HALF.HI + tmp[0], gPlayerEntity.y.HALF.HI + tmp[1]),
                                  gPlayerEntity.collisionLayer, 0x40) != 0)) {
                    this->field_0xf = 0xf;
                    this->stateID += 1;
                    gPlayerEntity.field_0x7a.HWORD = 2;
                    object = CreateObjectWithParent(&gPlayerEntity, OBJECT_45, 1, 0);
                    if (object != NULL) {
                        object->spriteVramOffset = gPlayerEntity.spriteVramOffset;
                        object->x.HALF.HI = tmp[0] + object->x.HALF.HI;
                        object->y.HALF.HI = tmp[1] + object->y.HALF.HI;
                    }
                    sub_08077DF4(this, 0x60c);
                    bVar1 = (8 >> (arg1));
                    gPlayerState.field_0xa = bVar1 | gPlayerState.field_0xa;
                    gPlayerState.keepFacing = bVar1 | gPlayerState.keepFacing;
                }
            }
        }
    }
}

void sub_08075C9C(ItemBehavior* this, u32 arg1) {
    s8* tmp;

    UpdateItemAnim(this);
    if ((this->field_0x5[9] & 0x10) != 0) {
        tmp = &gUnk_08126EEC[gPlayerEntity.animationState & 6];
        sub_0807AB44(&gPlayerEntity, tmp[0], tmp[1]);
    }
    if ((this->field_0x5[9] & 0x80) != 0) {
        this->field_0xf = 0;
        this->stateID -= 1;
        gPlayerState.field_0xa = (~(8 >> arg1)) & gPlayerState.field_0xa;
        gPlayerState.keepFacing = (~(8 >> arg1)) & gPlayerState.keepFacing;
    } else {
        gPlayerEntity.field_0x7a.HWORD += 1;
    }
}
