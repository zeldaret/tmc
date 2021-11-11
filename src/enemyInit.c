#include "entity.h"
#include "definitions.h"
#include "functions.h"

extern EnemyDefinition gEnemyDefinitions[];

const EnemyDefinition* GetEnemyDefinition(Entity* entity);
bool32 LoadEnemySprite(Entity* entity, const EnemyDefinition* definition);
extern const u16 gUnk_080D3E74[];

const EnemyDefinition* GetEnemyDefinition(Entity* entity) {
    const EnemyDefinition* definition = &gEnemyDefinitions[entity->id];
    if (definition->gfx == 0xffff) {
        definition = &definition->ptr.definition[entity->type];
    }
    return definition;
}

bool32 EnemyInit(Entity* this) {
    if ((this->flags & 1) == 0) {
        const EnemyDefinition* definition = GetEnemyDefinition(this);
        if (LoadEnemySprite(this, definition) == FALSE) {
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
        this->flags2 = definition->flags2;
        this->damageType = definition->damageType;
        this->hitbox = (Hitbox*)definition->ptr.hitbox;
        this->currentHealth = definition->health;
        if (this->field_0x40 == 0) {
            this->field_0x40 = 0x41;
        }
        UpdateSpriteForCollisionLayer(this);
        if ((this->field_0x6c.HALF.HI & 0x20) != 0) {
            u32 uVar4 = gUnk_080D3E74[this->id >> 3] >> ((this->id & 7) << 1) & 3;
            if (uVar4 != 0) {
                Entity* object = CreateObject(0xa9, uVar4 - 1, 0);
                if (object != NULL) {
                    object->actionDelay = this->flags;
                    object->field_0xf = this->spriteSettings.b.draw;
                    object->spritePriority.b0 = 3;
                    object->parent = this;
                    CopyPosition(this, object);
                    this->flags &= 0x7f;
                    this->spriteSettings.b.draw = 0;
                    this->field_0x6c.HALF.HI |= 0x10;
                }
            }
        }
    }
    return TRUE;
}

bool32 LoadEnemySprite(Entity* entity, const EnemyDefinition* definition) {
    bool32 result;
    if (definition->gfx != 0) {
        if ((definition->gfx & 0x8000) != 0) {
            // Common gfx: Reuse sprite that is already in vram? (bitfield 0x8000)
            entity->spriteVramOffset = definition->gfx & 0x3ff;
        } else {
            if ((definition->gfx & 0x4000) != 0) {
                // Swap gfx (bitfield 0x4000)
                result = sub_080AE008(entity, definition->gfx >> 4, 0);
            } else {
                // Fixed gfx
                result = LoadFixedGFX(entity, definition->gfx);
            }
            if (result == FALSE) {
                return FALSE;
            }
        }
    }
    sub_0801D040(entity, definition->paletteIndex);
    return TRUE;
}
