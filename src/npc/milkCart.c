/**
 * @file milkCart.c
 * @ingroup NPCs
 *
 * @brief Milk Cart NPC
 */
#include "entity.h"
#include "npc.h"

void sub_08065B6C(Entity*);
void sub_08065B9C(Entity*);

void MilkCart(Entity* ent) {
    static void (*const gMilkCartBehaviors[2])(Entity*) = {
        sub_08065B6C,
        sub_08065B9C,
    };
    gMilkCartBehaviors[ent->action](ent);
    sub_0806ED78(ent);
}

void sub_08065B6C(Entity* ent) {
    ent->action++;
    ent->spriteSettings.draw = 1;
    ent->y.HALF.LO += -0x8000;
    ent->animationState = 6;
    InitAnimationForceUpdate(ent, 3);
}

void sub_08065B9C(Entity* ent) {
    UpdateAnimationSingleFrame(ent);
}
