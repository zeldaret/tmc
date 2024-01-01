/**
 * @file keatonDagger.c
 * @ingroup Projectiles
 *
 * @brief Keaton Dagger Projectile
 */
#include "entity.h"
#include "player.h"
#include "physics.h"

extern void sub_0803C0AC(Entity*);

extern const Hitbox* const gUnk_08129998[];

void KeatonDagger(Entity* this) {
    Entity* parent;

    if (this->action == 0) {
        this->action = 1;
    }
    parent = this->parent;
    if (((parent == NULL) || (parent->health == 0)) || (parent->next == NULL)) {
        if (((this->contactFlags & CONTACT_NOW) != 0) && (this->contactedEntity == &gPlayerEntity.base)) {
            sub_0803C0AC(this);
        }
        DeleteEntity(this);
    } else {
        this->hitbox = (Hitbox*)gUnk_08129998[parent->animationState];
        CopyPosition(parent, this);
        if ((parent->iframes != 0) && (this->iframes == 0)) {
            this->iframes = 0xff;
        }
    }
}

extern const Hitbox gUnk_081299A8;
extern const Hitbox gUnk_081299B0;
extern const Hitbox gUnk_081299B8;
extern const Hitbox gUnk_081299C0;

const Hitbox* const gUnk_08129998[] = {
    &gUnk_081299A8,
    &gUnk_081299B0,
    &gUnk_081299B8,
    &gUnk_081299C0,
};

const Hitbox gUnk_081299A8 = { 4, -16, { 0, 0, 0, 0 }, 2, 3 };
const Hitbox gUnk_081299B0 = { 9, -2, { 0, 0, 0, 0 }, 3, 2 };
const Hitbox gUnk_081299B8 = { -4, 1, { 0, 0, 0, 0 }, 2, 3 };
const Hitbox gUnk_081299C0 = { -9, -2, { 0, 0, 0, 0 }, 3, 3 };
