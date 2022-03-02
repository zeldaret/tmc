#include "functions.h"
#include "npc.h"
#include "item.h"

extern Hitbox gUnk_0810C428;

extern u8 gUnk_0810C430[4];
extern u8 gUnk_0810C435[];
extern u8 gUnk_0810C43D[];
extern u32 GetRandomByWeight(const u8*);

void Pita(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        SetDefaultPriority(this, PRIO_MESSAGE);
        SortEntityAbove(this, this);
        this->hitbox = &gUnk_0810C428;
        sub_0807DD64(this);
    }
    sub_0807DD94(this, NULL);
    if ((this->frame & 1) != 0) {
        InitAnimationForceUpdate(this, (u32)(this->animationState >> 1));
        this->field_0x80.HWORD = this->animIndex;
    }
}

/** Reset the players baked goods? */
void sub_08062EB8(void) {
    SetInventoryValue(ITEM_BRIOCHE, 0);
    SetInventoryValue(ITEM_CROISSANT, 0);
    SetInventoryValue(ITEM_PIE, 0);
    SetInventoryValue(ITEM_CAKE, 0);
}

bool32 sub_08062EDC(Entity* this, ScriptExecutionContext* context) {
    u32 tmp;
    u32 tmp2;

    //! @bug: tmp is uninitialized, in practice player must have an item here
    if (GetInventoryValue(ITEM_BRIOCHE) != 0) {
        tmp = 0;
    }
    if (GetInventoryValue(ITEM_CROISSANT) != 0) {
        tmp = 1;
    }
    if (GetInventoryValue(ITEM_PIE) != 0) {
        tmp = 2;
    }
    if (GetInventoryValue(ITEM_CAKE) != 0) {
        tmp = 3;
    }
    if (CheckLocalFlag(SHOP03_PAN_1ST) == 0) {
        SetLocalFlag(SHOP03_PAN_1ST);
        tmp = 4;
    }
    if ((Random() & 0xff) > gUnk_0810C430[tmp]) {
        context->condition = FALSE;
        return FALSE;
    } else {
        tmp = GetRandomByWeight(gUnk_0810C435);
        tmp2 = gUnk_0810C43D[tmp];
        sub_080A7C18(0x5c, tmp2, 1);
        MessageNoOverlap(0x3c05, this);
        context->condition = TRUE;
        return TRUE;
    }
}
