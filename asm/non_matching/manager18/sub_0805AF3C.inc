	.syntax unified
	ldrb r2, [r0, #0x10]
	movs r1, #0xdf
	ands r1, r2
	movs r3, #0
	strb r1, [r0, #0x10]
	ldr r1, _0805AF58 @ =gScreen
	ldrh r2, [r1]
	ldr r0, _0805AF5C @ =0x0000F7FF
	ands r0, r2
	strh r0, [r1]
	adds r1, #0x66
	strh r3, [r1]
	bx lr
	.align 2, 0
_0805AF58: .4byte gScreen
_0805AF5C: .4byte 0x0000F7FF
	.syntax divided
