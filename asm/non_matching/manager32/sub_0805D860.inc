	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #1
	beq _0805D89C
	cmp r0, #1
	bgt _0805D874
	cmp r0, #0
	beq _0805D87E
	b _0805D8D6
_0805D874:
	cmp r0, #2
	beq _0805D8B0
	cmp r0, #3
	beq _0805D8C2
	b _0805D8D6
_0805D87E:
	movs r0, #1
	strb r0, [r1, #0xd]
	movs r0, #0x80
	str r0, [r1, #0x20]
	ldr r2, _0805D898 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0805D8F4
	.align 2, 0
_0805D898: .4byte gScreen
_0805D89C:
	ldr r0, [r1, #0x20]
	subs r0, #1
	str r0, [r1, #0x20]
	cmp r0, #0x10
	bne _0805D8F4
	movs r0, #2
	strb r0, [r1, #0xd]
	movs r0, #0x2d
	strb r0, [r1, #0xe]
	b _0805D8F4
_0805D8B0:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D8F4
	movs r0, #3
	strb r0, [r1, #0xd]
	b _0805D8F4
_0805D8C2:
	ldr r0, [r1, #0x20]
	subs r0, #1
	str r0, [r1, #0x20]
	cmp r0, #0
	bne _0805D8F4
	movs r0, #4
	strb r0, [r1, #0xd]
	movs r0, #0x3c
	strb r0, [r1, #0xe]
	b _0805D8F4
_0805D8D6:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D8F4
	bl sub_0801E104
	ldr r2, _0805D8F8 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805D8FC @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805D8F4:
	pop {pc}
	.align 2, 0
_0805D8F8: .4byte gScreen
_0805D8FC: .4byte 0x0000F7FF
	.syntax divided
