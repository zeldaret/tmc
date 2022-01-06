#define NENT_DEPRECATED
#include "entity.h"

typedef struct {
    Entity base;
    s16 x2;
    s16 y2;
    s16 unk_0x6c;
    u8 fill[0x16];
    u16 unk_0x84;
    u16 speed2;
} SpikedRollersEntity;

extern s32 sub_080AF090(Entity*);

static void (*const SpikedRollers_Actions[])(SpikedRollersEntity*);
static const u8 gSpikedRollersOffsets[];

void SpikedRollers(SpikedRollersEntity* this) {
    SpikedRollers_Actions[super->action](this);
}

void sub_080ABA74(SpikedRollersEntity* this) {
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

void sub_080ABAE0(SpikedRollersEntity* this) {
    s32 diff, unk_0x6c;
    sub_080AF090(super);

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
    sub_080ABA74,
    sub_080ABAE0,
};

static const u8 gSpikedRollersOffsets[] = {
    8, 16, 24, 32, 40, 48, 56, 16, 24, 32, 40, 48, 56, 64,
};
