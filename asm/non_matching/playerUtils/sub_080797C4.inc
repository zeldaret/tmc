	.syntax unified
	push {lr}
	ldr r1, _080797E4 @ =gUnk_0811C110
	ldr r2, _080797E8 @ =gPlayerEntity
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #3
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r3, #0
	ldrh r0, [r2, #0x2a]
	ands r0, r1
	cmp r1, r0
	bne _080797E0
	movs r3, #1
_080797E0:
	adds r0, r3, #0
	pop {pc}
	.align 2, 0
_080797E4: .4byte gUnk_0811C110
_080797E8: .4byte gPlayerEntity
	.syntax divided
