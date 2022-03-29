/**
 * @file objectE.c
 * @ingroup Objects
 *
 * @brief ObjectE object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"

void ObjectE(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->timer = 0x14;
        sub_08004168(this);
    } else {
        if (this->timer-- == 0) {
            sub_0807B7D8(0x35, COORD_TO_TILE(this), this->collisionLayer);
            CreateFx(this, FX_FALL_DOWN, 0x40);
            SoundReq(SFX_126);
            DeleteThisEntity();
        }
    }
}
