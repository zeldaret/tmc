	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	adds r0, r0, r7
	ldr r2, _0807ABF0 @ =gRoomControls
	mov sb, r2
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	mov sl, r3
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r6, r5]
	add r1, r8
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r6, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	movs r1, #0xb
	bl sub_0806FC50
	adds r5, r0, #0
	cmp r5, #0
	beq _0807AC44
	ldrh r0, [r5, #6]
	cmp r0, #0x76
	bne _0807ABF4
	movs r0, #0x2a
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0807AC44
	lsls r2, r7, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl PositionRelative
	adds r0, r4, #0
	bl sub_08004168
	ldrh r0, [r5, #6]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	mov r3, sb
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	mov r5, sl
	ands r1, r5
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	mov r5, sb
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	mov r3, sl
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
	b _0807AC44
	.align 2, 0
_0807ABF0: .4byte gRoomControls
_0807ABF4:
	movs r0, #0x2a
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0807AC44
	lsls r2, r7, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl PositionRelative
	str r5, [r4, #0x54]
	ldr r0, _0807AC50 @ =0x0000404F
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	mov r3, sb
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	mov r5, sl
	ands r1, r5
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	mov r5, sb
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	mov r3, sl
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_0807AC44:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807AC50: .4byte 0x0000404F
	.syntax divided
