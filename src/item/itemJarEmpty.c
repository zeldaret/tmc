#include "item.h"
#include "save.h"
#include "functions.h"

void sub_08077534(ItemBehavior*, u32);
void sub_08077618(ItemBehavior*, u32);
void sub_08077640(ItemBehavior*, u32);
void sub_0807766C(ItemBehavior*, u32);

void ItemJarEmpty(ItemBehavior* this, u32 index) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08077534,
        sub_08077618,
        sub_08077640,
        sub_0807766C,
    };
    stateFuncs[this->stateID](this, index);
}

void sub_08077534(ItemBehavior* this, u32 index) {
    u32 tmp;
    sub_08077D38(this, index);
    sub_0806F948(&gPlayerEntity.base);
    sub_08077BB8(this);
    this->priority |= 0xf;
    tmp = this->behaviorId;
    this->timer = gSave.stats.bottles[tmp - ITEM_BOTTLE1];
    switch (this->timer) {
        case ITEM_BOTTLE_EMPTY:
            SetItemAnim(this, ANIM_BOTTLE_SWING);
            return;
        case ITEM_BOTTLE_BUTTER:
        case ITEM_BOTTLE_MILK:
        case ITEM_BOTTLE_HALF_MILK:
        case ITEM_BOTTLE_RED_POTION:
        case ITEM_BOTTLE_BLUE_POTION:
        case ITEM_BOTTLE_PICOLYTE_RED:
        case ITEM_BOTTLE_PICOLYTE_ORANGE:
        case ITEM_BOTTLE_PICOLYTE_YELLOW:
        case ITEM_BOTTLE_PICOLYTE_GREEN:
        case ITEM_BOTTLE_PICOLYTE_BLUE:
        case ITEM_BOTTLE_PICOLYTE_WHITE:
            this->stateID = 3;
            gPlayerEntity.base.animationState = 4;
            gPlayerEntity.base.spriteSettings.flipX = 0;
            SetItemAnim(this, ANIM_BOTTLE_DRINK);
            break;
        case BOTTLE_CHARM_NAYRU:
        case BOTTLE_CHARM_FARORE:
        case BOTTLE_CHARM_DIN:
        default:
            this->stateID = 3;
            SetItemAnim(this, ANIM_BOTTLE_POUR);
            break;
    }
    gPlayerEntity.base.flags &= ~ENT_COLLIDE;
}

void sub_08077618(ItemBehavior* this, u32 index) {
    if (this->playerFrame & 0x80) {
        SetItemAnim(this, ANIM_BOTTLE_SWING_END);
        this->stateID++;
    } else {
        UpdateItemAnim(this);
    }
}

void sub_08077640(ItemBehavior* this, u32 index) {
    UpdateItemAnim(this);
    if ((this->playerFrame & 0x80) != 0) {
        gPlayerEntity.base.flags |= ENT_COLLIDE;
        DeleteItemBehavior(this, index);
    }
}

void sub_0807766C(ItemBehavior* this, u32 index) {
    UpdateItemAnim(this);
    if ((this->playerFrame & 0x80) != 0) {
        gPlayerEntity.base.flags |= ENT_COLLIDE;
        DeleteItemBehavior(this, index);
    }
}
