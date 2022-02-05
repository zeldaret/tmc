	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	bne _08030880
	b _0803099C
_08030880:
	ldr r0, _08030928 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803088E
	b _0803098A
_0803088E:
	ldr r0, _0803092C @ =gRoomControls
	mov sb, r0
	ldrh r0, [r5, #0x2e]
	mov r2, sb
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrh r0, [r5, #0x32]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r3, #0x2e
	ldrsh r0, [r5, r3]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	mov r3, sb
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	movs r0, #0x38
	adds r0, r0, r5
	mov r8, r0
	ldrb r1, [r0]
	adds r0, r4, #0
	bl GetTileType
	ldr r1, _08030930 @ =0x00004049
	mov sl, r1
	cmp r0, sl
	bne _08030950
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #2
	movs r3, #0xc
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _0803093C
	subs r1, r6, #4
	adds r0, r7, #0
	movs r2, #2
	movs r3, #4
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _0803098A
	ldr r2, _08030934 @ =gPlayerEntity
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r5, #0x7c]
	bl DoExitTransition
	ldr r0, _08030938 @ =gRoomTransition
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r1, [r1]
	adds r0, #0xae
	strh r1, [r0]
	movs r0, #1
	b _0803099E
	.align 2, 0
_08030928: .4byte gPlayerState
_0803092C: .4byte gRoomControls
_08030930: .4byte 0x00004049
_08030934: .4byte gPlayerEntity
_08030938: .4byte gRoomTransition
_0803093C:
	ldr r0, _0803094C @ =0x00004022
	mov r3, r8
	ldrb r2, [r3]
	adds r1, r4, #0
	bl SetTile
	b _0803098A
	.align 2, 0
_0803094C: .4byte 0x00004022
_08030950:
	adds r1, r6, #6
	adds r0, r7, #0
	movs r2, #2
	movs r3, #5
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _0803098A
	movs r4, #0x2e
	ldrsh r1, [r5, r4]
	mov r2, sb
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, r8
	ldrb r2, [r0]
	mov r0, sl
	bl SetTile
_0803098A:
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
_0803099C:
	movs r0, #0
_0803099E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.syntax divided
