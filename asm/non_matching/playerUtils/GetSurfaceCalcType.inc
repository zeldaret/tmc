	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	adds r0, r0, r6
	ldr r2, _0807A288 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r1, r0, r1
	lsrs r4, r1, #4
	movs r3, #0x3f
	ands r4, r3
	movs r7, #0x32
	ldrsh r1, [r5, r7]
	add r1, r8
	ldrh r2, [r2, #8]
	subs r2, r1, r2
	asrs r2, r2, #4
	ands r2, r3
	lsls r2, r2, #6
	orrs r4, r2
	ldr r2, _0807A28C @ =gPlayerEntity
	adds r2, #0x38
	ldrb r2, [r2]
	bl GetTileTypeByPos
	adds r2, r0, #0
	ldr r1, _0807A290 @ =gPlayerState
	ldrh r0, [r1, #0x24]
	cmp r2, r0
	beq _0807A23A
	adds r3, r1, #0
	adds r3, #0x37
	movs r0, #0
	strb r0, [r3]
	ldrh r7, [r1, #0x24]
	cmp r2, r7
	bne _0807A242
_0807A23A:
	adds r3, r1, #0
	ldrh r0, [r3, #0x22]
	cmp r4, r0
	beq _0807A24E
_0807A242:
	ldr r0, _0807A290 @ =gPlayerState
	movs r1, #0
	strh r4, [r0, #0x22]
	strh r2, [r0, #0x24]
	strb r1, [r0, #0x11]
	adds r3, r0, #0
_0807A24E:
	adds r2, r3, #0
	ldrb r1, [r2, #0x11]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0807A25C
	adds r0, r1, #1
	strb r0, [r2, #0x11]
_0807A25C:
	adds r2, #0x37
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0807A26A
	adds r0, r1, #1
	strb r0, [r2]
_0807A26A:
	ldrb r0, [r3, #0x12]
	strb r0, [r3, #0x13]
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_080B1A8C
	adds r2, r0, #0
	ldr r1, _0807A294 @ =gUnk_08007CAC
	bl sub_08007DD6
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807A288: .4byte gRoomControls
_0807A28C: .4byte gPlayerEntity
_0807A290: .4byte gPlayerState
_0807A294: .4byte gUnk_08007CAC
	.syntax divided
