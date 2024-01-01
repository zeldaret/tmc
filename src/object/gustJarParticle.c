/**
 * @file gustJarParticle.c
 * @ingroup Objects
 *
 * @brief Gust Jar Particle object
 */
#include "asm.h"
#include "entity.h"
#include "physics.h"
#include "player.h"
#include "room.h"

void GustJarParticle_Init(Entity*);
void GustJarParticle_Action1(Entity*);

void GustJarParticle(Entity* this) {
    static void (*const GustJarParticle_Actions[])(Entity*) = {
        GustJarParticle_Init,
        GustJarParticle_Action1,
    };

    GustJarParticle_Actions[this->action](this);
}

void GustJarParticle_Init(Entity* this) {
    this->action = 1;
    this->speed = 0x80;
    this->spriteRendering.b3 = gPlayerEntity.base.spriteRendering.b3;
    this->spritePriority.b0 = gPlayerEntity.base.spritePriority.b0;
    this->collisionLayer = gPlayerEntity.base.collisionLayer;
    this->spriteOrientation.flipY = gPlayerEntity.base.spriteOrientation.flipY;
    this->type = Random() & 1;
    InitializeAnimation(this, 0x11);
}

void GustJarParticle_Action1(Entity* this) {
    if (this->type != 0) {
        if ((gRoomTransition.frameCount & 1) == 0) {
            GetNextFrame(this);
        }
    } else {
        GetNextFrame(this);
    }

    if (sub_0806F3E4(this)) {
        DeleteThisEntity();
    } else if ((gPlayerState.gustJarState & 0xf) != 1) {
        DeleteThisEntity();
    }
}
