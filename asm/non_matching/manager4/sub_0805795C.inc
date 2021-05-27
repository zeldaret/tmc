	push {r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	ldr r0, _080579BC @ =gUnk_03004030
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _080579C8
	ldr r1, _080579C0 @ =gPlayerEntity
	ldr r3, _080579C4 @ =gRoomControls
	ldrh r2, [r1, #0x2e]
	ldrh r0, [r3, #6]
	sub r2, r2, r0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	ldrh r0, [r1, #0x32]
	ldrh r1, [r3, #8]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldrh r3, [r6]
	mov r1, #0x3f
	and r1, r3
	lsl r1, r1, #4
	add r1, #8
	mov r0, #0xfc
	lsl r0, r0, #4
	and r0, r3
	lsl r0, r0, #0xe
	mov r3, #0xc0
	lsl r3, r3, #0xd
	add r0, r0, r3
	lsr r3, r0, #0x10
	sub r2, r2, r1
	add r0, r2, #0
	add r0, #0x18
	cmp r0, #0x30
	bhi _08057A14
	sub r0, r4, r3
	add r0, #8
	cmp r0, #0x10
	bhi _08057A14
	cmp r4, r3
	bhs _08057A00
	add r0, r2, #0
	add r0, #0xc
	cmp r0, #0x18
	bls _08057A14
	b _08057A00
	.align 2, 0
_080579BC: .4byte gUnk_03004030
_080579C0: .4byte gPlayerEntity
_080579C4: .4byte gRoomControls
_080579C8:
	ldr r3, _08057A0C @ =gPlayerEntity
	mov r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r2, _08057A10 @ =gRoomControls
	ldrh r1, [r2, #6]
	sub r0, r0, r1
	asr r4, r0, #4
	mov r1, #0x3f
	and r4, r1
	mov r0, #0x32
	ldrsh r5, [r3, r0]
	ldrh r2, [r2, #8]
	sub r0, r5, r2
	asr r0, r0, #4
	and r0, r1
	lsl r0, r0, #6
	orr r4, r0
	ldrh r1, [r6]
	cmp r4, r1
	bne _08057A14
	lsr r0, r4, #6
	lsl r0, r0, #4
	add r0, r2, r0
	add r0, #6
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r5, r3
	bge _08057A14
_08057A00:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_08057A18
	mov r0, #1
	b _08057A16
	.align 2, 0
_08057A0C: .4byte gPlayerEntity
_08057A10: .4byte gRoomControls
_08057A14:
	mov r0, #0
_08057A16:
	pop {r4, r5, r6, r7, pc}
