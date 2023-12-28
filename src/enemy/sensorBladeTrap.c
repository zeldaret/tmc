/**
 * @file sensorBladeTrap.c
 * @ingroup Enemies
 *
 * @brief Sensor Blade Trap enemy
 */
#include "collision.h"
#include "enemy.h"
#include "map.h"
#include "physics.h"

extern u32 sub_0804A024(Entity*, u32, u32);

void sub_0802BB10(Entity*);
bool32 sub_0802BB2C(Entity*, u32);

extern void (*const gUnk_080CD3C4[])(Entity*);
extern const u16 gUnk_080CD3D4[];
extern const s8 gUnk_080CD3DC[];

void SensorBladeTrap(Entity* this) {
    gUnk_080CD3C4[this->action](this);
}

void sub_0802B9EC(Entity* this) {
    this->action = 1;
    this->field_0x78.HWORD = gUnk_080CD3D4[this->type];
    this->field_0x7c.HALF.LO = this->cutsceneBeh.HWORD;
    this->field_0x7c.HALF.HI = this->field_0x86.HWORD;
}

void sub_0802BA18(Entity* this) {
    u32 direction = sub_0804A024(this, 1, 0xe);
    if (direction == 0xff)
        return;

    if (sub_0802BB2C(this, direction))
        return;

    this->action = 2;
    this->speed = this->field_0x78.HWORD;
    this->direction = direction;

    switch (direction >> 3) {
        case 0: // UP
            this->field_0x7a.HWORD = this->y.HALF.HI - this->field_0x7c.HALF.HI;
            break;
        case 1: // RIGHT
            this->field_0x7a.HWORD = this->x.HALF.HI + this->field_0x7c.HALF.LO;
            break;
        case 2: // DOWN
            this->field_0x7a.HWORD = this->y.HALF.HI + this->field_0x7c.HALF.HI;
            break;
        case 3: // LEFT
            this->field_0x7a.HWORD = this->x.HALF.HI - this->field_0x7c.HALF.LO;
            break;
    }
}

void sub_0802BA8C(Entity* this) {
    if (!ProcessMovement12(this)) {
        sub_0802BB10(this);
    } else {
        switch (this->direction >> 3) {
            case 0: // UP
                if (this->field_0x7a.HWORD >= this->y.HALF.HI)
                    sub_0802BB10(this);
                break;
            case 1: // RIGHT
                if (this->field_0x7a.HWORD <= this->x.HALF.HI)
                    sub_0802BB10(this);
                break;
            case 2: // DOWN
                if (this->field_0x7a.HWORD <= this->y.HALF.HI)
                    sub_0802BB10(this);
                break;
            case 3: // LEFT
                if (this->field_0x7a.HWORD >= this->x.HALF.HI)
                    sub_0802BB10(this);
                break;
        }
    }
}

void sub_0802BAFC(Entity* this) {
    if (!ProcessMovement12(this)) {
        this->action = 1;
    }
}

void sub_0802BB10(Entity* this) {
    this->action = 3;
    this->speed = 0xc0;
    this->direction = this->direction ^ DirectionSouth;
    EnqueueSFX(SFX_METAL_CLINK);
}

bool32 sub_0802BB2C(Entity* this, u32 param_2) {
    u8* layer = this->collisionLayer == 2 ? gMapTop.collisionData : gMapBottom.collisionData;
    const s8* ptr = &gUnk_080CD3DC[param_2 >> 2];
    return IsTileCollision(layer, this->x.HALF.HI + ptr[0], this->y.HALF.HI + ptr[1], 0);
}

// clang-format off
void (*const gUnk_080CD3C4[])(Entity*) = {
    sub_0802B9EC,
    sub_0802BA18,
    sub_0802BA8C,
    sub_0802BAFC,
};

const u16 gUnk_080CD3D4[] = {
    0x100, 0x180,
    0x200, 0x280,
};

const s8 gUnk_080CD3DC[] = {
      0, -12,
     12,   0,
      0,  12,
    -12,   0,
};
// clang-format on
