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

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[16];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ u16 unk_7c;
    /*0x7e*/ u16 unk_7e;
    /*0x80*/ u8 unused2[4];
    /*0x84*/ u16 unk_84;
    /*0x86*/ u16 unk_86;
} SensorBladeTrapEntity;

extern u32 sub_0804A024(Entity*, u32, u32);

void sub_0802BB10(SensorBladeTrapEntity* this);
bool32 sub_0802BB2C(SensorBladeTrapEntity* this, u32);

extern void (*const gUnk_080CD3C4[])(SensorBladeTrapEntity*);
extern const u16 gUnk_080CD3D4[];
extern const s8 gUnk_080CD3DC[];

void SensorBladeTrap(SensorBladeTrapEntity* this) {
    gUnk_080CD3C4[super->action](this);
}

void sub_0802B9EC(SensorBladeTrapEntity* this) {
    super->action = 1;
    this->unk_78 = gUnk_080CD3D4[super->type];
    this->unk_7c = this->unk_84;
    this->unk_7e = this->unk_86;
}

void sub_0802BA18(SensorBladeTrapEntity* this) {
    u32 direction = sub_0804A024(super, 1, 0xe);
    if (direction == 0xff)
        return;

    if (sub_0802BB2C(this, direction))
        return;

    super->action = 2;
    super->speed = this->unk_78;
    super->direction = direction;

    switch (direction >> 3) {
        case 0: // UP
            this->unk_7a = super->y.HALF.HI - this->unk_7e;
            break;
        case 1: // RIGHT
            this->unk_7a = super->x.HALF.HI + this->unk_7c;
            break;
        case 2: // DOWN
            this->unk_7a = super->y.HALF.HI + this->unk_7e;
            break;
        case 3: // LEFT
            this->unk_7a = super->x.HALF.HI - this->unk_7c;
            break;
    }
}

void sub_0802BA8C(SensorBladeTrapEntity* this) {
    if (!ProcessMovement12(super)) {
        sub_0802BB10(this);
    } else {
        switch (super->direction >> 3) {
            case 0: // UP
                if (this->unk_7a >= super->y.HALF.HI)
                    sub_0802BB10(this);
                break;
            case 1: // RIGHT
                if (this->unk_7a <= super->x.HALF.HI)
                    sub_0802BB10(this);
                break;
            case 2: // DOWN
                if (this->unk_7a <= super->y.HALF.HI)
                    sub_0802BB10(this);
                break;
            case 3: // LEFT
                if (this->unk_7a >= super->x.HALF.HI)
                    sub_0802BB10(this);
                break;
        }
    }
}

void sub_0802BAFC(SensorBladeTrapEntity* this) {
    if (!ProcessMovement12(super)) {
        super->action = 1;
    }
}

void sub_0802BB10(SensorBladeTrapEntity* this) {
    super->action = 3;
    super->speed = 0xc0;
    super->direction = super->direction ^ DirectionSouth;
    EnqueueSFX(SFX_METAL_CLINK);
}

bool32 sub_0802BB2C(SensorBladeTrapEntity* this, u32 param_2) {
    u8* layer = super->collisionLayer == 2 ? gMapTop.collisionData : gMapBottom.collisionData;
    const s8* ptr = &gUnk_080CD3DC[param_2 >> 2];
    return IsTileCollision(layer, super->x.HALF.HI + ptr[0], super->y.HALF.HI + ptr[1], 0);
}

// clang-format off
void (*const gUnk_080CD3C4[])(SensorBladeTrapEntity*) = {
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
