/**
 * @file pita.c
 * @ingroup NPCs
 *
 * @brief Pita NPC
 */
#include "item.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[24];
    /*0x80*/ u16 unk_80;
} PitaEntity;

void Pita(PitaEntity* this) {
    static const Hitbox gUnk_0810C428 = {
        0,
        2,
        { 0, 0, 0, 0 },
#if EU
        6,
#else
        10,
#endif
        18,
    };
    if (super->action == 0) {
        super->action++;
        SetEntityPriority(super, PRIO_MESSAGE);
        SortEntityAbove(super, super);
        super->hitbox = (Hitbox*)&gUnk_0810C428;
        sub_0807DD64(super);
    }
    ExecuteScriptAndHandleAnimation(super, NULL);
    if ((super->frame & 1) != 0) {
        InitAnimationForceUpdate(super, (u32)(super->animationState >> 1));
        this->unk_80 = super->animIndex;
    }
}

/** Reset the players baked goods? */
void RemoveAllBakedGoods(void) {
    SetInventoryValue(ITEM_BRIOCHE, 0);
    SetInventoryValue(ITEM_CROISSANT, 0);
    SetInventoryValue(ITEM_PIE, 0);
    SetInventoryValue(ITEM_CAKE, 0);
}

bool32 sub_08062EDC(Entity* this, ScriptExecutionContext* context) {
    u32 tmp;
    u32 kinstoneId;
    static const u8 chanceForPrize[] = { 0x20, 0x40, 0x60, 0x80, 0xFF };
    static const u8 chancesPerType[] = { 0x10, 0x10, 0x10, 0x20, 0x20, 0x30, 0x30, 0x30 };
    static const u8 kinstoneTypes[] = { 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75 };

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
    if ((Random() & 0xff) > chanceForPrize[tmp]) {
        context->condition = FALSE;
        return FALSE;
    } else {
        tmp = GetRandomByWeight(chancesPerType);
        kinstoneId = kinstoneTypes[tmp];
        InitItemGetSequence(ITEM_KINSTONE, kinstoneId, 1);
        MessageNoOverlap(TEXT_INDEX(TEXT_BAKERY, 0x5), this);
        context->condition = TRUE;
        return TRUE;
    }
}
