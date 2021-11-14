#include "global.h"
#include "entity.h"
#include "functions.h"
#include "definitions.h"

extern const NPCDefinition gNPCDefinitions[];

extern Hitbox* gNPCHitboxes[];
const NPCDefinition* GetNPCDefinition(Entity*);

const NPCDefinition* GetNPCDefinition(Entity* this) {
    const NPCDefinition* definition = &gNPCDefinitions[this->id];
    if (definition->bitfield.type == 2) {
        definition = &definition->data.definition[this->type];
    }
    return definition;
}

void NPCInit(Entity* this) {
    u32 tmp;
    u32 tmp2;

    if ((this->flags & 1) == 0) {
        const NPCDefinition* definition = GetNPCDefinition(this);
        if (definition->bitfield.type == 0) {
            // No sprite for this NPC
            this->flags |= 1;
        } else {
            tmp = definition->bitfield.gfx;
            switch (definition->bitfield.gfx_type) {
                case 2:
                    this->spriteVramOffset = definition->bitfield.gfx;
                    break;
                case 1:
                    LoadSwapGFX(this, tmp, 0);
                    break;
                default:
                    LoadFixedGFX(this, tmp);
                    break;
            }
            tmp = definition->data.sprite.paletteIndex;
            LoadObjPalette(this, tmp);
            this->spriteIndex = definition->data.sprite.spriteIndex;
            this->spriteSettings.shadow = definition->data.sprite.shadow;
            this->spritePriority.b1 = definition->data.sprite.spritePriority;
            this->spriteSettings.draw = definition->data.sprite.draw;
            this->hitbox = gNPCHitboxes[definition->bitfield.hitbox];
            this->flags |= ENT_DID_INIT;
            tmp2 = 0xff;
            this->animIndex = tmp2;
            this->frameIndex = tmp2;
            UpdateSpriteForCollisionLayer(this);
        }
    }
}

Entity* CreateNPC(u32 subtype, u32 form, u32 parameter) {
    Entity* entity = GetEmptyEntity();
    if (entity != NULL) {
        entity->kind = 7;
        entity->id = subtype;
        entity->type = form;
        entity->type2 = parameter;
        AppendEntityToList(entity, 7);
    }
    return entity;
}
