    .syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075532
	ldr r0, _08075570 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x88
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08075532
	bl sub_08079D48
	cmp r0, #0
	bne _08075578
_08075532:
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	ldr r3, _08075570 @ =gPlayerState
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r3, #0x30]
	movs r2, #8
	asrs r2, r5
	lsls r1, r2, #4
	orrs r1, r2
	ldrb r0, [r3, #4]
	bics r0, r1
	strb r0, [r3, #4]
	mvns r2, r2
	ldrb r1, [r3, #0xa]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	ands r2, r0
	strb r2, [r3, #0xb]
	ldr r0, _08075574 @ =0x0000013D
	bl SoundReq
	b _0807557E
	.align 2, 0
_08075570: .4byte gPlayerState
_08075574: .4byte 0x0000013D
_08075578:
	adds r0, r4, #0
	bl UpdateItemAnim
_0807557E:
	pop {r4, r5, pc}
    .syntax divided
