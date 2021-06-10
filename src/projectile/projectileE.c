#include "entity.h"
#include "audio.h"
#include "coord.h"

extern void (*const gUnk_08129A64[])(Entity*);

void ProjectileE(Entity* this) {
    gUnk_08129A64[this->action](this);
}

void sub_080A9518(Entity* this) {
    this->action = 1;
    this->actionDelay = 10;
    this->height.HALF.HI -= 2;
    this->y.HALF.HI += 2;
    InitializeAnimation(this, 0);
    SoundReq(SFX_149);
}

void sub_080A9540(Entity* this) {
    const s16* tmp;

    if (--this->actionDelay == 0) {
        this->action = 2;
        this->flags &= 0x7f;
        this->spritePriority.b0 = 7;
        this->y.HALF.HI += 6;
        InitializeAnimation(this, 1);
    } else {
        if (this->height.HALF.HI != 0) {
            this->height.HALF.HI += 1;
        }

        tmp = &gSineTable[this->direction];
        this->x.WORD += tmp[0] * this->speed;
        this->y.WORD -= tmp[0x40] * this->speed;
        GetNextFrame(this);
    }
}

void sub_080A95BC(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        DeleteEntity(this);
    }
}
