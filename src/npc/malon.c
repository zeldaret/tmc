#include "global.h"
#include "entity.h"
#include "script.h"
#include "npc.h"

extern void (*gUnk_0810FF5C[])(Entity* this);
extern void (*gUnk_0810FF64[])(Entity* this);

void Malon(Entity* this) {
    if (this->flags & ENT_SCRIPTED) {
        gUnk_0810FF64[this->action](this);
    } else {
        gUnk_0810FF5C[this->action](this);
        if (this->action != 0) {
            sub_0806ED78(this);
        }
    }
}

void sub_08065864(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    InitAnimationForceUpdate(this, 0xC);
}

void sub_08065880(Entity* this) {
    UpdateAnimationSingleFrame(this);
}

void sub_08065888(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->animationState = 4;
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
    sub_0807DD50(this);
}

void sub_080658BC(Entity* this) {
    if (this->interactType == 2) {
        this->action = 2;
        this->interactType = 0;
        InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
        sub_0806F118(this);
    } else {
        sub_0807DD94(this, NULL);
    }
}

void sub_08065900(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
    }
}

void sub_08065914(Entity* this) {
    Entity* target;

    target = FindEntityByID(NPC, EPONA, 7);
    if (target != NULL) {
        PositionRelative(this, target, Q_16_16(24.0), Q_16_16(-1.0));
        target->parent = this;
    }
    target = FindEntityByID(NPC, MILK_CART, 7);
    if (target != NULL) {
        PositionRelative(this, target, Q_16_16(40.0), 0);
        target->parent = this;
    }
}

void Malon_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 0xC);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
