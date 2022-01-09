    .syntax unified
	ldr r2, _080AD908 @ =gFrameObjLists
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r2, r0, r2
	adds r0, r2, #0
	bx lr
	.align 2, 0
_080AD908: .4byte gFrameObjLists
    .syntax divided
