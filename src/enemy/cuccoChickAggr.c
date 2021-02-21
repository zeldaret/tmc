#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern Entity* sub_08049DF4(u32);

void sub_08022A88(Entity*);
void sub_08022AA4(Entity*);
void sub_08022B0C(Entity*);
u32 sub_08022B20(Entity*);
void sub_08022B44(Entity*);

extern void (*const gUnk_080CBB64[])(Entity*);
extern void (*const gUnk_080CBB7C[])(Entity*);

void CuccoChickAggr(Entity* this) {
    gUnk_080CBB64[GetNextFunction(this)](this);
}

void sub_08022934(Entity* this) {
    gUnk_080CBB7C[this->action](this);
}

void sub_0802294C(Entity* this) {
    sub_0804AA30(this, gUnk_080CBB64);
}

void nullsub_132(Entity* this) {
}

void sub_08022960(Entity* this) {
    sub_0804A720(this);
    sub_08022A88(this);
}

void sub_08022970(Entity* this) {
    if (--this->actionDelay == 0) {
        sub_08022AA4(this);
    }
}

void sub_08022988(Entity* this) {
    if (this->height.HALF.HI == 0 && sub_08022B20(this)) {
        sub_08022B0C(this);
    } else {
        if (this->field_0xf) {
            if (--this->field_0xf)
                return;

            this->frameIndex = 1;
            this->field_0x20 = 0x10000;
            EnqueueSFX(0xd6);
        }

        ProcessMovement(this);
        if (sub_08003FC4(this, 0x2000) == 0) {
            if (--this->actionDelay == 0) {
                sub_08022A88(this);
            } else {
                this->field_0xf = 4;
                this->frameIndex = 0;
            }
        }
    }
}

void sub_080229F8(Entity* this) {
    if (sub_08003FC4(this, 0x2800) == 0) {
        if (--this->actionDelay == 0) {
            this->action = 4;
            this->actionDelay = 6;
            this->field_0xf = 8;
            this->frameIndex = 0;
            this->nonPlanarMovement = 0xc0;
            sub_08022B44(this);
        } else {
            this->field_0x20 = 0x10000;
            EnqueueSFX(0xd6);
        }
    }
}

void sub_08022A40(Entity* this) {
    if (this->field_0xf) {
        if (--this->field_0xf)
            return;

        this->frameIndex = 1;
    }

    ProcessMovement(this);
    if (sub_08003FC4(this, 0x2000) == 0) {
        if (--this->actionDelay == 0) {
            sub_08022A88(this);
        } else {
            sub_08022B44(this);
        }
    }
}

void sub_08022A88(Entity* this) {
    this->action = 1;
    this->actionDelay = (Random() & 0xf) + 8;
    this->frameIndex = 0;
}

void sub_08022AA4(Entity* this) {
    u32 rand = Random();

    this->action = 2;
    this->actionDelay = (rand & 3) + 1;
    this->field_0xf = 1;
    this->nonPlanarMovement = 0x80;

    if (!sub_08049FA0(this) && (rand >> 8) & 3) {
        this->direction = sub_08049EE4(this);
    } else {
        this->direction = (rand >> 0x10) & 0x1f;
    }

    if (this->direction & 0xf)
        this->spriteSettings.b.flipX = (this->direction >> 4) ^ 1;
}

void sub_08022B0C(Entity* this) {
    this->action = 3;
    this->actionDelay = 3;
    this->field_0xf = 8;
    sub_08022B44(this);
}

u32 sub_08022B20(Entity* this) {
    if (!sub_08049DF4(2))
        return 0;

    return sub_080041A0(this, &gPlayerEntity, 0x24, 0x24);
}

void sub_08022B44(Entity* this) {
    this->field_0x20 = 0xc000;
    this->direction = GetFacingDirection(this, &gPlayerEntity);

    if (this->direction & 0xf)
        this->spriteSettings.b.flipX = (this->direction >> 4) ^ 1;

    EnqueueSFX(0xd6);
}

// clang-format off
void (*const gUnk_080CBB64[])(Entity*) = {
    sub_08022934,
    sub_0802294C,
    sub_08001324,
    sub_0804A7D4,
    sub_08001242,
    nullsub_132,
};

void (*const gUnk_080CBB7C[])(Entity*) = {
    sub_08022960,
    sub_08022970,
    sub_08022988,
    sub_080229F8,
    sub_08022A40,
};
// clang-format on
