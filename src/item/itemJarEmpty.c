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
    sub_0806F948(&gPlayerEntity);
    sub_08077BB8(this);
    this->priority |= 0xf;
    tmp = this->behaviorId;
    this->timer = gSave.filler86[tmp + 0x14];
    switch (this->timer) {
        case 0x20:
            SetItemAnim(this, 0x614);
            return;
        case 0x21:
        case 0x22:
        case 0x23:
        case 0x24:
        case 0x25:
        case 0x29:
        case 0x2a:
        case 0x2b:
        case 0x2c:
        case 0x2d:
        case 0x2e:
            this->stateID = 3;
            gPlayerEntity.animationState = 4;
            gPlayerEntity.spriteSettings.flipX = 0;
            SetItemAnim(this, 0x2df);
            break;
        case 0x2f:
        case 0x30:
        case 0x31:
        default:
            this->stateID = 3;
            SetItemAnim(this, 0x610);
            break;
    }
    gPlayerEntity.flags &= ~ENT_COLLIDE;
}

void sub_08077618(ItemBehavior* this, u32 index) {
    if ((this->playerFrame & 0x80) != 0) {
        SetItemAnim(this, 0x618);
        this->stateID++;
    } else {
        UpdateItemAnim(this);
    }
}

void sub_08077640(ItemBehavior* this, u32 index) {
    UpdateItemAnim(this);
    if ((this->playerFrame & 0x80) != 0) {
        gPlayerEntity.flags |= ENT_COLLIDE;
        DeleteItemBehavior(this, index);
    }
}

void sub_0807766C(ItemBehavior* this, u32 index) {
    UpdateItemAnim(this);
    if ((this->playerFrame & 0x80) != 0) {
        gPlayerEntity.flags |= ENT_COLLIDE;
        DeleteItemBehavior(this, index);
    }
}
