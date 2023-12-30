/**
 * @file miniFireballGuy.c
 * @ingroup Enemies
 *
 * @brief Mini Fireball Guy enemy
 */
#include "enemy.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[4];
    /*0x6c*/ u8 unk_6c;
} MiniFireballGuyEntity;

extern void sub_08045678(MiniFireballGuyEntity* this);
void MiniFireballGuy_OnTick(MiniFireballGuyEntity* this);
void MiniFireballGuy_OnCollision(MiniFireballGuyEntity* this);
void MiniFireballGuy_OnDeath(MiniFireballGuyEntity* this);
void MiniFireballGuy_OnGrabbed(MiniFireballGuyEntity* this);
void sub_08045618(MiniFireballGuyEntity* this);
void sub_08045654(MiniFireballGuyEntity* this);

static void (*const MiniFireballGuy_Functions[])(MiniFireballGuyEntity*) = {
    MiniFireballGuy_OnTick,
    MiniFireballGuy_OnCollision,
    (void (*)(MiniFireballGuyEntity*))GenericKnockback,
    MiniFireballGuy_OnDeath,
    (void (*)(MiniFireballGuyEntity*))GenericConfused,
    MiniFireballGuy_OnGrabbed,
};

void MiniFireballGuy(MiniFireballGuyEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)MiniFireballGuy_Functions);
}

void MiniFireballGuy_OnTick(MiniFireballGuyEntity* this) {
    static void (*const actionFuncs[])(MiniFireballGuyEntity*) = {
        sub_08045618,
        sub_08045654,
    };
    actionFuncs[super->action](this);
}

void MiniFireballGuy_OnCollision(MiniFireballGuyEntity* this) {
    EnemyFunctionHandlerAfterCollision(super, MiniFireballGuy_Functions);
}

void MiniFireballGuy_OnDeath(MiniFireballGuyEntity* this) {
    if ((super != super->parent) && (super->parent != NULL)) {
        this->unk_6c &= ~0x80;
        super->parent->child = super->child;
        super->child->parent = super->parent;
    }
    GenericDeath(super);
}

void MiniFireballGuy_OnGrabbed(MiniFireballGuyEntity* this) {
}

void sub_08045618(MiniFireballGuyEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    super->speed = 0x80;
    super->collisionFlags = super->collisionFlags | 0x10;
    sub_0804A720(super);
    InitializeAnimation(super, 1);
    sub_08045678(this);
}

void sub_08045654(MiniFireballGuyEntity* this) {
    ProcessMovement2(super);
    GetNextFrame(super);
    if (GravityUpdate(super, Q_8_8(24.0)) == 0) {
        sub_08045678(this);
    }
}

void sub_08045678(MiniFireballGuyEntity* this) {
    super->zVelocity = Q_16_16(1.75);
    if (super->timer != 0) {
        super->timer--;
    } else {
        super->timer = Random() & 3;
        if ((sub_08049FA0(super) == 0) && (Random() & 3)) {
            super->direction = DirectionRound(sub_08049EE4(super) - 4 + (Random() & 8));
        } else {
            super->direction = DirectionRound(Random());
        }
    }
}
