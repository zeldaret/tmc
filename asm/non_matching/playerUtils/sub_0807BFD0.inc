	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_0801B170
	bl sub_0807BFA8
	ldr r7, _0807C0B8 @ =0x0000FFFF
	ldr r6, _0807C0BC @ =gMetatileTypesBottom
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	bl MemFill16
	movs r5, #0
	strh r5, [r6]
	ldr r4, _0807C0C0 @ =gMetatileTypesTop
	adds r0, r7, #0
	adds r1, r4, #0
	mov r2, r8
	bl MemFill16
	strh r5, [r4]
	ldr r2, _0807C0C4 @ =gRoomControls
	ldr r0, _0807C0C8 @ =gArea
	ldr r1, _0807C0CC @ =0x0000085C
	adds r4, r0, r1
	ldr r0, [r4]
	ldr r1, [r2, #0x34]
	ldr r0, [r0, #8]
	cmp r1, r0
	beq _0807C01C
	str r0, [r2, #0x34]
	bl sub_080197D4
_0807C01C:
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	bl sub_080197D4
	ldr r1, _0807C0D0 @ =gPaletteBuffer
	adds r0, r1, #0
	adds r0, #0x60
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0x20
	bl MemCopy
	ldr r2, _0807C0D4 @ =gUsedPalettes
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0807C04E
	bl sub_0801B130
_0807C04E:
	adds r5, r6, #0
	movs r0, #0x80
	lsls r0, r0, #5
	adds r6, r5, r0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	bl MemFill16
	movs r2, #0
	ldr r3, _0807C0D8 @ =0x000007FF
	adds r4, r7, #0
_0807C066:
	ldrh r0, [r5]
	cmp r0, r3
	bhi _0807C078
	lsls r0, r0, #1
	adds r1, r0, r6
	ldrh r0, [r1]
	cmp r0, r4
	bne _0807C078
	strh r2, [r1]
_0807C078:
	adds r2, #1
	adds r5, #2
	cmp r2, r3
	ble _0807C066
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r5, _0807C0C0 @ =gMetatileTypesTop
	adds r6, r5, r2
	ldr r4, _0807C0B8 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r6, #0
	bl MemFill16
	movs r2, #0
	ldr r3, _0807C0D8 @ =0x000007FF
_0807C096:
	ldrh r0, [r5]
	cmp r0, r3
	bhi _0807C0A8
	lsls r0, r0, #1
	adds r1, r0, r6
	ldrh r0, [r1]
	cmp r0, r4
	bne _0807C0A8
	strh r2, [r1]
_0807C0A8:
	adds r2, #1
	adds r5, #2
	cmp r2, r3
	ble _0807C096
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807C0B8: .4byte 0x0000FFFF
_0807C0BC: .4byte gMetatileTypesBottom
_0807C0C0: .4byte gMetatileTypesTop
_0807C0C4: .4byte gRoomControls
_0807C0C8: .4byte gArea
_0807C0CC: .4byte 0x0000085C
_0807C0D0: .4byte gPaletteBuffer
_0807C0D4: .4byte gUsedPalettes
_0807C0D8: .4byte 0x000007FF
	.syntax divided
