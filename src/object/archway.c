#include "global.h"
#include "entity.h"
#include "sprite.h"

extern u32 CheckIsDungeon();

void Archway(Entity* this) {
    u32 v1;
    u32 v2;
    u32 v3;

    if (this->action == 0) {
        v1 = this->action = 1;
        v2 = this->spriteSettings.raw;
        v1 = v1 - 0x5;
        v1 = v1 & v2;
        this->spriteSettings.raw = v1 | 1;
        this->frameIndex = this->entityType.parameter;
        this->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(this);
        v3 = CheckIsDungeon();
        if (v3 != 0) {
            this->spritePriority.b0 = (this->spritePriority.b0 & 0xf8) | 1;
        }
    }
}
