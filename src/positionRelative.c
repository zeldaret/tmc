#include "global.h"
#include "entity.h"

extern void UpdateSpriteOrderAndFlip(Entity *);

void PositionRelative(Entity *source, Entity *target, s32 offsetX, s32 offsetY) { //r0, r1, r2, r3
	s32 x;
	s32 y;
	
	x = source->x.WORD;
    target->x.WORD = x + offsetX;
	
	y = source->y.WORD;
    target->y.WORD = y + offsetY;
	
	target->height = source->height;   //ldr
	target->collisionLayer = source->collisionLayer;
	UpdateSpriteOrderAndFlip(target);
}