/**
 * @file fireballChain.c
 * @ingroup Objects
 *
 * @brief Fireball Chain object
 */
#include "entity.h"
#include "functions.h"
#include "global.h"
#include "projectile.h"
#include "projectile/winder.h"

void FireballChain(Entity* this) {
    WinderEntity* newSegment;
    Entity* parent;
    Entity* child;
    s32 i;
    s32 j;

    if (gEntCount > 0x42) {
        return;
    }

    for (i = 0; i < 5; i++) {
        u16* tmp;

        newSegment = (WinderEntity*)CreateProjectile(WINDER);
        if (i == 0) {
            child = parent = &newSegment->base;
        }

        newSegment->base.type = i;
        newSegment->base.parent = parent;
        newSegment->base.child = child;
        CopyPosition(this, &newSegment->base);

        for (j = 0, tmp = newSegment->positions; j < WINDER_NUM_SEGMENTS; j++) {
            *tmp++ = this->x.HALF.HI;
            *tmp++ = this->y.HALF.HI;
        }

        child = &newSegment->base;
    }

    DeleteThisEntity();
}
