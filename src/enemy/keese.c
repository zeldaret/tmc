/**
 * @file keese.c
 * @ingroup Enemies
 *
 * @brief Keese enemy
 */
#include "enemy.h"
#include "physics.h"
#include "player.h"

typedef struct {
    /* 0x00 */ Entity base;
    /* 0x68 */ u8 filler[0x10];
    /* 0x78 */ u16 flyTimer;
    /* 0x7a */ u16 sleepTimer;
} KeeseEntity;

typedef enum {
    /* 0 */ KeeseAnimation_Fly,
    /* 1 */ KeeseAnimation_Rest
} KeeseAnimations;

typedef enum {
    /* 0 */ KEESE_ACTION_INITIALIZE,
    /* 1 */ KEESE_ACTION_FLY,
    /* 2 */ KEESE_ACTION_REST,
    /* 3 */ KEESE_ACTION_SLEEP
} KeeseActions;

void Keese_OnTick(Entity*);
void Keese_OnCollision(Entity*);
void Keese_OnGrabbed(Entity*);

void Keese_Initialize(KeeseEntity*);
void Keese_Fly(KeeseEntity*);
void Keese_Rest(KeeseEntity*);
void Keese_Sleep(KeeseEntity*);

void Keese_StartFly(KeeseEntity*);
void sub_08021F24(KeeseEntity*);

void sub_08021DCC(KeeseEntity*);
void sub_08021DD4(KeeseEntity*);
void sub_08021DDC(KeeseEntity*);

void (*const Keese_Functions[])(Entity*) = {
    Keese_OnTick, Keese_OnCollision, GenericKnockback2, GenericDeath, GenericConfused, Keese_OnGrabbed,
};

void Keese(Entity* thisx) {

    Keese_Functions[GetNextFunction(thisx)](thisx);
}

void Keese_OnTick(Entity* thisx) {
    static void (*const gKeeseActions[])(KeeseEntity*) = {
        Keese_Initialize,
        Keese_Fly,
        Keese_Rest,
        Keese_Sleep,
    };
    KeeseEntity* this = (KeeseEntity*)thisx;

    gKeeseActions[super->action](this);
}

void Keese_OnCollision(Entity* thisx) {
    EnemyFunctionHandlerAfterCollision(thisx, Keese_Functions);
}

void Keese_OnGrabbed(Entity* thisx) {
    static void (*const gUnk_080CB6C4[])(KeeseEntity*) = {
        sub_08021DCC,
        sub_08021DD4,
        sub_08021DDC,
    };
    KeeseEntity* this = (KeeseEntity*)thisx;

    if (sub_0806F520(super)) {
        gUnk_080CB6C4[super->subAction](this);
    }
}

void sub_08021DCC(KeeseEntity* this) {
    super->subAction = 2;
}

void sub_08021DD4(KeeseEntity* this) {
    sub_0806F4E8(super);
}

void sub_08021DDC(KeeseEntity* this) {
    if (sub_0806F3E4(super)) {
        GenericDeath(super);
    }
}

void Keese_Initialize(KeeseEntity* this) {
    sub_0804A720(super);
    if (super->type != 0) {
        super->spritePriority.b1 = 1;
        super->z.HALF.HI = -0x10;
    }
    super->direction = Random() & 0x1F;
    super->gustJarFlags = 1;
    super->spritePriority.b0 = 3;
    super->collisionLayer = 3;
    UpdateSpriteForCollisionLayer(super);
    Keese_StartFly(this);
}

void Keese_Fly(KeeseEntity* this) {
    static const s8 gKeeseSpriteOffsets[] = {
        1, -2, -5, -2, 1, 0,
    };

    if (this->flyTimer != 0) {
        this->flyTimer--;
    }
    if (this->sleepTimer != 0) {
        this->sleepTimer--;
    }
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        sub_08021F24(this);
    } else {
        ProcessMovement1(super);
    }
    super->spriteOffsetY = gKeeseSpriteOffsets[super->frame];
}

void Keese_Rest(KeeseEntity* this) {
    if (--super->timer == 0) {
        Keese_StartFly(this);
    }
}

void Keese_Sleep(KeeseEntity* this) {
    if (super->timer != 0) {
        super->timer--;
    } else {
        if (EntityWithinDistance(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, 0x70))
            Keese_StartFly(this);
    }
}

void Keese_StartFly(KeeseEntity* this) {
    static const u16 gKeeseFlyDurations[] = {
        180, 180, 300, 300, 300, 300, 300, 300, 480, 480, 480, 480, 480, 480, 720, 720,
    };

    super->action = KEESE_ACTION_FLY;
    this->flyTimer = gKeeseFlyDurations[Random() & 0xF];
    this->sleepTimer = 60;
    InitializeAnimation(super, KeeseAnimation_Fly);
}

void sub_08021F24(KeeseEntity* this) {
    static const u8 gKeeseRestDurations[] = {
        30, 30, 45, 45, 45, 45, 45, 45, 60, 60, 60, 60, 60, 60, 75, 75,
    };

    if (this->flyTimer == 0) {
        super->action = KEESE_ACTION_REST;
        super->timer = gKeeseRestDurations[Random() & 0xF];
        InitializeAnimation(super, KeeseAnimation_Rest);
    } else if ((this->sleepTimer == 0) &&
               !(EntityWithinDistance(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, 0x70))) {
        super->action = KEESE_ACTION_SLEEP;
        super->timer = 30;
        InitializeAnimation(super, KeeseAnimation_Rest);
    } else {
        if (sub_08049FA0(super)) {
            super->direction = Random() & 0x1f;
        } else {
            super->direction = sub_08049EE4(super);
        }
        InitializeAnimation(super, KeeseAnimation_Fly);
    }
}
