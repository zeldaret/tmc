/**
 * @file enemy66.c
 * @ingroup Enemies
 *
 * @brief Enemy66 enemy
 */
#include "entity.h"

void (*const gUnk_080D2ABC[])(Entity*);
extern void sub_08029270(Entity* this);

void Enemy66(Entity* this) {
    if (gUnk_080D2ABC[this->subtimer]) {
        gUnk_080D2ABC[this->subtimer](this);
    } else {
        DeleteThisEntity();
    }
}

void (*const gUnk_080D2ABC[103])(Entity*) = {
    [22] = sub_08029270,
};
