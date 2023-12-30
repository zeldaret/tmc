/**
 * @file ladderHoleInBookshelf.c
 * @ingroup Objects
 *
 * @brief Ladder Hole In Bookshelf object
 */
#include "entity.h"
#include "player.h"

void LadderHoleInBookshelf_Init(Entity* this);
void LadderHoleInBookshelf_Action1(Entity* this);
bool32 sub_08094064(Entity* this);

void LadderHoleInBookshelf(Entity* this) {
    static void (*const LadderHoleInBookshelf_Actions[])(Entity*) = {
        LadderHoleInBookshelf_Init,
        LadderHoleInBookshelf_Action1,
    };

    LadderHoleInBookshelf_Actions[this->action](this);
}

void LadderHoleInBookshelf_Init(Entity* this) {
    this->action = 1;
    this->collisionLayer = 2;
    UpdateSpriteForCollisionLayer(this);
}

void LadderHoleInBookshelf_Action1(Entity* this) {
    if (sub_08094064(this)) {
        if (this->collisionLayer == 2) {
            switch (gPlayerEntity.base.action) {
                case PLAYER_CLIMB:
                case PLAYER_USEENTRANCE:
                    return;
            }
            this->collisionLayer = 1;
            UpdateSpriteForCollisionLayer(this);
            this->spritePriority.b0 = 5;
        } else {
            switch (gPlayerEntity.base.action) {
                case PLAYER_CLIMB:
                case PLAYER_USEENTRANCE:
                    this->collisionLayer = 2;
                    UpdateSpriteForCollisionLayer(this);
                    this->spritePriority.b0 = 1;
                    break;
                default:
                    if ((gPlayerEntity.base.collisionLayer & 2) == 0) {
                        break;
                    }
                    gPlayerEntity.base.collisionLayer = 1;
                    break;
            }
        }
    }
}

bool32 sub_08094064(Entity* this) {
    bool32 rv = 1;
    if (gPlayerEntity.base.x.HALF.HI - this->x.HALF.HI + 0x1cU >= 0x39) {
        rv = 0;
    }

    return rv;
}
