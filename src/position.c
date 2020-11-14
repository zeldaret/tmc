#include "global.h"
#include "entity.h"
#include "position.h"
#include "functions.h"

extern u8 gUnk_08114F78[];
extern u8 gUnk_08114F80[];

void CopyPosition(Entity* param_1, Entity* param_2) {
    PositionRelative(param_1, param_2, 0, 0);
}

void PositionEntityOnTop(Entity* ent, Entity* ent2) {
    PositionRelative(ent, ent2, 0, 0);
    ResolveEntityOnTop(ent, ent2);
}

void PositionRelative(Entity* source, Entity* target, s32 offsetX, s32 offsetY) { // r0, r1, r2, r3
    s32 x;
    s32 y;

    x = source->x.WORD;
    target->x.WORD = x + offsetX;

    y = source->y.WORD;
    target->y.WORD = y + offsetY;

    target->height = source->height; // ldr
    target->collisionLayer = source->collisionLayer;
    UpdateSpriteForCollisionLayer(target);
}

void CopyPositionAndSpriteOffset(Entity* param_1, Entity* param_2) {
    param_2->spriteOffsetX = param_1->spriteOffsetX;
    param_2->spriteOffsetY = param_1->spriteOffsetY;
    PositionRelative(param_1, param_2, 0, 0);
}

void sub_0806FA90(Entity* param_1, Entity* param_2, s32 offsetX, s32 offsetY) {
    param_2->spriteOffsetX = param_1->spriteOffsetX;
    param_2->spriteOffsetY = param_1->spriteOffsetY;
    PositionRelative(param_1, param_2, offsetX * 64 * 32 * 32, offsetY * 64 * 32 * 32);
}

void ResolveEntityOnTop(Entity* param_1, Entity* param_2) {
    param_2->spritePriority.b0 = gUnk_08114F78[param_1->spritePriority.b0];
}

void sub_0806FAD8(Entity* param_1, Entity* param_2) {
    param_2->spritePriority.b0 = gUnk_08114F80[param_1->spritePriority.b0];
}
