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
    if ((this->flags & 1) == 0) {
        const ProjectileDefinition* definition = GetProjectileDefinition(this);
        if (LoadProjectileSprite(this, definition) == FALSE) {
            return FALSE;
        }
        this->flags |= 1;
        if (definition->spriteFlags.unknown != 0) {
            this->flags |= 0x80;
        }
        this->spriteIndex = definition->spriteIndex;
        if (this->spriteSettings.b.draw == 0) {
            this->spriteSettings.b.draw = definition->spriteFlags.draw;
        }
        this->spritePriority.b1 = definition->spriteFlags.spritePriority;
        this->spriteSettings.b.shadow = definition->spriteFlags.shadow;
        if (this->speed == 0) {
            this->speed = definition->speed;
        }
        this->field_0x3c = (definition->field0x3c << 4) | 7;
        this->flags2 = definition->flags2;
        this->damageType = definition->damageType;
        this->field_0x40 = definition->field0x40;
        this->currentHealth = 0xff;
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
                result = sub_080AE008(this, definition->gfx >> 4, 0);
            } else {
                result = LoadFixedGFX(this, definition->gfx);
            }
            if (result == FALSE) {
                return FALSE;
            }
        }
    }
    sub_0801D040(this, definition->paletteIndex);
    return TRUE;
}

bool32 IsProjectileOffScreen(Entity* this) {
    if (((u32)this->x.HALF.HI - gRoomControls.roomOriginX > gRoomControls.width) ||
        ((u32)this->y.HALF.HI - gRoomControls.roomOriginY > gRoomControls.height)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

Entity* CreateProjectile(u32 id) {
    Entity* entity = GetEmptyEntity();
    if (entity != NULL) {
        entity->kind = 4;
        entity->id = id;
        AppendEntityToList(entity, 5);
    }
    return entity;
}
