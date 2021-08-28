	.syntax unified
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r1, _0805DBC8 @ =gScreenTransition
	adds r1, #0x3d
	ldrb r2, [r1]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #2
	strh r1, [r0, #0x20]
	bx lr
	.align 2, 0
_0805DBC8: .4byte gScreenTransition
	.syntax divided
