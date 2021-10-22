	.syntax unified
	push {lr}
	ldr r1, _0805A278 @ =gScreen
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0
	strh r0, [r2]
	ldrh r2, [r1]
	ldr r0, _0805A27C @ =0x0000F7FF
	ands r0, r2
	strh r0, [r1]
	bl sub_08056250
	pop {pc}
	.align 2, 0
_0805A278: .4byte gScreen
_0805A27C: .4byte 0x0000F7FF
	.syntax divided
