/**
 * @file sanctuaryStoneTablet.c
 * @ingroup Objects
 *
 * @brief Sanctuary Stone Tablet object
 */
#include "effects.h"
#include "entity.h"
#include "flags.h"
#include "hitbox.h"

typedef struct {
    Entity base;
    u8 filler[0x1E];
    u16 objFlags;
} SanctuaryStoneTabletEntity;

void SanctuaryStoneTablet_Init(SanctuaryStoneTabletEntity*);
void SanctuaryStoneTablet_Action1(SanctuaryStoneTabletEntity*);

void SanctuaryStoneTablet(Entity* this) {
    static void (*const SanctuaryStoneTablet_Actions[])(SanctuaryStoneTabletEntity*) = {
        SanctuaryStoneTablet_Init,
        SanctuaryStoneTablet_Action1,
    };

    SanctuaryStoneTablet_Actions[this->action]((SanctuaryStoneTabletEntity*)this);
}

void SanctuaryStoneTablet_Init(SanctuaryStoneTabletEntity* this) {
    if (CheckFlags(this->objFlags)) {
        DeleteThisEntity();
    }

    super->action = 1;
    COLLISION_ON(super);
    super->collisionFlags = 7;
    super->hurtType = 0x48;
    super->hitType = 1;
    super->collisionMask = 2;
    super->hitbox = (Hitbox*)&gHitbox_0;
}

void SanctuaryStoneTablet_Action1(SanctuaryStoneTabletEntity* this) {
    Entity* fxEnt;

    if (super->contactFlags == (CONTACT_NOW | 0x21)) {
        fxEnt = CreateFx(super, FX_MAGIC_STORM, 0);
        if (fxEnt != NULL) {
            fxEnt->spritePriority.b0 = 3;
            fxEnt->spriteOffsetY = -5;
        }
        SetFlag(this->objFlags);
        DeleteThisEntity();
    }
}
