	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0805B964 @ =gArea
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0805B90A
	bl sub_0801E104
	ldr r2, _0805B968 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805B96C @ =0x0000D7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805B90A:
	ldrb r2, [r5, #0xc]
	cmp r2, #0
	bne _0805B934
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0x11
	strb r0, [r5, #0xe]
	str r2, [r5, #0x20]
	adds r0, r5, #0
	movs r1, #6
	bl SetDefaultPriority
	bl sub_0801E120
	ldrb r0, [r5, #0xe]
	bl sub_0801E154
_0805B934:
	ldr r0, _0805B970 @ =gMain
	ldrb r0, [r0, #4]
	cmp r0, #2
	bne _0805B952
	ldr r2, _0805B968 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bl sub_0805BA78
	bl sub_0805BAD4
_0805B952:
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bne _0805B978
	ldr r2, _0805B968 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805B974 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	b _0805BA6C
	.align 2, 0
_0805B964: .4byte gArea
_0805B968: .4byte gScreen
_0805B96C: .4byte 0x0000D7FF
_0805B970: .4byte gMain
_0805B974: .4byte 0x0000DFFF
_0805B978:
	ldr r3, _0805B9A8 @ =gPlayerEntity
	movs r4, #0x2e
	ldrsh r0, [r3, r4]
	ldr r2, _0805B9AC @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	movs r6, #0x32
	ldrsh r1, [r3, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	movs r2, #0
	movs r3, #0
	bl CheckRectOnScreen
	cmp r0, #0
	beq _0805B9B4
	ldr r2, _0805B9B0 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	b _0805B9BC
	.align 2, 0
_0805B9A8: .4byte gPlayerEntity
_0805B9AC: .4byte gRoomControls
_0805B9B0: .4byte gScreen
_0805B9B4:
	ldr r2, _0805B9E8 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805B9EC @ =0x0000DFFF
	ands r0, r1
_0805B9BC:
	strh r0, [r2]
	ldrb r4, [r5, #0xe]
	ldr r0, _0805B9F0 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805BA2C
	ldr r0, _0805B9F4 @ =gArea
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _0805BA2C
	cmp r4, #0x47
	bhi _0805B9F8
	adds r4, #4
	adds r0, r4, #0
	bl sub_0801E154
	movs r0, #0
	str r0, [r5, #0x20]
	b _0805BA42
	.align 2, 0
_0805B9E8: .4byte gScreen
_0805B9EC: .4byte 0x0000DFFF
_0805B9F0: .4byte gPlayerState
_0805B9F4: .4byte gArea
_0805B9F8:
	ldr r0, _0805BA24 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805BA42
	ldrb r0, [r5, #0xf]
	adds r0, #0x10
	strb r0, [r5, #0xf]
	ldr r1, _0805BA28 @ =gSineTable
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	asrs r0, r0, #7
	str r0, [r5, #0x20]
	adds r0, r4, r0
	bl sub_0801E154
	b _0805BA42
	.align 2, 0
_0805BA24: .4byte gScreenTransition
_0805BA28: .4byte gSineTable
_0805BA2C:
	movs r0, #0
	str r0, [r5, #0x20]
	cmp r4, #0x11
	bls _0805BA42
	subs r4, #4
	cmp r4, #0x10
	bhi _0805BA3C
	movs r4, #0x11
_0805BA3C:
	adds r0, r4, #0
	bl sub_0801E154
_0805BA42:
	strb r4, [r5, #0xe]
	ldr r3, _0805BA70 @ =gPlayerEntity
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r2, _0805BA74 @ =gRoomControls
	movs r6, #0xa
	ldrsh r1, [r2, r6]
	subs r0, r0, r1
	movs r6, #0x32
	ldrsh r1, [r3, r6]
	movs r6, #0xc
	ldrsh r2, [r2, r6]
	subs r1, r1, r2
	movs r6, #0x36
	ldrsh r2, [r3, r6]
	subs r2, #9
	adds r1, r1, r2
	ldr r2, [r5, #0x20]
	adds r2, r4, r2
	bl sub_0801E160
_0805BA6C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805BA70: .4byte gPlayerEntity
_0805BA74: .4byte gRoomControls
	.syntax divided
