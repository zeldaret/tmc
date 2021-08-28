	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x14]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0805DBE6
	movs r0, #2
	strb r0, [r1, #0xc]
	ldrh r0, [r1, #0x20]
	ldr r2, _0805DBE8 @ =0x0000012D
	cmp r0, r2
	bls _0805DBE6
	strh r2, [r1, #0x20]
_0805DBE6:
	pop {pc}
	.align 2, 0
_0805DBE8: .4byte 0x0000012D
	.syntax divided
