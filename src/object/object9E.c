#include "global.h"
#include "entity.h"
#include "room.h"

extern BoundingBox gUnk_080FD168;

extern void SetTile(u32, u32, u32);

void Object9E(Entity* this) {
    Entity* ent;
    u32 tilePos;
    u8* layer;

    if (this->action == 0) {
        this->action = 1;
        this->spritePriority.b0 = 6;
        if ((this->entityType).form == 0) {
            this->flags = this->flags | 0x80;
            this->frameIndex = 1;
            layer = &this->collisionLayer;
            *layer = 1;
            this->field_0x3c = 7;
            this->field_0x40 = 0x48;
            this->damageType = 0x7a;
            this->flags2 = 1;
            this->boundingBox = &gUnk_080FD168;
            tilePos = COORD_TO_TILE(this);
            SetTile(0x4066, tilePos - 1, *layer);
            SetTile(0x4065, tilePos, *layer);
            UpdateSpriteForCollisionLayer(this);
            ent = CreateObject(0x9e, 1, 0);
            if (ent != NULL) {
                this->attachedEntity = ent;
                CopyPosition(this, ent);
            }
        } else {
            this->frameIndex = 0;
            this->collisionLayer = 2;
            UpdateSpriteForCollisionLayer(this);
        }
    }
}
