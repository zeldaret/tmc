	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D0D8
	movs r0, #0xb4
	strb r0, [r4, #0xf]
_0805D0D8:
	adds r5, r4, #0
	adds r5, #0x36
	ldrb r0, [r5]
	cmp r0, #0xf
	bne _0805D0F6
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0x72
	bl SoundReq
	adds r0, r4, #0
	bl sub_0805D11C
_0805D0F6:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5, pc}
	.syntax divided
