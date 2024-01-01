#include "entity.h"
#include "definitions.h"
#include "functions.h"

extern const ProjectileDefinition gProjectileDefinitions[];

const ProjectileDefinition* GetProjectileDefinition(Entity*);
bool32 LoadProjectileSprite(Entity*, const ProjectileDefinition*);

const ProjectileDefinition* GetProjectileDefinition(Entity* this) {
    const ProjectileDefinition* definition = &gProjectileDefinitions[this->id];
    if (definition->gfx == 0xffff) {
        definition = &definition->ptr.definition[this->type];
    }
    return definition;
}

bool32 ProjectileInit(Entity* this) {
    if ((this->flags & ENT_DID_INIT) == 0) {
        const ProjectileDefinition* definition = GetProjectileDefinition(this);
        if (LoadProjectileSprite(this, definition) == FALSE) {
            return FALSE;
        }
        this->flags |= ENT_DID_INIT;
        if (definition->spriteFlags.collision != 0) {
            COLLISION_ON(this);
        }
        this->spriteIndex = definition->spriteIndex;
        if (this->spriteSettings.draw == 0) {
            this->spriteSettings.draw = definition->spriteFlags.draw;
        }
        this->spritePriority.b1 = definition->spriteFlags.spritePriority;
        this->spriteSettings.shadow = definition->spriteFlags.shadow;
        if (this->speed == 0) {
            this->speed = definition->speed;
        }
        this->collisionFlags = (definition->field0x3c << 4) | 7;
        this->collisionMask = definition->collisionMask;
        this->hitType = definition->damageType;
        this->hurtType = definition->field0x40;
        this->health = 0xff;
        this->hitbox = (Hitbox*)definition->ptr.hitbox;
        UpdateSpriteForCollisionLayer(this);
    }
    return TRUE;
}

bool32 LoadProjectileSprite(Entity* this, const ProjectileDefinition* definition) {
    bool32 result;
    if (definition->gfx != 0) {
        if ((definition->gfx & 0x8000) != 0) {
            this->spriteVramOffset = definition->gfx & 0x3ff;
        } else {
            if ((definition->gfx & 0x4000) != 0) {
                result = LoadSwapGFX(this, (u8)(definition->gfx >> 4), 0);
            } else {
                result = LoadFixedGFX(this, definition->gfx);
            }
            if (result == FALSE) {
                return FALSE;
            }
        }
    }
    LoadObjPalette(this, definition->paletteIndex);
    return TRUE;
}

bool32 IsProjectileOffScreen(Entity* this) {
    if (((u32)this->x.HALF.HI - gRoomControls.origin_x > gRoomControls.width) ||
        ((u32)this->y.HALF.HI - gRoomControls.origin_y > gRoomControls.height)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

Entity* CreateProjectile(u32 id) {
    Entity* entity = GetEmptyEntity();
    if (entity != NULL) {
        entity->kind = PROJECTILE;
        entity->id = id;
        AppendEntityToList(entity, 5);
    }
    return entity;
}
