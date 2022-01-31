/**
 * @file keese.c
 * @ingroup Enemies
 *
 * @brief Keese enemy
 */

#include "enemy.h"
#include "functions.h"

extern void sub_08001328(Entity*);
extern void Keese_StartFly(Entity*);
extern void sub_080AEFB4(Entity*);
extern void sub_08021F24(Entity*);

extern void (*const gKeeseFunctions[])(Entity*);
extern void (*const gKeeseActions[])(Entity*);
extern void (*const gUnk_080CB6C4[])(Entity*);

extern const s8 gKeeseSpriteOffsets[];
extern const u16 gKeeseFlyDurations[];
extern const u8 gKeeseRestDurations[];

enum {
    KeeseAnimation_Fly,
    KeeseAnimation_Rest,
};

void Keese(Entity* this) {
    gKeeseFunctions[GetNextFunction(this)](this);
}

void Keese_OnTick(Entity* this) {
    gKeeseActions[this->action](this);
}

void sub_08021d98(Entity* this) {
    sub_0804AA30(this, gKeeseFunctions);
}

void sub_08021DA8(Entity* this) {
    if (sub_0806F520(this)) {
        gUnk_080CB6C4[this->subAction](this);
    }
}

void sub_08021DCC(Entity* this) {
    this->subAction = 2;
}

void sub_08021DD4(Entity* this) {
    sub_0806F4E8(this);
}

void sub_08021DDC(Entity* this) {
    if (sub_0806F3E4(this)) {
        sub_0804A7D4(this);
    }
}

void Keese_Initialize(Entity* this) {
    sub_0804A720(this);
    if (this->type != 0) {
        this->spritePriority.b1 = 1;
        this->z.HALF.HI = -0x10;
    }
    this->direction = Random() & 0x1f;
    this->field_0x1c = 1;
    this->spritePriority.b0 = 3;
    this->collisionLayer = 3;
    UpdateSpriteForCollisionLayer(this);
    Keese_StartFly(this);
}

void Keese_Fly(Entity* this) {
    if (this->field_0x78.HWORD != 0) {
        this->field_0x78.HWORD--;
    }
    if (this->field_0x7a.HWORD != 0) {
        this->field_0x7a.HWORD--;
    }
    GetNextFrame(this);
    if (this->frame & 0x80) {
        sub_08021F24(this);
    } else {
        sub_080AEFB4(this);
    }
    this->spriteOffsetY = gKeeseSpriteOffsets[this->frame];
}

void Keese_Rest(Entity* this) {
    if (--this->actionDelay == 0) {
        Keese_StartFly(this);
    }
}

void Keese_Sleep(Entity* this) {
    if (this->actionDelay != 0) {
        this->actionDelay--;
    } else {
        if (EntityWithinDistance(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, 0x70))
            Keese_StartFly(this);
    }
}

void Keese_StartFly(Entity* this) {
    this->action = 1;
    this->field_0x78.HWORD = gKeeseFlyDurations[Random() & 0xf];
    this->field_0x7a.HWORD = 60;
    InitializeAnimation(this, KeeseAnimation_Fly);
}

void sub_08021F24(Entity* this) {
    if (this->field_0x78.HWORD == 0) {
        this->action = 2;
        this->actionDelay = gKeeseRestDurations[Random() & 0xf];
        InitializeAnimation(this, KeeseAnimation_Rest);
    } else if (!this->field_0x7a.HWORD &&
               !(EntityWithinDistance(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, 0x70))) {
        this->action = 3;
        this->actionDelay = 30;
        InitializeAnimation(this, KeeseAnimation_Rest);
    } else {
        if (sub_08049FA0(this) != 0) {
            this->direction = Random() & 0x1f;
        } else {
            this->direction = sub_08049EE4(this);
        }
        InitializeAnimation(this, KeeseAnimation_Fly);
    }
}

// clang-format off
void (*const gKeeseFunctions[])(Entity*) = {
    Keese_OnTick,
    sub_08021d98,
    sub_08001328,
    sub_0804A7D4,
    sub_08001242,
    sub_08021DA8,
};

void (*const gKeeseActions[])(Entity*) = {
    Keese_Initialize,
    Keese_Fly,
    Keese_Rest,
    Keese_Sleep,
};

void (*const gUnk_080CB6C4[])(Entity*) = {
    sub_08021DCC,
    sub_08021DD4,
    sub_08021DDC,
};

const s8 gKeeseSpriteOffsets[] = {
    1, -2, -5, -2, 1, 0,
};

const u16 gKeeseFlyDurations[] = {
    180, 180, 300, 300, 300, 300, 300, 300,
    480, 480, 480, 480, 480, 480, 720, 720,
};

const u8 gKeeseRestDurations[] = {
    30, 30, 45, 45, 45, 45, 45, 45,
    60, 60, 60, 60, 60, 60, 75, 75,
};
// clang-format on
