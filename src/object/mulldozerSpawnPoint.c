/**
 * @file mulldozerSpawnPoint.c
 * @ingroup Objects
 *
 * @brief Mulldozer Spawn Point object
 */
#include "entity.h"
#include "sound.h"
#include "enemy.h"

void MulldozerSpawnPoint_Init(Entity*);
void MulldozerSpawnPoint_Action1(Entity*);

void MulldozerSpawnPoint(Entity* this) {
    static void (*const MulldozerSpawnPoint_Actions[])(Entity*) = {
        MulldozerSpawnPoint_Init,
        MulldozerSpawnPoint_Action1,
        DeleteEntity,
    };

    MulldozerSpawnPoint_Actions[this->action]((Entity*)this);
}

void MulldozerSpawnPoint_Init(Entity* this) {
    static const u8 typeAnimationStates[] = { 0x2, 0x0, 0x43, 0x0 };
    static const u16 typeSounds[] = { SFX_124, SFX_197, SFX_11D, SFX_NONE };
    this->action = 1;
    InitializeAnimation(this, typeAnimationStates[this->type]);
    SoundReq(typeSounds[this->type]);
}

void MulldozerSpawnPoint_Action1(Entity* this) {
    Entity* parent;

    GetNextFrame(this);
    if (this->frame & 0x80) {
        this->action = 2;
        parent = this->parent;
        parent->flags = this->timer;
        parent->spriteSettings.draw = this->subtimer;
        ((Enemy*)parent)->enemyFlags &= ~EM_FLAG_SUPPORT;
    }
}
