#include "entity.h"
#include "player.h"

void sub_08093FCC(Entity* this);
void sub_08093FE0(Entity* this);
bool32 sub_08094064(Entity* this);

void LadderHoleInBookshelf(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08093FCC,
        sub_08093FE0,
    };

    actionFuncs[this->action](this);
}

void sub_08093FCC(Entity* this) {
    this->action = 1;
    this->collisionLayer = 2;
    UpdateSpriteForCollisionLayer(this);
}

void sub_08093FE0(Entity* this) {
    if (sub_08094064(this)) {
        if (this->collisionLayer == 2) {
            switch (gPlayerEntity.action) {
                case 0x1d:
                case 0x1e:
                    return;
            }
            this->collisionLayer = 1;
            UpdateSpriteForCollisionLayer(this);
            this->spritePriority.b0 = 5;
        } else {
            switch (gPlayerEntity.action) {
                case 0x1d:
                case 0x1e:
                    this->collisionLayer = 2;
                    UpdateSpriteForCollisionLayer(this);
                    this->spritePriority.b0 = 1;
                    break;
                default:
                    if ((gPlayerEntity.collisionLayer & 2) == 0) {
                        break;
                    }
                    gPlayerEntity.collisionLayer = 1;
                    break;
            }
        }
    }
}

bool32 sub_08094064(Entity* this) {
    bool32 rv = 1;
    if (gPlayerEntity.x.HALF.HI - this->x.HALF.HI + 0x1cU >= 0x39) {
        rv = 0;
    }

    return rv;
}
