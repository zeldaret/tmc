/**
 * @file chuchuBossParticle.c
 * @ingroup Objects
 *
 * @brief Chuchu Boss Particle object
 */
#include "entity.h"

void ChuchuBossParticle_Init(Entity*);
void ChuchuBossParticle_Action1(Entity*);

void ChuchuBossParticle(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        ChuchuBossParticle_Init,
        ChuchuBossParticle_Action1,
    };

    actionFuncs[this->action](this);
}

void ChuchuBossParticle_Init(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    InitializeAnimation(this, this->animIndex);
}

void ChuchuBossParticle_Action1(Entity* this) {
    if (this->type == 0) {
        GetNextFrame(this);
    }

    if (this->type2 != 0) {
        this->spriteSettings.draw ^= 1;
    }

    if ((int)(this->timer * 0x1000000) >= 0) {
        if (this->timer) {
            if (--this->timer == 0) {
                DeleteThisEntity();
            }
        } else {
            if ((this->frame & ANIM_DONE) != 0) {
                DeleteThisEntity();
            }
        }
    }

    if (this->child != NULL) {
        this->x = this->child->x;
        this->y = this->child->y;
        this->z = this->child->z;
    }
}
