	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #1
	beq _0805D938
	cmp r0, #1
	bgt _0805D914
	cmp r0, #0
	beq _0805D91A
	b _0805D966
_0805D914:
	cmp r0, #2
	beq _0805D94E
	b _0805D966
_0805D91A:
	movs r1, #1
	strb r1, [r2, #0xd]
	movs r0, #0x2d
	strb r0, [r2, #0xe]
	str r1, [r2, #0x20]
	ldr r2, _0805D934 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0805D982
	.align 2, 0
_0805D934: .4byte gScreen
_0805D938:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D982
	movs r0, #2
	strb r0, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xe]
	b _0805D982
_0805D94E:
	ldr r0, [r2, #0x20]
	adds r0, #1
	str r0, [r2, #0x20]
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D982
	movs r0, #3
	strb r0, [r2, #0xd]
	b _0805D982
_0805D966:
	ldr r0, [r2, #0x20]
	adds r0, #4
	str r0, [r2, #0x20]
	cmp r0, #0x80
	bls _0805D982
	bl sub_0801E104
	ldr r2, _0805D984 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805D988 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805D982:
	pop {pc}
	.align 2, 0
_0805D984: .4byte gScreen
_0805D988: .4byte 0x0000F7FF
	.syntax divided
