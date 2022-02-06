/**
 * @file miniFireballGuy.c
 * @ingroup Enemies
 *
 * @brief Mini Fireball Guy enemy
 */

#include "enemy.h"
#include "functions.h"

extern void sub_08045678(Entity*);

extern void (*const MiniFireballGuy_Functions[])(Entity*);
extern void (*const gUnk_080D1880[])(Entity*);

void MiniFireballGuy(Entity* this) {
    EnemyFunctionHandler(this, MiniFireballGuy_Functions);
}

void MiniFireballGuy_OnTick(Entity* this) {
    gUnk_080D1880[this->action](this);
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
    this->field_0x3c = this->field_0x3c | 0x10;
    sub_0804A720(this);
    InitializeAnimation(this, 1);
    sub_08045678(this);
}

void sub_08045654(Entity* this) {
    sub_080AEFE0(this);
    GetNextFrame(this);
    if (GravityUpdate(this, 0x1800) == 0) {
        sub_08045678(this);
    }
}

void sub_08045678(Entity* this) {

    this->zVelocity = Q_16_16(1.75);
    if (this->actionDelay != 0) {
        this->actionDelay--;
    } else {
        this->actionDelay = Random() & 3;
        if ((sub_08049FA0(this) == 0) && (Random() & 3)) {
            this->direction = DirectionRound(sub_08049EE4(this) - 4 + (Random() & 8));
        } else {
            this->direction = DirectionRound(Random());
        }
    }
}
