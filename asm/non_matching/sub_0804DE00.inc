    .syntax unified
	push {r4, r5, r6, lr}
	bl sub_080530C8
	movs r0, #0xb
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804DE32
	movs r0, #0x19
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804DE22
	movs r0, #0x19
	bl SetGlobalFlag
	b _0804DE32
_0804DE22:
	movs r0, #0x18
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804DE32
	movs r0, #0x18
	bl SetGlobalFlag
_0804DE32:
	ldr r5, _0804DE50 @ =Area_HyruleTown
	ldr r4, _0804DE54 @ =gSave
	ldrb r0, [r4, #8]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_0804AFB0
	ldrb r0, [r4, #8]
	cmp r0, #1
	beq _0804DE5C
	ldr r1, _0804DE58 @ =gUnk_02017654
	ldr r0, [r5]
	str r0, [r1]
	b _0804DECC
	.align 2, 0
_0804DE50: .4byte Area_HyruleTown
_0804DE54: .4byte gSave
_0804DE58: .4byte gUnk_02017654
_0804DE5C:
	movs r0, #0x1c
	bl SetGlobalFlag
	ldr r4, _0804DEB4 @ =gArea
	ldr r0, _0804DEB8 @ =0x0000085C
	adds r4, r4, r0
	ldr r0, [r4]
	ldrh r5, [r0, #4]
	ldrh r6, [r0, #6]
	ldr r1, _0804DEBC @ =gRoomControls
	movs r2, #0
	movs r0, #0x15
	strb r0, [r1, #4]
	strb r2, [r1, #5]
	bl sub_08052CFC
	ldr r0, [r4]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r5, r5, r1
	strh r5, [r0, #4]
	ldr r0, [r4]
	strh r6, [r0, #6]
	ldr r1, _0804DEC0 @ =gScreenTransition
	ldr r0, [r4]
	ldrh r0, [r0]
	lsrs r0, r0, #1
	strh r0, [r1, #0x10]
	bl sub_08052EA0
	bl sub_0804AF90
	movs r0, #0xcd
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804DEC4
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #7
	bl DoFade
	b _0804DECC
	.align 2, 0
_0804DEB4: .4byte gArea
_0804DEB8: .4byte 0x0000085C
_0804DEBC: .4byte gRoomControls
_0804DEC0: .4byte gScreenTransition
_0804DEC4:
	movs r0, #6
	movs r1, #0x10
	bl DoFade
_0804DECC:
	movs r0, #1
	pop {r4, r5, r6, pc}
    .syntax divided
