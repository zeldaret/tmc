#include "global.h"
#include "entity.h"
extern void PositionRelative(Entity *, Entity *, s32, s32);
extern void sub_0806FAB0(Entity *, Entity *);

void sub_0806FA30(Entity * ent, Entity * ent2) {
	PositionRelative(ent, ent2, 0, 0);
	sub_0806FAB0(ent, ent2);
}
/*
	thumb_func_start sub_0806FA30
sub_0806FA30: @ 0x0806FA30
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r2, #0
	movs r3, #0
	bl PositionRelative
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FAB0
	pop {r4, r5, pc}
	*/