	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805D7D4 @ =gUnk_08108D7C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _0805D7D8 @ =gScreenTransition
	ldr r0, [r0]
	lsls r0, r0, #4
	str r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0805D9D8
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x24]
	bl sub_0805DA08
	pop {r4, pc}
	.align 2, 0
_0805D7D4: .4byte gUnk_08108D7C
_0805D7D8: .4byte gScreenTransition
	.syntax divided
