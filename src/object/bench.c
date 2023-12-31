/**
 * @file bench.c
 * @ingroup Objects
 *
 * @brief Bench object
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "player.h"
#include "sound.h"

typedef struct {
    Entity base;
    u8 filler[0x18];
    u16 tilePos;
} BenchEntity;

void Bench_Init(BenchEntity* this);
void Bench_Action1(BenchEntity* this);

void Bench(Entity* this) {
    static void (*const Bench_Actions[])(BenchEntity*) = {
        Bench_Init,
        Bench_Action1,
    };

    Bench_Actions[this->action]((BenchEntity*)this);
}

void Bench_Init(BenchEntity* this) {
    super->action = 1;
    super->timer = 0;
    this->tilePos = COORD_TO_TILE(super);
    if (gPlayerState.flags & PL_MINISH) {
        super->collisionLayer = 2;
    } else {
        super->collisionLayer = 1;
    }
    UpdateSpriteForCollisionLayer(super);
    SetCollisionData(0x47, this->tilePos - 0x40, 1);
}

void Bench_Action1(BenchEntity* this) {
}
