/**
 * @file object69.c
 * @ingroup Objects
 *
 * @brief Object69 object
 */
#include "entity.h"
#include "hitbox.h"
#include "functions.h"

void Object69(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        if (this->action == 0) {
            this->action = 1;
            this->hitbox = (Hitbox*)&gHitbox_2;
            sub_0807DD50(this);
        } else {
            sub_0807DD94(this, NULL);
        }
    } else {
        this->action = 1;
    }
}
