/**
 * @file threeThorns.c
 * @ingroup Objects
 *
 * @brief Three Thorns object
 */
#define NENT_DEPRECATED
#include "entity.h"
#include "hitbox.h"
#include "object.h"
#include "physics.h"
#include "room.h"

void TreeThorns(Entity* this) {
    Entity* ent;
    u32 tilePos;
    u8* layer;

    if (this->action == 0) {
        this->action = 1;
        this->spritePriority.b0 = 6;
        if (this->type == 0) {
            COLLISION_ON(this);
            this->frameIndex = 1;
            layer = &this->collisionLayer;
            *layer = 1;
            this->collisionFlags = 7;
            this->hurtType = 0x48;
            this->hitType = 0x7a;
            this->flags2 = 1;
            this->hitbox = (Hitbox*)&gHitbox_1;
            tilePos = COORD_TO_TILE(this);
            SetTile(0x4066, tilePos - 1, *layer);
            SetTile(0x4065, tilePos, *layer);
            UpdateSpriteForCollisionLayer(this);
            ent = CreateObject(TREE_THORNS, 1, 0);
            if (ent != NULL) {
                this->child = ent;
                CopyPosition(this, ent);
            }
        } else {
            this->frameIndex = 0;
            this->collisionLayer = 2;
            UpdateSpriteForCollisionLayer(this);
        }
    }
}
