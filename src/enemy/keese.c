/**
 * @file keese.c
 * @ingroup Enemies
 *
 * @brief Keese enemy
 */

#include "enemy.h"
#include "functions.h"

extern void GenericKnockback2(Entity*);
extern void Keese_StartFly(Entity*);
extern void sub_08021F24(Entity*);

extern void (*const Keese_Functions[])(Entity*);
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
    Keese_Functions[GetNextFunction(this)](this);
}

void Keese_OnTick(Entity* this) {
    gKeeseActions[this->action](this);
}

void Keese_OnCollision(Entity* this) {
    EnemyFunctionHandlerAfterCollision(this, Keese_Functions);
}

void Keese_OnGrabbed(Entity* this) {
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
        GenericDeath(this);
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
    if (this->frame & ANIM_DONE) {
        sub_08021F24(this);
    } else {
        ProcessMovement1(this);
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
void (*const Keese_Functions[])(Entity*) = {
    Keese_OnTick,
    Keese_OnCollision,
    GenericKnockback2,
    GenericDeath,
    GenericConfused,
    Keese_OnGrabbed,
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
