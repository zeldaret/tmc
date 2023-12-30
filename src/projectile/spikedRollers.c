/**
 * @file spikedRollers.c
 * @ingroup Projectiles
 *
 * @brief Spiked Rollers Projectile
 */
#include "entity.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ s16 x2;
    /*0x6a*/ s16 y2;
    /*0x6c*/ s16 unk_0x6c;
    /*0x6e*/ u8 fill[0x16];
    /*0x84*/ u16 unk_0x84;
    /*0x86*/ u16 speed2;
} SpikedRollersEntity;

static void (*const SpikedRollers_Actions[])(SpikedRollersEntity*);
static const u8 gSpikedRollersOffsets[];

void SpikedRollers(SpikedRollersEntity* this) {
    SpikedRollers_Actions[super->action](this);
}

void SpikedRollers_Init(SpikedRollersEntity* this) {
    s32 val;
    super->action++;
    super->speed = this->speed2;
    this->x2 = super->x.HALF.HI;
    this->y2 = super->y.HALF.HI;
    this->unk_0x6c = this->unk_0x84;

    if (super->type <= 6) {
        super->type2 = 0;
    } else {
        super->type2 = 1;
    }

    val = gSpikedRollersOffsets[super->type];

    if (super->type2 == 0) {
        super->direction = 8;
        super->y.HALF.HI += val;
    } else {
        super->direction = 0x10;
        super->x.HALF.HI += val;
    }

    InitializeAnimation(super, super->type);
}

void SpikedRollers_Action1(SpikedRollersEntity* this) {
    s32 diff, unk_0x6c;
    ProcessMovement3(super);

    if (super->type2 == 0) {
        diff = super->x.HALF.HI - this->x2;
    } else {
        diff = super->y.HALF.HI - this->y2;
    }

    unk_0x6c = this->unk_0x6c;
    if (unk_0x6c < 0) {
        diff = -diff;
        unk_0x6c = -unk_0x6c;
    }

    if ((u32)(diff << 0x10) > (unk_0x6c << 0x10)) {
        super->direction ^= 0x10;
        if (super->type2 == 0) {
            super->x.HALF.HI = this->x2;
            super->spriteSettings.flipX ^= 1;
        } else {
            super->y.HALF.HI = this->y2;
            super->spriteSettings.flipY ^= 1;
        }

        if (diff > 0) {
            if (super->type2 == 0) {
                super->x.HALF.HI += this->unk_0x6c;
            } else {
                super->y.HALF.HI += this->unk_0x6c;
            }
        }
    }

    GetNextFrame(super);
}

static void (*const SpikedRollers_Actions[])(SpikedRollersEntity*) = {
    SpikedRollers_Init,
    SpikedRollers_Action1,
};

static const u8 gSpikedRollersOffsets[] = {
    8, 16, 24, 32, 40, 48, 56, 16, 24, 32, 40, 48, 56, 64,
};
