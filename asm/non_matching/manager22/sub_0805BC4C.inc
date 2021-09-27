	.syntax unified
	push {lr}
	ldr r1, _0805BC68 @ =gArea
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _0805BC64
	movs r0, #0
	strb r0, [r1, #0xc]
	ldr r2, _0805BC6C @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805BC70 @ =0x0000D7FF
	ands r0, r1
	strh r0, [r2]
_0805BC64:
	pop {pc}
	.align 2, 0
_0805BC68: .4byte gArea
_0805BC6C: .4byte gScreen
_0805BC70: .4byte 0x0000D7FF
	.syntax divided
