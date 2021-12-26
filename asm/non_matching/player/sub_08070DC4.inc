    .syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_080085B0
	bl sub_08079E08
	bl UpdateFloorType
	bl sub_08078EFC
	cmp r0, #0
	bne _08070E76
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08070E76
	ldr r6, _08070E18 @ =gPlayerState
	strb r0, [r6, #2]
	bl sub_08078EFC
	adds r5, r0, #0
	cmp r5, #0
	bne _08070E76
	bl sub_08079D48
	cmp r0, #0
	bne _08070E10
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08070E1C
_08070E10:
	strb r5, [r6, #2]
	bl sub_080791D0
	b _08070E76
	.align 2, 0
_08070E18: .4byte gPlayerState
_08070E1C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08070E32
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	b _08070E76
_08070E32:
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	bne _08070E56
	bl sub_08008B22
	cmp r0, #0
	beq _08070E56
	movs r0, #7
	strb r0, [r6, #0x11]
	bl sub_08079938
	bl sub_080791BC
	b _08070E76
_08070E56:
	movs r0, #1
	strh r0, [r4, #0x12]
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldr r2, _08070E78 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08070E76
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #8]
_08070E76:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08070E78: .4byte gPlayerState
    .syntax divided
