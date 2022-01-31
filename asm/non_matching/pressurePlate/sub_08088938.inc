    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldrh r1, [r0, #0x2e]
	subs r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	ldrh r1, [r0, #0x32]
	subs r1, #8
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r4, #0
	ldr r1, _080889A0 @ =gRoomVars
	ldr r2, _080889A4 @ =sSpriteOffsets
	mov r8, r2
	adds r3, r1, #0
	adds r3, #0xac
	adds r6, r0, #0
	adds r6, #0x72
_08088962:
	ldr r2, [r3]
	cmp r2, #0
	beq _08088990
	ldrh r0, [r2, #0x2e]
	mov r1, ip
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bhi _08088990
	ldrh r0, [r2, #0x32]
	subs r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bhi _08088990
	ldrb r0, [r6]
	add r0, r8
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x63
	strb r1, [r0]
	adds r5, #1
_08088990:
	adds r3, #4
	adds r4, #1
	cmp r4, #7
	bls _08088962
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080889A0: .4byte gRoomVars
_080889A4: .4byte sSpriteOffsets
    .syntax divided
