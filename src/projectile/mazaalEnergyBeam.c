/**
 * @file mazaalEnergyBeam.c
 * @ingroup Projectiles
 *
 * @brief Mazaal Energy Beam Projectile
 */
#include "entity.h"
#include "physics.h"
#include "sound.h"

extern void (*const MazaalEnergyBeam_Actions[])(Entity*);

void MazaalEnergyBeam(Entity* this) {
    MazaalEnergyBeam_Actions[this->action](this);
}

void MazaalEnergyBeam_Init(Entity* this) {
    this->action = 1;
    this->timer = 10;
    this->z.HALF.HI -= 2;
    this->y.HALF.HI += 2;
    InitializeAnimation(this, 0);
    SoundReq(SFX_149);
}

void MazaalEnergyBeam_Action1(Entity* this) {
    const s16* tmp;

    if (--this->timer == 0) {
        this->action = 2;
        COLLISION_OFF(this);
        this->spritePriority.b0 = 7;
        this->y.HALF.HI += 6;
        InitializeAnimation(this, 1);
    } else {
        if (this->z.HALF.HI != 0) {
            this->z.HALF.HI++;
        }

        tmp = &gSineTable[this->direction];
        this->x.WORD += tmp[0] * this->speed;
        this->y.WORD -= tmp[0x40] * this->speed;
        GetNextFrame(this);
    }
}

void MazaalEnergyBeam_Action2(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
        DeleteEntity(this);
    }
}

void (*const MazaalEnergyBeam_Actions[])(Entity*) = {
    MazaalEnergyBeam_Init,
    MazaalEnergyBeam_Action1,
    MazaalEnergyBeam_Action2,
};
