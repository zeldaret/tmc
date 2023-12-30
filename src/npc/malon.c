/**
 * @file malon.c
 * @ingroup NPCs
 *
 * @brief Malon NPC
 */
#include "entity.h"
#include "npc.h"
#include "script.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
} MalonEntity;

void sub_08065864(Entity* this);
void sub_08065880(Entity* this);
void sub_08065888(MalonEntity* this);
void sub_080658BC(MalonEntity* this);
void sub_08065900(MalonEntity* this);

void Malon(MalonEntity* this) {
    static void (*const actionFuncs[])(Entity * this) = {
        sub_08065864,
        sub_08065880,
    };
    static void (*const scriptedActionFuncs[])(MalonEntity * this) = {
        sub_08065888,
        sub_080658BC,
        sub_08065900,
    };
    if (super->flags & ENT_SCRIPTED) {
        scriptedActionFuncs[super->action](this);
    } else {
        actionFuncs[super->action](super);
        if (super->action != 0) {
            sub_0806ED78(super);
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

void sub_08065888(MalonEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    super->animationState = 4;
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
    InitScriptForNPC(super);
}

void sub_080658BC(MalonEntity* this) {
    if (super->interactType == INTERACTION_FUSE) {
        super->action = 2;
        super->interactType = INTERACTION_NONE;
        InitAnimationForceUpdate(super, GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
        InitializeNPCFusion(super);
    } else {
        ExecuteScriptAndHandleAnimation(super, NULL);
    }
}

void sub_08065900(MalonEntity* this) {
    if (UpdateFuseInteraction(super) != 0) {
        super->action = 1;
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
