	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r0, _08076E48 @ =gPlayerEntity
	mov r8, r0
	bl sub_0807A894
	cmp r0, #0x29
	beq _08076E50
	ldr r6, _08076E4C @ =gPlayerState
	ldrb r0, [r6, #0x12]
	cmp r0, #0x12
	beq _08076E50
	cmp r0, #0x13
	beq _08076E50
	ldrb r5, [r6, #2]
	cmp r5, #0
	bne _08076E50
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08077D38
	strb r5, [r4, #7]
	mov r1, r8
	ldrb r0, [r1, #0x14]
	strb r0, [r4, #0xa]
	ldrb r1, [r4, #9]
	movs r0, #0x80
	orrs r0, r1
	adds r0, #1
	strb r0, [r4, #9]
	movs r0, #1
	strb r0, [r6, #0x1d]
	mov r1, r8
	str r5, [r1, #0x74]
	strb r0, [r6, #0x1c]
	adds r0, r4, #0
	bl sub_08077BB8
	b _08076E58
	.align 2, 0
_08076E48: .4byte gPlayerEntity
_08076E4C: .4byte gPlayerState
_08076E50:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08077E78
_08076E58:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
