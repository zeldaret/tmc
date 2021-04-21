	.include "asm/macros.inc"
	
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080526F8
sub_080526F8: @ 0x080526F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08052724
	cmp r0, #0
	beq _08052718
	ldr r0, _0805271C @ =gArea
	ldrb r1, [r0, #3]
	ldr r0, _08052720 @ =gUnk_02002E9C
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r4
	cmp r0, #0
	bge _08052716
	movs r0, #0
_08052716:
	strb r0, [r1]
_08052718:
	pop {r4, pc}
	.align 2, 0
_0805271C: .4byte gArea
_08052720: .4byte gUnk_02002E9C

	thumb_func_start sub_08052724
sub_08052724: @ 0x08052724
	ldr r0, _08052730 @ =gArea
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08052730: .4byte gArea

	thumb_func_start sub_08052734
sub_08052734: @ 0x08052734
	push {r4, lr}
	bl sub_08052724
	cmp r0, #0
	beq _0805274C
	ldr r0, _08052758 @ =gSave
	ldr r1, _0805275C @ =gArea
	ldr r2, _08052760 @ =0x0000045C
	adds r0, r0, r2
	ldrb r1, [r1, #3]
	adds r0, r0, r1
	ldrb r4, [r0]
_0805274C:
	adds r0, r4, #0
	cmp r0, #0
	beq _08052754
	movs r0, #1
_08052754:
	pop {r4, pc}
	.align 2, 0
_08052758: .4byte gSave
_0805275C: .4byte gArea
_08052760: .4byte 0x0000045C

	thumb_func_start sub_08052764
sub_08052764: @ 0x08052764
	push {r4, lr}
	bl sub_08052724
	cmp r0, #0
	beq _08052784
	ldr r0, _08052790 @ =gSave
	ldr r1, _08052794 @ =gArea
	ldr r2, _08052798 @ =0x0000046C
	adds r0, r0, r2
	ldrb r1, [r1, #3]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08052784:
	adds r0, r4, #0
	cmp r0, #0
	beq _0805278C
	movs r0, #1
_0805278C:
	pop {r4, pc}
	.align 2, 0
_08052790: .4byte gSave
_08052794: .4byte gArea
_08052798: .4byte 0x0000046C

	thumb_func_start sub_0805279C
sub_0805279C: @ 0x0805279C
	push {lr}
	bl sub_08052724
	cmp r0, #0
	beq _080527C8
	ldr r0, _080527BC @ =gSave
	ldr r1, _080527C0 @ =gArea
	ldr r2, _080527C4 @ =0x0000046C
	adds r0, r0, r2
	ldrb r1, [r1, #3]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	b _080527CA
	.align 2, 0
_080527BC: .4byte gSave
_080527C0: .4byte gArea
_080527C4: .4byte 0x0000046C
_080527C8:
	movs r0, #0
_080527CA:
	pop {pc}

	thumb_func_start sub_080527CC
sub_080527CC: @ 0x080527CC
	push {lr}
	bl sub_08052724
	cmp r0, #0
	beq _080527F8
	ldr r0, _080527EC @ =gSave
	ldr r1, _080527F0 @ =gArea
	ldr r2, _080527F4 @ =0x0000046C
	adds r0, r0, r2
	ldrb r1, [r1, #3]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	b _080527FA
	.align 2, 0
_080527EC: .4byte gSave
_080527F0: .4byte gArea
_080527F4: .4byte 0x0000046C
_080527F8:
	movs r0, #0
_080527FA:
	pop {pc}

	thumb_func_start sub_080527FC
sub_080527FC: @ 0x080527FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08053320
	bl sub_080AE1D8
	bl sub_080ADE24
	movs r0, #1
	bl sub_0801C370
	adds r0, r4, #0
	bl sub_0801AE44
	ldr r0, _08052830 @ =gUnk_02024090
	ldr r1, _08052834 @ =gPaletteBuffer
	movs r2, #0x80
	lsls r2, r2, #3
	bl MemCopy
	ldr r1, _08052838 @ =gUsedPalettes
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	pop {r4, pc}
	.align 2, 0
_08052830: .4byte gUnk_02024090
_08052834: .4byte gPaletteBuffer
_08052838: .4byte gUsedPalettes

	thumb_func_start sub_0805283C
sub_0805283C: @ 0x0805283C
	push {r4, lr}
	ldr r0, _08052868 @ =gArea
	ldr r1, _0805286C @ =0x00000864
	adds r4, r0, r1
	ldr r1, _08052870 @ =gUnk_08127D30
	ldr r0, _08052874 @ =gRoomControls
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	str r0, [r4]
	movs r0, #0x8c
	lsls r0, r0, #4
	movs r1, #0x7c
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _08052864
	movs r0, #0x33
	str r0, [r4]
_08052864:
	pop {r4, pc}
	.align 2, 0
_08052868: .4byte gArea
_0805286C: .4byte 0x00000864
_08052870: .4byte gUnk_08127D30
_08052874: .4byte gRoomControls

	thumb_func_start sub_08052878
sub_08052878: @ 0x08052878
	push {lr}
	ldr r0, _08052894 @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08052898 @ =0x80010000
	bl SoundReq
	pop {pc}
	.align 2, 0
_08052894: .4byte gArea
_08052898: .4byte 0x80010000

	thumb_func_start sub_0805289C
sub_0805289C: @ 0x0805289C
	ldr r0, _080528AC @ =gArea
	ldr r2, _080528B0 @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	bx lr
	.align 2, 0
_080528AC: .4byte gArea
_080528B0: .4byte 0x00000864

	thumb_func_start sub_080528B4
sub_080528B4: @ 0x080528B4
	push {lr}
	ldr r0, _080528C4 @ =gScreenTransition
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _080528C8
	movs r0, #0
	b _080528E6
	.align 2, 0
_080528C4: .4byte gScreenTransition
_080528C8:
	bl sub_0804FFE4
	ldr r1, _080528E8 @ =gMain
	movs r2, #0
	movs r0, #3
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	movs r0, #5
	movs r1, #8
	bl DoFade
	ldr r0, _080528EC @ =0x80100000
	bl SoundReq
	movs r0, #1
_080528E6:
	pop {pc}
	.align 2, 0
_080528E8: .4byte gMain
_080528EC: .4byte 0x80100000

	thumb_func_start sub_080528F0
sub_080528F0: @ 0x080528F0
	push {lr}
	ldr r1, _08052914 @ =gArea
	ldr r2, _08052918 @ =0x00000888
	adds r0, r1, r2
	ldr r2, [r0]
	cmp r2, #0
	beq _08052910
	movs r3, #0x89
	lsls r3, r3, #4
	adds r0, r1, r3
	ldr r1, [r0]
	cmp r1, #0
	beq _08052910
	adds r0, r2, #0
	bl _call_via_r1
_08052910:
	pop {pc}
	.align 2, 0
_08052914: .4byte gArea
_08052918: .4byte 0x00000888

	thumb_func_start sub_0805291C
sub_0805291C: @ 0x0805291C
	push {r4, lr}
	ldr r4, _08052948 @ =gScreenTransition
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _080529F4
	ldr r0, _0805294C @ =gSave
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #0
	beq _080529F4
	ldr r0, _08052950 @ =gPlayerState
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080529F4
	bl sub_080529F8
	cmp r0, #0
	beq _08052954
	movs r0, #0
	strb r0, [r4, #8]
	b _080529F6
	.align 2, 0
_08052948: .4byte gScreenTransition
_0805294C: .4byte gSave
_08052950: .4byte gPlayerState
_08052954:
	ldrb r0, [r4, #9]
	subs r0, #1
	cmp r0, #8
	bhi _080529D4
	lsls r0, r0, #2
	ldr r1, _08052968 @ =_0805296C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052968: .4byte _0805296C
_0805296C: @ jump table
	.4byte _08052990 @ case 0
	.4byte _080529A4 @ case 1
	.4byte _080529D4 @ case 2
	.4byte _080529A8 @ case 3
	.4byte _080529B2 @ case 4
	.4byte _080529BC @ case 5
	.4byte _080529C8 @ case 6
	.4byte _080529C8 @ case 7
	.4byte _0805299A @ case 8
_08052990:
	movs r0, #0xd
	movs r1, #8
	bl DoFade
	b _080529DC
_0805299A:
	movs r0, #0xd
	movs r1, #3
	bl DoFade
	b _080529DC
_080529A4:
	movs r0, #7
	b _080529AA
_080529A8:
	movs r0, #5
_080529AA:
	movs r1, #4
	bl DoFade
	b _080529DC
_080529B2:
	movs r0, #5
	movs r1, #0x10
	bl DoFade
	b _080529DC
_080529BC:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	b _080529DC
_080529C8:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #7
	bl DoFade
	b _080529DC
_080529D4:
	movs r0, #7
	movs r1, #0x10
	bl DoFade
_080529DC:
	bl sub_080528F0
	ldr r0, _080529F0 @ =gMain
	movs r1, #3
	strb r1, [r0, #4]
	movs r1, #1
	strb r1, [r0, #0xb]
	movs r0, #1
	b _080529F6
	.align 2, 0
_080529F0: .4byte gMain
_080529F4:
	movs r0, #0
_080529F6:
	pop {r4, pc}

	thumb_func_start sub_080529F8
sub_080529F8: @ 0x080529F8
	push {r4, r5, r6, lr}
	ldr r1, _08052A34 @ =gScreenTransition
	ldrh r4, [r1, #0xa]
	ldr r2, _08052A38 @ =gUnk_080FCAD6
	ldrh r0, [r2]
	cmp r0, #0
	beq _08052A48
	ldr r3, _08052A3C @ =gPlayerState
	movs r6, #0
	movs r0, #0x39
	adds r0, r0, r3
	mov ip, r0
	movs r5, #0x1e
_08052A12:
	ldrh r0, [r2]
	cmp r4, r0
	bne _08052A40
	strb r5, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x38
	strb r6, [r0]
	ldrh r0, [r2, #2]
	mov r3, ip
	strb r0, [r3]
	ldrb r0, [r1, #0xf]
	cmp r0, #0
	bne _08052A30
	ldrh r0, [r2, #2]
	strb r0, [r1, #0xf]
_08052A30:
	movs r0, #1
	b _08052A4A
	.align 2, 0
_08052A34: .4byte gScreenTransition
_08052A38: .4byte gUnk_080FCAD6
_08052A3C: .4byte gPlayerState
_08052A40:
	adds r2, #4
	ldrh r0, [r2]
	cmp r0, #0
	bne _08052A12
_08052A48:
	movs r0, #0
_08052A4A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08052A4C
sub_08052A4C: @ 0x08052A4C
	push {r4, r5, lr}
	ldr r2, _08052A88 @ =gScreenTransition
	movs r0, #1
	strb r0, [r2, #8]
	ldr r5, _08052A8C @ =gPlayerEntity
	ldr r3, _08052A90 @ =gRoomControls
	ldrh r0, [r5, #0x2e]
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r4, r1, #0
	ands r0, r4
	strh r0, [r2, #0x10]
	ldrh r0, [r5, #0x32]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	ands r0, r4
	strh r0, [r2, #0x12]
	movs r0, #4
	strb r0, [r2, #0xe]
	movs r0, #0xa
	strb r0, [r2, #0xf]
	ldrb r0, [r3, #4]
	strb r0, [r2, #0xc]
	ldrb r0, [r3, #5]
	subs r0, #1
	strb r0, [r2, #0xd]
	pop {r4, r5, pc}
	.align 2, 0
_08052A88: .4byte gScreenTransition
_08052A8C: .4byte gPlayerEntity
_08052A90: .4byte gRoomControls

	thumb_func_start sub_08052A94
sub_08052A94: @ 0x08052A94
	push {lr}
	ldr r0, _08052AAC @ =gScreenTransition
	ldrb r0, [r0, #9]
	subs r0, #1
	cmp r0, #8
	bhi _08052B1C
	lsls r0, r0, #2
	ldr r1, _08052AB0 @ =_08052AB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052AAC: .4byte gScreenTransition
_08052AB0: .4byte _08052AB4
_08052AB4: @ jump table
	.4byte _08052AD8 @ case 0
	.4byte _08052AE6 @ case 1
	.4byte _08052B22 @ case 2
	.4byte _08052B1C @ case 3
	.4byte _08052B08 @ case 4
	.4byte _08052AF0 @ case 5
	.4byte _08052AFC @ case 6
	.4byte _08052B12 @ case 7
	.4byte _08052ADC @ case 8
_08052AD8:
	movs r0, #0xc
	b _08052B14
_08052ADC:
	movs r0, #0xc
	movs r1, #3
	bl DoFade
	b _08052B22
_08052AE6:
	movs r0, #6
	movs r1, #4
	bl DoFade
	b _08052B22
_08052AF0:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	b _08052B22
_08052AFC:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #7
	bl DoFade
	b _08052B22
_08052B08:
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	b _08052B22
_08052B12:
	movs r0, #6
_08052B14:
	movs r1, #8
	bl DoFade
	b _08052B22
_08052B1C:
	movs r0, #0x10
	bl sub_080500F4
_08052B22:
	pop {pc}

	thumb_func_start sub_08052B24
sub_08052B24: @ 0x08052B24
	push {lr}
	ldr r0, _08052B90 @ =gInput
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08052B8A
	ldr r2, _08052B94 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #0
	bne _08052B8A
	ldr r0, _08052B98 @ =gUnk_02034490
	ldrb r0, [r0]
	cmp r0, #0
	bne _08052B8A
	ldr r0, _08052B9C @ =gUnk_0200AF00
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08052B8A
	ldr r0, [r2, #0x30]
	movs r1, #0x8c
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08052B8A
	adds r0, r2, #0
	adds r0, #0xa9
	ldrb r0, [r0]
	cmp r0, #1
	bgt _08052B8A
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	bne _08052B8A
	ldr r1, _08052BA0 @ =gPlayerEntity
	adds r0, r1, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	bne _08052B8A
	movs r3, #0x36
	ldrsh r0, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08052BA4
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08052BA4
_08052B8A:
	movs r0, #0
	b _08052BB4
	.align 2, 0
_08052B90: .4byte gInput
_08052B94: .4byte gPlayerState
_08052B98: .4byte gUnk_02034490
_08052B9C: .4byte gUnk_0200AF00
_08052BA0: .4byte gPlayerEntity
_08052BA4:
	bl sub_0801862C
	movs r0, #0x13
	bl sub_08078160
	bl sub_0805E544
	movs r0, #1
_08052BB4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08052BB8
sub_08052BB8: @ 0x08052BB8
	push {lr}
	ldr r0, _08052BE0 @ =gScreenTransition
	adds r2, r0, #0
	adds r2, #0x35
	ldrb r1, [r2]
	adds r3, r0, #0
	cmp r1, #0
	bne _08052BEC
	ldr r0, _08052BE4 @ =gPlayerEntity
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	ldr r0, _08052BE8 @ =gRoomControls
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	movs r2, #0xd
	cmp r1, #0x60
	ble _08052BEE
	movs r2, #1
	b _08052BEE
	.align 2, 0
_08052BE0: .4byte gScreenTransition
_08052BE4: .4byte gPlayerEntity
_08052BE8: .4byte gRoomControls
_08052BEC:
	ldrb r2, [r2]
_08052BEE:
	ldrh r0, [r3, #0x36]
	adds r1, r2, #0
	bl TextBoxAtYPosition
	pop {pc}

	thumb_func_start sub_08052BF8
sub_08052BF8: @ 0x08052BF8
	push {lr}
	ldr r2, _08052C34 @ =gScreenTransition
	adds r1, r2, #0
	adds r1, #0x31
	ldrb r0, [r1]
	cmp r0, #0
	bne _08052C30
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08052C38 @ =gArea
	ldrb r1, [r0, #1]
	adds r0, r2, #0
	adds r0, #0x2e
	strb r1, [r0]
	bl GetEmptyManager
	adds r1, r0, #0
	cmp r1, #0
	beq _08052C30
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0xf
	strb r0, [r1, #9]
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	movs r1, #0
	bl AppendEntityToList
_08052C30:
	pop {pc}
	.align 2, 0
_08052C34: .4byte gScreenTransition
_08052C38: .4byte gArea

	thumb_func_start sub_08052C3C
sub_08052C3C: @ 0x08052C3C
	push {lr}
	ldr r2, _08052C58 @ =gArea
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _08052C48
	strb r0, [r2, #0x1a]
_08052C48:
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	beq _08052C56
	subs r0, #1
	movs r1, #0
	strb r0, [r2, #0x1a]
	strb r1, [r2, #0x18]
_08052C56:
	pop {pc}
	.align 2, 0
_08052C58: .4byte gArea

	thumb_func_start sub_08052C5C
sub_08052C5C: @ 0x08052C5C
	push {lr}
	bl sub_08052680
	cmp r0, #0
	bne _08052C98
	bl sub_08052620
	cmp r0, #0
	beq _08052C84
	ldr r2, _08052C7C @ =gScreenTransition
	ldr r1, _08052C80 @ =gPlayerEntity
	ldrh r0, [r1, #0x2e]
	strh r0, [r2, #0x20]
	ldrh r0, [r1, #0x32]
	strh r0, [r2, #0x22]
	b _08052C98
	.align 2, 0
_08052C7C: .4byte gScreenTransition
_08052C80: .4byte gPlayerEntity
_08052C84:
	bl CheckIsDungeon
	cmp r0, #0
	beq _08052C98
	ldr r2, _08052C9C @ =gScreenTransition
	ldr r1, _08052CA0 @ =gPlayerEntity
	ldrh r0, [r1, #0x2e]
	strh r0, [r2, #0x1c]
	ldrh r0, [r1, #0x32]
	strh r0, [r2, #0x1e]
_08052C98:
	pop {pc}
	.align 2, 0
_08052C9C: .4byte gScreenTransition
_08052CA0: .4byte gPlayerEntity

	thumb_func_start sub_08052CA4
sub_08052CA4: @ 0x08052CA4
	push {r4, lr}
	ldr r4, _08052CC8 @ =gAreaRoomHeaders
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r4, r1, #2
	adds r4, r4, r1
	lsls r4, r4, #1
	ldr r1, [r0]
	adds r1, r1, r4
	ldr r4, _08052CCC @ =gScreenTransition
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	adds r0, r0, r3
	strh r0, [r4, #0x22]
	pop {r4, pc}
	.align 2, 0
_08052CC8: .4byte gAreaRoomHeaders
_08052CCC: .4byte gScreenTransition

	thumb_func_start sub_08052CD0
sub_08052CD0: @ 0x08052CD0
	push {r4, lr}
	ldr r4, _08052CF4 @ =gAreaRoomHeaders
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r4, r1, #2
	adds r4, r4, r1
	lsls r4, r4, #1
	ldr r1, [r0]
	adds r1, r1, r4
	ldr r4, _08052CF8 @ =gScreenTransition
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r4, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r0, r3
	strh r0, [r4, #0x1e]
	pop {r4, pc}
	.align 2, 0
_08052CF4: .4byte gAreaRoomHeaders
_08052CF8: .4byte gScreenTransition

	thumb_func_start sub_08052CFC
sub_08052CFC: @ 0x08052CFC
	push {r4, lr}
	ldr r4, _08052D44 @ =gArea
	ldr r1, _08052D48 @ =0x00000894
	adds r0, r4, #0
	bl MemClear
	ldr r0, _08052D4C @ =gRoomControls
	ldrb r1, [r0, #4]
	lsls r1, r1, #2
	ldr r0, _08052D50 @ =gUnk_08127D30
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #1]
	subs r0, #0x17
	strb r0, [r4, #3]
	ldr r2, _08052D54 @ =gUnk_0811E454
	ldrb r0, [r1, #2]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #4]
	ldrb r0, [r1, #2]
	strb r0, [r4, #6]
	movs r0, #0xb4
	strb r0, [r4, #0x1a]
	adds r0, #0x4c
	strh r0, [r4, #0xa]
	bl sub_08052A94
	bl sub_08052DA8
	pop {r4, pc}
	.align 2, 0
_08052D44: .4byte gArea
_08052D48: .4byte 0x00000894
_08052D4C: .4byte gRoomControls
_08052D50: .4byte gUnk_08127D30
_08052D54: .4byte gUnk_0811E454

	thumb_func_start sub_08052D58
sub_08052D58: @ 0x08052D58
	lsls r0, r0, #2
	ldr r1, _08052D6C @ =gUnk_08127D30
	adds r0, r0, r1
	ldr r1, _08052D70 @ =gUnk_0811E454
	ldrb r0, [r0, #2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08052D6C: .4byte gUnk_08127D30
_08052D70: .4byte gUnk_0811E454

	thumb_func_start sub_08052D74
sub_08052D74: @ 0x08052D74
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r0, _08052D98 @ =gMain
	ldrb r0, [r0, #4]
	cmp r0, #7
	beq _08052D96
	ldr r0, _08052D9C @ =gArea
	ldr r5, _08052DA0 @ =0x00000888
	adds r1, r0, r5
	str r3, [r1]
	ldr r3, _08052DA4 @ =0x0000088C
	adds r1, r0, r3
	str r4, [r1]
	adds r5, #8
	adds r0, r0, r5
	str r2, [r0]
_08052D96:
	pop {r4, r5, pc}
	.align 2, 0
_08052D98: .4byte gMain
_08052D9C: .4byte gArea
_08052DA0: .4byte 0x00000888
_08052DA4: .4byte 0x0000088C

	thumb_func_start sub_08052DA8
sub_08052DA8: @ 0x08052DA8
	push {r4, r5, r6, r7, lr}
	ldr r1, _08052DF8 @ =gAreaRoomHeaders
	ldr r0, _08052DFC @ =gRoomControls
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r7, _08052E00 @ =gUnk_02033ACC
	movs r5, #0
	ldrh r0, [r4]
	ldr r1, _08052E04 @ =0x0000FFFF
	cmp r0, r1
	beq _08052DE8
	adds r6, r1, #0
_08052DC4:
	ldrh r0, [r4, #8]
	cmp r0, r6
	beq _08052DD8
	ldr r0, _08052DFC @ =gRoomControls
	ldrb r2, [r0, #4]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r3, r5, #0
	bl sub_08052E10
_08052DD8:
	adds r7, #0x20
	adds r5, #1
	adds r4, #0xa
	cmp r5, #0x3f
	bhi _08052DE8
	ldrh r0, [r4]
	cmp r0, r6
	bne _08052DC4
_08052DE8:
	bl sub_08052E8C
	ldr r1, _08052E08 @ =gArea
	ldr r2, _08052E0C @ =0x0000085C
	adds r1, r1, r2
	str r0, [r1]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08052DF8: .4byte gAreaRoomHeaders
_08052DFC: .4byte gRoomControls
_08052E00: .4byte gUnk_02033ACC
_08052E04: .4byte 0x0000FFFF
_08052E08: .4byte gArea
_08052E0C: .4byte 0x0000085C

	thumb_func_start sub_08052E10
sub_08052E10: @ 0x08052E10
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r1]
	strh r0, [r5, #4]
	ldrh r0, [r1, #2]
	strh r0, [r5, #6]
	ldrh r0, [r1, #4]
	strh r0, [r5]
	ldrh r0, [r1, #6]
	strh r0, [r5, #2]
	ldr r4, _08052E74 @ =gAreaTilesets
	lsls r2, r2, #2
	adds r4, r2, r4
	ldrh r0, [r1, #8]
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #8]
	ldr r0, _08052E78 @ =gAreaRoomMaps
	adds r0, r2, r0
	ldr r0, [r0]
	lsls r3, r3, #2
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [r5, #0xc]
	ldr r0, _08052E7C @ =gAreaMetatiles
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r5, #0x10]
	ldr r0, _08052E80 @ =gUnk_080B755C
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r5, #0x14]
	ldr r0, _08052E84 @ =gUnk_0813A7F0
	adds r0, r2, r0
	ldr r0, [r0]
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [r5, #0x18]
	ldr r0, _08052E88 @ =gAreaTable
	adds r2, r2, r0
	ldr r0, [r2]
	cmp r0, #0
	beq _08052E70
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [r5, #0x1c]
_08052E70:
	pop {r4, r5, pc}
	.align 2, 0
_08052E74: .4byte gAreaTilesets
_08052E78: .4byte gAreaRoomMaps
_08052E7C: .4byte gAreaMetatiles
_08052E80: .4byte gUnk_080B755C
_08052E84: .4byte gUnk_0813A7F0
_08052E88: .4byte gAreaTable

	thumb_func_start sub_08052E8C
sub_08052E8C: @ 0x08052E8C
	ldr r0, _08052E98 @ =gRoomControls
	ldrb r0, [r0, #5]
	lsls r0, r0, #5
	ldr r1, _08052E9C @ =gUnk_02033ACC
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08052E98: .4byte gRoomControls
_08052E9C: .4byte gUnk_02033ACC

	thumb_func_start sub_08052EA0
sub_08052EA0: @ 0x08052EA0
	push {r4, lr}
	ldr r4, _08052EE4 @ =gRoomVars
	adds r0, r4, #0
	movs r1, #0xcc
	bl MemClear
	movs r0, #0xff
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x11]
	strb r0, [r4, #0x12]
	strb r0, [r4, #0x13]
	adds r0, #1
	strh r0, [r4, #0xc]
	ldr r2, _08052EE8 @ =gArea
	ldr r1, _08052EEC @ =gUnk_08127D30
	ldr r0, _08052EF0 @ =gRoomControls
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	strb r0, [r2, #1]
	bl sub_08049D30
	bl InitScriptData
	bl sub_08054524
	bl sub_080186D4
	bl sub_0806F364
	bl sub_080530C8
	pop {r4, pc}
	.align 2, 0
_08052EE4: .4byte gRoomVars
_08052EE8: .4byte gArea
_08052EEC: .4byte gUnk_08127D30
_08052EF0: .4byte gRoomControls

	thumb_func_start sub_08052EF4
sub_08052EF4: @ 0x08052EF4
	push {lr}
	cmp r0, #0
	bge _08052EFE
	ldr r0, _08052F10 @ =gRoomControls
	ldrb r0, [r0, #4]
_08052EFE:
	lsls r0, r0, #2
	ldr r1, _08052F14 @ =gUnk_08127D30
	adds r0, r0, r1
	ldr r1, _08052F18 @ =gUnk_0811E454
	ldrb r0, [r0, #2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	pop {pc}
	.align 2, 0
_08052F10: .4byte gRoomControls
_08052F14: .4byte gUnk_08127D30
_08052F18: .4byte gUnk_0811E454

	thumb_func_start sub_08052F1C
sub_08052F1C: @ 0x08052F1C
	push {r4, r5, r6, lr}
	ldr r2, _08052F4C @ =gArea
	ldrb r1, [r2, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08052FCC
	ldr r0, _08052F50 @ =gRoomVars
	ldrb r0, [r0]
	cmp r0, #0
	beq _08052FCC
	movs r5, #0
	movs r4, #0
	ldr r0, _08052F54 @ =gRoomControls
	ldrb r1, [r0, #0x10]
	adds r3, r0, #0
	cmp r1, #1
	beq _08052F62
	cmp r1, #1
	bgt _08052F58
	cmp r1, #0
	beq _08052F62
	b _08052F72
	.align 2, 0
_08052F4C: .4byte gArea
_08052F50: .4byte gRoomVars
_08052F54: .4byte gRoomControls
_08052F58:
	cmp r1, #2
	beq _08052F62
	cmp r1, #3
	beq _08052F6A
	b _08052F72
_08052F62:
	ldr r1, _08052FD0 @ =0x0000085C
	adds r0, r2, r1
	ldr r0, [r0]
	ldrh r5, [r0, #2]
_08052F6A:
	ldr r1, _08052FD0 @ =0x0000085C
	adds r0, r2, r1
	ldr r0, [r0]
	ldrh r4, [r0]
_08052F72:
	ldr r0, _08052FD0 @ =0x0000085C
	adds r2, r2, r0
	ldr r1, [r2]
	ldrh r0, [r1, #4]
	adds r0, r0, r4
	strh r0, [r1, #4]
	ldr r1, [r2]
	ldrh r0, [r1, #6]
	adds r0, r0, r5
	strh r0, [r1, #6]
	ldrh r0, [r3, #6]
	adds r0, r0, r4
	strh r0, [r3, #6]
	ldrh r0, [r3, #8]
	adds r0, r0, r5
	strh r0, [r3, #8]
	ldrh r0, [r3, #0xa]
	adds r0, r0, r4
	strh r0, [r3, #0xa]
	ldrh r0, [r3, #0xc]
	adds r0, r0, r5
	strh r0, [r3, #0xc]
	ldr r2, _08052FD4 @ =gEntityLists
	adds r6, r2, #0
	adds r6, #0x48
_08052FA4:
	ldr r1, [r2, #4]
	adds r3, r2, #0
	adds r3, #8
	cmp r1, r2
	beq _08052FC6
_08052FAE:
	ldrb r0, [r1, #8]
	cmp r0, #9
	beq _08052FC0
	ldrh r0, [r1, #0x2e]
	adds r0, r0, r4
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	adds r0, r0, r5
	strh r0, [r1, #0x32]
_08052FC0:
	ldr r1, [r1, #4]
	cmp r1, r2
	bne _08052FAE
_08052FC6:
	adds r2, r3, #0
	cmp r2, r6
	blo _08052FA4
_08052FCC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08052FD0: .4byte 0x0000085C
_08052FD4: .4byte gEntityLists

	thumb_func_start sub_08052FD8
sub_08052FD8: @ 0x08052FD8
	push {lr}
	bl sub_08052FF4
	ldr r1, _08052FF0 @ =gRoomControls
	movs r0, #0
	str r0, [r1, #0x30]
	bl sub_0807C860
	bl sub_0807C740
	pop {pc}
	.align 2, 0
_08052FF0: .4byte gRoomControls

	thumb_func_start sub_08052FF4
sub_08052FF4: @ 0x08052FF4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	bl sub_08080668
	bl sub_080197AC
	ldr r0, _0805306C @ =gRoomControls
	strb r6, [r0, #4]
	strb r4, [r0, #5]
	ldr r1, _08053070 @ =gScreen
	movs r0, #0xba
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r5, _08053074 @ =gUnk_020342CC
	adds r0, r5, #0
	movs r1, #0x20
	bl MemClear
	str r5, [r5, #0x20]
	ldr r0, _08053078 @ =gAreaRoomHeaders
	lsls r6, r6, #2
	adds r0, r6, r0
	lsls r2, r4, #2
	adds r4, r2, r4
	lsls r4, r4, #1
	ldr r0, [r0]
	adds r0, r0, r4
	ldrh r1, [r0]
	strh r1, [r5, #4]
	ldrh r1, [r0, #2]
	strh r1, [r5, #6]
	ldrh r1, [r0, #4]
	strh r1, [r5]
	ldrh r1, [r0, #6]
	strh r1, [r5, #2]
	ldr r1, _0805307C @ =gAreaTilesets
	adds r1, r6, r1
	ldrh r0, [r0, #8]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #8]
	ldr r0, _08053080 @ =gAreaRoomMaps
	adds r0, r6, r0
	ldr r0, [r0]
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [r5, #0xc]
	ldr r0, _08053084 @ =gAreaMetatiles
	adds r0, r6, r0
	ldr r0, [r0]
	str r0, [r5, #0x10]
	ldr r0, _08053088 @ =gUnk_080B755C
	adds r6, r6, r0
	ldr r0, [r6]
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805306C: .4byte gRoomControls
_08053070: .4byte gScreen
_08053074: .4byte gUnk_020342CC
_08053078: .4byte gAreaRoomHeaders
_0805307C: .4byte gAreaTilesets
_08053080: .4byte gAreaRoomMaps
_08053084: .4byte gAreaMetatiles
_08053088: .4byte gUnk_080B755C

	thumb_func_start sub_0805308C
sub_0805308C: @ 0x0805308C
	push {lr}
	adds r1, r0, #0
	ldr r2, _080530AC @ =gRoomVars
	movs r3, #0xc
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	cmp r1, #0
	bge _0805309E
	movs r1, #0
_0805309E:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _080530A8
	adds r1, r0, #0
_080530A8:
	strh r1, [r2, #0xc]
	pop {pc}
	.align 2, 0
_080530AC: .4byte gRoomVars

	thumb_func_start sub_080530B0
sub_080530B0: @ 0x080530B0
	push {lr}
	ldr r0, _080530C0 @ =gUnk_080FCAF8
	ldr r1, _080530C4 @ =gUnk_030010EC
	movs r2, #0x20
	bl MemCopy
	pop {pc}
	.align 2, 0
_080530C0: .4byte gUnk_080FCAF8
_080530C4: .4byte gUnk_030010EC

	thumb_func_start sub_080530C8
sub_080530C8: @ 0x080530C8
	push {r4, r5, lr}
	movs r4, #1
	movs r5, #0xc0
	lsls r5, r5, #2
	adds r0, r5, #0
	movs r1, #0x78
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _080530E0
	movs r4, #9
	b _08053138
_080530E0:
	movs r0, #6
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080530EE
	movs r4, #8
	b _08053138
_080530EE:
	adds r0, r5, #0
	movs r1, #0x32
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _080530FE
	movs r4, #7
	b _08053138
_080530FE:
	movs r0, #5
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805310C
	movs r4, #6
	b _08053138
_0805310C:
	movs r0, #4
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805311A
	movs r4, #5
	b _08053138
_0805311A:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0x9c
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _0805312C
	movs r4, #4
	b _08053138
_0805312C:
	movs r0, #2
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08053138
	movs r4, #2
_08053138:
	ldr r0, _08053140 @ =gSave
	strb r4, [r0, #8]
	pop {r4, r5, pc}
	.align 2, 0
_08053140: .4byte gSave

	thumb_func_start sub_08053144
sub_08053144: @ 0x08053144
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08053154
	movs r0, #0
	b _0805316E
_08053154:
	movs r1, #0
	ldr r0, _08053170 @ =gArea
	ldrb r2, [r0, #1]
	cmp r2, #0
	beq _0805316C
	ldr r0, _08053174 @ =gScreenTransition
	adds r0, #0x2e
	ldrb r1, [r0]
	eors r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
_0805316C:
	adds r0, r1, #0
_0805316E:
	pop {pc}
	.align 2, 0
_08053170: .4byte gArea
_08053174: .4byte gScreenTransition

	thumb_func_start sub_08053178
sub_08053178: @ 0x08053178
	push {r4, r5, lr}
	bl sub_08053144
	cmp r0, #0
	beq _080531E6
	ldr r0, _080531E8 @ =gScreenTransition
	ldr r5, _080531EC @ =gArea
	ldrb r1, [r5, #1]
	adds r0, #0x2e
	strb r1, [r0]
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080531E6
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	bne _080531DC
	bl GetEmptyManager
	adds r4, r0, #0
	cmp r4, #0
	beq _080531DC
	movs r0, #9
	strb r0, [r4, #8]
	movs r0, #0x39
	strb r0, [r4, #9]
	adds r0, r4, #0
	movs r1, #8
	bl AppendEntityToList
	ldr r0, _080531F0 @ =gRoomVars
	ldrb r0, [r0]
	cmp r0, #0
	bne _080531DC
	ldr r0, _080531F4 @ =gUnk_02002AA0
	ldrb r1, [r5, #1]
	bl ReadBit
	cmp r0, #0
	bne _080531DC
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #3
	bl sub_08078A90
	bl sub_0805E5A8
_080531DC:
	ldr r0, _080531F4 @ =gUnk_02002AA0
	ldr r1, _080531EC @ =gArea
	ldrb r1, [r1, #1]
	bl WriteBit
_080531E6:
	pop {r4, r5, pc}
	.align 2, 0
_080531E8: .4byte gScreenTransition
_080531EC: .4byte gArea
_080531F0: .4byte gRoomVars
_080531F4: .4byte gUnk_02002AA0

	thumb_func_start sub_080531F8
sub_080531F8: @ 0x080531F8
	push {r4, r5, lr}
	ldr r1, _0805323C @ =gPlayerState
	ldr r4, _08053240 @ =gPlayerEntity
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x16]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0x18]
	bl sub_08053144
	cmp r0, #0
	beq _08053238
	ldr r5, _08053244 @ =gUnk_030010AC
	ldr r1, _08053248 @ =gUnk_02002AC8
	adds r0, r5, #0
	movs r2, #0x20
	bl MemCopy
	bl CheckIsDungeon
	cmp r0, #0
	beq _08053238
	adds r1, r5, #0
	subs r1, #0xc
	ldr r2, _0805324C @ =gRoomControls
	ldrb r0, [r2, #4]
	strb r0, [r1, #0x16]
	ldrb r0, [r2, #5]
	strb r0, [r1, #0x17]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0x1a]
_08053238:
	pop {r4, r5, pc}
	.align 2, 0
_0805323C: .4byte gPlayerState
_08053240: .4byte gPlayerEntity
_08053244: .4byte gUnk_030010AC
_08053248: .4byte gUnk_02002AC8
_0805324C: .4byte gRoomControls

	thumb_func_start sub_08053250
sub_08053250: @ 0x08053250
	push {r4, lr}
	ldr r0, _0805328C @ =gScreenTransition
	movs r1, #0
	strb r1, [r0, #0xf]
	ldr r3, _08053290 @ =gPlayerEntity
	ldr r4, _08053294 @ =gRoomControls
	ldrh r1, [r3, #0x2e]
	ldrh r2, [r4, #6]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldrh r1, [r3, #0x32]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	ldrb r1, [r3, #0x14]
	strb r1, [r0, #0xe]
	adds r3, #0x38
	ldrb r1, [r3]
	strb r1, [r0, #0x14]
	ldrb r1, [r4, #4]
	strb r1, [r0, #0xc]
	ldrb r1, [r4, #5]
	strb r1, [r0, #0xd]
	adds r0, #0xc
	ldr r1, _08053298 @ =gUnk_02002AC8
	movs r2, #0x20
	bl MemCopy
	pop {r4, pc}
	.align 2, 0
_0805328C: .4byte gScreenTransition
_08053290: .4byte gPlayerEntity
_08053294: .4byte gRoomControls
_08053298: .4byte gUnk_02002AC8

	thumb_func_start sub_0805329C
sub_0805329C: @ 0x0805329C
	push {lr}
	bl sub_08053144
	cmp r0, #0
	beq _080532E0
	ldr r0, _080532B8 @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x48
	beq _080532C2
	cmp r0, #0x48
	bgt _080532BC
	cmp r0, #0x18
	beq _080532D6
	b _080532DC
	.align 2, 0
_080532B8: .4byte gRoomControls
_080532BC:
	cmp r0, #0x50
	beq _080532D0
	b _080532DC
_080532C2:
	ldr r1, _080532CC @ =gSave
	movs r0, #0
	strb r0, [r1, #7]
	b _080532E0
	.align 2, 0
_080532CC: .4byte gSave
_080532D0:
	bl sub_080530B0
	b _080532E0
_080532D6:
	bl sub_080532E4
	b _080532E0
_080532DC:
	bl sub_08053460
_080532E0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080532E4
sub_080532E4: @ 0x080532E4
	ldr r0, _08053318 @ =gAreaRoomHeaders
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r2, r0, r3
	ldr r1, _0805331C @ =gScreenTransition
	movs r0, #0x58
	strb r0, [r1, #0x16]
	movs r0, #0x21
	strb r0, [r1, #0x17]
	ldrh r0, [r2, #4]
	lsrs r0, r0, #1
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r1, #0x18]
	strh r0, [r1, #0x1c]
	ldrh r0, [r2, #6]
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	adds r0, #0xa0
	strh r0, [r1, #0x1a]
	strh r0, [r1, #0x1e]
	bx lr
	.align 2, 0
_08053318: .4byte gAreaRoomHeaders
_0805331C: .4byte gScreenTransition

	thumb_func_start sub_08053320
sub_08053320: @ 0x08053320
	push {r4, lr}
	ldr r0, _0805337C @ =gBG0Buffer
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r4, #0
	bl MemClear
	ldr r0, _08053380 @ =gBG1Buffer
	adds r1, r4, #0
	bl MemClear
	ldr r0, _08053384 @ =gBG2Buffer
	adds r1, r4, #0
	bl MemClear
	ldr r0, _08053388 @ =gBG3Buffer
	movs r1, #0x80
	lsls r1, r1, #5
	bl MemClear
	movs r0, #0x10
	bl LoadGfxGroup
	movs r0, #0x17
	bl LoadGfxGroup
	ldr r0, _0805338C @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #4
	bne _08053362
	movs r0, #0x1a
	bl LoadGfxGroup
_08053362:
	bl sub_08053390
	movs r0, #0xb
	bl LoadPaletteGroup
	movs r0, #0xc
	bl LoadPaletteGroup
	movs r0, #0
	movs r1, #0
	bl sub_0801D79C
	pop {r4, pc}
	.align 2, 0
_0805337C: .4byte gBG0Buffer
_08053380: .4byte gBG1Buffer
_08053384: .4byte gBG2Buffer
_08053388: .4byte gBG3Buffer
_0805338C: .4byte gRoomControls

	thumb_func_start sub_08053390
sub_08053390: @ 0x08053390
	push {lr}
	movs r0, #8
	bl GetInventoryValue
	movs r1, #0x19
	cmp r0, #0
	beq _080533A0
	movs r1, #0x18
_080533A0:
	adds r0, r1, #0
	bl LoadGfxGroup
	movs r0, #0xa
	bl GetInventoryValue
	cmp r0, #0
	beq _080533B6
	movs r0, #0x1d
	bl LoadGfxGroup
_080533B6:
	movs r0, #0xc
	bl GetInventoryValue
	movs r1, #0x1b
	cmp r0, #0
	beq _080533C4
	movs r1, #0x1c
_080533C4:
	adds r0, r1, #0
	bl LoadGfxGroup
	pop {pc}

	thumb_func_start sub_080533CC
sub_080533CC: @ 0x080533CC
	ldr r0, _08053400 @ =gUnk_020178E0
	ldr r2, _08053404 @ =0xFFFFFE00
	adds r1, r0, r2
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ldrh r2, [r0]
	strh r2, [r1]
	adds r0, #2
	adds r1, #2
	ldrh r2, [r0]
	strh r2, [r1]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	ldr r2, _08053408 @ =gUsedPalettes
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08053400: .4byte gUnk_020178E0
_08053404: .4byte 0xFFFFFE00
_08053408: .4byte gUsedPalettes

	thumb_func_start sub_0805340C
sub_0805340C: @ 0x0805340C
	push {r4, r5, r6, lr}
	ldr r5, _08053428 @ =gUnk_02002ECC
	movs r4, #0
	ldr r6, _0805342C @ =gUnk_080FCB18
_08053414:
	ldm r6!, {r1}
	adds r0, r5, #0
	bl _call_via_r1
	adds r4, #1
	adds r5, #4
	cmp r4, #7
	bls _08053414
	pop {r4, r5, r6, pc}
	.align 2, 0
_08053428: .4byte gUnk_02002ECC
_0805342C: .4byte gUnk_080FCB18

	thumb_func_start nullsub_480
nullsub_480: @ 0x08053430
	bx lr
	.align 2, 0

	thumb_func_start sub_08053434
sub_08053434: @ 0x08053434
	push {lr}
	adds r1, r0, #0
	ldr r0, _0805345C @ =gArea
	ldrb r0, [r0, #1]
	cmp r0, #0x1d
	bne _0805345A
	ldr r0, [r1]
	cmp r0, #0
	beq _0805345A
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bne _0805345A
	bl sub_08053460
	movs r0, #5
	movs r1, #6
	bl MenuFadeIn
_0805345A:
	pop {pc}
	.align 2, 0
_0805345C: .4byte gArea

	thumb_func_start sub_08053460
sub_08053460: @ 0x08053460
	push {lr}
	ldr r0, _08053488 @ =gSave
	ldr r1, _0805348C @ =0x0000048C
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	movs r0, #0x8c
	lsls r0, r0, #4
	movs r1, #0x79
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _08053480
	movs r0, #0x1c
	bl ClearGlobalFlag
_08053480:
	ldr r0, _08053490 @ =gUnk_080FCB38
	bl sub_0805356C
	pop {pc}
	.align 2, 0
_08053488: .4byte gSave
_0805348C: .4byte 0x0000048C
_08053490: .4byte gUnk_080FCB38

	thumb_func_start sub_08053494
sub_08053494: @ 0x08053494
	ldr r0, _080534A0 @ =gSave
	ldr r1, _080534A4 @ =0x0000048C
	adds r0, r0, r1
	ldr r1, _080534A8 @ =0x00002A30
	str r1, [r0]
	bx lr
	.align 2, 0
_080534A0: .4byte gSave
_080534A4: .4byte 0x0000048C
_080534A8: .4byte 0x00002A30

	thumb_func_start sub_080534AC
sub_080534AC: @ 0x080534AC
	push {r4, lr}
	movs r4, #0x8c
	lsls r4, r4, #4
	adds r0, r4, #0
	movs r1, #0x7c
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _080534D6
	adds r0, r4, #0
	movs r1, #0x7c
	bl ClearLocalFlagByOffset
	ldr r0, _080534D8 @ =gSave
	ldr r1, _080534DC @ =0x0000048C
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, _080534E0 @ =0x80100000
	bl SoundReq
_080534D6:
	pop {r4, pc}
	.align 2, 0
_080534D8: .4byte gSave
_080534DC: .4byte 0x0000048C
_080534E0: .4byte 0x80100000

	thumb_func_start sub_080534E4
sub_080534E4: @ 0x080534E4
	push {lr}
	adds r1, r0, #0
	ldr r0, _080534FC @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x1a
	beq _080534FA
	ldr r0, [r1]
	cmp r0, #0
	beq _080534FA
	subs r0, #1
	str r0, [r1]
_080534FA:
	pop {pc}
	.align 2, 0
_080534FC: .4byte gRoomControls

	thumb_func_start sub_08053500
sub_08053500: @ 0x08053500
	ldr r0, _0805350C @ =gSave
	ldr r1, _08053510 @ =0x00000494
	adds r0, r0, r1
	ldr r1, _08053514 @ =0x00008CA0
	str r1, [r0]
	bx lr
	.align 2, 0
_0805350C: .4byte gSave
_08053510: .4byte 0x00000494
_08053514: .4byte 0x00008CA0

	thumb_func_start sub_08053518
sub_08053518: @ 0x08053518
	push {lr}
	bl sub_08053460
	ldr r0, _08053568 @ =gUnk_080FCB62
	bl sub_0805356C
	movs r0, #0x1b
	bl CheckGlobalFlag
	cmp r0, #0
	bne _08053534
	movs r0, #0x1a
	bl ClearGlobalFlag
_08053534:
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	bne _08053544
	movs r0, #2
	bl ClearGlobalFlag
_08053544:
	movs r0, #0x41
	bl GetInventoryValue
	cmp r0, #0
	bne _08053554
	movs r0, #3
	bl ClearGlobalFlag
_08053554:
	movs r0, #0x42
	bl GetInventoryValue
	cmp r0, #0
	bne _08053564
	movs r0, #5
	bl ClearGlobalFlag
_08053564:
	pop {pc}
	.align 2, 0
_08053568: .4byte gUnk_080FCB62

	thumb_func_start sub_0805356C
sub_0805356C: @ 0x0805356C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4]
	ldr r1, _0805358C @ =0x0000FFFF
	cmp r0, r1
	beq _0805358A
	adds r5, r1, #0
_0805357A:
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl ClearLocalFlagByOffset
	adds r4, #4
	ldrh r0, [r4]
	cmp r0, r5
	bne _0805357A
_0805358A:
	pop {r4, r5, pc}
	.align 2, 0
_0805358C: .4byte 0x0000FFFF

	thumb_func_start sub_08053590
sub_08053590: @ 0x08053590
	push {lr}
	ldr r1, _080535A4 @ =gUnk_080FCBB4
	ldr r0, _080535A8 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080535A4: .4byte gUnk_080FCBB4
_080535A8: .4byte gMenu

	thumb_func_start sub_080535AC
sub_080535AC: @ 0x080535AC
	push {lr}
	ldr r2, _080535DC @ =gMenu
	movs r1, #1
	strb r1, [r2, #6]
	movs r0, #0x78
	strh r0, [r2, #8]
	ldr r0, _080535E0 @ =gUnk_02032EC0
	strb r1, [r0, #6]
	ldr r0, _080535E4 @ =gUnk_02000070
	strb r1, [r0]
	ldr r2, _080535E8 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _080535EC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080535F0 @ =gUnk_080FCB94
	bl LoadRoomEntityList
	movs r0, #6
	movs r1, #8
	bl DoFade
	pop {pc}
	.align 2, 0
_080535DC: .4byte gMenu
_080535E0: .4byte gUnk_02032EC0
_080535E4: .4byte gUnk_02000070
_080535E8: .4byte gScreen
_080535EC: .4byte 0x0000FEFF
_080535F0: .4byte gUnk_080FCB94

	thumb_func_start sub_080535F4
sub_080535F4: @ 0x080535F4
	push {lr}
	ldr r0, _0805360C @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053608
	bl sub_0805E5B4
	ldr r1, _08053610 @ =gMenu
	movs r0, #2
	strb r0, [r1, #6]
_08053608:
	pop {pc}
	.align 2, 0
_0805360C: .4byte gFadeControl
_08053610: .4byte gMenu

	thumb_func_start nullsub_481
nullsub_481: @ 0x08053614
	bx lr
	.align 2, 0

	thumb_func_start sub_08053618
sub_08053618: @ 0x08053618
	push {lr}
	ldr r1, _08053630 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805362C
	bl sub_08052004
_0805362C:
	pop {pc}
	.align 2, 0
_08053630: .4byte gMenu

	thumb_func_start sub_08053634
sub_08053634: @ 0x08053634
	push {lr}
	ldr r1, _08053644 @ =gUnk_02032EC0
	movs r0, #3
	strb r0, [r1]
	bl MessageInitialize
	pop {pc}
	.align 2, 0
_08053644: .4byte gUnk_02032EC0

	thumb_func_start sub_08053648
sub_08053648: @ 0x08053648
	push {lr}
	movs r0, #0x2d
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08053674
	ldr r0, _08053678 @ =gRoomControls
	movs r3, #0xb4
	lsls r3, r3, #2
	adds r1, r3, #0
	ldrh r3, [r0, #6]
	adds r1, r1, r3
	strh r1, [r2, #0x2e]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrh r0, [r0, #8]
	adds r1, r1, r0
	strh r1, [r2, #0x32]
_08053674:
	pop {pc}
	.align 2, 0
_08053678: .4byte gRoomControls

	thumb_func_start sub_0805367C
sub_0805367C: @ 0x0805367C
	ldr r1, _08053688 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_08053688: .4byte gMenu

	thumb_func_start sub_0805368C
sub_0805368C: @ 0x0805368C
	push {lr}
	movs r0, #6
	movs r1, #0x5d
	movs r2, #6
	bl FindEntityByID
	cmp r0, #0
	beq _080536A6
	bl DeleteEntity
	movs r0, #0xf0
	bl SoundReq
_080536A6:
	pop {pc}

	thumb_func_start sub_080536A8
sub_080536A8: @ 0x080536A8
	push {lr}
	movs r0, #5
	movs r1, #5
	movs r2, #4
	movs r3, #0x10
	bl sub_080A71C4
	pop {pc}

	thumb_func_start sub_080536B8
sub_080536B8: @ 0x080536B8
	push {lr}
	movs r0, #5
	movs r1, #3
	movs r2, #4
	movs r3, #4
	bl sub_080A71C4
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080536D4
sub_080536D4: @ 0x080536D4
	push {lr}
	ldr r1, _080536E8 @ =gUnk_080FCCFC
	ldr r0, _080536EC @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080536E8: .4byte gUnk_080FCCFC
_080536EC: .4byte gMenu

	thumb_func_start sub_080536F0
sub_080536F0: @ 0x080536F0
	push {lr}
	ldr r1, _08053704 @ =gUnk_080FCD38
	ldr r0, _08053708 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053704: .4byte gUnk_080FCD38
_08053708: .4byte gMenu

	thumb_func_start sub_0805370C
sub_0805370C: @ 0x0805370C
	push {lr}
	ldr r1, _08053730 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldr r1, _08053734 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	bl sub_08051FF0
	ldr r0, _08053738 @ =gUnk_080FCC54
	bl LoadRoomEntityList
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {pc}
	.align 2, 0
_08053730: .4byte gMenu
_08053734: .4byte gUnk_02000070
_08053738: .4byte gUnk_080FCC54

	thumb_func_start sub_0805373C
sub_0805373C: @ 0x0805373C
	push {lr}
	ldr r1, _08053750 @ =gUnk_080FCD40
	ldr r0, _08053754 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053750: .4byte gUnk_080FCD40
_08053754: .4byte gMenu

	thumb_func_start sub_08053758
sub_08053758: @ 0x08053758
	push {r4, lr}
	ldr r1, _080537DC @ =gMenu
	movs r2, #0
	movs r3, #1
	strb r3, [r1, #6]
	movs r4, #0
	movs r0, #0x78
	strh r0, [r1, #8]
	movs r0, #0x1e
	strh r0, [r1, #0xa]
	strb r4, [r1, #0x10]
	ldr r0, _080537E0 @ =gUnk_02032EC0
	strb r3, [r0, #6]
	ldr r0, _080537E4 @ =gUnk_02025EB0
	str r2, [r0]
	ldr r0, _080537E8 @ =gUnk_0200B650
	str r2, [r0]
	ldr r0, _080537EC @ =gRoomControls
	str r2, [r0, #0x30]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xa]
	bl sub_0801B170
	movs r0, #0
	bl DispReset
	ldr r2, _080537F0 @ =gScreen
	movs r0, #0x99
	lsls r0, r0, #6
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _080537F4 @ =0x00002244
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	subs r1, #8
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x3f
	strh r0, [r1]
	subs r1, #0xa
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x60
	strh r0, [r1]
	ldr r0, _080537F8 @ =0x00001C4E
	strh r0, [r2, #0x14]
	ldr r0, _080537FC @ =0x00001DC1
	strh r0, [r2, #0x20]
	movs r0, #0xf
	bl SoundReq
	bl sub_0805E5B4
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_080537DC: .4byte gMenu
_080537E0: .4byte gUnk_02032EC0
_080537E4: .4byte gUnk_02025EB0
_080537E8: .4byte gUnk_0200B650
_080537EC: .4byte gRoomControls
_080537F0: .4byte gScreen
_080537F4: .4byte 0x00002244
_080537F8: .4byte 0x00001C4E
_080537FC: .4byte 0x00001DC1

	thumb_func_start sub_08053800
sub_08053800: @ 0x08053800
	push {r4, r5, lr}
	ldr r0, _0805387C @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805387A
	ldr r1, _08053880 @ =gMenu
	ldrb r5, [r1, #0x10]
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	ldr r0, _08053884 @ =gUnk_080FCCB4
	adds r4, r4, r0
	ldrh r0, [r4, #8]
	movs r2, #0
	strh r0, [r1, #8]
	movs r0, #0x1e
	strh r0, [r1, #0xa]
	ldrb r0, [r1, #0x10]
	adds r0, #1
	strb r0, [r1, #0x10]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	strb r2, [r1, #7]
	adds r0, r5, #0
	adds r0, #0x8a
	bl LoadPaletteGroup
	adds r0, r5, #0
	adds r0, #0x3a
	bl LoadGfxGroup
	ldr r0, _08053888 @ =gBG1Buffer
	movs r1, #0x80
	lsls r1, r1, #4
	bl MemClear
	ldr r0, _0805388C @ =0x00000F01
	adds r5, r5, r0
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_0805F46C
	ldr r2, _08053890 @ =gScreen
	movs r0, #1
	strh r0, [r2, #0x1a]
	adds r1, r2, #0
	adds r1, #0x68
	movs r0, #0x10
	strh r0, [r1]
	ldrh r1, [r4, #4]
	adds r0, r2, #0
	adds r0, #0x58
	strh r1, [r0]
	ldrh r1, [r4, #6]
	adds r0, #4
	strh r1, [r0]
	ldrh r1, [r4, #0xa]
	movs r0, #4
	bl DoFade
_0805387A:
	pop {r4, r5, pc}
	.align 2, 0
_0805387C: .4byte gFadeControl
_08053880: .4byte gMenu
_08053884: .4byte gUnk_080FCCB4
_08053888: .4byte gBG1Buffer
_0805388C: .4byte 0x00000F01
_08053890: .4byte gScreen

	thumb_func_start sub_08053894
sub_08053894: @ 0x08053894
	push {r4, lr}
	ldr r0, _080538B4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080538F8
	ldr r1, _080538B8 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r4, r1, #0
	cmp r0, #0
	beq _080538BC
	subs r0, #1
	strh r0, [r4, #0xa]
	b _080538E4
	.align 2, 0
_080538B4: .4byte gFadeControl
_080538B8: .4byte gMenu
_080538BC:
	ldr r0, _080538FC @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080538E4
	ldrb r1, [r4, #7]
	cmp r1, #0xf
	bhi _080538E4
	adds r1, #1
	strb r1, [r4, #7]
	lsls r1, r1, #0x18
	ldr r3, _08053900 @ =gScreen
	lsrs r2, r1, #0x10
	lsrs r1, r1, #0x19
	movs r0, #0x10
	subs r0, r0, r1
	orrs r2, r0
	adds r3, #0x68
	strh r2, [r3]
_080538E4:
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _080538F8
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #5
	movs r1, #8
	bl DoFade
_080538F8:
	pop {r4, pc}
	.align 2, 0
_080538FC: .4byte gScreenTransition
_08053900: .4byte gScreen

	thumb_func_start sub_08053904
sub_08053904: @ 0x08053904
	push {r4, lr}
	ldr r0, _08053924 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053968
	ldr r1, _08053928 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r4, r1, #0
	cmp r0, #0
	beq _0805392C
	subs r0, #1
	strh r0, [r4, #0xa]
	b _08053954
	.align 2, 0
_08053924: .4byte gFadeControl
_08053928: .4byte gMenu
_0805392C:
	ldr r0, _0805396C @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08053954
	ldrb r1, [r4, #7]
	cmp r1, #0xf
	bhi _08053954
	adds r1, #1
	strb r1, [r4, #7]
	lsls r1, r1, #0x18
	ldr r3, _08053970 @ =gScreen
	lsrs r2, r1, #0x10
	lsrs r1, r1, #0x19
	movs r0, #0x10
	subs r0, r0, r1
	orrs r2, r0
	adds r3, #0x68
	strh r2, [r3]
_08053954:
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _08053968
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #5
	movs r1, #1
	bl DoFade
_08053968:
	pop {r4, pc}
	.align 2, 0
_0805396C: .4byte gScreenTransition
_08053970: .4byte gScreen

	thumb_func_start sub_08053974
sub_08053974: @ 0x08053974
	push {lr}
	ldr r0, _080539AC @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080539A8
	bl sub_0804FFE4
	movs r0, #1
	bl DispReset
	bl sub_080197AC
	bl sub_08051F78
	ldr r0, _080539B0 @ =gUnk_080FCBC4
	bl LoadRoomEntityList
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	ldr r1, _080539B4 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_080539A8:
	pop {pc}
	.align 2, 0
_080539AC: .4byte gFadeControl
_080539B0: .4byte gUnk_080FCBC4
_080539B4: .4byte gMenu

	thumb_func_start nullsub_482
nullsub_482: @ 0x080539B8
	bx lr
	.align 2, 0

	thumb_func_start sub_080539BC
sub_080539BC: @ 0x080539BC
	push {lr}
	bl sub_080197AC
	bl DeleteAllEntities
	movs r0, #0x22
	movs r1, #0x11
	movs r2, #0
	movs r3, #0
	bl sub_08051F9C
	movs r0, #0x22
	movs r1, #0x11
	bl sub_0804B0B0
	ldr r0, _080539EC @ =gUnk_080FCC14
	bl LoadRoomEntityList
	ldr r1, _080539F0 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	pop {pc}
	.align 2, 0
_080539EC: .4byte gUnk_080FCC14
_080539F0: .4byte gMenu

	thumb_func_start sub_080539F4
sub_080539F4: @ 0x080539F4
	push {lr}
	ldr r0, _08053A14 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053A10
	movs r0, #1
	bl DispReset
	ldr r0, _08053A18 @ =gMenu
	ldrb r1, [r0, #6]
	adds r1, #1
	strb r1, [r0, #6]
	movs r1, #0x3c
	strh r1, [r0, #8]
_08053A10:
	pop {pc}
	.align 2, 0
_08053A14: .4byte gFadeControl
_08053A18: .4byte gMenu

	thumb_func_start sub_08053A1C
sub_08053A1C: @ 0x08053A1C
	push {r4, lr}
	ldr r1, _08053A50 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053A4E
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r4, #8
	movs r0, #8
	strh r0, [r1, #8]
	ldr r0, _08053A54 @ =0x00000F07
	bl TextboxNoOverlapFollow
	ldr r1, _08053A58 @ =gTextBox
	movs r0, #1
	strb r0, [r1, #6]
	strb r4, [r1, #7]
	movs r0, #4
	movs r1, #8
	bl DoFade
_08053A4E:
	pop {r4, pc}
	.align 2, 0
_08053A50: .4byte gMenu
_08053A54: .4byte 0x00000F07
_08053A58: .4byte gTextBox

	thumb_func_start sub_08053A5C
sub_08053A5C: @ 0x08053A5C
	push {lr}
	ldr r0, _08053A88 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08053A86
	ldr r1, _08053A8C @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053A86
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #5
	movs r1, #8
	bl DoFade
_08053A86:
	pop {pc}
	.align 2, 0
_08053A88: .4byte gTextBox
_08053A8C: .4byte gMenu

	thumb_func_start sub_08053A90
sub_08053A90: @ 0x08053A90
	push {lr}
	ldr r0, _08053AA8 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053AA4
	ldr r1, _08053AAC @ =gUnk_02032EC0
	movs r0, #3
	strb r0, [r1]
	bl sub_080197AC
_08053AA4:
	pop {pc}
	.align 2, 0
_08053AA8: .4byte gFadeControl
_08053AAC: .4byte gUnk_02032EC0

	thumb_func_start sub_08053AB0
sub_08053AB0: @ 0x08053AB0
	push {lr}
	ldr r1, _08053AC4 @ =gUnk_080FCDD4
	ldr r0, _08053AC8 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053AC4: .4byte gUnk_080FCDD4
_08053AC8: .4byte gMenu

	thumb_func_start sub_08053ACC
sub_08053ACC: @ 0x08053ACC
	push {lr}
	ldr r1, _08053AF4 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldr r1, _08053AF8 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	bl sub_08051FF0
	ldr r0, _08053AFC @ =gUnk_080FCD84
	bl LoadRoomEntityList
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	pop {pc}
	.align 2, 0
_08053AF4: .4byte gMenu
_08053AF8: .4byte gUnk_02000070
_08053AFC: .4byte gUnk_080FCD84

	thumb_func_start sub_08053B00
sub_08053B00: @ 0x08053B00
	ldr r1, _08053B0C @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_08053B0C: .4byte gMenu

	thumb_func_start sub_08053B10
sub_08053B10: @ 0x08053B10
	push {lr}
	movs r0, #1
	bl CheckRoomFlag
	cmp r0, #0
	beq _08053B34
	ldr r0, _08053B38 @ =gMenu
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	movs r0, #1
	bl DispReset
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #4
	bl DoFade
_08053B34:
	pop {pc}
	.align 2, 0
_08053B38: .4byte gMenu

	thumb_func_start sub_08053B3C
sub_08053B3C: @ 0x08053B3C
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #5
	movs r1, #4
	movs r2, #5
	adds r3, r4, #0
	bl sub_080A71C4
	movs r0, #5
	adds r1, r4, #0
	bl DoFade
	pop {r4, pc}

	thumb_func_start sub_08053B58
sub_08053B58: @ 0x08053B58
	push {lr}
	ldr r1, _08053B6C @ =gUnk_080FCEB0
	ldr r0, _08053B70 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053B6C: .4byte gUnk_080FCEB0
_08053B70: .4byte gMenu

	thumb_func_start sub_08053B74
sub_08053B74: @ 0x08053B74
	push {lr}
	ldr r1, _08053BA0 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldr r1, _08053BA4 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08053BA8 @ =gUnk_080FCDE0
	bl LoadRoomEntityList
	bl sub_0805E5B4
	bl sub_0805E470
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	pop {pc}
	.align 2, 0
_08053BA0: .4byte gMenu
_08053BA4: .4byte gUnk_02000070
_08053BA8: .4byte gUnk_080FCDE0

	thumb_func_start sub_08053BAC
sub_08053BAC: @ 0x08053BAC
	ldr r1, _08053BB8 @ =gMenu
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_08053BB8: .4byte gMenu

	thumb_func_start sub_08053BBC
sub_08053BBC: @ 0x08053BBC
	push {lr}
	movs r0, #0
	bl CheckRoomFlag
	cmp r0, #0
	beq _08053BE0
	ldr r0, _08053BE4 @ =gMenu
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	movs r0, #1
	bl DispReset
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #4
	bl DoFade
_08053BE0:
	pop {pc}
	.align 2, 0
_08053BE4: .4byte gMenu

	thumb_func_start sub_08053BE8
sub_08053BE8: @ 0x08053BE8
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #5
	movs r1, #2
	movs r2, #5
	adds r3, r4, #0
	bl sub_080A71C4
	movs r0, #5
	adds r1, r4, #0
	bl DoFade
	pop {r4, pc}

	thumb_func_start sub_08053C04
sub_08053C04: @ 0x08053C04
	push {lr}
	ldr r1, _08053C18 @ =gUnk_080FCEEC
	ldr r0, _08053C1C @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053C18: .4byte gUnk_080FCEEC
_08053C1C: .4byte gMenu

	thumb_func_start sub_08053C20
sub_08053C20: @ 0x08053C20
	push {lr}
	ldr r1, _08053C50 @ =gMenu
	movs r2, #1
	strb r2, [r1, #6]
	movs r0, #0x78
	strh r0, [r1, #8]
	ldr r0, _08053C54 @ =gUnk_02000070
	strb r2, [r0]
	bl sub_08051FF0
	movs r0, #4
	bl sub_0805B4D0
	ldr r0, _08053C58 @ =gUnk_080FCEBC
	bl LoadRoomEntityList
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	movs r0, #0x33
	bl SoundReq
	pop {pc}
	.align 2, 0
_08053C50: .4byte gMenu
_08053C54: .4byte gUnk_02000070
_08053C58: .4byte gUnk_080FCEBC

	thumb_func_start nullsub_483
nullsub_483: @ 0x08053C5C
	bx lr
	.align 2, 0

	thumb_func_start sub_08053C60
sub_08053C60: @ 0x08053C60
	push {lr}
	movs r0, #5
	movs r1, #2
	bl DoFade
	movs r0, #0xf4
	bl SoundReq
	ldr r0, _08053C80 @ =0x80100000
	bl SoundReq
	movs r0, #3
	bl InitScreen
	pop {pc}
	.align 2, 0
_08053C80: .4byte 0x80100000

	thumb_func_start sub_08053C84
sub_08053C84: @ 0x08053C84
	ldr r1, _08053C8C @ =gMenu
	movs r0, #2
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_08053C8C: .4byte gMenu

	thumb_func_start sub_08053C90
sub_08053C90: @ 0x08053C90
	push {lr}
	ldr r1, _08053CA4 @ =gUnk_080FCEF8
	ldr r0, _08053CA8 @ =gMenu
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053CA4: .4byte gUnk_080FCEF8
_08053CA8: .4byte gMenu

	thumb_func_start sub_08053CAC
sub_08053CAC: @ 0x08053CAC
	push {lr}
	ldr r1, _08053CC0 @ =gUnk_080FCFA4
	ldr r0, _08053CC4 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053CC0: .4byte gUnk_080FCFA4
_08053CC4: .4byte gMenu

	thumb_func_start sub_08053CC8
sub_08053CC8: @ 0x08053CC8
	push {r4, r5, r6, lr}
	ldr r6, _08053D20 @ =gMenu
	ldrb r4, [r6, #3]
	lsls r4, r4, #4
	ldr r0, _08053D24 @ =gUnk_080FCF04
	adds r4, r4, r0
	adds r0, r4, #0
	adds r0, #8
	str r0, [r6, #0xc]
	ldr r0, [r4]
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	movs r2, #1
	bl GetRoomProperty
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	movs r2, #2
	bl GetRoomProperty
	bl LoadRoomEntityList
	movs r5, #1
	strb r5, [r6, #6]
	ldr r2, _08053D28 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _08053D2C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08053D30 @ =gUnk_02000070
	strb r5, [r0]
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	ldrb r0, [r4, #5]
	cmp r0, #0x1d
	bne _08053D1E
	strh r5, [r6, #0xa]
_08053D1E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08053D20: .4byte gMenu
_08053D24: .4byte gUnk_080FCF04
_08053D28: .4byte gScreen
_08053D2C: .4byte 0x0000FEFF
_08053D30: .4byte gUnk_02000070

	thumb_func_start sub_08053D34
sub_08053D34: @ 0x08053D34
	push {r4, lr}
	ldr r1, _08053D88 @ =gMenu
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _08053D72
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r4, #0xd0
	lsls r4, r4, #3
	adds r0, r4, #0
	movs r1, #0x3d
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _08053D5C
	movs r0, #0x74
	movs r1, #0xc4
	movs r2, #1
	bl SetTileType
_08053D5C:
	adds r0, r4, #0
	movs r1, #0x3e
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _08053D72
	movs r0, #0x74
	movs r1, #0xcc
	movs r2, #1
	bl SetTileType
_08053D72:
	ldr r0, _08053D8C @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053D86
	ldr r1, _08053D88 @ =gMenu
	movs r0, #0x78
	strh r0, [r1, #8]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08053D86:
	pop {r4, pc}
	.align 2, 0
_08053D88: .4byte gMenu
_08053D8C: .4byte gFadeControl

	thumb_func_start sub_08053D90
sub_08053D90: @ 0x08053D90
	push {lr}
	ldr r1, _08053DB0 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053DAC
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #0x10
	bl sub_080500F4
_08053DAC:
	pop {pc}
	.align 2, 0
_08053DB0: .4byte gMenu

	thumb_func_start sub_08053DB4
sub_08053DB4: @ 0x08053DB4
	push {r4, r5, lr}
	ldr r0, _08053E20 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053E1C
	ldr r5, _08053E24 @ =gMenu
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	bl sub_08052FF4
	bl sub_0807C740
	ldr r1, _08053E28 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08053E2C @ =gRoomControls
	movs r0, #6
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
	strh r0, [r1, #0xa]
	movs r0, #7
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0xc]
	adds r0, r0, r2
	strh r0, [r1, #0xc]
	ldr r0, [r4]
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	movs r2, #1
	bl GetRoomProperty
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	movs r2, #2
	bl GetRoomProperty
	bl LoadRoomEntityList
	movs r0, #0x78
	strh r0, [r5, #8]
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	movs r0, #0x10
	bl sub_080500F4
_08053E1C:
	pop {r4, r5, pc}
	.align 2, 0
_08053E20: .4byte gFadeControl
_08053E24: .4byte gMenu
_08053E28: .4byte gUnk_02000070
_08053E2C: .4byte gRoomControls

	thumb_func_start sub_08053E30
sub_08053E30: @ 0x08053E30
	push {lr}
	ldr r0, _08053E50 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053E4E
	ldr r1, _08053E54 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053E4E
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08053E4E:
	pop {pc}
	.align 2, 0
_08053E50: .4byte gFadeControl
_08053E54: .4byte gMenu

	thumb_func_start sub_08053E58
sub_08053E58: @ 0x08053E58
	push {lr}
	ldr r1, _08053E6C @ =gUnk_080FD108
	ldr r0, _08053E70 @ =gMenu
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053E6C: .4byte gUnk_080FD108
_08053E70: .4byte gMenu

	thumb_func_start sub_08053E74
sub_08053E74: @ 0x08053E74
	push {r4, lr}
	ldr r0, _08053EB0 @ =gUnk_080FCFB8
	ldr r4, _08053EB4 @ =gMenu
	str r0, [r4, #0xc]
	ldr r0, [r0]
	bl LoadRoomEntityList
	movs r0, #0x78
	strh r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #0xa]
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r2, _08053EB8 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _08053EBC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08053EC0 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #1
	bl sub_0805E450
	movs r0, #4
	movs r1, #8
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08053EB0: .4byte gUnk_080FCFB8
_08053EB4: .4byte gMenu
_08053EB8: .4byte gScreen
_08053EBC: .4byte 0x0000FEFF
_08053EC0: .4byte gUnk_02000070

	thumb_func_start sub_08053EC4
sub_08053EC4: @ 0x08053EC4
	push {r4, lr}
	ldr r0, _08053EF4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053EF0
	ldr r4, _08053EF8 @ =gMenu
	ldrh r0, [r4, #0xa]
	subs r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053EF0
	ldr r1, [r4, #0xc]
	adds r0, r1, #0
	adds r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r1, #4]
	bl LoadRoomEntityList
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
_08053EF0:
	pop {r4, pc}
	.align 2, 0
_08053EF4: .4byte gFadeControl
_08053EF8: .4byte gMenu

	thumb_func_start sub_08053EFC
sub_08053EFC: @ 0x08053EFC
	push {lr}
	ldr r1, _08053F1C @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053F18
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #8
	bl sub_080500F4
_08053F18:
	pop {pc}
	.align 2, 0
_08053F1C: .4byte gMenu

	thumb_func_start sub_08053F20
sub_08053F20: @ 0x08053F20
	push {r4, r5, lr}
	ldr r0, _08053F78 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053F74
	bl DeleteAllEntities
	ldr r5, _08053F7C @ =gMenu
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	bl sub_08052FF4
	bl sub_0807C740
	ldr r1, _08053F80 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08053F84 @ =gRoomControls
	movs r0, #0xa
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
	strh r0, [r1, #0xa]
	movs r0, #0xb
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0xc]
	adds r0, r0, r2
	strh r0, [r1, #0xc]
	ldr r0, [r4]
	bl LoadRoomEntityList
	movs r0, #0x78
	strh r0, [r5, #8]
	movs r0, #0x3c
	strh r0, [r5, #0xa]
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	movs r0, #8
	bl sub_080500F4
_08053F74:
	pop {r4, r5, pc}
	.align 2, 0
_08053F78: .4byte gFadeControl
_08053F7C: .4byte gMenu
_08053F80: .4byte gUnk_02000070
_08053F84: .4byte gRoomControls

	thumb_func_start sub_08053F88
sub_08053F88: @ 0x08053F88
	push {lr}
	ldr r0, _08053FAC @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053FAA
	ldr r1, _08053FB0 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053FAA
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
	bl sub_0805E470
_08053FAA:
	pop {pc}
	.align 2, 0
_08053FAC: .4byte gFadeControl
_08053FB0: .4byte gMenu

	thumb_func_start sub_08053FB4
sub_08053FB4: @ 0x08053FB4
	push {lr}
	ldr r1, _08053FC8 @ =gUnk_080FD138
	ldr r0, _08053FCC @ =gMenu
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053FC8: .4byte gUnk_080FD138
_08053FCC: .4byte gMenu

	thumb_func_start GetSaleItemConfirmMessageID
GetSaleItemConfirmMessageID: @ 0x08053FD0
	lsls r0, r0, #3
	ldr r1, _08053FDC @ =gUnk_080FD964
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	bx lr
	.align 2, 0
_08053FDC: .4byte gUnk_080FD964

	thumb_func_start GetItemPrice
GetItemPrice: @ 0x08053FE0
	lsls r0, r0, #3
	ldr r1, _08053FEC @ =gUnk_080FD964
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08053FEC: .4byte gUnk_080FD964

	thumb_func_start GiveItem
GiveItem: @ 0x08053FF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	bl GetInventoryValue
	adds r5, r0, #0
	lsls r1, r6, #3
	ldr r0, _08054010 @ =gUnk_080FD5B4
	adds r4, r1, r0
	cmp r5, #0
	bne _08054014
	ldrh r0, [r4, #4]
	mov r8, r0
	b _08054018
	.align 2, 0
_08054010: .4byte gUnk_080FD5B4
_08054014:
	ldrh r2, [r4, #6]
	mov r8, r2
_08054018:
	adds r0, r6, #0
	bl sub_080544C8
	cmp r0, #0
	bne _08054034
	adds r0, r6, #0
	bl PutItemOnSlot
	cmp r5, #0
	bne _08054034
	adds r0, r6, #0
	movs r1, #1
	bl sub_0807CAA0
_08054034:
	ldrb r0, [r4, #1]
	cmp r0, #0x12
	bls _0805403C
	b _0805427C
_0805403C:
	lsls r0, r0, #2
	ldr r1, _08054048 @ =_0805404C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054048: .4byte _0805404C
_0805404C: @ jump table
	.4byte _0805427C @ case 0
	.4byte _08054098 @ case 1
	.4byte _080540A6 @ case 2
	.4byte _080540C0 @ case 3
	.4byte _08054104 @ case 4
	.4byte _0805414C @ case 5
	.4byte _08054154 @ case 6
	.4byte _08054194 @ case 7
	.4byte _080541B6 @ case 8
	.4byte _080541F0 @ case 9
	.4byte _08054212 @ case 10
	.4byte _080541F8 @ case 11
	.4byte _08054238 @ case 12
	.4byte _08054174 @ case 13
	.4byte _08054240 @ case 14
	.4byte _0805425C @ case 15
	.4byte _08054264 @ case 16
	.4byte _080541B0 @ case 17
	.4byte _0805417C @ case 18
_08054098:
	ldrb r0, [r4, #2]
	bl ModHealth
	movs r0, #0x71
	bl SoundReq
	b _0805427C
_080540A6:
	ldr r0, _080540BC @ =gUnk_080FD5A8
	ldrb r1, [r4, #2]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl ModRupees
	movs r0, #0x6f
	bl SoundReq
	b _0805427C
	.align 2, 0
_080540BC: .4byte gUnk_080FD5A8
_080540C0:
	movs r5, #0
	movs r4, #0x1c
	b _080540CA
_080540C6:
	adds r4, r1, #1
	adds r5, #1
_080540CA:
	cmp r5, #3
	bls _080540D0
	b _0805427C
_080540D0:
	adds r0, r4, #0
	bl GetInventoryValue
	adds r1, r4, #0
	cmp r0, #0
	bne _080540C6
	adds r6, r4, #0
	ldr r0, _08054100 @ =gSave
	adds r0, #0xb6
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080540EE
	movs r0, #0x20
	strb r0, [r1]
_080540EE:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0807CAA0
	adds r0, r6, #0
	bl PutItemOnSlot
	b _0805427C
	.align 2, 0
_08054100: .4byte gSave
_08054104:
	movs r5, #0
	ldr r0, _08054144 @ =gSave
	adds r2, r0, #0
	adds r2, #0xb6
	ldrb r1, [r2]
	adds r3, r0, #0
	cmp r1, #0x20
	beq _08054126
	adds r1, r2, #0
_08054116:
	adds r5, #1
	cmp r5, #3
	bls _0805411E
	b _0805427C
_0805411E:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _08054116
_08054126:
	cmp r5, #3
	bls _0805412C
	b _0805427C
_0805412C:
	adds r0, r3, #0
	adds r0, #0xb6
	adds r0, r5, r0
	strb r6, [r0]
	adds r0, r6, #0
	movs r1, #1
	bl sub_0807CAA0
	ldr r0, _08054148 @ =0x00000109
	bl SoundReq
	b _0805427C
	.align 2, 0
_08054144: .4byte gSave
_08054148: .4byte 0x00000109
_0805414C:
	movs r0, #1
	bl sub_080526F8
	b _0805424E
_08054154:
	ldr r1, _08054168 @ =gSave
	ldr r0, _0805416C @ =gArea
	ldr r2, _08054170 @ =0x0000046C
	adds r1, r1, r2
	ldrb r0, [r0, #3]
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r2, [r4, #2]
	orrs r0, r2
	b _0805427A
	.align 2, 0
_08054168: .4byte gSave
_0805416C: .4byte gArea
_08054170: .4byte 0x0000046C
_08054174:
	movs r0, #0x72
	bl sub_0801E738
	b _0805427C
_0805417C:
	cmp r6, #0xb
	bne _0805418A
	movs r0, #0xc
	movs r1, #0
	bl sub_0807CAA0
	b _080541B0
_0805418A:
	movs r0, #0xb
	movs r1, #0
	bl sub_0807CAA0
	b _080541B0
_08054194:
	cmp r6, #7
	bne _080541A2
	movs r0, #8
	movs r1, #0
	bl sub_0807CAA0
	b _080541AA
_080541A2:
	movs r0, #7
	movs r1, #0
	bl sub_0807CAA0
_080541AA:
	movs r0, #0x63
	bl ModBombs
_080541B0:
	bl sub_08053390
	b _0805427C
_080541B6:
	cmp r5, #0
	bne _080541CA
	movs r0, #7
	movs r1, #1
	bl sub_0807CAA0
	movs r0, #7
	bl PutItemOnSlot
	b _080541E2
_080541CA:
	ldr r0, _080541EC @ =gSave
	adds r1, r0, #0
	adds r1, #0xae
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080541E2
	movs r0, #3
	strb r0, [r1]
_080541E2:
	movs r0, #0x63
	bl ModBombs
	b _0805427C
	.align 2, 0
_080541EC: .4byte gSave
_080541F0:
	ldrb r0, [r4, #2]
	bl ModBombs
	b _0805424E
_080541F8:
	movs r0, #0x66
	bl GetInventoryValue
	cmp r0, #0
	bne _0805420A
	movs r0, #0x66
	movs r1, #1
	bl sub_0807CAA0
_0805420A:
	movs r0, #0x63
	bl ModArrows
	b _080541B0
_08054212:
	ldr r0, _08054234 @ =gSave
	adds r1, r0, #0
	adds r1, #0xaf
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0805422A
	movs r0, #3
	strb r0, [r1]
_0805422A:
	movs r0, #0x63
	bl ModArrows
	b _0805427C
	.align 2, 0
_08054234: .4byte gSave
_08054238:
	ldrb r0, [r4, #2]
	bl ModArrows
	b _0805424E
_08054240:
	movs r0, #0x3f
	movs r1, #1
	bl sub_0807CAA0
	adds r0, r7, #0
	bl sub_080542C0
_0805424E:
	ldr r0, _08054258 @ =0x00000103
	bl SoundReq
	b _0805427C
	.align 2, 0
_08054258: .4byte 0x00000103
_0805425C:
	adds r0, r7, #0
	bl sub_0801E738
	b _0805427C
_08054264:
	ldr r0, _08054284 @ =gSave
	adds r1, r0, #0
	adds r1, #0xa8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0805427C
	movs r0, #3
_0805427A:
	strb r0, [r1]
_0805427C:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08054284: .4byte gSave

	thumb_func_start sub_08054288
sub_08054288: @ 0x08054288
	push {lr}
	ldr r1, _08054298 @ =gUnk_080FD5B4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	bl TextboxNoOverlapFollow
	pop {pc}
	.align 2, 0
_08054298: .4byte gUnk_080FD5B4

	thumb_func_start sub_0805429C
sub_0805429C: @ 0x0805429C
	ldr r1, _080542A8 @ =gUnk_080FD5B4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	bx lr
	.align 2, 0
_080542A8: .4byte gUnk_080FD5B4

	thumb_func_start sub_080542AC
sub_080542AC: @ 0x080542AC
	ldr r1, _080542BC @ =gUnk_080FD5B4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r0, #3]
	movs r0, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080542BC: .4byte gUnk_080FD5B4

	thumb_func_start sub_080542C0
sub_080542C0: @ 0x080542C0
	push {lr}
	adds r2, r0, #0
	cmp r2, #0
	bne _080542CA
	movs r2, #1
_080542CA:
	ldr r1, _080542DC @ =gSave
	adds r0, r1, #0
	adds r0, #0xc2
	ldrh r0, [r0]
	adds r2, r2, r0
	cmp r2, #0
	bge _080542E0
	movs r2, #0
	b _080542E8
	.align 2, 0
_080542DC: .4byte gSave
_080542E0:
	ldr r3, _080542F0 @ =0x000003E7
	cmp r2, r3
	ble _080542E8
	adds r2, r3, #0
_080542E8:
	adds r0, r1, #0
	adds r0, #0xc2
	strh r2, [r0]
	pop {pc}
	.align 2, 0
_080542F0: .4byte 0x000003E7
	
