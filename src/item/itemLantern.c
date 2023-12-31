#include "functions.h"
#include "game.h"
#include "item.h"
#include "object.h"
#include "sound.h"

extern s8 gUnk_08126EEC[];
extern Entity* CreatePlayerItemForItemIfNotExists(ItemBehavior*);
extern void sub_0807AB44(Entity*, s32, s32);
void sub_08075A0C(ItemBehavior*, u32);
void sub_08075ADC(ItemBehavior*, u32);
void sub_08075B54(ItemBehavior*, u32);
void sub_08075C9C(ItemBehavior*, u32);

void ItemLantern(ItemBehavior* this, u32 index) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08075A0C,
        sub_08075ADC,
        sub_08075B54,
        sub_08075C9C,
    };
    stateFuncs[this->stateID](this, index);
}

void sub_08075A0C(ItemBehavior* this, u32 index) {
    Entity* object;
    EquipSlot equipSlot;
    s8* tmp;
    equipSlot = IsItemEquipped(this->behaviorId);
    if (gPlayerState.heldObject != 0 || gPlayerState.queued_action == PLAYER_ROLL || gPlayerState.jump_status != 0 ||
        gPlayerState.item != NULL || (gPlayerState.flags & PL_MINISH) != 0) {
        ForceEquipItem(ITEM_LANTERN_OFF, equipSlot);
        gPlayerState.flags &= ~PL_USE_LANTERN;
        ForceEquipItem(ITEM_LANTERN_OFF, equipSlot);
        DeleteItemBehavior(this, index);
    } else {
        this->priority |= 0x80;
        sub_08077D38(this, index);
        CreatePlayerItemForItemIfNotExists(this);
        sub_0806F948(&gPlayerEntity.base);
        this->behaviorId = 0x10;
        ForceEquipItem(ITEM_LANTERN_ON, equipSlot);
        tmp = &gUnk_08126EEC[gPlayerEntity.base.animationState & 6];
        object = CreateObjectWithParent(&gPlayerEntity.base, LAMP_PARTICLE, 1, 0);
        if (object != NULL) {
            object->spriteVramOffset = gPlayerEntity.base.spriteVramOffset;
            object->x.HALF.HI = tmp[0] + object->x.HALF.HI;
            object->y.HALF.HI = tmp[1] + object->y.HALF.HI;
        }
    }
}

void sub_08075ADC(ItemBehavior* this, u32 index) {
    u32 bVar1;

    if (
#ifndef EU
        gPlayerState.item != NULL ||
#endif
        (this->playerFrame & 1) == 0 || (gPlayerState.flags & (PL_DISABLE_ITEMS | PL_CAPTURED)) != 0 ||
        sub_08079D48() == 0) {
        this->animPriority = 0;
        this->stateID++;
        gPlayerState.flags |= PL_USE_LANTERN;
        bVar1 = 8 >> index;
        gPlayerState.attack_status &= ~((bVar1 << 4) | bVar1);
        bVar1 = ~bVar1;
        gPlayerState.field_0xa = bVar1 & gPlayerState.field_0xa;
        gPlayerState.keepFacing = bVar1 & gPlayerState.keepFacing;
        SoundReq(SFX_ITEM_LANTERN_ON);
    } else {
        UpdateItemAnim(this);
    }
}

void sub_08075B54(ItemBehavior* this, u32 index) {
    u32 bVar1;
    EquipSlot equipSlot;
    Entity* object;
    s8* tmp;

    if ((gPlayerState.flags & (PL_CAPTURED | PL_DISABLE_ITEMS)) == 0) {
        equipSlot = IsItemEquipped(this->behaviorId);
        if (!(((IsItemActivatedThisFrame(this) == 0) && (equipSlot < EQUIP_SLOT_NONE)) ||
              (gPlayerState.jump_status != 0))) {
            ForceEquipItem(ITEM_LANTERN_OFF, equipSlot);
            gPlayerState.flags &= ~PL_USE_LANTERN;
            DeleteItemBehavior(this, index);
            SoundReq(SFX_ITEM_LANTERN_OFF);
        } else {
            if (((gPlayerState.queued_action != PLAYER_ROLL) && (gPlayerEntity.base.frameIndex < 0x37)) &&
                ((u16)gPlayerEntity.base.spriteIndex == 6)) {
                tmp = &gUnk_08126EEC[gPlayerEntity.base.animationState & 6];

                if ((gPlayerState.jump_status == 0) &&
                    (sub_080B1BA4(TILE(gPlayerEntity.base.x.HALF.HI + tmp[0], gPlayerEntity.base.y.HALF.HI + tmp[1]),
                                  gPlayerEntity.base.collisionLayer, 0x40) != 0)) {
                    this->animPriority = 0xf;
                    this->stateID++;
                    gPlayerEntity.unk_7a = 2;
                    object = CreateObjectWithParent(&gPlayerEntity.base, LAMP_PARTICLE, 1, 0);
                    if (object != NULL) {
                        object->spriteVramOffset = gPlayerEntity.base.spriteVramOffset;
                        object->x.HALF.HI = tmp[0] + object->x.HALF.HI;
                        object->y.HALF.HI = tmp[1] + object->y.HALF.HI;
                    }
                    SetItemAnim(this, ANIM_LANTERN_BURN);
                    bVar1 = (8 >> (index));
                    gPlayerState.field_0xa |= bVar1;
                    gPlayerState.keepFacing |= bVar1;
                }
            }
        }
    }
}

void sub_08075C9C(ItemBehavior* this, u32 index) {
    s8* tmp;

    UpdateItemAnim(this);
    if ((this->playerFrame & 0x10) != 0) {
        tmp = &gUnk_08126EEC[gPlayerEntity.base.animationState & 6];
        sub_0807AB44(&gPlayerEntity.base, tmp[0], tmp[1]);
    }
    if ((this->playerFrame & 0x80) != 0) {
        this->animPriority = 0;
        this->stateID--;
        gPlayerState.field_0xa = (~(8 >> index)) & gPlayerState.field_0xa;
        gPlayerState.keepFacing = (~(8 >> index)) & gPlayerState.keepFacing;
    } else {
        gPlayerEntity.unk_7a++;
    }
}
