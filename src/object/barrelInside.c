/**
 * @file barrelInside.c
 * @ingroup Objects
 *
 * @brief Barrel Inside object
 */
#include "entity.h"

typedef struct {
    u8 b3Rendering;
    u8 b0Priority;
    u8 flipY;
} PACKED BarrelInsideSpriteDef;

void BarrelInside(Entity* this) {
    static const BarrelInsideSpriteDef spriteDefs[] = {
        { 2, 5, 2 }, { 2, 5, 2 }, { 3, 4, 2 }, { 3, 6, 3 }, { 3, 5, 3 }, { 3, 6, 3 },
    };

    static const u8 frameIndices[] = {
        4, 6, 7, 0, 0, 0,
    };
    const BarrelInsideSpriteDef* ptr;
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->frameIndex = this->type;
        this->timer = 16;
        this->subtimer = 1;
        ptr = &spriteDefs[this->type];
        this->spriteRendering.b3 = ptr->b3Rendering;
        this->spritePriority.b0 = ptr->b0Priority;
        this->spriteOrientation.flipY = ptr->flipY;
    }

    if (this->type == 4) {
        if (--this->timer == 0) {
            this->timer = 16;
            this->frameIndex = frameIndices[this->subtimer++];
            if (this->subtimer == 3) {
                this->subtimer = 0;
            }
        }
    }
}
