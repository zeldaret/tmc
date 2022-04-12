/**
 * @file miniFireballGuy.c
 * @ingroup Enemies
 *
 * @brief Mini Fireball Guy enemy
 */

#include "enemy.h"
#include "functions.h"

extern void sub_08045678(Entity*);
void MiniFireballGuy_OnTick(Entity*);
void MiniFireballGuy_OnCollision(Entity*);
void MiniFireballGuy_OnDeath(Entity*);
void MiniFireballGuy_OnGrabbed(Entity*);
void sub_08045618(Entity*);
void sub_08045654(Entity*);

static void (*const MiniFireballGuy_Functions[])(Entity*) = {
    MiniFireballGuy_OnTick, MiniFireballGuy_OnCollision, GenericKnockback, MiniFireballGuy_OnDeath,
    GenericConfused,        MiniFireballGuy_OnGrabbed,
};

void MiniFireballGuy(Entity* this) {
    EnemyFunctionHandler(this, MiniFireballGuy_Functions);
}

void MiniFireballGuy_OnTick(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08045618,
        sub_08045654,
    };
    actionFuncs[this->action](this);
}

void MiniFireballGuy_OnCollision(Entity* this) {
    EnemyFunctionHandlerAfterCollision(this, MiniFireballGuy_Functions);
}

void MiniFireballGuy_OnDeath(Entity* this) {
    if ((this != this->parent) && (this->parent != NULL)) {
        this->field_0x6c.HALF.LO &= 0x7f;
        this->parent->child = this->child;
        this->child->parent = this->parent;
    }
    GenericDeath(this);
}

void MiniFireballGuy_OnGrabbed(Entity* this) {
}

void sub_08045618(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->speed = 0x80;
    this->collisionFlags = this->collisionFlags | 0x10;
    sub_0804A720(this);
    InitializeAnimation(this, 1);
    sub_08045678(this);
}

void sub_08045654(Entity* this) {
    ProcessMovement2(this);
    GetNextFrame(this);
    if (GravityUpdate(this, Q_8_8(24.0)) == 0) {
        sub_08045678(this);
    }
}

void sub_08045678(Entity* this) {
    this->zVelocity = Q_16_16(1.75);
    if (this->timer != 0) {
        this->timer--;
    } else {
        this->timer = Random() & 3;
        if ((sub_08049FA0(this) == 0) && (Random() & 3)) {
            this->direction = DirectionRound(sub_08049EE4(this) - 4 + (Random() & 8));
        } else {
            this->direction = DirectionRound(Random());
        }
    }
}
