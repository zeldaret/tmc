/**
 * @file vaati2Particle.c
 * @ingroup Objects
 *
 * @brief Vaati2 Particle object
 */
#include "entity.h"
#include "physics.h"

void Vaati2Particle_Init(Entity*);
void Vaati2Particle_Action1(Entity*);
void sub_0809E7FC(Entity*);

void Vaati2Particle(Entity* this) {
    static void (*const Vaati2Particle_Actions[])(Entity*) = {
        Vaati2Particle_Init,
        Vaati2Particle_Action1,
    };

    Vaati2Particle_Actions[this->action]((Entity*)this);
}

void Vaati2Particle_Init(Entity* this) {
    this->action = 1;
    if (this->type2 != 0xff) {
        sub_0809E7FC(this);
    }
    InitializeAnimation(this, this->type);
}

void Vaati2Particle_Action1(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        DeleteThisEntity();
    }
}

void sub_0809E7FC(Entity* this) {
    static const s8 gUnk_081242D8[] = {
        0, -24, 16, -16, 24, 0, 16, 16, 0, 24, -16, 16, -24, 0, -16, -16,
    };
    const s8* ptr;

    ptr = &gUnk_081242D8[this->type2 * 2];
    PositionRelative(this->parent, this, ptr[0] << 0x10, ptr[1] << 0x10);
}
