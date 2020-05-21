	.include "asm/macros.inc"
	.text
	.syntax unified
	
	thumb_func_start sub_08052620
sub_08052620: @ 0x08052620
	push {lr}
	movs r1, #0
	ldr r0, _08052634 @ =gUnk_02033A90
	ldrb r0, [r0]
	cmp r0, #0x81
	bne _0805262E
	movs r1, #1
_0805262E:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0
_08052634: .4byte gUnk_02033A90

	thumb_func_start sub_08052638
sub_08052638: @ 0x08052638
	push {lr}
	movs r2, #0
	ldr r1, _08052650 @ =gUnk_08127D30
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x81
	bne _0805264A
	movs r2, #1
_0805264A:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_08052650: .4byte gUnk_08127D30

	thumb_func_start sub_08052654
sub_08052654: @ 0x08052654
	ldr r0, _0805265C @ =gUnk_02033A90
	ldrb r0, [r0]
	lsrs r0, r0, #7
	bx lr
	.align 2, 0
_0805265C: .4byte gUnk_02033A90

	thumb_func_start sub_08052660
sub_08052660: @ 0x08052660
	ldr r0, _0805266C @ =gUnk_02033A90
	ldrb r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0805266C: .4byte gUnk_02033A90

	thumb_func_start sub_08052670
sub_08052670: @ 0x08052670
	ldr r0, _0805267C @ =gUnk_02033A90
	ldrb r0, [r0]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0805267C: .4byte gUnk_02033A90

	thumb_func_start sub_08052680
sub_08052680: @ 0x08052680
	ldr r0, _0805268C @ =gUnk_02033A90
	ldrb r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0805268C: .4byte gUnk_02033A90

	thumb_func_start sub_08052690
sub_08052690: @ 0x08052690
	ldr r0, _0805269C @ =gUnk_02033A90
	ldrb r0, [r0]
	lsrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0805269C: .4byte gUnk_02033A90

	thumb_func_start sub_080526A0
sub_080526A0: @ 0x080526A0
	push {lr}
	ldr r2, _080526C4 @ =gUnk_02002AE8
	ldrb r1, [r2, #2]
	adds r1, r1, r0
	cmp r1, #0
	bge _080526AE
	movs r1, #0
_080526AE:
	ldrb r0, [r2, #3]
	cmp r0, r1
	bge _080526B6
	adds r1, r0, #0
_080526B6:
	strb r1, [r2, #2]
	ldr r0, _080526C8 @ =gLinkEntity
	adds r0, #0x45
	strb r1, [r0]
	adds r0, r1, #0
	pop {pc}
	.align 2, 0
_080526C4: .4byte gUnk_02002AE8
_080526C8: .4byte gLinkEntity

	thumb_func_start sub_080526CC
sub_080526CC: @ 0x080526CC
	push {lr}
	ldr r3, _080526DC @ =gUnk_02002AE8
	ldrh r1, [r3, #0x18]
	adds r2, r1, r0
	cmp r2, #0
	bge _080526E0
	movs r2, #0
	b _080526F0
	.align 2, 0
_080526DC: .4byte gUnk_02002AE8
_080526E0:
	ldr r1, _080526F4 @ =gUnk_080FD590
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r2, r0
	ble _080526F0
	adds r2, r0, #0
_080526F0:
	strh r2, [r3, #0x18]
	pop {pc}
	.align 2, 0
_080526F4: .4byte gUnk_080FD590

	thumb_func_start sub_080526F8
sub_080526F8: @ 0x080526F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08052724
	cmp r0, #0
	beq _08052718
	ldr r0, _0805271C @ =gUnk_02033A90
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
_0805271C: .4byte gUnk_02033A90
_08052720: .4byte gUnk_02002E9C

	thumb_func_start sub_08052724
sub_08052724: @ 0x08052724
	ldr r0, _08052730 @ =gUnk_02033A90
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08052730: .4byte gUnk_02033A90

	thumb_func_start sub_08052734
sub_08052734: @ 0x08052734
	push {r4, lr}
	bl sub_08052724
	cmp r0, #0
	beq _0805274C
	ldr r0, _08052758 @ =gUnk_02002A40
	ldr r1, _0805275C @ =gUnk_02033A90
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
_08052758: .4byte gUnk_02002A40
_0805275C: .4byte gUnk_02033A90
_08052760: .4byte 0x0000045C

	thumb_func_start sub_08052764
sub_08052764: @ 0x08052764
	push {r4, lr}
	bl sub_08052724
	cmp r0, #0
	beq _08052784
	ldr r0, _08052790 @ =gUnk_02002A40
	ldr r1, _08052794 @ =gUnk_02033A90
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
_08052790: .4byte gUnk_02002A40
_08052794: .4byte gUnk_02033A90
_08052798: .4byte 0x0000046C

	thumb_func_start sub_0805279C
sub_0805279C: @ 0x0805279C
	push {lr}
	bl sub_08052724
	cmp r0, #0
	beq _080527C8
	ldr r0, _080527BC @ =gUnk_02002A40
	ldr r1, _080527C0 @ =gUnk_02033A90
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
_080527BC: .4byte gUnk_02002A40
_080527C0: .4byte gUnk_02033A90
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
	ldr r0, _080527EC @ =gUnk_02002A40
	ldr r1, _080527F0 @ =gUnk_02033A90
	ldr r2, _080527F4 @ =0x0000046C
	adds r0, r0, r2
	ldrb r1, [r1, #3]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	b _080527FA
	.align 2, 0
_080527EC: .4byte gUnk_02002A40
_080527F0: .4byte gUnk_02033A90
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
	ldr r1, _08052834 @ =gUnk_020176A0
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_0801D66C
	ldr r1, _08052838 @ =gUnk_0200B644
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	pop {r4, pc}
	.align 2, 0
_08052830: .4byte gUnk_02024090
_08052834: .4byte gUnk_020176A0
_08052838: .4byte gUnk_0200B644

	thumb_func_start sub_0805283C
sub_0805283C: @ 0x0805283C
	push {r4, lr}
	ldr r0, _08052868 @ =gUnk_02033A90
	ldr r1, _0805286C @ =0x00000864
	adds r4, r0, r1
	ldr r1, _08052870 @ =gUnk_08127D30
	ldr r0, _08052874 @ =gUnk_03000BF0
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	str r0, [r4]
	movs r0, #0x8c
	lsls r0, r0, #4
	movs r1, #0x7c
	bl GetProgressFlagWithOffset
	cmp r0, #0
	beq _08052864
	movs r0, #0x33
	str r0, [r4]
_08052864:
	pop {r4, pc}
	.align 2, 0
_08052868: .4byte gUnk_02033A90
_0805286C: .4byte 0x00000864
_08052870: .4byte gUnk_08127D30
_08052874: .4byte gUnk_03000BF0

	thumb_func_start sub_08052878
sub_08052878: @ 0x08052878
	push {lr}
	ldr r0, _08052894 @ =gUnk_02033A90
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08052898 @ =0x80010000
	bl sub_080A3268
	pop {pc}
	.align 2, 0
_08052894: .4byte gUnk_02033A90
_08052898: .4byte 0x80010000

	thumb_func_start sub_0805289C
sub_0805289C: @ 0x0805289C
	ldr r0, _080528AC @ =gUnk_02033A90
	ldr r2, _080528B0 @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	bx lr
	.align 2, 0
_080528AC: .4byte gUnk_02033A90
_080528B0: .4byte 0x00000864

	thumb_func_start sub_080528B4
sub_080528B4: @ 0x080528B4
	push {lr}
	ldr r0, _080528C4 @ =gUnk_030010A0
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _080528C8
	movs r0, #0
	b _080528E6
	.align 2, 0
_080528C4: .4byte gUnk_030010A0
_080528C8:
	bl sub_0804FFE4
	ldr r1, _080528E8 @ =gUnk_03001000
	movs r2, #0
	movs r0, #3
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	movs r0, #5
	movs r1, #8
	bl sub_08050054
	ldr r0, _080528EC @ =0x80100000
	bl sub_080A3268
	movs r0, #1
_080528E6:
	pop {pc}
	.align 2, 0
_080528E8: .4byte gUnk_03001000
_080528EC: .4byte 0x80100000

	thumb_func_start sub_080528F0
sub_080528F0: @ 0x080528F0
	push {lr}
	ldr r1, _08052914 @ =gUnk_02033A90
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
_08052914: .4byte gUnk_02033A90
_08052918: .4byte 0x00000888

	thumb_func_start sub_0805291C
sub_0805291C: @ 0x0805291C
	push {r4, lr}
	ldr r4, _08052948 @ =gUnk_030010A0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _080529F4
	ldr r0, _0805294C @ =gUnk_02002A40
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #0
	beq _080529F4
	ldr r0, _08052950 @ =gUnk_03003F80
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
_08052948: .4byte gUnk_030010A0
_0805294C: .4byte gUnk_02002A40
_08052950: .4byte gUnk_03003F80
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
	bl sub_08050054
	b _080529DC
_0805299A:
	movs r0, #0xd
	movs r1, #3
	bl sub_08050054
	b _080529DC
_080529A4:
	movs r0, #7
	b _080529AA
_080529A8:
	movs r0, #5
_080529AA:
	movs r1, #4
	bl sub_08050054
	b _080529DC
_080529B2:
	movs r0, #5
	movs r1, #0x10
	bl sub_08050054
	b _080529DC
_080529BC:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl sub_08050054
	b _080529DC
_080529C8:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #7
	bl sub_08050054
	b _080529DC
_080529D4:
	movs r0, #7
	movs r1, #0x10
	bl sub_08050054
_080529DC:
	bl sub_080528F0
	ldr r0, _080529F0 @ =gUnk_03001000
	movs r1, #3
	strb r1, [r0, #4]
	movs r1, #1
	strb r1, [r0, #0xb]
	movs r0, #1
	b _080529F6
	.align 2, 0
_080529F0: .4byte gUnk_03001000
_080529F4:
	movs r0, #0
_080529F6:
	pop {r4, pc}

	thumb_func_start sub_080529F8
sub_080529F8: @ 0x080529F8
	push {r4, r5, r6, lr}
	ldr r1, _08052A34 @ =gUnk_030010A0
	ldrh r4, [r1, #0xa]
	ldr r2, _08052A38 @ =gUnk_080FCAD6
	ldrh r0, [r2]
	cmp r0, #0
	beq _08052A48
	ldr r3, _08052A3C @ =gUnk_03003F80
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
_08052A34: .4byte gUnk_030010A0
_08052A38: .4byte gUnk_080FCAD6
_08052A3C: .4byte gUnk_03003F80
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
	ldr r2, _08052A88 @ =gUnk_030010A0
	movs r0, #1
	strb r0, [r2, #8]
	ldr r5, _08052A8C @ =gLinkEntity
	ldr r3, _08052A90 @ =gUnk_03000BF0
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
_08052A88: .4byte gUnk_030010A0
_08052A8C: .4byte gLinkEntity
_08052A90: .4byte gUnk_03000BF0

	thumb_func_start sub_08052A94
sub_08052A94: @ 0x08052A94
	push {lr}
	ldr r0, _08052AAC @ =gUnk_030010A0
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
_08052AAC: .4byte gUnk_030010A0
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
	bl sub_08050054
	b _08052B22
_08052AE6:
	movs r0, #6
	movs r1, #4
	bl sub_08050054
	b _08052B22
_08052AF0:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl sub_08050054
	b _08052B22
_08052AFC:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #7
	bl sub_08050054
	b _08052B22
_08052B08:
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	b _08052B22
_08052B12:
	movs r0, #6
_08052B14:
	movs r1, #8
	bl sub_08050054
	b _08052B22
_08052B1C:
	movs r0, #0x10
	bl sub_080500F4
_08052B22:
	pop {pc}

	thumb_func_start sub_08052B24
sub_08052B24: @ 0x08052B24
	push {lr}
	ldr r0, _08052B90 @ =gUnk_03000FF0
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08052B8A
	ldr r2, _08052B94 @ =gUnk_03003F80
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
	ldr r1, _08052BA0 @ =gLinkEntity
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
_08052B90: .4byte gUnk_03000FF0
_08052B94: .4byte gUnk_03003F80
_08052B98: .4byte gUnk_02034490
_08052B9C: .4byte gUnk_0200AF00
_08052BA0: .4byte gLinkEntity
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
	ldr r0, _08052BE0 @ =gUnk_030010A0
	adds r2, r0, #0
	adds r2, #0x35
	ldrb r1, [r2]
	adds r3, r0, #0
	cmp r1, #0
	bne _08052BEC
	ldr r0, _08052BE4 @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	ldr r0, _08052BE8 @ =gUnk_03000BF0
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	movs r2, #0xd
	cmp r1, #0x60
	ble _08052BEE
	movs r2, #1
	b _08052BEE
	.align 2, 0
_08052BE0: .4byte gUnk_030010A0
_08052BE4: .4byte gLinkEntity
_08052BE8: .4byte gUnk_03000BF0
_08052BEC:
	ldrb r2, [r2]
_08052BEE:
	ldrh r0, [r3, #0x36]
	adds r1, r2, #0
	bl sub_080563C8
	pop {pc}

	thumb_func_start sub_08052BF8
sub_08052BF8: @ 0x08052BF8
	push {lr}
	ldr r2, _08052C34 @ =gUnk_030010A0
	adds r1, r2, #0
	adds r1, #0x31
	ldrb r0, [r1]
	cmp r0, #0
	bne _08052C30
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08052C38 @ =gUnk_02033A90
	ldrb r1, [r0, #1]
	adds r0, r2, #0
	adds r0, #0x2e
	strb r1, [r0]
	bl sub_0805E8D4
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
	bl sub_0805EA2C
_08052C30:
	pop {pc}
	.align 2, 0
_08052C34: .4byte gUnk_030010A0
_08052C38: .4byte gUnk_02033A90

	thumb_func_start sub_08052C3C
sub_08052C3C: @ 0x08052C3C
	push {lr}
	ldr r2, _08052C58 @ =gUnk_02033A90
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
_08052C58: .4byte gUnk_02033A90

	thumb_func_start sub_08052C5C
sub_08052C5C: @ 0x08052C5C
	push {lr}
	bl sub_08052680
	cmp r0, #0
	bne _08052C98
	bl sub_08052620
	cmp r0, #0
	beq _08052C84
	ldr r2, _08052C7C @ =gUnk_030010A0
	ldr r1, _08052C80 @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	strh r0, [r2, #0x20]
	ldrh r0, [r1, #0x32]
	strh r0, [r2, #0x22]
	b _08052C98
	.align 2, 0
_08052C7C: .4byte gUnk_030010A0
_08052C80: .4byte gLinkEntity
_08052C84:
	bl sub_08052660
	cmp r0, #0
	beq _08052C98
	ldr r2, _08052C9C @ =gUnk_030010A0
	ldr r1, _08052CA0 @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	strh r0, [r2, #0x1c]
	ldrh r0, [r1, #0x32]
	strh r0, [r2, #0x1e]
_08052C98:
	pop {pc}
	.align 2, 0
_08052C9C: .4byte gUnk_030010A0
_08052CA0: .4byte gLinkEntity

	thumb_func_start sub_08052CA4
sub_08052CA4: @ 0x08052CA4
	push {r4, lr}
	ldr r4, _08052CC8 @ =gUnk_0811E214
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r4, r1, #2
	adds r4, r4, r1
	lsls r4, r4, #1
	ldr r1, [r0]
	adds r1, r1, r4
	ldr r4, _08052CCC @ =gUnk_030010A0
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #2]
	adds r0, r0, r3
	strh r0, [r4, #0x22]
	pop {r4, pc}
	.align 2, 0
_08052CC8: .4byte gUnk_0811E214
_08052CCC: .4byte gUnk_030010A0

	thumb_func_start sub_08052CD0
sub_08052CD0: @ 0x08052CD0
	push {r4, lr}
	ldr r4, _08052CF4 @ =gUnk_0811E214
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r4, r1, #2
	adds r4, r4, r1
	lsls r4, r4, #1
	ldr r1, [r0]
	adds r1, r1, r4
	ldr r4, _08052CF8 @ =gUnk_030010A0
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r4, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r0, r3
	strh r0, [r4, #0x1e]
	pop {r4, pc}
	.align 2, 0
_08052CF4: .4byte gUnk_0811E214
_08052CF8: .4byte gUnk_030010A0

	thumb_func_start sub_08052CFC
sub_08052CFC: @ 0x08052CFC
	push {r4, lr}
	ldr r4, _08052D44 @ =gUnk_02033A90
	ldr r1, _08052D48 @ =0x00000894
	adds r0, r4, #0
	bl sub_0801D630
	ldr r0, _08052D4C @ =gUnk_03000BF0
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
_08052D44: .4byte gUnk_02033A90
_08052D48: .4byte 0x00000894
_08052D4C: .4byte gUnk_03000BF0
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
	ldr r0, _08052D98 @ =gUnk_03001000
	ldrb r0, [r0, #4]
	cmp r0, #7
	beq _08052D96
	ldr r0, _08052D9C @ =gUnk_02033A90
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
_08052D98: .4byte gUnk_03001000
_08052D9C: .4byte gUnk_02033A90
_08052DA0: .4byte 0x00000888
_08052DA4: .4byte 0x0000088C

	thumb_func_start sub_08052DA8
sub_08052DA8: @ 0x08052DA8
	push {r4, r5, r6, r7, lr}
	ldr r1, _08052DF8 @ =gUnk_0811E214
	ldr r0, _08052DFC @ =gUnk_03000BF0
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
	ldr r0, _08052DFC @ =gUnk_03000BF0
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
	ldr r1, _08052E08 @ =gUnk_02033A90
	ldr r2, _08052E0C @ =0x0000085C
	adds r1, r1, r2
	str r0, [r1]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08052DF8: .4byte gUnk_0811E214
_08052DFC: .4byte gUnk_03000BF0
_08052E00: .4byte gUnk_02033ACC
_08052E04: .4byte 0x0000FFFF
_08052E08: .4byte gUnk_02033A90
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
	ldr r4, _08052E74 @ =gUnk_0810246C
	lsls r2, r2, #2
	adds r4, r2, r4
	ldrh r0, [r1, #8]
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #8]
	ldr r0, _08052E78 @ =gUnk_08107988
	adds r0, r2, r0
	ldr r0, [r0]
	lsls r3, r3, #2
	adds r0, r3, r0
	ldr r0, [r0]
	str r0, [r5, #0xc]
	ldr r0, _08052E7C @ =gUnk_0810309C
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
	ldr r0, _08052E88 @ =gUnk_080D50FC
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
_08052E74: .4byte gUnk_0810246C
_08052E78: .4byte gUnk_08107988
_08052E7C: .4byte gUnk_0810309C
_08052E80: .4byte gUnk_080B755C
_08052E84: .4byte gUnk_0813A7F0
_08052E88: .4byte gUnk_080D50FC

	thumb_func_start sub_08052E8C
sub_08052E8C: @ 0x08052E8C
	ldr r0, _08052E98 @ =gUnk_03000BF0
	ldrb r0, [r0, #5]
	lsls r0, r0, #5
	ldr r1, _08052E9C @ =gUnk_02033ACC
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08052E98: .4byte gUnk_03000BF0
_08052E9C: .4byte gUnk_02033ACC

	thumb_func_start sub_08052EA0
sub_08052EA0: @ 0x08052EA0
	push {r4, lr}
	ldr r4, _08052EE4 @ =gUnk_02034350
	adds r0, r4, #0
	movs r1, #0xcc
	bl sub_0801D630
	movs r0, #0xff
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x11]
	strb r0, [r4, #0x12]
	strb r0, [r4, #0x13]
	adds r0, #1
	strh r0, [r4, #0xc]
	ldr r2, _08052EE8 @ =gUnk_02033A90
	ldr r1, _08052EEC @ =gUnk_08127D30
	ldr r0, _08052EF0 @ =gUnk_03000BF0
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	strb r0, [r2, #1]
	bl sub_08049D30
	bl sub_0807DA70
	bl sub_08054524
	bl sub_080186D4
	bl sub_0806F364
	bl sub_080530C8
	pop {r4, pc}
	.align 2, 0
_08052EE4: .4byte gUnk_02034350
_08052EE8: .4byte gUnk_02033A90
_08052EEC: .4byte gUnk_08127D30
_08052EF0: .4byte gUnk_03000BF0

	thumb_func_start sub_08052EF4
sub_08052EF4: @ 0x08052EF4
	push {lr}
	cmp r0, #0
	bge _08052EFE
	ldr r0, _08052F10 @ =gUnk_03000BF0
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
_08052F10: .4byte gUnk_03000BF0
_08052F14: .4byte gUnk_08127D30
_08052F18: .4byte gUnk_0811E454

	thumb_func_start sub_08052F1C
sub_08052F1C: @ 0x08052F1C
	push {r4, r5, r6, lr}
	ldr r2, _08052F4C @ =gUnk_02033A90
	ldrb r1, [r2, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08052FCC
	ldr r0, _08052F50 @ =gUnk_02034350
	ldrb r0, [r0]
	cmp r0, #0
	beq _08052FCC
	movs r5, #0
	movs r4, #0
	ldr r0, _08052F54 @ =gUnk_03000BF0
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
_08052F4C: .4byte gUnk_02033A90
_08052F50: .4byte gUnk_02034350
_08052F54: .4byte gUnk_03000BF0
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
	ldr r2, _08052FD4 @ =gUnk_03003D70
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
_08052FD4: .4byte gUnk_03003D70

	thumb_func_start sub_08052FD8
sub_08052FD8: @ 0x08052FD8
	push {lr}
	bl sub_08052FF4
	ldr r1, _08052FF0 @ =gUnk_03000BF0
	movs r0, #0
	str r0, [r1, #0x30]
	bl sub_0807C860
	bl sub_0807C740
	pop {pc}
	.align 2, 0
_08052FF0: .4byte gUnk_03000BF0

	thumb_func_start sub_08052FF4
sub_08052FF4: @ 0x08052FF4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	bl sub_08080668
	bl sub_080197AC
	ldr r0, _0805306C @ =gUnk_03000BF0
	strb r6, [r0, #4]
	strb r4, [r0, #5]
	ldr r1, _08053070 @ =gUnk_03000F50
	movs r0, #0xba
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r5, _08053074 @ =gUnk_020342CC
	adds r0, r5, #0
	movs r1, #0x20
	bl sub_0801D630
	str r5, [r5, #0x20]
	ldr r0, _08053078 @ =gUnk_0811E214
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
	ldr r1, _0805307C @ =gUnk_0810246C
	adds r1, r6, r1
	ldrh r0, [r0, #8]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #8]
	ldr r0, _08053080 @ =gUnk_08107988
	adds r0, r6, r0
	ldr r0, [r0]
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [r5, #0xc]
	ldr r0, _08053084 @ =gUnk_0810309C
	adds r0, r6, r0
	ldr r0, [r0]
	str r0, [r5, #0x10]
	ldr r0, _08053088 @ =gUnk_080B755C
	adds r6, r6, r0
	ldr r0, [r6]
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805306C: .4byte gUnk_03000BF0
_08053070: .4byte gUnk_03000F50
_08053074: .4byte gUnk_020342CC
_08053078: .4byte gUnk_0811E214
_0805307C: .4byte gUnk_0810246C
_08053080: .4byte gUnk_08107988
_08053084: .4byte gUnk_0810309C
_08053088: .4byte gUnk_080B755C

	thumb_func_start sub_0805308C
sub_0805308C: @ 0x0805308C
	push {lr}
	adds r1, r0, #0
	ldr r2, _080530AC @ =gUnk_02034350
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
_080530AC: .4byte gUnk_02034350

	thumb_func_start sub_080530B0
sub_080530B0: @ 0x080530B0
	push {lr}
	ldr r0, _080530C0 @ =gUnk_080FCAF8
	ldr r1, _080530C4 @ =gUnk_030010EC
	movs r2, #0x20
	bl sub_0801D66C
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
	bl GetProgressFlagWithOffset
	cmp r0, #0
	beq _080530E0
	movs r4, #9
	b _08053138
_080530E0:
	movs r0, #6
	bl GetProgressFlag
	cmp r0, #0
	beq _080530EE
	movs r4, #8
	b _08053138
_080530EE:
	adds r0, r5, #0
	movs r1, #0x32
	bl GetProgressFlagWithOffset
	cmp r0, #0
	beq _080530FE
	movs r4, #7
	b _08053138
_080530FE:
	movs r0, #5
	bl GetProgressFlag
	cmp r0, #0
	beq _0805310C
	movs r4, #6
	b _08053138
_0805310C:
	movs r0, #4
	bl GetProgressFlag
	cmp r0, #0
	beq _0805311A
	movs r4, #5
	b _08053138
_0805311A:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0x9c
	bl GetProgressFlagWithOffset
	cmp r0, #0
	beq _0805312C
	movs r4, #4
	b _08053138
_0805312C:
	movs r0, #2
	bl GetProgressFlag
	cmp r0, #0
	beq _08053138
	movs r4, #2
_08053138:
	ldr r0, _08053140 @ =gUnk_02002A40
	strb r4, [r0, #8]
	pop {r4, r5, pc}
	.align 2, 0
_08053140: .4byte gUnk_02002A40

	thumb_func_start sub_08053144
sub_08053144: @ 0x08053144
	push {lr}
	movs r0, #0x51
	bl GetProgressFlag
	cmp r0, #0
	beq _08053154
	movs r0, #0
	b _0805316E
_08053154:
	movs r1, #0
	ldr r0, _08053170 @ =gUnk_02033A90
	ldrb r2, [r0, #1]
	cmp r2, #0
	beq _0805316C
	ldr r0, _08053174 @ =gUnk_030010A0
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
_08053170: .4byte gUnk_02033A90
_08053174: .4byte gUnk_030010A0

	thumb_func_start sub_08053178
sub_08053178: @ 0x08053178
	push {r4, r5, lr}
	bl sub_08053144
	cmp r0, #0
	beq _080531E6
	ldr r0, _080531E8 @ =gUnk_030010A0
	ldr r5, _080531EC @ =gUnk_02033A90
	ldrb r1, [r5, #1]
	adds r0, #0x2e
	strb r1, [r0]
	movs r0, #0x15
	bl GetProgressFlag
	cmp r0, #0
	beq _080531E6
	movs r0, #0x51
	bl GetProgressFlag
	cmp r0, #0
	bne _080531DC
	bl sub_0805E8D4
	adds r4, r0, #0
	cmp r4, #0
	beq _080531DC
	movs r0, #9
	strb r0, [r4, #8]
	movs r0, #0x39
	strb r0, [r4, #9]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0805EA2C
	ldr r0, _080531F0 @ =gUnk_02034350
	ldrb r0, [r0]
	cmp r0, #0
	bne _080531DC
	ldr r0, _080531F4 @ =gUnk_02002AA0
	ldrb r1, [r5, #1]
	bl sub_0801D5A8
	cmp r0, #0
	bne _080531DC
	movs r0, #1
	strb r0, [r4, #0xb]
	movs r0, #3
	bl sub_08078A90
	bl sub_0805E5A8
_080531DC:
	ldr r0, _080531F4 @ =gUnk_02002AA0
	ldr r1, _080531EC @ =gUnk_02033A90
	ldrb r1, [r1, #1]
	bl sub_0801D5BC
_080531E6:
	pop {r4, r5, pc}
	.align 2, 0
_080531E8: .4byte gUnk_030010A0
_080531EC: .4byte gUnk_02033A90
_080531F0: .4byte gUnk_02034350
_080531F4: .4byte gUnk_02002AA0

	thumb_func_start sub_080531F8
sub_080531F8: @ 0x080531F8
	push {r4, r5, lr}
	ldr r1, _0805323C @ =gUnk_03003F80
	ldr r4, _08053240 @ =gLinkEntity
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
	bl sub_0801D66C
	bl sub_08052660
	cmp r0, #0
	beq _08053238
	adds r1, r5, #0
	subs r1, #0xc
	ldr r2, _0805324C @ =gUnk_03000BF0
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
_0805323C: .4byte gUnk_03003F80
_08053240: .4byte gLinkEntity
_08053244: .4byte gUnk_030010AC
_08053248: .4byte gUnk_02002AC8
_0805324C: .4byte gUnk_03000BF0

	thumb_func_start sub_08053250
sub_08053250: @ 0x08053250
	push {r4, lr}
	ldr r0, _0805328C @ =gUnk_030010A0
	movs r1, #0
	strb r1, [r0, #0xf]
	ldr r3, _08053290 @ =gLinkEntity
	ldr r4, _08053294 @ =gUnk_03000BF0
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
	bl sub_0801D66C
	pop {r4, pc}
	.align 2, 0
_0805328C: .4byte gUnk_030010A0
_08053290: .4byte gLinkEntity
_08053294: .4byte gUnk_03000BF0
_08053298: .4byte gUnk_02002AC8

	thumb_func_start sub_0805329C
sub_0805329C: @ 0x0805329C
	push {lr}
	bl sub_08053144
	cmp r0, #0
	beq _080532E0
	ldr r0, _080532B8 @ =gUnk_03000BF0
	ldrb r0, [r0, #4]
	cmp r0, #0x48
	beq _080532C2
	cmp r0, #0x48
	bgt _080532BC
	cmp r0, #0x18
	beq _080532D6
	b _080532DC
	.align 2, 0
_080532B8: .4byte gUnk_03000BF0
_080532BC:
	cmp r0, #0x50
	beq _080532D0
	b _080532DC
_080532C2:
	ldr r1, _080532CC @ =gUnk_02002A40
	movs r0, #0
	strb r0, [r1, #7]
	b _080532E0
	.align 2, 0
_080532CC: .4byte gUnk_02002A40
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
	ldr r0, _08053318 @ =gUnk_0811E214
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r2, r0, r3
	ldr r1, _0805331C @ =gUnk_030010A0
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
_08053318: .4byte gUnk_0811E214
_0805331C: .4byte gUnk_030010A0

	thumb_func_start sub_08053320
sub_08053320: @ 0x08053320
	push {r4, lr}
	ldr r0, _0805337C @ =gUnk_02034CB0
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r4, #0
	bl sub_0801D630
	ldr r0, _08053380 @ =gUnk_02021F30
	adds r1, r4, #0
	bl sub_0801D630
	ldr r0, _08053384 @ =gUnk_020344B0
	adds r1, r4, #0
	bl sub_0801D630
	ldr r0, _08053388 @ =gUnk_02001A40
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_0801D630
	movs r0, #0x10
	bl sub_0801D7EC
	movs r0, #0x17
	bl sub_0801D7EC
	ldr r0, _0805338C @ =gUnk_03000BF0
	ldrb r0, [r0, #4]
	cmp r0, #4
	bne _08053362
	movs r0, #0x1a
	bl sub_0801D7EC
_08053362:
	bl sub_08053390
	movs r0, #0xb
	bl sub_0801D714
	movs r0, #0xc
	bl sub_0801D714
	movs r0, #0
	movs r1, #0
	bl sub_0801D79C
	pop {r4, pc}
	.align 2, 0
_0805337C: .4byte gUnk_02034CB0
_08053380: .4byte gUnk_02021F30
_08053384: .4byte gUnk_020344B0
_08053388: .4byte gUnk_02001A40
_0805338C: .4byte gUnk_03000BF0

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
	bl sub_0801D7EC
	movs r0, #0xa
	bl GetInventoryValue
	cmp r0, #0
	beq _080533B6
	movs r0, #0x1d
	bl sub_0801D7EC
_080533B6:
	movs r0, #0xc
	bl GetInventoryValue
	movs r1, #0x1b
	cmp r0, #0
	beq _080533C4
	movs r1, #0x1c
_080533C4:
	adds r0, r1, #0
	bl sub_0801D7EC
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
	ldr r2, _08053408 @ =gUnk_0200B644
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08053400: .4byte gUnk_020178E0
_08053404: .4byte 0xFFFFFE00
_08053408: .4byte gUnk_0200B644

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
	ldr r0, _0805345C @ =gUnk_02033A90
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
	bl sub_080A7138
_0805345A:
	pop {pc}
	.align 2, 0
_0805345C: .4byte gUnk_02033A90

	thumb_func_start sub_08053460
sub_08053460: @ 0x08053460
	push {lr}
	ldr r0, _08053488 @ =gUnk_02002A40
	ldr r1, _0805348C @ =0x0000048C
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	movs r0, #0x8c
	lsls r0, r0, #4
	movs r1, #0x79
	bl GetProgressFlagWithOffset
	cmp r0, #0
	beq _08053480
	movs r0, #0x1c
	bl sub_0807CD80
_08053480:
	ldr r0, _08053490 @ =gUnk_080FCB38
	bl sub_0805356C
	pop {pc}
	.align 2, 0
_08053488: .4byte gUnk_02002A40
_0805348C: .4byte 0x0000048C
_08053490: .4byte gUnk_080FCB38

	thumb_func_start sub_08053494
sub_08053494: @ 0x08053494
	ldr r0, _080534A0 @ =gUnk_02002A40
	ldr r1, _080534A4 @ =0x0000048C
	adds r0, r0, r1
	ldr r1, _080534A8 @ =0x00002A30
	str r1, [r0]
	bx lr
	.align 2, 0
_080534A0: .4byte gUnk_02002A40
_080534A4: .4byte 0x0000048C
_080534A8: .4byte 0x00002A30

	thumb_func_start sub_080534AC
sub_080534AC: @ 0x080534AC
	push {r4, lr}
	movs r4, #0x8c
	lsls r4, r4, #4
	adds r0, r4, #0
	movs r1, #0x7c
	bl GetProgressFlagWithOffset
	cmp r0, #0
	beq _080534D6
	adds r0, r4, #0
	movs r1, #0x7c
	bl sub_0807CD20
	ldr r0, _080534D8 @ =gUnk_02002A40
	ldr r1, _080534DC @ =0x0000048C
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, _080534E0 @ =0x80100000
	bl sub_080A3268
_080534D6:
	pop {r4, pc}
	.align 2, 0
_080534D8: .4byte gUnk_02002A40
_080534DC: .4byte 0x0000048C
_080534E0: .4byte 0x80100000

	thumb_func_start sub_080534E4
sub_080534E4: @ 0x080534E4
	push {lr}
	adds r1, r0, #0
	ldr r0, _080534FC @ =gUnk_03000BF0
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
_080534FC: .4byte gUnk_03000BF0

	thumb_func_start sub_08053500
sub_08053500: @ 0x08053500
	ldr r0, _0805350C @ =gUnk_02002A40
	ldr r1, _08053510 @ =0x00000494
	adds r0, r0, r1
	ldr r1, _08053514 @ =0x00008CA0
	str r1, [r0]
	bx lr
	.align 2, 0
_0805350C: .4byte gUnk_02002A40
_08053510: .4byte 0x00000494
_08053514: .4byte 0x00008CA0

	thumb_func_start sub_08053518
sub_08053518: @ 0x08053518
	push {lr}
	bl sub_08053460
	ldr r0, _08053568 @ =gUnk_080FCB62
	bl sub_0805356C
	movs r0, #0x1b
	bl GetProgressFlag
	cmp r0, #0
	bne _08053534
	movs r0, #0x1a
	bl sub_0807CD80
_08053534:
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	bne _08053544
	movs r0, #2
	bl sub_0807CD80
_08053544:
	movs r0, #0x41
	bl GetInventoryValue
	cmp r0, #0
	bne _08053554
	movs r0, #3
	bl sub_0807CD80
_08053554:
	movs r0, #0x42
	bl GetInventoryValue
	cmp r0, #0
	bne _08053564
	movs r0, #5
	bl sub_0807CD80
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
	bl sub_0807CD20
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
	ldr r0, _080535A8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080535A4: .4byte gUnk_080FCBB4
_080535A8: .4byte gUnk_02000080

	thumb_func_start sub_080535AC
sub_080535AC: @ 0x080535AC
	push {lr}
	ldr r2, _080535DC @ =gUnk_02000080
	movs r1, #1
	strb r1, [r2, #6]
	movs r0, #0x78
	strh r0, [r2, #8]
	ldr r0, _080535E0 @ =gUnk_02032EC0
	strb r1, [r0, #6]
	ldr r0, _080535E4 @ =gUnk_02000070
	strb r1, [r0]
	ldr r2, _080535E8 @ =gUnk_03000F50
	ldrh r1, [r2]
	ldr r0, _080535EC @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080535F0 @ =gUnk_080FCB94
	bl LoadRoomEntityList
	movs r0, #6
	movs r1, #8
	bl sub_08050054
	pop {pc}
	.align 2, 0
_080535DC: .4byte gUnk_02000080
_080535E0: .4byte gUnk_02032EC0
_080535E4: .4byte gUnk_02000070
_080535E8: .4byte gUnk_03000F50
_080535EC: .4byte 0x0000FEFF
_080535F0: .4byte gUnk_080FCB94

	thumb_func_start sub_080535F4
sub_080535F4: @ 0x080535F4
	push {lr}
	ldr r0, _0805360C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053608
	bl sub_0805E5B4
	ldr r1, _08053610 @ =gUnk_02000080
	movs r0, #2
	strb r0, [r1, #6]
_08053608:
	pop {pc}
	.align 2, 0
_0805360C: .4byte gUnk_03000FD0
_08053610: .4byte gUnk_02000080

	thumb_func_start nullsub_481
nullsub_481: @ 0x08053614
	bx lr
	.align 2, 0

	thumb_func_start sub_08053618
sub_08053618: @ 0x08053618
	push {lr}
	ldr r1, _08053630 @ =gUnk_02000080
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
_08053630: .4byte gUnk_02000080

	thumb_func_start sub_08053634
sub_08053634: @ 0x08053634
	push {lr}
	ldr r1, _08053644 @ =gUnk_02032EC0
	movs r0, #3
	strb r0, [r1]
	bl sub_08056418
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
	ldr r0, _08053678 @ =gUnk_03000BF0
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
_08053678: .4byte gUnk_03000BF0

	thumb_func_start sub_0805367C
sub_0805367C: @ 0x0805367C
	ldr r1, _08053688 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_08053688: .4byte gUnk_02000080

	thumb_func_start sub_0805368C
sub_0805368C: @ 0x0805368C
	push {lr}
	movs r0, #6
	movs r1, #0x5d
	movs r2, #6
	bl sub_0805EB00
	cmp r0, #0
	beq _080536A6
	bl sub_0805E7BC
	movs r0, #0xf0
	bl sub_080A3268
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
	bl sub_08050054
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080536D4
sub_080536D4: @ 0x080536D4
	push {lr}
	ldr r1, _080536E8 @ =gUnk_080FCCFC
	ldr r0, _080536EC @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080536E8: .4byte gUnk_080FCCFC
_080536EC: .4byte gUnk_02000080

	thumb_func_start sub_080536F0
sub_080536F0: @ 0x080536F0
	push {lr}
	ldr r1, _08053704 @ =gUnk_080FCD38
	ldr r0, _08053708 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053704: .4byte gUnk_080FCD38
_08053708: .4byte gUnk_02000080

	thumb_func_start sub_0805370C
sub_0805370C: @ 0x0805370C
	push {lr}
	ldr r1, _08053730 @ =gUnk_02000080
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
	bl sub_08050054
	pop {pc}
	.align 2, 0
_08053730: .4byte gUnk_02000080
_08053734: .4byte gUnk_02000070
_08053738: .4byte gUnk_080FCC54

	thumb_func_start sub_0805373C
sub_0805373C: @ 0x0805373C
	push {lr}
	ldr r1, _08053750 @ =gUnk_080FCD40
	ldr r0, _08053754 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053750: .4byte gUnk_080FCD40
_08053754: .4byte gUnk_02000080

	thumb_func_start sub_08053758
sub_08053758: @ 0x08053758
	push {r4, lr}
	ldr r1, _080537DC @ =gUnk_02000080
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
	ldr r0, _080537EC @ =gUnk_03000BF0
	str r2, [r0, #0x30]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xa]
	bl sub_0801B170
	movs r0, #0
	bl sub_0801DA90
	ldr r2, _080537F0 @ =gUnk_03000F50
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
	bl sub_080A3268
	bl sub_0805E5B4
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_080537DC: .4byte gUnk_02000080
_080537E0: .4byte gUnk_02032EC0
_080537E4: .4byte gUnk_02025EB0
_080537E8: .4byte gUnk_0200B650
_080537EC: .4byte gUnk_03000BF0
_080537F0: .4byte gUnk_03000F50
_080537F4: .4byte 0x00002244
_080537F8: .4byte 0x00001C4E
_080537FC: .4byte 0x00001DC1

	thumb_func_start sub_08053800
sub_08053800: @ 0x08053800
	push {r4, r5, lr}
	ldr r0, _0805387C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805387A
	ldr r1, _08053880 @ =gUnk_02000080
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
	bl sub_0801D714
	adds r0, r5, #0
	adds r0, #0x3a
	bl sub_0801D7EC
	ldr r0, _08053888 @ =gUnk_02021F30
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_0801D630
	ldr r0, _0805388C @ =0x00000F01
	adds r5, r5, r0
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_0805F46C
	ldr r2, _08053890 @ =gUnk_03000F50
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
	bl sub_08050054
_0805387A:
	pop {r4, r5, pc}
	.align 2, 0
_0805387C: .4byte gUnk_03000FD0
_08053880: .4byte gUnk_02000080
_08053884: .4byte gUnk_080FCCB4
_08053888: .4byte gUnk_02021F30
_0805388C: .4byte 0x00000F01
_08053890: .4byte gUnk_03000F50

	thumb_func_start sub_08053894
sub_08053894: @ 0x08053894
	push {r4, lr}
	ldr r0, _080538B4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080538F8
	ldr r1, _080538B8 @ =gUnk_02000080
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
_080538B4: .4byte gUnk_03000FD0
_080538B8: .4byte gUnk_02000080
_080538BC:
	ldr r0, _080538FC @ =gUnk_030010A0
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
	ldr r3, _08053900 @ =gUnk_03000F50
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
	bl sub_08050054
_080538F8:
	pop {r4, pc}
	.align 2, 0
_080538FC: .4byte gUnk_030010A0
_08053900: .4byte gUnk_03000F50

	thumb_func_start sub_08053904
sub_08053904: @ 0x08053904
	push {r4, lr}
	ldr r0, _08053924 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053968
	ldr r1, _08053928 @ =gUnk_02000080
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
_08053924: .4byte gUnk_03000FD0
_08053928: .4byte gUnk_02000080
_0805392C:
	ldr r0, _0805396C @ =gUnk_030010A0
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
	ldr r3, _08053970 @ =gUnk_03000F50
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
	bl sub_08050054
_08053968:
	pop {r4, pc}
	.align 2, 0
_0805396C: .4byte gUnk_030010A0
_08053970: .4byte gUnk_03000F50

	thumb_func_start sub_08053974
sub_08053974: @ 0x08053974
	push {lr}
	ldr r0, _080539AC @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080539A8
	bl sub_0804FFE4
	movs r0, #1
	bl sub_0801DA90
	bl sub_080197AC
	bl sub_08051F78
	ldr r0, _080539B0 @ =gUnk_080FCBC4
	bl LoadRoomEntityList
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl sub_08050054
	ldr r1, _080539B4 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_080539A8:
	pop {pc}
	.align 2, 0
_080539AC: .4byte gUnk_03000FD0
_080539B0: .4byte gUnk_080FCBC4
_080539B4: .4byte gUnk_02000080

	thumb_func_start nullsub_482
nullsub_482: @ 0x080539B8
	bx lr
	.align 2, 0

	thumb_func_start sub_080539BC
sub_080539BC: @ 0x080539BC
	push {lr}
	bl sub_080197AC
	bl sub_0805E89C
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
	ldr r1, _080539F0 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	pop {pc}
	.align 2, 0
_080539EC: .4byte gUnk_080FCC14
_080539F0: .4byte gUnk_02000080

	thumb_func_start sub_080539F4
sub_080539F4: @ 0x080539F4
	push {lr}
	ldr r0, _08053A14 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053A10
	movs r0, #1
	bl sub_0801DA90
	ldr r0, _08053A18 @ =gUnk_02000080
	ldrb r1, [r0, #6]
	adds r1, #1
	strb r1, [r0, #6]
	movs r1, #0x3c
	strh r1, [r0, #8]
_08053A10:
	pop {pc}
	.align 2, 0
_08053A14: .4byte gUnk_03000FD0
_08053A18: .4byte gUnk_02000080

	thumb_func_start sub_08053A1C
sub_08053A1C: @ 0x08053A1C
	push {r4, lr}
	ldr r1, _08053A50 @ =gUnk_02000080
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
	bl sub_08056378
	ldr r1, _08053A58 @ =gUnk_02000050
	movs r0, #1
	strb r0, [r1, #6]
	strb r4, [r1, #7]
	movs r0, #4
	movs r1, #8
	bl sub_08050054
_08053A4E:
	pop {r4, pc}
	.align 2, 0
_08053A50: .4byte gUnk_02000080
_08053A54: .4byte 0x00000F07
_08053A58: .4byte gUnk_02000050

	thumb_func_start sub_08053A5C
sub_08053A5C: @ 0x08053A5C
	push {lr}
	ldr r0, _08053A88 @ =gUnk_02000050
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08053A86
	ldr r1, _08053A8C @ =gUnk_02000080
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
	bl sub_08050054
_08053A86:
	pop {pc}
	.align 2, 0
_08053A88: .4byte gUnk_02000050
_08053A8C: .4byte gUnk_02000080

	thumb_func_start sub_08053A90
sub_08053A90: @ 0x08053A90
	push {lr}
	ldr r0, _08053AA8 @ =gUnk_03000FD0
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
_08053AA8: .4byte gUnk_03000FD0
_08053AAC: .4byte gUnk_02032EC0

	thumb_func_start sub_08053AB0
sub_08053AB0: @ 0x08053AB0
	push {lr}
	ldr r1, _08053AC4 @ =gUnk_080FCDD4
	ldr r0, _08053AC8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053AC4: .4byte gUnk_080FCDD4
_08053AC8: .4byte gUnk_02000080

	thumb_func_start sub_08053ACC
sub_08053ACC: @ 0x08053ACC
	push {lr}
	ldr r1, _08053AF4 @ =gUnk_02000080
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
	bl sub_08050054
	pop {pc}
	.align 2, 0
_08053AF4: .4byte gUnk_02000080
_08053AF8: .4byte gUnk_02000070
_08053AFC: .4byte gUnk_080FCD84

	thumb_func_start sub_08053B00
sub_08053B00: @ 0x08053B00
	ldr r1, _08053B0C @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_08053B0C: .4byte gUnk_02000080

	thumb_func_start sub_08053B10
sub_08053B10: @ 0x08053B10
	push {lr}
	movs r0, #1
	bl sub_0807CC3C
	cmp r0, #0
	beq _08053B34
	ldr r0, _08053B38 @ =gUnk_02000080
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	movs r0, #1
	bl sub_0801DA90
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #4
	bl sub_08050054
_08053B34:
	pop {pc}
	.align 2, 0
_08053B38: .4byte gUnk_02000080

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
	bl sub_08050054
	pop {r4, pc}

	thumb_func_start sub_08053B58
sub_08053B58: @ 0x08053B58
	push {lr}
	ldr r1, _08053B6C @ =gUnk_080FCEB0
	ldr r0, _08053B70 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053B6C: .4byte gUnk_080FCEB0
_08053B70: .4byte gUnk_02000080

	thumb_func_start sub_08053B74
sub_08053B74: @ 0x08053B74
	push {lr}
	ldr r1, _08053BA0 @ =gUnk_02000080
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
	bl sub_08050054
	pop {pc}
	.align 2, 0
_08053BA0: .4byte gUnk_02000080
_08053BA4: .4byte gUnk_02000070
_08053BA8: .4byte gUnk_080FCDE0

	thumb_func_start sub_08053BAC
sub_08053BAC: @ 0x08053BAC
	ldr r1, _08053BB8 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_08053BB8: .4byte gUnk_02000080

	thumb_func_start sub_08053BBC
sub_08053BBC: @ 0x08053BBC
	push {lr}
	movs r0, #0
	bl sub_0807CC3C
	cmp r0, #0
	beq _08053BE0
	ldr r0, _08053BE4 @ =gUnk_02000080
	ldrb r1, [r0, #5]
	adds r1, #1
	strb r1, [r0, #5]
	movs r0, #1
	bl sub_0801DA90
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #4
	bl sub_08050054
_08053BE0:
	pop {pc}
	.align 2, 0
_08053BE4: .4byte gUnk_02000080

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
	bl sub_08050054
	pop {r4, pc}

	thumb_func_start sub_08053C04
sub_08053C04: @ 0x08053C04
	push {lr}
	ldr r1, _08053C18 @ =gUnk_080FCEEC
	ldr r0, _08053C1C @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053C18: .4byte gUnk_080FCEEC
_08053C1C: .4byte gUnk_02000080

	thumb_func_start sub_08053C20
sub_08053C20: @ 0x08053C20
	push {lr}
	ldr r1, _08053C50 @ =gUnk_02000080
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
	bl sub_08050054
	movs r0, #0x33
	bl sub_080A3268
	pop {pc}
	.align 2, 0
_08053C50: .4byte gUnk_02000080
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
	bl sub_08050054
	movs r0, #0xf4
	bl sub_080A3268
	ldr r0, _08053C80 @ =0x80100000
	bl sub_080A3268
	movs r0, #3
	bl sub_08056010
	pop {pc}
	.align 2, 0
_08053C80: .4byte 0x80100000

	thumb_func_start sub_08053C84
sub_08053C84: @ 0x08053C84
	ldr r1, _08053C8C @ =gUnk_02000080
	movs r0, #2
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_08053C8C: .4byte gUnk_02000080

	thumb_func_start sub_08053C90
sub_08053C90: @ 0x08053C90
	push {lr}
	ldr r1, _08053CA4 @ =gUnk_080FCEF8
	ldr r0, _08053CA8 @ =gUnk_02000080
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053CA4: .4byte gUnk_080FCEF8
_08053CA8: .4byte gUnk_02000080

	thumb_func_start sub_08053CAC
sub_08053CAC: @ 0x08053CAC
	push {lr}
	ldr r1, _08053CC0 @ =gUnk_080FCFA4
	ldr r0, _08053CC4 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053CC0: .4byte gUnk_080FCFA4
_08053CC4: .4byte gUnk_02000080

	thumb_func_start sub_08053CC8
sub_08053CC8: @ 0x08053CC8
	push {r4, r5, r6, lr}
	ldr r6, _08053D20 @ =gUnk_02000080
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
	bl sub_0804B0FC
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	movs r2, #2
	bl sub_0804B0FC
	bl LoadRoomEntityList
	movs r5, #1
	strb r5, [r6, #6]
	ldr r2, _08053D28 @ =gUnk_03000F50
	ldrh r1, [r2]
	ldr r0, _08053D2C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08053D30 @ =gUnk_02000070
	strb r5, [r0]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	ldrb r0, [r4, #5]
	cmp r0, #0x1d
	bne _08053D1E
	strh r5, [r6, #0xa]
_08053D1E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08053D20: .4byte gUnk_02000080
_08053D24: .4byte gUnk_080FCF04
_08053D28: .4byte gUnk_03000F50
_08053D2C: .4byte 0x0000FEFF
_08053D30: .4byte gUnk_02000070

	thumb_func_start sub_08053D34
sub_08053D34: @ 0x08053D34
	push {r4, lr}
	ldr r1, _08053D88 @ =gUnk_02000080
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _08053D72
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r4, #0xd0
	lsls r4, r4, #3
	adds r0, r4, #0
	movs r1, #0x3d
	bl GetProgressFlagWithOffset
	cmp r0, #0
	beq _08053D5C
	movs r0, #0x74
	movs r1, #0xc4
	movs r2, #1
	bl sub_0807B314
_08053D5C:
	adds r0, r4, #0
	movs r1, #0x3e
	bl GetProgressFlagWithOffset
	cmp r0, #0
	beq _08053D72
	movs r0, #0x74
	movs r1, #0xcc
	movs r2, #1
	bl sub_0807B314
_08053D72:
	ldr r0, _08053D8C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053D86
	ldr r1, _08053D88 @ =gUnk_02000080
	movs r0, #0x78
	strh r0, [r1, #8]
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08053D86:
	pop {r4, pc}
	.align 2, 0
_08053D88: .4byte gUnk_02000080
_08053D8C: .4byte gUnk_03000FD0

	thumb_func_start sub_08053D90
sub_08053D90: @ 0x08053D90
	push {lr}
	ldr r1, _08053DB0 @ =gUnk_02000080
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
_08053DB0: .4byte gUnk_02000080

	thumb_func_start sub_08053DB4
sub_08053DB4: @ 0x08053DB4
	push {r4, r5, lr}
	ldr r0, _08053E20 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053E1C
	ldr r5, _08053E24 @ =gUnk_02000080
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	bl sub_08052FF4
	bl sub_0807C740
	ldr r1, _08053E28 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08053E2C @ =gUnk_03000BF0
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
	bl sub_0804B0FC
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	movs r2, #2
	bl sub_0804B0FC
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
_08053E20: .4byte gUnk_03000FD0
_08053E24: .4byte gUnk_02000080
_08053E28: .4byte gUnk_02000070
_08053E2C: .4byte gUnk_03000BF0

	thumb_func_start sub_08053E30
sub_08053E30: @ 0x08053E30
	push {lr}
	ldr r0, _08053E50 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053E4E
	ldr r1, _08053E54 @ =gUnk_02000080
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
_08053E50: .4byte gUnk_03000FD0
_08053E54: .4byte gUnk_02000080

	thumb_func_start sub_08053E58
sub_08053E58: @ 0x08053E58
	push {lr}
	ldr r1, _08053E6C @ =gUnk_080FD108
	ldr r0, _08053E70 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053E6C: .4byte gUnk_080FD108
_08053E70: .4byte gUnk_02000080

	thumb_func_start sub_08053E74
sub_08053E74: @ 0x08053E74
	push {r4, lr}
	ldr r0, _08053EB0 @ =gUnk_080FCFB8
	ldr r4, _08053EB4 @ =gUnk_02000080
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
	ldr r2, _08053EB8 @ =gUnk_03000F50
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
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08053EB0: .4byte gUnk_080FCFB8
_08053EB4: .4byte gUnk_02000080
_08053EB8: .4byte gUnk_03000F50
_08053EBC: .4byte 0x0000FEFF
_08053EC0: .4byte gUnk_02000070

	thumb_func_start sub_08053EC4
sub_08053EC4: @ 0x08053EC4
	push {r4, lr}
	ldr r0, _08053EF4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053EF0
	ldr r4, _08053EF8 @ =gUnk_02000080
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
_08053EF4: .4byte gUnk_03000FD0
_08053EF8: .4byte gUnk_02000080

	thumb_func_start sub_08053EFC
sub_08053EFC: @ 0x08053EFC
	push {lr}
	ldr r1, _08053F1C @ =gUnk_02000080
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
_08053F1C: .4byte gUnk_02000080

	thumb_func_start sub_08053F20
sub_08053F20: @ 0x08053F20
	push {r4, r5, lr}
	ldr r0, _08053F78 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053F74
	bl sub_0805E89C
	ldr r5, _08053F7C @ =gUnk_02000080
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #8]
	ldrb r1, [r4, #9]
	bl sub_08052FF4
	bl sub_0807C740
	ldr r1, _08053F80 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08053F84 @ =gUnk_03000BF0
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
_08053F78: .4byte gUnk_03000FD0
_08053F7C: .4byte gUnk_02000080
_08053F80: .4byte gUnk_02000070
_08053F84: .4byte gUnk_03000BF0

	thumb_func_start sub_08053F88
sub_08053F88: @ 0x08053F88
	push {lr}
	ldr r0, _08053FAC @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08053FAA
	ldr r1, _08053FB0 @ =gUnk_02000080
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
_08053FAC: .4byte gUnk_03000FD0
_08053FB0: .4byte gUnk_02000080

	thumb_func_start sub_08053FB4
sub_08053FB4: @ 0x08053FB4
	push {lr}
	ldr r1, _08053FC8 @ =gUnk_080FD138
	ldr r0, _08053FCC @ =gUnk_02000080
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08053FC8: .4byte gUnk_080FD138
_08053FCC: .4byte gUnk_02000080

	thumb_func_start sub_08053FD0
sub_08053FD0: @ 0x08053FD0
	lsls r0, r0, #3
	ldr r1, _08053FDC @ =gUnk_080FD964
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	bx lr
	.align 2, 0
_08053FDC: .4byte gUnk_080FD964

	thumb_func_start sub_08053FE0
sub_08053FE0: @ 0x08053FE0
	lsls r0, r0, #3
	ldr r1, _08053FEC @ =gUnk_080FD964
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08053FEC: .4byte gUnk_080FD964

	thumb_func_start sub_08053FF0
sub_08053FF0: @ 0x08053FF0
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
	bl sub_08054398
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
	bl sub_080526A0
	movs r0, #0x71
	bl sub_080A3268
	b _0805427C
_080540A6:
	ldr r0, _080540BC @ =gUnk_080FD5A8
	ldrb r1, [r4, #2]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl sub_080526CC
	movs r0, #0x6f
	bl sub_080A3268
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
	ldr r0, _08054100 @ =gUnk_02002A40
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
	bl sub_08054398
	b _0805427C
	.align 2, 0
_08054100: .4byte gUnk_02002A40
_08054104:
	movs r5, #0
	ldr r0, _08054144 @ =gUnk_02002A40
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
	bl sub_080A3268
	b _0805427C
	.align 2, 0
_08054144: .4byte gUnk_02002A40
_08054148: .4byte 0x00000109
_0805414C:
	movs r0, #1
	bl sub_080526F8
	b _0805424E
_08054154:
	ldr r1, _08054168 @ =gUnk_02002A40
	ldr r0, _0805416C @ =gUnk_02033A90
	ldr r2, _08054170 @ =0x0000046C
	adds r1, r1, r2
	ldrb r0, [r0, #3]
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r2, [r4, #2]
	orrs r0, r2
	b _0805427A
	.align 2, 0
_08054168: .4byte gUnk_02002A40
_0805416C: .4byte gUnk_02033A90
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
	bl sub_080542F4
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
	bl sub_08054398
	b _080541E2
_080541CA:
	ldr r0, _080541EC @ =gUnk_02002A40
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
	bl sub_080542F4
	b _0805427C
	.align 2, 0
_080541EC: .4byte gUnk_02002A40
_080541F0:
	ldrb r0, [r4, #2]
	bl sub_080542F4
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
	bl sub_08054330
	b _080541B0
_08054212:
	ldr r0, _08054234 @ =gUnk_02002A40
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
	bl sub_08054330
	b _0805427C
	.align 2, 0
_08054234: .4byte gUnk_02002A40
_08054238:
	ldrb r0, [r4, #2]
	bl sub_08054330
	b _0805424E
_08054240:
	movs r0, #0x3f
	movs r1, #1
	bl sub_0807CAA0
	adds r0, r7, #0
	bl sub_080542C0
_0805424E:
	ldr r0, _08054258 @ =0x00000103
	bl sub_080A3268
	b _0805427C
	.align 2, 0
_08054258: .4byte 0x00000103
_0805425C:
	adds r0, r7, #0
	bl sub_0801E738
	b _0805427C
_08054264:
	ldr r0, _08054284 @ =gUnk_02002A40
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
_08054284: .4byte gUnk_02002A40

	thumb_func_start sub_08054288
sub_08054288: @ 0x08054288
	push {lr}
	ldr r1, _08054298 @ =gUnk_080FD5B4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	bl sub_08056378
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
	ldr r1, _080542DC @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xc2
	ldrh r0, [r0]
	adds r2, r2, r0
	cmp r2, #0
	bge _080542E0
	movs r2, #0
	b _080542E8
	.align 2, 0
_080542DC: .4byte gUnk_02002A40
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

	thumb_func_start sub_080542F4
sub_080542F4: @ 0x080542F4
	push {lr}
	adds r3, r0, #0
	ldr r1, _08054318 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xac
	ldrb r0, [r0]
	adds r3, r3, r0
	ldr r2, _0805431C @ =gUnk_080FD5A0
	adds r0, r1, #0
	adds r0, #0xae
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r2, [r0]
	cmp r3, #0
	bge _08054320
	movs r3, #0
	b _08054326
	.align 2, 0
_08054318: .4byte gUnk_02002A40
_0805431C: .4byte gUnk_080FD5A0
_08054320:
	cmp r2, r3
	bge _08054326
	adds r3, r2, #0
_08054326:
	adds r0, r1, #0
	adds r0, #0xac
	strb r3, [r0]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08054330
sub_08054330: @ 0x08054330
	push {lr}
	adds r3, r0, #0
	ldr r1, _08054354 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xad
	ldrb r0, [r0]
	adds r3, r3, r0
	ldr r2, _08054358 @ =gUnk_080FD5A4
	adds r0, r1, #0
	adds r0, #0xaf
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r2, [r0]
	cmp r3, #0
	bge _0805435C
	movs r3, #0
	b _08054362
	.align 2, 0
_08054354: .4byte gUnk_02002A40
_08054358: .4byte gUnk_080FD5A4
_0805435C:
	cmp r2, r3
	bge _08054362
	adds r3, r2, #0
_08054362:
	adds r0, r1, #0
	adds r0, #0xad
	strb r3, [r0]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805436C
sub_0805436C: @ 0x0805436C
	push {lr}
	adds r2, r0, #0
	ldr r1, _08054380 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r2, r0
	bne _08054384
	movs r1, #0
	b _08054392
	.align 2, 0
_08054380: .4byte gUnk_02002A40
_08054384:
	adds r0, r1, #0
	adds r0, #0xb5
	movs r1, #2
	ldrb r0, [r0]
	cmp r2, r0
	bne _08054392
	movs r1, #1
_08054392:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08054398
sub_08054398: @ 0x08054398
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x46
	bhi _080543A8
	movs r0, #0
	movs r1, #1
	bl sub_0807CAA0
_080543A8:
	subs r0, r5, #1
	cmp r0, #0x1e
	bhi _08054410
	movs r1, #2
	ldr r2, _080543C0 @ =gUnk_02002A40
	adds r0, r2, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080543C4
	movs r1, #0
	b _080543D0
	.align 2, 0
_080543C0: .4byte gUnk_02002A40
_080543C4:
	adds r0, r2, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	cmp r0, #0
	bne _080543D0
	movs r1, #1
_080543D0:
	cmp r1, #2
	bne _0805440A
	ldr r3, _080543F0 @ =gUnk_080FD5B4
	lsls r0, r5, #3
	adds r0, r0, r3
	ldrb r4, [r0]
	adds r0, r2, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r4, r0
	bne _080543F4
	movs r1, #0
	b _08054406
	.align 2, 0
_080543F0: .4byte gUnk_080FD5B4
_080543F4:
	adds r0, r2, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r4, r0
	bne _08054406
	movs r1, #1
_08054406:
	cmp r1, #2
	beq _08054410
_0805440A:
	adds r0, r5, #0
	bl sub_08054414
_08054410:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08054414
sub_08054414: @ 0x08054414
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	subs r0, r4, #1
	cmp r0, #0x1e
	bhi _08054456
	cmp r1, #1
	bhi _08054456
	movs r2, #0
	cmp r1, #0
	bne _0805442A
	movs r2, #1
_0805442A:
	ldr r0, _08054458 @ =gUnk_02002A40
	adds r0, #0xb4
	adds r6, r1, r0
	ldrb r7, [r6]
	adds r5, r2, r0
	ldrb r3, [r5]
	ldr r2, _0805445C @ =gUnk_080FD5B4
	lsls r1, r3, #3
	adds r1, r1, r2
	lsls r0, r4, #3
	adds r0, r0, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0805444A
	adds r3, r7, #0
_0805444A:
	strb r4, [r6]
	strb r3, [r5]
	ldr r1, _08054460 @ =gUnk_0200AF00
	movs r0, #0x7f
	strb r0, [r1, #0x13]
	strb r0, [r1, #0x14]
_08054456:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08054458: .4byte gUnk_02002A40
_0805445C: .4byte gUnk_080FD5B4
_08054460: .4byte gUnk_0200AF00

	thumb_func_start sub_08054464
sub_08054464: @ 0x08054464
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _08054498 @ =gUnk_02002A40
	cmp r1, #3
	bls _0805448C
	movs r1, #0
	adds r2, r3, #0
	adds r2, #0xb6
	ldrb r0, [r2]
	cmp r0, #0x20
	beq _08054488
_0805447A:
	adds r1, #1
	cmp r1, #3
	bhi _08054494
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _0805447A
_08054488:
	cmp r1, #3
	bhi _08054494
_0805448C:
	adds r0, r3, #0
	adds r0, #0xb6
	adds r0, r1, r0
	strb r4, [r0]
_08054494:
	adds r0, r1, #0
	pop {r4, pc}
	.align 2, 0
_08054498: .4byte gUnk_02002A40

	thumb_func_start sub_0805449C
sub_0805449C: @ 0x0805449C
	push {lr}
	cmp r0, #1
	blo _080544AE
	cmp r0, #4
	bls _080544AA
	cmp r0, #6
	bne _080544AE
_080544AA:
	movs r0, #1
	b _080544B0
_080544AE:
	movs r0, #0
_080544B0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080544B4
sub_080544B4: @ 0x080544B4
	push {lr}
	cmp r0, #0xe
	bhi _080544C2
	cmp r0, #0xd
	blo _080544C2
	movs r0, #1
	b _080544C4
_080544C2:
	movs r0, #0
_080544C4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080544C8
sub_080544C8: @ 0x080544C8
	push {lr}
	cmp r0, #0x1f
	bhi _080544D6
	cmp r0, #0x1c
	blo _080544D6
	movs r0, #1
	b _080544D8
_080544D6:
	movs r0, #0
_080544D8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080544DC
sub_080544DC: @ 0x080544DC
	push {lr}
	adds r2, r0, #0
	ldr r1, _080544F0 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xb6
	ldrb r0, [r0]
	cmp r2, r0
	bne _080544F4
	movs r0, #1
	b _08054520
	.align 2, 0
_080544F0: .4byte gUnk_02002A40
_080544F4:
	adds r0, r1, #0
	adds r0, #0xb7
	ldrb r0, [r0]
	cmp r2, r0
	bne _08054502
	movs r0, #2
	b _08054520
_08054502:
	adds r0, r1, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r2, r0
	bne _08054510
	movs r0, #3
	b _08054520
_08054510:
	adds r0, r1, #0
	adds r0, #0xb9
	ldrb r0, [r0]
	cmp r2, r0
	beq _0805451E
	movs r0, #0
	b _08054520
_0805451E:
	movs r0, #4
_08054520:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08054524
sub_08054524: @ 0x08054524
	push {lr}
	ldr r0, _08054550 @ =gUnk_02033A90
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne _08054534
	ldr r0, _08054554 @ =gUnk_030010A0
	adds r0, #0x2e
	ldrb r1, [r0]
_08054534:
	cmp r1, #0x16
	bls _0805453A
	movs r1, #0
_0805453A:
	ldr r0, _08054558 @ =gUnk_080FE1C6
	adds r0, r1, r0
	ldrb r1, [r0]
	lsls r0, r1, #5
	ldr r1, _0805455C @ =gUnk_080015BC
	adds r0, r0, r1
	ldr r1, _08054560 @ =gUnk_02034398
	movs r2, #0x20
	bl sub_0801D66C
	pop {pc}
	.align 2, 0
_08054550: .4byte gUnk_02033A90
_08054554: .4byte gUnk_030010A0
_08054558: .4byte gUnk_080FE1C6
_0805455C: .4byte gUnk_080015BC
_08054560: .4byte gUnk_02034398

	thumb_func_start sub_08054564
sub_08054564: @ 0x08054564
	ldr r1, _0805456C @ =gUnk_02034350
	movs r0, #1
	strb r0, [r1, #2]
	bx lr
	.align 2, 0
_0805456C: .4byte gUnk_02034350

	thumb_func_start sub_08054570
sub_08054570: @ 0x08054570
	ldr r1, _08054578 @ =gUnk_02034350
	movs r0, #0
	strb r0, [r1, #2]
	bx lr
	.align 2, 0
_08054578: .4byte gUnk_02034350

	thumb_func_start sub_0805457C
sub_0805457C: @ 0x0805457C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r6, r0, #0
	adds r3, r1, #0
	ldr r0, _080545A4 @ =gUnk_02034350
	ldrb r1, [r0, #2]
	adds r5, r0, #0
	cmp r1, #1
	bne _08054590
	b _0805474C
_08054590:
	ldr r2, _080545A8 @ =gUnk_08001A1C
	movs r4, #0
	cmp r3, #0x19
	bhi _0805463C
	lsls r0, r3, #2
	ldr r1, _080545AC @ =_080545B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080545A4: .4byte gUnk_02034350
_080545A8: .4byte gUnk_08001A1C
_080545AC: .4byte _080545B0
_080545B0: @ jump table
	.4byte _0805463C @ case 0
	.4byte _08054618 @ case 1
	.4byte _08054618 @ case 2
	.4byte _08054618 @ case 3
	.4byte _08054618 @ case 4
	.4byte _08054618 @ case 5
	.4byte _08054618 @ case 6
	.4byte _08054618 @ case 7
	.4byte _08054618 @ case 8
	.4byte _08054618 @ case 9
	.4byte _08054618 @ case 10
	.4byte _08054618 @ case 11
	.4byte _08054618 @ case 12
	.4byte _0805463C @ case 13
	.4byte _0805463C @ case 14
	.4byte _0805463A @ case 15
	.4byte _08054634 @ case 16
	.4byte _08054634 @ case 17
	.4byte _08054634 @ case 18
	.4byte _08054634 @ case 19
	.4byte _08054634 @ case 20
	.4byte _08054634 @ case 21
	.4byte _08054634 @ case 22
	.4byte _08054634 @ case 23
	.4byte _08054624 @ case 24
	.4byte _08054624 @ case 25
_08054618:
	lsls r1, r3, #5
	ldr r0, _08054620 @ =gUnk_0800137C
	adds r4, r1, r0
	b _0805463C
	.align 2, 0
_08054620: .4byte gUnk_0800137C
_08054624:
	ldrb r0, [r5, #0xa]
	ldr r4, _08054630 @ =gUnk_0800191C
	cmp r0, #0
	beq _0805463C
	adds r4, #0x20
	b _0805463C
	.align 2, 0
_08054630: .4byte gUnk_0800191C
_08054634:
	lsls r1, r3, #5
	ldr r0, _08054650 @ =gUnk_0800161C
	adds r2, r1, r0
_0805463A:
	ldr r4, _08054654 @ =gUnk_02034398
_0805463C:
	cmp r4, #0
	bne _08054642
	b _0805474C
_08054642:
	ldr r0, _08054658 @ =gUnk_02002A40
	adds r0, #0xb3
	ldrb r1, [r0]
	cmp r1, #0
	bne _08054660
	ldr r3, _0805465C @ =gUnk_08001A1C
	b _08054666
	.align 2, 0
_08054650: .4byte gUnk_0800161C
_08054654: .4byte gUnk_02034398
_08054658: .4byte gUnk_02002A40
_0805465C: .4byte gUnk_08001A1C
_08054660:
	lsls r1, r1, #5
	ldr r0, _0805473C @ =gUnk_0800143C
	adds r3, r1, r0
_08054666:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08000F14
	ldr r4, _08054740 @ =gUnk_02002A40
	adds r0, r4, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #8
	bhi _08054684
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #8]
	adds r0, #5
	strh r0, [r1, #8]
_08054684:
	adds r0, r4, #0
	adds r0, #0xac
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054698
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0xc]
	adds r0, #3
	strh r0, [r1, #0xc]
_08054698:
	adds r0, r4, #0
	adds r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	bne _080546AC
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
_080546AC:
	adds r0, r4, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r0, #0xa
	bhi _080546C0
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #4]
	adds r0, #1
	strh r0, [r1, #4]
_080546C0:
	ldr r2, _08054744 @ =gUnk_08001A1C
	adds r0, r4, #0
	adds r0, #0xbb
	ldrb r0, [r0]
	adds r3, r2, #0
	cmp r0, #0
	beq _080546D0
	adds r2, #0x20
_080546D0:
	movs r1, #0x8b
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080546DE
	adds r3, #0x40
_080546DE:
	mov r0, sp
	mov r1, sp
	bl sub_08000F2C
	adds r4, r0, #0
	bl sub_08000E50
	adds r2, r0, #0
	asrs r5, r2, #0x18
	movs r0, #0xf
	ands r5, r0
	adds r0, r2, #0
	adds r1, r4, #0
	bl __modsi3
	adds r2, r0, #0
	movs r3, #0
	lsls r0, r5, #1
	add r0, sp
	movs r4, #0
	ldrsh r1, [r0, r4]
	cmp r1, r2
	bgt _08054726
	movs r4, #0xf
_0805470E:
	adds r3, #1
	adds r5, #1
	ands r5, r4
	cmp r3, #0xf
	bhi _08054726
	lsls r0, r5, #1
	add r0, sp
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r1, r1, r0
	cmp r1, r2
	ble _0805470E
_08054726:
	ldr r0, _08054748 @ =gUnk_080FE1B4
	adds r0, r5, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _0805474C
	adds r0, r6, #0
	movs r2, #0
	bl sub_08054754
	b _0805474E
	.align 2, 0
_0805473C: .4byte gUnk_0800143C
_08054740: .4byte gUnk_02002A40
_08054744: .4byte gUnk_08001A1C
_08054748: .4byte gUnk_080FE1B4
_0805474C:
	movs r0, #0
_0805474E:
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08054754
sub_08054754: @ 0x08054754
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r4, #0x5e
	beq _08054786
	cmp r4, #0x5e
	bhi _08054772
	cmp r4, #0x5c
	beq _080547A6
	cmp r4, #0x5c
	bhi _08054782
	cmp r4, #0x3f
	beq _08054794
	b _080547DA
_08054772:
	cmp r4, #0xfc
	blo _080547DA
	cmp r4, #0xfe
	bls _080547A6
	cmp r4, #0xff
	bne _080547DA
	movs r0, #1
	b _08054788
_08054782:
	movs r0, #0x65
	b _08054788
_08054786:
	movs r0, #9
_08054788:
	bl GetInventoryValue
	cmp r0, #0
	bne _080547DA
_08054790:
	movs r0, #0
	b _0805486C
_08054794:
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	beq _08054790
	cmp r5, #0
	bne _080547DA
	movs r5, #1
	b _080547DA
_080547A6:
	movs r0, #0x67
	bl GetInventoryValue
	cmp r0, #0
	beq _08054790
	ldr r0, _080547FC @ =gUnk_02034350
	ldrb r0, [r0, #5]
	cmp r0, #3
	bhi _08054790
	cmp r4, #0x5c
	beq _080547DA
	adds r5, r4, #0
	subs r5, #0xfc
	bl sub_08000E50
	movs r1, #0x3f
	ands r1, r0
	ldr r2, _08054800 @ =gUnk_080FE1DD
	lsls r0, r5, #6
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r5, [r1]
	movs r4, #0x5c
	cmp r5, #0
	bne _080547DA
	movs r4, #0
_080547DA:
	cmp r4, #0
	beq _0805486A
	cmp r4, #0xff
	beq _08054842
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805486A
	ldr r0, _08054804 @ =gLinkEntity
	cmp r6, r0
	bne _08054808
	movs r0, #1
	b _0805480A
	.align 2, 0
_080547FC: .4byte gUnk_02034350
_08054800: .4byte gUnk_080FE1DD
_08054804: .4byte gLinkEntity
_08054808:
	movs r0, #0
_0805480A:
	strb r0, [r2, #0xe]
	ldrb r0, [r6, #8]
	cmp r0, #6
	bne _08054838
	ldrb r0, [r6, #9]
	cmp r0, #0x63
	bne _0805481C
	str r2, [r6, #0x54]
	b _08054838
_0805481C:
	cmp r0, #0x1e
	bne _08054838
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #3
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r1, r3, #0
	orrs r0, r1
	strb r0, [r2, #0x15]
	movs r0, #0xc0
	strh r0, [r2, #0x24]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r2, #0x20]
_08054838:
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_0806FA24
	b _0805486A
_08054842:
	movs r0, #7
	movs r1, #0
	bl CreateEnemy
	adds r2, r0, #0
	cmp r2, #0
	beq _0805486A
	ldrh r0, [r6, #0x2e]
	strh r0, [r2, #0x2e]
	ldrh r0, [r6, #0x32]
	strh r0, [r2, #0x32]
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r2, #0
	bl sub_08016A04
_0805486A:
	adds r0, r4, #0
_0805486C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08054870
sub_08054870: @ 0x08054870
	push {lr}
	ldr r1, _08054884 @ =gUnk_080FE2A0
	ldr r0, _08054888 @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08054884: .4byte gUnk_080FE2A0
_08054888: .4byte gUnk_02000080

	thumb_func_start sub_0805488C
sub_0805488C: @ 0x0805488C
	push {r4, lr}
	ldr r4, _080548DC @ =gUnk_02032EC0
	ldrb r1, [r4, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080548E0 @ =gUnk_080FE320
	adds r0, r0, r1
	ldr r2, _080548E4 @ =gUnk_02000080
	ldrb r1, [r0]
	movs r3, #0
	strb r1, [r2]
	ldrb r1, [r0, #1]
	strb r1, [r2, #3]
	ldrb r1, [r4, #3]
	strb r1, [r2, #4]
	str r0, [r2, #0xc]
	ldrb r0, [r2, #5]
	adds r0, #1
	strb r0, [r2, #5]
	strb r3, [r2, #6]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2, #8]
	movs r0, #0
	bl sub_0801DA90
	ldrb r0, [r4, #3]
	movs r1, #1
	bl sub_08054974
	bl sub_0806F364
	movs r0, #0xff
	bl sub_0807CD8C
	bl sub_080548E8
	pop {r4, pc}
	.align 2, 0
_080548DC: .4byte gUnk_02032EC0
_080548E0: .4byte gUnk_080FE320
_080548E4: .4byte gUnk_02000080

	thumb_func_start sub_080548E8
sub_080548E8: @ 0x080548E8
	push {lr}
	ldr r1, _08054918 @ =gUnk_080FE2AC
	ldr r0, _0805491C @ =gUnk_02000080
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080AD90C
	bl sub_0805E5C0
	bl sub_080AD9B0
	bl sub_080AD918
	bl sub_0807FC40
	bl sub_0801B060
	bl sub_08000108
	pop {pc}
	.align 2, 0
_08054918: .4byte gUnk_080FE2AC
_0805491C: .4byte gUnk_02000080

	thumb_func_start sub_08054920
sub_08054920: @ 0x08054920
	push {lr}
	bl sub_08056418
	bl sub_0806F38C
	ldr r1, _08054948 @ =gUnk_080C9CBC
	ldr r0, _0805494C @ =gUnk_02022740
	ldrb r0, [r0, #3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08054954
	ldr r0, _08054950 @ =gUnk_02032EC0
	ldrb r1, [r0, #3]
	movs r0, #0xa
	bl sub_080A7138
	b _08054962
	.align 2, 0
_08054948: .4byte gUnk_080C9CBC
_0805494C: .4byte gUnk_02022740
_08054950: .4byte gUnk_02032EC0
_08054954:
	ldr r1, _08054964 @ =gUnk_02032EC0
	movs r0, #3
	strb r0, [r1]
	movs r0, #7
	movs r1, #0x10
	bl sub_08050054
_08054962:
	pop {pc}
	.align 2, 0
_08054964: .4byte gUnk_02032EC0

	thumb_func_start sub_08054968
sub_08054968: @ 0x08054968
	ldr r1, _08054970 @ =gUnk_02000080
	movs r0, #2
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_08054970: .4byte gUnk_02000080

	thumb_func_start sub_08054974
sub_08054974: @ 0x08054974
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080549B0 @ =gUnk_080FE320
	adds r6, r1, r0
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	bl sub_0804B0C0
	ldr r4, _080549B4 @ =gUnk_03000BF0
	ldrb r0, [r6, #2]
	strb r0, [r4, #4]
	ldrb r0, [r6, #3]
	strb r0, [r4, #5]
	bl sub_08053320
	ldrb r0, [r4, #4]
	bl sub_08052D58
	ldr r1, _080549B8 @ =gUnk_02033A90
	strh r0, [r1, #4]
	cmp r5, #0
	beq _080549BC
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	bl sub_08052FD8
	b _080549CE
	.align 2, 0
_080549B0: .4byte gUnk_080FE320
_080549B4: .4byte gUnk_03000BF0
_080549B8: .4byte gUnk_02033A90
_080549BC:
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	bl sub_08052FF4
	bl sub_0807C740
	ldr r1, _08054A00 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_080549CE:
	ldr r2, _08054A04 @ =gUnk_03000F50
	ldrh r1, [r2]
	ldr r0, _08054A08 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08054A0C @ =gUnk_03000BF0
	ldrh r0, [r6, #4]
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r6, #6]
	ldrh r2, [r1, #8]
	adds r0, r0, r2
	strh r0, [r1, #0xc]
	ldrb r0, [r6, #2]
	cmp r0, #2
	bne _080549F4
	bl sub_08059D18
_080549F4:
	ldr r0, _08054A10 @ =gUnk_02032EC0
	ldrb r0, [r0, #3]
	bl sub_08018710
	pop {r4, r5, r6, pc}
	.align 2, 0
_08054A00: .4byte gUnk_02000070
_08054A04: .4byte gUnk_03000F50
_08054A08: .4byte 0x00001FFF
_08054A0C: .4byte gUnk_03000BF0
_08054A10: .4byte gUnk_02032EC0

	thumb_func_start sub_08054A14
sub_08054A14: @ 0x08054A14
	push {lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08054A38 @ =gUnk_080FE320
	adds r2, r1, r0
	ldrb r0, [r2, #0x11]
	cmp r0, #0xd
	bhi _08054A34
	ldr r1, _08054A3C @ =gUnk_0811E454
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #0x12]
	bl sub_0807CC9C
_08054A34:
	pop {pc}
	.align 2, 0
_08054A38: .4byte gUnk_080FE320
_08054A3C: .4byte gUnk_0811E454

	thumb_func_start sub_08054A40
sub_08054A40: @ 0x08054A40
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08054A5C @ =gUnk_080FEEA8
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r4, #0x41
	movs r0, #0
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08054A5C: .4byte gUnk_080FEEA8

	thumb_func_start sub_08054A60
sub_08054A60: @ 0x08054A60
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0xa0
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x80
	strb r0, [r1]
	ldr r0, _08054AC4 @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0806FBD8
	cmp r0, #0
	bne _08054AAC
	bl sub_0805E780
_08054AAC:
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_08054AC8
	pop {r4, pc}
	.align 2, 0
_08054AC4: .4byte gLinkEntity

	thumb_func_start sub_08054AC8
sub_08054AC8: @ 0x08054AC8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _08054B14 @ =gLinkEntity
	ldrb r1, [r5, #0x14]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r4, #0x14]
	ldr r1, [r4, #0x48]
	ldr r2, _08054B18 @ =gUnk_080FEEB0
	ldrb r0, [r4, #0x14]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1, #1]
	ldr r0, [r4, #0x48]
	movs r1, #4
	strb r1, [r0, #6]
	ldr r0, [r4, #0x48]
	strb r1, [r0, #7]
	ldrb r7, [r5, #0x1e]
	adds r6, r7, #0
	cmp r6, #0x36
	bhi _08054B06
	ldrh r0, [r5, #0x12]
	cmp r0, #6
	beq _08054B1C
_08054B06:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _08054B68
	.align 2, 0
_08054B14: .4byte gLinkEntity
_08054B18: .4byte gUnk_080FEEB0
_08054B1C:
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r2, [r5, #0x18]
	movs r1, #0x40
	ands r1, r2
	ldrb r3, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	lsrs r2, r2, #7
	lsls r2, r2, #7
	movs r1, #0x7f
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0x1e]
	cmp r6, r0
	beq _08054B52
	strb r7, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_08054B52:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x5a
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
_08054B68:
	movs r0, #0x10
	bl sub_0805436C
	cmp r0, #1
	bhi _08054BFC
	ldrb r0, [r4, #0x1e]
	cmp r0, #0xff
	beq _08054BE8
	ldr r0, _08054BF4 @ =gLinkEntity
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	beq _08054BE8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08054BE8
	movs r0, #4
	strb r0, [r4, #0xe]
	movs r0, #0x45
	movs r1, #0
	movs r2, #0x10
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _08054BE8
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r3, r5, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _08054BF8 @ =gUnk_080FEEB0
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r5, #0
	adds r2, #0x62
	strb r0, [r2]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x63
	strb r1, [r0]
_08054BE8:
	ldr r1, _08054BF4 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_08078E84
	b _08054C00
	.align 2, 0
_08054BF4: .4byte gLinkEntity
_08054BF8: .4byte gUnk_080FEEB0
_08054BFC:
	bl sub_0805E780
_08054C00:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08054C04
sub_08054C04: @ 0x08054C04
	push {lr}
	ldr r1, _08054C18 @ =gUnk_080FEEB8
	ldr r0, _08054C1C @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08054C18: .4byte gUnk_080FEEB8
_08054C1C: .4byte gUnk_02000080

	thumb_func_start sub_08054C20
sub_08054C20: @ 0x08054C20
	push {r4, lr}
	ldr r4, _08054C50 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #4]
	movs r1, #0
	bl sub_0801876C
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08054C54 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08054C50: .4byte gUnk_02000080
_08054C54: .4byte gUnk_02000070

	thumb_func_start sub_08054C58
sub_08054C58: @ 0x08054C58
	push {lr}
	ldr r0, _08054C80 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054C7C
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _08054C7C
	movs r0, #7
	movs r1, #0x10
	bl sub_08050054
	ldr r1, _08054C84 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08054C7C:
	pop {pc}
	.align 2, 0
_08054C80: .4byte gUnk_03000FD0
_08054C84: .4byte gUnk_02000080

	thumb_func_start sub_08054C88
sub_08054C88: @ 0x08054C88
	push {r4, lr}
	ldr r0, _08054CB8 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054CB4
	ldr r4, _08054CBC @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	bl sub_08054974
	movs r0, #6
	movs r1, #0x10
	bl sub_08050054
	movs r0, #0x73
	bl sub_080A3268
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x78
	strh r0, [r4, #8]
_08054CB4:
	pop {r4, pc}
	.align 2, 0
_08054CB8: .4byte gUnk_03000FD0
_08054CBC: .4byte gUnk_02000080

	thumb_func_start sub_08054CC0
sub_08054CC0: @ 0x08054CC0
	push {lr}
	ldr r0, _08054CE0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054CDE
	ldr r1, _08054CE4 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08054CDE
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08054CDE:
	pop {pc}
	.align 2, 0
_08054CE0: .4byte gUnk_03000FD0
_08054CE4: .4byte gUnk_02000080

	thumb_func_start sub_08054CE8
sub_08054CE8: @ 0x08054CE8
	push {lr}
	ldr r1, _08054CFC @ =gUnk_080FEEC8
	ldr r0, _08054D00 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08054CFC: .4byte gUnk_080FEEC8
_08054D00: .4byte gUnk_02000080

	thumb_func_start sub_08054D04
sub_08054D04: @ 0x08054D04
	push {r4, lr}
	ldr r4, _08054D34 @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08054D38 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08054D34: .4byte gUnk_02000080
_08054D38: .4byte gUnk_02000070

	thumb_func_start sub_08054D3C
sub_08054D3C: @ 0x08054D3C
	push {r4, lr}
	ldr r0, _08054D6C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054D6A
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _08054D6A
	ldr r4, _08054D70 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #1
	bl sub_0801876C
	ldrb r0, [r4, #4]
	bl sub_080553E0
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x78
	strh r0, [r4, #8]
_08054D6A:
	pop {r4, pc}
	.align 2, 0
_08054D6C: .4byte gUnk_03000FD0
_08054D70: .4byte gUnk_02000080

	thumb_func_start sub_08054D74
sub_08054D74: @ 0x08054D74
	push {lr}
	ldr r1, _08054D8C @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08054D8A
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08054D8A:
	pop {pc}
	.align 2, 0
_08054D8C: .4byte gUnk_02000080

	thumb_func_start sub_08054D90
sub_08054D90: @ 0x08054D90
	push {lr}
	ldr r1, _08054DA4 @ =gUnk_080FEF34
	ldr r0, _08054DA8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08054DA4: .4byte gUnk_080FEF34
_08054DA8: .4byte gUnk_02000080

	thumb_func_start sub_08054DAC
sub_08054DAC: @ 0x08054DAC
	push {r4, lr}
	ldr r4, _08054DF0 @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _08054DF4 @ =gUnk_080FEED4
	bl LoadRoomEntityList
	movs r0, #2
	bl sub_0805B4D0
	movs r0, #0
	bl sub_0806D0B0
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08054DF8 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08054DF0: .4byte gUnk_02000080
_08054DF4: .4byte gUnk_080FEED4
_08054DF8: .4byte gUnk_02000070

	thumb_func_start nullsub_484
nullsub_484: @ 0x08054DFC
	bx lr
	.align 2, 0

	thumb_func_start sub_08054E00
sub_08054E00: @ 0x08054E00
	push {lr}
	ldr r1, _08054E14 @ =gUnk_080FEF3C
	ldr r0, _08054E18 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08054E14: .4byte gUnk_080FEF3C
_08054E18: .4byte gUnk_02000080

	thumb_func_start sub_08054E1C
sub_08054E1C: @ 0x08054E1C
	push {r4, r5, lr}
	ldr r5, _08054E54 @ =gUnk_02000080
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	bl sub_0804B0B0
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	bl sub_0804B0E8
	ldrb r0, [r5, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	ldr r1, _08054E58 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, r5, pc}
	.align 2, 0
_08054E54: .4byte gUnk_02000080
_08054E58: .4byte gUnk_02000070

	thumb_func_start sub_08054E5C
sub_08054E5C: @ 0x08054E5C
	push {r4, lr}
	ldr r0, _08054E94 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054E92
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _08054E92
	ldr r4, _08054E98 @ =gUnk_02000080
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0xb4
	strh r0, [r4, #8]
	movs r0, #6
	movs r1, #0x10
	bl sub_08050054
	ldrb r0, [r4, #4]
	bl sub_080553E0
	ldrb r0, [r4, #4]
	movs r1, #1
	bl sub_0801876C
_08054E92:
	pop {r4, pc}
	.align 2, 0
_08054E94: .4byte gUnk_03000FD0
_08054E98: .4byte gUnk_02000080

	thumb_func_start sub_08054E9C
sub_08054E9C: @ 0x08054E9C
	push {lr}
	ldr r1, _08054EB4 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08054EB2
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08054EB2:
	pop {pc}
	.align 2, 0
_08054EB4: .4byte gUnk_02000080

	thumb_func_start sub_08054EB8
sub_08054EB8: @ 0x08054EB8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0805E8D4
	adds r3, r0, #0
	cmp r3, #0
	beq _08054EF6
	movs r0, #9
	strb r0, [r3, #8]
	movs r0, #0x24
	strb r0, [r3, #9]
	ldr r2, _08054EF8 @ =gUnk_03000BF0
	ldrh r0, [r4, #0x2e]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	strh r0, [r3, #0x38]
	ldrh r0, [r4, #0x32]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	subs r0, #0x10
	strh r0, [r3, #0x3a]
	adds r1, r3, #0
	adds r1, #0x35
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x79
	strh r0, [r3, #0x3e]
	adds r0, r3, #0
	movs r1, #6
	bl sub_0805EA2C
_08054EF6:
	pop {r4, pc}
	.align 2, 0
_08054EF8: .4byte gUnk_03000BF0

	thumb_func_start sub_08054EFC
sub_08054EFC: @ 0x08054EFC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08054F5C @ =gUnk_03000BF0
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	subs r1, #0x40
	ldr r0, _08054F60 @ =0x00004074
	movs r2, #1
	bl sub_0800015E
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08016A04
	adds r0, r4, #0
	movs r1, #0x35
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08054F54
	ldrh r0, [r1, #0x32]
	subs r0, #0x10
	strh r0, [r1, #0x32]
	adds r0, r4, #0
	bl sub_0806FAD8
_08054F54:
	movs r0, #0xfd
	bl sub_080A3268
	pop {r4, r5, pc}
	.align 2, 0
_08054F5C: .4byte gUnk_03000BF0
_08054F60: .4byte 0x00004074

	thumb_func_start sub_08054F64
sub_08054F64: @ 0x08054F64
	push {lr}
	ldrb r0, [r0, #0xb]
	ldr r3, _08054F7C @ =gUnk_02033280
	ldr r2, [r3]
	adds r1, r2, #0
	ands r1, r0
	cmp r1, r0
	beq _08054F80
	movs r0, #0
	strb r0, [r3, #6]
	b _08054F8C
	.align 2, 0
_08054F7C: .4byte gUnk_02033280
_08054F80:
	bics r2, r1
	str r2, [r3]
	ldrb r1, [r3, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3, #7]
_08054F8C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08054F90
sub_08054F90: @ 0x08054F90
	push {lr}
	ldr r1, _08054FA4 @ =gUnk_080FF120
	ldr r0, _08054FA8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08054FA4: .4byte gUnk_080FF120
_08054FA8: .4byte gUnk_02000080

	thumb_func_start sub_08054FAC
sub_08054FAC: @ 0x08054FAC
	push {r4, r5, r6, lr}
	ldr r6, _08055008 @ =gUnk_02000080
	ldr r5, [r6, #0xc]
	ldr r1, _0805500C @ =gUnk_080FF108
	ldrb r0, [r5, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl LoadRoomEntityList
	ldrb r0, [r5, #1]
	movs r1, #0
	cmp r0, #0
	beq _08054FCA
	movs r1, #3
_08054FCA:
	ldrb r0, [r6, #4]
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r6, #6]
	adds r0, #1
	movs r4, #0
	strb r0, [r6, #6]
	ldr r1, _08055010 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	strh r4, [r6, #0xa]
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0x77
	bl GetProgressFlagWithOffset
	cmp r0, #0
	beq _08055004
	ldrb r0, [r5, #2]
	cmp r0, #0x2f
	bne _08055004
	movs r0, #1
	strh r0, [r6, #0xa]
_08055004:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08055008: .4byte gUnk_02000080
_0805500C: .4byte gUnk_080FF108
_08055010: .4byte gUnk_02000070

	thumb_func_start sub_08055014
sub_08055014: @ 0x08055014
	push {lr}
	ldr r1, _08055030 @ =gUnk_02000080
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _0805502C
	movs r0, #0
	strh r0, [r1, #0xa]
	ldr r1, _08055034 @ =0x00000407
	movs r0, #0x74
	movs r2, #1
	bl sub_0807B314
_0805502C:
	pop {pc}
	.align 2, 0
_08055030: .4byte gUnk_02000080
_08055034: .4byte 0x00000407

	thumb_func_start sub_08055038
sub_08055038: @ 0x08055038
	push {lr}
	ldr r1, _0805504C @ =gUnk_080FF148
	ldr r0, _08055050 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0805504C: .4byte gUnk_080FF148
_08055050: .4byte gUnk_02000080

	thumb_func_start sub_08055054
sub_08055054: @ 0x08055054
	push {r4, lr}
	ldr r0, _08055080 @ =gUnk_080FF128
	bl LoadRoomEntityList
	ldr r4, _08055084 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055088 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08055080: .4byte gUnk_080FF128
_08055084: .4byte gUnk_02000080
_08055088: .4byte gUnk_02000070

	thumb_func_start sub_0805508C
sub_0805508C: @ 0x0805508C
	bx lr
	.align 2, 0

	thumb_func_start sub_08055090
sub_08055090: @ 0x08055090
	bx lr
	.align 2, 0

	thumb_func_start sub_08055094
sub_08055094: @ 0x08055094
	push {lr}
	ldr r1, _080550A8 @ =gUnk_080FF174
	ldr r0, _080550AC @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080550A8: .4byte gUnk_080FF174
_080550AC: .4byte gUnk_02000080

	thumb_func_start sub_080550B0
sub_080550B0: @ 0x080550B0
	push {r4, lr}
	ldr r4, _080550E8 @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _080550EC @ =gUnk_080FF154
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _080550F0 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_080550E8: .4byte gUnk_02000080
_080550EC: .4byte gUnk_080FF154
_080550F0: .4byte gUnk_02000070

	thumb_func_start nullsub_487
nullsub_487: @ 0x080550F4
	bx lr
	.align 2, 0

	thumb_func_start sub_080550F8
sub_080550F8: @ 0x080550F8
	push {lr}
	ldr r1, _0805510C @ =gUnk_080FF1CC
	ldr r0, _08055110 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0805510C: .4byte gUnk_080FF1CC
_08055110: .4byte gUnk_02000080

	thumb_func_start sub_08055114
sub_08055114: @ 0x08055114
	push {r4, lr}
	ldr r0, _08055150 @ =gUnk_080FF17C
	bl LoadRoomEntityList
	ldr r0, _08055154 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #9
	beq _0805512A
	ldr r0, _08055158 @ =0x00000DB4
	bl sub_08018C58
_0805512A:
	ldr r4, _0805515C @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055160 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08055150: .4byte gUnk_080FF17C
_08055154: .4byte gUnk_02002A40
_08055158: .4byte 0x00000DB4
_0805515C: .4byte gUnk_02000080
_08055160: .4byte gUnk_02000070

	thumb_func_start nullsub_488
nullsub_488: @ 0x08055164
	bx lr
	.align 2, 0

	thumb_func_start sub_08055168
sub_08055168: @ 0x08055168
	push {lr}
	ldr r1, _0805517C @ =gUnk_080FF1F4
	ldr r0, _08055180 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0805517C: .4byte gUnk_080FF1F4
_08055180: .4byte gUnk_02000080

	thumb_func_start sub_08055184
sub_08055184: @ 0x08055184
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r5, _0805520C @ =gUnk_02000080
	ldr r0, [r5, #0xc]
	ldrb r1, [r0, #1]
	movs r0, #0xf
	ands r0, r1
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #1
	ldr r0, _08055210 @ =gUnk_080FF1D4
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_0801D7EC
	ldr r2, _08055214 @ =gUnk_03000F50
	ldrh r0, [r4, #2]
	movs r6, #0
	movs r3, #0
	mov r8, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #4]
	strh r0, [r2, #0x30]
	ldr r0, _08055218 @ =0x00001E05
	strh r0, [r2, #0x2c]
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _0805521C @ =0x00003648
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x10
	strh r0, [r1]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r5, #4]
	movs r1, #1
	bl sub_0801876C
	ldrb r0, [r5, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	strb r6, [r5, #7]
	movs r0, #0x3c
	strh r0, [r5, #8]
	mov r0, r8
	strh r0, [r5, #0xa]
	ldr r1, _08055220 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805520C: .4byte gUnk_02000080
_08055210: .4byte gUnk_080FF1D4
_08055214: .4byte gUnk_03000F50
_08055218: .4byte 0x00001E05
_0805521C: .4byte 0x00003648
_08055220: .4byte gUnk_02000070

	thumb_func_start sub_08055224
sub_08055224: @ 0x08055224
	push {lr}
	ldr r0, _08055244 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055240
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _08055240
	ldr r1, _08055248 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08055240:
	pop {pc}
	.align 2, 0
_08055244: .4byte gUnk_03000FD0
_08055248: .4byte gUnk_02000080

	thumb_func_start sub_0805524C
sub_0805524C: @ 0x0805524C
	push {r4, lr}
	ldr r3, _08055270 @ =gUnk_02000080
	ldrb r0, [r3, #7]
	cmp r0, #0
	bne _08055274
	ldrh r0, [r3, #8]
	subs r0, #1
	strh r0, [r3, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080552D6
	ldrb r0, [r3, #7]
	adds r0, #1
	strb r0, [r3, #7]
	movs r0, #0xf6
	bl sub_080A3268
	b _080552D6
	.align 2, 0
_08055270: .4byte gUnk_02000080
_08055274:
	ldr r0, _080552A4 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080552D6
	ldr r4, _080552A8 @ =gUnk_080FF204
	ldrh r2, [r3, #0xa]
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r0, _080552AC @ =0x0000FFFF
	cmp r1, r0
	beq _080552B4
	ldr r1, _080552B0 @ =gUnk_03000F50
	adds r0, r2, #1
	strh r0, [r3, #0xa]
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r1, #0x68
	strh r0, [r1]
	b _080552D6
	.align 2, 0
_080552A4: .4byte gUnk_030010A0
_080552A8: .4byte gUnk_080FF204
_080552AC: .4byte 0x0000FFFF
_080552B0: .4byte gUnk_03000F50
_080552B4:
	ldr r1, _080552D8 @ =gUnk_03000F50
	ldrh r2, [r1]
	ldr r0, _080552DC @ =0x0000F7FF
	ands r0, r2
	strh r0, [r1]
	adds r1, #0x68
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #0x78
	strh r0, [r3, #8]
	ldrb r0, [r3, #6]
	adds r0, #1
	strb r0, [r3, #6]
	movs r0, #0x73
	bl sub_080A3268
_080552D6:
	pop {r4, pc}
	.align 2, 0
_080552D8: .4byte gUnk_03000F50
_080552DC: .4byte 0x0000F7FF

	thumb_func_start sub_080552E0
sub_080552E0: @ 0x080552E0
	push {lr}
	ldr r1, _080552F8 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080552F6
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_080552F6:
	pop {pc}
	.align 2, 0
_080552F8: .4byte gUnk_02000080

	thumb_func_start sub_080552FC
sub_080552FC: @ 0x080552FC
	push {lr}
	ldr r1, _08055310 @ =gUnk_080FF228
	ldr r0, _08055314 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055310: .4byte gUnk_080FF228
_08055314: .4byte gUnk_02000080

	thumb_func_start sub_08055318
sub_08055318: @ 0x08055318
	push {r4, lr}
	ldr r4, _08055348 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #4]
	movs r1, #0
	bl sub_0801876C
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _0805534C @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08055348: .4byte gUnk_02000080
_0805534C: .4byte gUnk_02000070

	thumb_func_start sub_08055350
sub_08055350: @ 0x08055350
	push {lr}
	ldr r0, _08055378 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055374
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _08055374
	movs r0, #7
	movs r1, #0x10
	bl sub_08050054
	ldr r1, _0805537C @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08055374:
	pop {pc}
	.align 2, 0
_08055378: .4byte gUnk_03000FD0
_0805537C: .4byte gUnk_02000080

	thumb_func_start sub_08055380
sub_08055380: @ 0x08055380
	push {r4, lr}
	ldr r0, _080553B0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080553AC
	ldr r4, _080553B4 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	bl sub_08054974
	movs r0, #6
	movs r1, #0x10
	bl sub_08050054
	movs r0, #0x73
	bl sub_080A3268
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x78
	strh r0, [r4, #8]
_080553AC:
	pop {r4, pc}
	.align 2, 0
_080553B0: .4byte gUnk_03000FD0
_080553B4: .4byte gUnk_02000080

	thumb_func_start sub_080553B8
sub_080553B8: @ 0x080553B8
	push {lr}
	ldr r0, _080553D8 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080553D6
	ldr r1, _080553DC @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080553D6
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_080553D6:
	pop {pc}
	.align 2, 0
_080553D8: .4byte gUnk_03000FD0
_080553DC: .4byte gUnk_02000080

	thumb_func_start sub_080553E0
sub_080553E0: @ 0x080553E0
	push {r4, lr}
	ldr r0, _0805540C @ =gUnk_02000080
	ldr r4, [r0, #0xc]
	movs r0, #0xf
	movs r1, #0x43
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08055408
	ldr r0, _08055410 @ =gUnk_03000BF0
	ldrh r1, [r0, #6]
	ldrh r3, [r4, #8]
	adds r1, r1, r3
	strh r1, [r2, #0x2e]
	ldrh r0, [r0, #8]
	ldrh r4, [r4, #0xa]
	adds r0, r0, r4
	strh r0, [r2, #0x32]
_08055408:
	pop {r4, pc}
	.align 2, 0
_0805540C: .4byte gUnk_02000080
_08055410: .4byte gUnk_03000BF0

	thumb_func_start sub_08055414
sub_08055414: @ 0x08055414
	push {lr}
	ldr r1, _08055428 @ =gUnk_080FF238
	ldr r0, _0805542C @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055428: .4byte gUnk_080FF238
_0805542C: .4byte gUnk_02000080

	thumb_func_start sub_08055430
sub_08055430: @ 0x08055430
	push {r4, lr}
	ldr r4, _08055460 @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0E8
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055464 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08055460: .4byte gUnk_02000080
_08055464: .4byte gUnk_02000070

	thumb_func_start sub_08055468
sub_08055468: @ 0x08055468
	push {lr}
	ldr r0, _08055490 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805548C
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _0805548C
	movs r0, #7
	movs r1, #0x10
	bl sub_08050054
	ldr r1, _08055494 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_0805548C:
	pop {pc}
	.align 2, 0
_08055490: .4byte gUnk_03000FD0
_08055494: .4byte gUnk_02000080

	thumb_func_start sub_08055498
sub_08055498: @ 0x08055498
	push {r4, lr}
	ldr r0, _080554CC @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080554CA
	ldr r4, _080554D0 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #1
	bl sub_0801876C
	ldrb r0, [r4, #4]
	bl sub_080553E0
	movs r0, #6
	movs r1, #0x10
	bl sub_08050054
	movs r0, #0x73
	bl sub_080A3268
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x78
	strh r0, [r4, #8]
_080554CA:
	pop {r4, pc}
	.align 2, 0
_080554CC: .4byte gUnk_03000FD0
_080554D0: .4byte gUnk_02000080

	thumb_func_start sub_080554D4
sub_080554D4: @ 0x080554D4
	push {lr}
	ldr r0, _080554F4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080554F2
	ldr r1, _080554F8 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080554F2
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_080554F2:
	pop {pc}
	.align 2, 0
_080554F4: .4byte gUnk_03000FD0
_080554F8: .4byte gUnk_02000080

	thumb_func_start sub_080554FC
sub_080554FC: @ 0x080554FC
	push {lr}
	ldr r1, _08055510 @ =gUnk_080FF248
	ldr r0, _08055514 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055510: .4byte gUnk_080FF248
_08055514: .4byte gUnk_02000080

	thumb_func_start sub_08055518
sub_08055518: @ 0x08055518
	push {r4, lr}
	ldr r4, _08055540 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055544 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08055540: .4byte gUnk_02000080
_08055544: .4byte gUnk_02000070

	thumb_func_start sub_08055548
sub_08055548: @ 0x08055548
	push {r4, lr}
	ldr r0, _08055578 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055576
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _08055576
	ldr r4, _0805557C @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #1
	bl sub_0801876C
	ldrb r0, [r4, #4]
	bl sub_080553E0
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0xb4
	strh r0, [r4, #8]
_08055576:
	pop {r4, pc}
	.align 2, 0
_08055578: .4byte gUnk_03000FD0
_0805557C: .4byte gUnk_02000080

	thumb_func_start sub_08055580
sub_08055580: @ 0x08055580
	push {lr}
	ldr r1, _08055598 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08055596
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08055596:
	pop {pc}
	.align 2, 0
_08055598: .4byte gUnk_02000080

	thumb_func_start sub_0805559C
sub_0805559C: @ 0x0805559C
	push {lr}
	ldr r1, _080555B0 @ =gUnk_080FF254
	ldr r0, _080555B4 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080555B0: .4byte gUnk_080FF254
_080555B4: .4byte gUnk_02000080

	thumb_func_start sub_080555B8
sub_080555B8: @ 0x080555B8
	push {r4, r5, lr}
	ldr r5, _08055600 @ =gUnk_02000080
	ldr r4, [r5, #0xc]
	ldr r1, _08055604 @ =gUnk_0811E454
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #0x12]
	bl sub_0807CC9C
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	bl sub_0804B0E8
	movs r0, #0x11
	bl sub_0801D7EC
	ldrb r0, [r5, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	ldr r1, _08055608 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, r5, pc}
	.align 2, 0
_08055600: .4byte gUnk_02000080
_08055604: .4byte gUnk_0811E454
_08055608: .4byte gUnk_02000070

	thumb_func_start sub_0805560C
sub_0805560C: @ 0x0805560C
	push {lr}
	ldr r0, _0805562C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055628
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _08055628
	ldr r1, _08055630 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08055628:
	pop {pc}
	.align 2, 0
_0805562C: .4byte gUnk_03000FD0
_08055630: .4byte gUnk_02000080

	thumb_func_start sub_08055634
sub_08055634: @ 0x08055634
	push {r4, r5, lr}
	ldr r4, _0805566C @ =gUnk_02000080
	ldr r5, [r4, #0xc]
	movs r0, #0x2c
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805565C
	ldr r0, _08055670 @ =gUnk_03000BF0
	ldrh r1, [r5, #8]
	ldrh r3, [r0, #6]
	adds r1, r1, r3
	strh r1, [r2, #0x2e]
	ldrh r1, [r5, #0xa]
	ldrh r0, [r0, #8]
	adds r1, r1, r0
	strh r1, [r2, #0x32]
_0805565C:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0xc3
	lsls r0, r0, #1
	strh r0, [r4, #8]
	pop {r4, r5, pc}
	.align 2, 0
_0805566C: .4byte gUnk_02000080
_08055670: .4byte gUnk_03000BF0

	thumb_func_start sub_08055674
sub_08055674: @ 0x08055674
	push {lr}
	ldr r1, _0805568C @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805568A
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_0805568A:
	pop {pc}
	.align 2, 0
_0805568C: .4byte gUnk_02000080

	thumb_func_start sub_08055690
sub_08055690: @ 0x08055690
	push {lr}
	ldr r1, _080556A4 @ =gUnk_080FF284
	ldr r0, _080556A8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080556A4: .4byte gUnk_080FF284
_080556A8: .4byte gUnk_02000080

	thumb_func_start sub_080556AC
sub_080556AC: @ 0x080556AC
	push {r4, lr}
	ldr r4, _080556E4 @ =gUnk_02000080
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _080556E8 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _080556EC @ =gUnk_080FF264
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_080556E4: .4byte gUnk_02000080
_080556E8: .4byte gUnk_02000070
_080556EC: .4byte gUnk_080FF264

	thumb_func_start nullsub_489
nullsub_489: @ 0x080556F0
	bx lr
	.align 2, 0

	thumb_func_start sub_080556F4
sub_080556F4: @ 0x080556F4
	push {lr}
	ldr r1, _08055708 @ =gUnk_080FF28C
	ldr r0, _0805570C @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055708: .4byte gUnk_080FF28C
_0805570C: .4byte gUnk_02000080

	thumb_func_start sub_08055710
sub_08055710: @ 0x08055710
	push {r4, lr}
	ldr r4, _0805575C @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _08055760 @ =gUnk_080FEE48
	bl CreateEntity
	adds r1, r0, #0
	cmp r1, #0
	beq _08055734
	movs r0, #2
	strb r0, [r1, #0xb]
	adds r1, #0x86
	ldr r0, _08055764 @ =0x000080FF
	strh r0, [r1]
_08055734:
	ldrb r0, [r4, #4]
	bl sub_08054A14
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055768 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_0805575C: .4byte gUnk_02000080
_08055760: .4byte gUnk_080FEE48
_08055764: .4byte 0x000080FF
_08055768: .4byte gUnk_02000070

	thumb_func_start sub_0805576C
sub_0805576C: @ 0x0805576C
	push {lr}
	ldr r0, _08055790 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805578C
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _0805578C
	ldr r0, _08055794 @ =gUnk_02000080
	ldrb r1, [r0, #6]
	adds r1, #1
	strb r1, [r0, #6]
	movs r1, #0x78
	strh r1, [r0, #8]
_0805578C:
	pop {pc}
	.align 2, 0
_08055790: .4byte gUnk_03000FD0
_08055794: .4byte gUnk_02000080

	thumb_func_start sub_08055798
sub_08055798: @ 0x08055798
	push {lr}
	ldr r1, _080557B0 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080557AE
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_080557AE:
	pop {pc}
	.align 2, 0
_080557B0: .4byte gUnk_02000080

	thumb_func_start sub_080557B4
sub_080557B4: @ 0x080557B4
	push {lr}
	ldr r1, _080557C8 @ =gUnk_080FF2B8
	ldr r0, _080557CC @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080557C8: .4byte gUnk_080FF2B8
_080557CC: .4byte gUnk_02000080

	thumb_func_start sub_080557D0
sub_080557D0: @ 0x080557D0
	push {r4, lr}
	ldr r4, _08055808 @ =gUnk_02000080
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _0805580C @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _08055810 @ =gUnk_080FF298
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08055808: .4byte gUnk_02000080
_0805580C: .4byte gUnk_02000070
_08055810: .4byte gUnk_080FF298

	thumb_func_start nullsub_490
nullsub_490: @ 0x08055814
	bx lr
	.align 2, 0

	thumb_func_start sub_08055818
sub_08055818: @ 0x08055818
	push {lr}
	ldr r1, _0805582C @ =gUnk_080FF300
	ldr r0, _08055830 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0805582C: .4byte gUnk_080FF300
_08055830: .4byte gUnk_02000080

	thumb_func_start sub_08055834
sub_08055834: @ 0x08055834
	push {r4, lr}
	ldr r0, _08055870 @ =gUnk_080FF2C0
	bl LoadRoomEntityList
	ldr r0, _08055874 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #9
	beq _0805584A
	ldr r0, _08055878 @ =0x00000DB4
	bl sub_08018C58
_0805584A:
	ldr r4, _0805587C @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055880 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08055870: .4byte gUnk_080FF2C0
_08055874: .4byte gUnk_02002A40
_08055878: .4byte 0x00000DB4
_0805587C: .4byte gUnk_02000080
_08055880: .4byte gUnk_02000070

	thumb_func_start nullsub_491
nullsub_491: @ 0x08055884
	bx lr
	.align 2, 0

	thumb_func_start sub_08055888
sub_08055888: @ 0x08055888
	push {lr}
	ldr r1, _0805589C @ =gUnk_080FF328
	ldr r0, _080558A0 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_0805589C: .4byte gUnk_080FF328
_080558A0: .4byte gUnk_02000080

	thumb_func_start sub_080558A4
sub_080558A4: @ 0x080558A4
	push {r4, lr}
	ldr r4, _080558DC @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _080558E0 @ =gUnk_080FF308
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _080558E4 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_080558DC: .4byte gUnk_02000080
_080558E0: .4byte gUnk_080FF308
_080558E4: .4byte gUnk_02000070

	thumb_func_start nullsub_492
nullsub_492: @ 0x080558E8
	bx lr
	.align 2, 0

	thumb_func_start sub_080558EC
sub_080558EC: @ 0x080558EC
	push {lr}
	ldr r1, _08055900 @ =gUnk_080FF330
	ldr r0, _08055904 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055900: .4byte gUnk_080FF330
_08055904: .4byte gUnk_02000080

	thumb_func_start sub_08055908
sub_08055908: @ 0x08055908
	push {r4, r5, lr}
	ldr r5, _08055940 @ =gUnk_02000080
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	bl sub_0804B0B0
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	bl sub_0804B0E8
	ldrb r0, [r5, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	ldr r1, _08055944 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, r5, pc}
	.align 2, 0
_08055940: .4byte gUnk_02000080
_08055944: .4byte gUnk_02000070

	thumb_func_start sub_08055948
sub_08055948: @ 0x08055948
	push {lr}
	ldr r0, _08055970 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805596C
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _0805596C
	bl sub_08055994
	ldr r0, _08055974 @ =gUnk_02000080
	ldrb r1, [r0, #6]
	adds r1, #1
	strb r1, [r0, #6]
	movs r1, #0x78
	strh r1, [r0, #8]
_0805596C:
	pop {pc}
	.align 2, 0
_08055970: .4byte gUnk_03000FD0
_08055974: .4byte gUnk_02000080

	thumb_func_start sub_08055978
sub_08055978: @ 0x08055978
	push {lr}
	ldr r1, _08055990 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805598E
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_0805598E:
	pop {pc}
	.align 2, 0
_08055990: .4byte gUnk_02000080

	thumb_func_start sub_08055994
sub_08055994: @ 0x08055994
	push {r4, lr}
	ldr r4, _080559D8 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	lsls r0, r0, #3
	ldr r1, _080559DC @ =gUnk_080FEAC8
	adds r0, r0, r1
	ldrb r1, [r0, #6]
	movs r0, #1
	ands r0, r1
	movs r3, #1
	cmp r0, #0
	beq _080559AE
	movs r3, #2
_080559AE:
	ldr r0, [r4, #0xc]
	ldrh r1, [r0, #8]
	lsrs r1, r1, #4
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r0, #0xa]
	lsrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0x73
	adds r2, r3, #0
	bl sub_0807B314
	ldrb r0, [r4, #4]
	bl sub_080553E0
	movs r0, #0x73
	bl sub_080A3268
	pop {r4, pc}
	.align 2, 0
_080559D8: .4byte gUnk_02000080
_080559DC: .4byte gUnk_080FEAC8

	thumb_func_start sub_080559E0
sub_080559E0: @ 0x080559E0
	push {lr}
	ldr r1, _080559F4 @ =gUnk_080FF35C
	ldr r0, _080559F8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080559F4: .4byte gUnk_080FF35C
_080559F8: .4byte gUnk_02000080

	thumb_func_start sub_080559FC
sub_080559FC: @ 0x080559FC
	push {r4, lr}
	ldr r4, _08055A30 @ =gUnk_02000080
	ldr r0, [r4, #0xc]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _08055A0E
	ldr r0, _08055A34 @ =gUnk_080FF33C
	bl LoadRoomEntityList
_08055A0E:
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055A38 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08055A30: .4byte gUnk_02000080
_08055A34: .4byte gUnk_080FF33C
_08055A38: .4byte gUnk_02000070

	thumb_func_start sub_08055A3C
sub_08055A3C: @ 0x08055A3C
	push {lr}
	ldr r0, _08055A64 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055A60
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _08055A60
	movs r0, #7
	movs r1, #0x10
	bl sub_08050054
	ldr r1, _08055A68 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08055A60:
	pop {pc}
	.align 2, 0
_08055A64: .4byte gUnk_03000FD0
_08055A68: .4byte gUnk_02000080

	thumb_func_start sub_08055A6C
sub_08055A6C: @ 0x08055A6C
	push {r4, lr}
	ldr r0, _08055AA0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055A9E
	ldr r4, _08055AA4 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #1
	bl sub_0801876C
	ldrb r0, [r4, #4]
	bl sub_080553E0
	movs r0, #6
	movs r1, #0x10
	bl sub_08050054
	movs r0, #0x73
	bl sub_080A3268
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x78
	strh r0, [r4, #8]
_08055A9E:
	pop {r4, pc}
	.align 2, 0
_08055AA0: .4byte gUnk_03000FD0
_08055AA4: .4byte gUnk_02000080

	thumb_func_start sub_08055AA8
sub_08055AA8: @ 0x08055AA8
	push {lr}
	ldr r0, _08055AC8 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055AC6
	ldr r1, _08055ACC @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08055AC6
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08055AC6:
	pop {pc}
	.align 2, 0
_08055AC8: .4byte gUnk_03000FD0
_08055ACC: .4byte gUnk_02000080

	thumb_func_start sub_08055AD0
sub_08055AD0: @ 0x08055AD0
	push {lr}
	ldr r1, _08055AE4 @ =gUnk_080FF36C
	ldr r0, _08055AE8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055AE4: .4byte gUnk_080FF36C
_08055AE8: .4byte gUnk_02000080

	thumb_func_start sub_08055AEC
sub_08055AEC: @ 0x08055AEC
	push {r4, lr}
	ldr r4, _08055B2C @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldr r0, [r4, #0xc]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	ldr r1, _08055B30 @ =gUnk_080FED18
	adds r0, r0, r1
	bl CreateEntity
	adds r1, r0, #0
	cmp r1, #0
	beq _08055B14
	movs r0, #1
	strb r0, [r1, #0xb]
_08055B14:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055B34 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08055B2C: .4byte gUnk_02000080
_08055B30: .4byte gUnk_080FED18
_08055B34: .4byte gUnk_02000070

	thumb_func_start sub_08055B38
sub_08055B38: @ 0x08055B38
	push {lr}
	ldr r0, _08055B4C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055B48
	ldr r1, _08055B50 @ =gUnk_02000080
	movs r0, #0x78
	strh r0, [r1, #8]
_08055B48:
	pop {pc}
	.align 2, 0
_08055B4C: .4byte gUnk_03000FD0
_08055B50: .4byte gUnk_02000080

	thumb_func_start sub_08055B54
sub_08055B54: @ 0x08055B54
	push {lr}
	ldr r1, _08055B6C @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08055B6A
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08055B6A:
	pop {pc}
	.align 2, 0
_08055B6C: .4byte gUnk_02000080

	thumb_func_start sub_08055B70
sub_08055B70: @ 0x08055B70
	push {r4, r5, r6, lr}
	adds r0, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r1, _08055BA4 @ =gUnk_02000080
	ldr r4, [r1, #0xc]
	lsls r0, r0, #4
	ldr r1, _08055BA8 @ =gUnk_080FF378
	adds r0, r0, r1
	bl CreateEntity
	adds r3, r0, #0
	cmp r3, #0
	beq _08055BA2
	ldrh r0, [r4, #8]
	ldr r1, _08055BAC @ =gUnk_03000BF0
	adds r0, r0, r5
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	strh r0, [r3, #0x2e]
	ldrh r0, [r4, #0xa]
	adds r0, r0, r6
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
_08055BA2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08055BA4: .4byte gUnk_02000080
_08055BA8: .4byte gUnk_080FF378
_08055BAC: .4byte gUnk_03000BF0

	thumb_func_start sub_08055BB0
sub_08055BB0: @ 0x08055BB0
	push {lr}
	ldr r1, _08055BC4 @ =gUnk_080FF3C8
	ldr r0, _08055BC8 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055BC4: .4byte gUnk_080FF3C8
_08055BC8: .4byte gUnk_02000080

	thumb_func_start sub_08055BCC
sub_08055BCC: @ 0x08055BCC
	push {r4, lr}
	ldr r4, _08055BFC @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #4]
	movs r1, #0
	bl sub_0801876C
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055C00 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08055BFC: .4byte gUnk_02000080
_08055C00: .4byte gUnk_02000070

	thumb_func_start sub_08055C04
sub_08055C04: @ 0x08055C04
	push {lr}
	ldr r0, _08055C2C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055C28
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _08055C28
	movs r0, #7
	movs r1, #0x10
	bl sub_08050054
	ldr r1, _08055C30 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
_08055C28:
	pop {pc}
	.align 2, 0
_08055C2C: .4byte gUnk_03000FD0
_08055C30: .4byte gUnk_02000080

	thumb_func_start sub_08055C34
sub_08055C34: @ 0x08055C34
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08055C64 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055CA6
	ldr r5, _08055C68 @ =gUnk_02000080
	ldr r4, [r5, #0xc]
	ldrb r0, [r5, #4]
	bl sub_080553E0
	ldrb r1, [r4, #1]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08055C6C
	ldrb r0, [r5, #4]
	movs r1, #0
	bl sub_08054974
	b _08055C8C
	.align 2, 0
_08055C64: .4byte gUnk_03000FD0
_08055C68: .4byte gUnk_02000080
_08055C6C:
	str r0, [sp]
	movs r0, #6
	movs r1, #0x9e
	movs r2, #6
	movs r3, #0
	bl sub_0805EB2C
	adds r4, r0, #0
	cmp r4, #0
	beq _08055C8C
	ldr r0, [r4, #0x54]
	bl sub_0805E7BC
	adds r0, r4, #0
	bl sub_0805E7BC
_08055C8C:
	movs r0, #6
	movs r1, #0x10
	bl sub_08050054
	movs r0, #0x73
	bl sub_080A3268
	ldr r0, _08055CAC @ =gUnk_02000080
	ldrb r1, [r0, #6]
	adds r1, #1
	strb r1, [r0, #6]
	movs r1, #0x78
	strh r1, [r0, #8]
_08055CA6:
	add sp, #4
	pop {r4, r5, pc}
	.align 2, 0
_08055CAC: .4byte gUnk_02000080

	thumb_func_start sub_08055CB0
sub_08055CB0: @ 0x08055CB0
	push {lr}
	ldr r0, _08055CD0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055CCE
	ldr r1, _08055CD4 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08055CCE
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08055CCE:
	pop {pc}
	.align 2, 0
_08055CD0: .4byte gUnk_03000FD0
_08055CD4: .4byte gUnk_02000080

	thumb_func_start sub_08055CD8
sub_08055CD8: @ 0x08055CD8
	push {lr}
	ldr r1, _08055CEC @ =gUnk_080FF3E8
	ldr r0, _08055CF0 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055CEC: .4byte gUnk_080FF3E8
_08055CF0: .4byte gUnk_02000080

	thumb_func_start sub_08055CF4
sub_08055CF4: @ 0x08055CF4
	push {r4, lr}
	ldr r4, _08055D24 @ =gUnk_02000080
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055D28 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08055D24: .4byte gUnk_02000080
_08055D28: .4byte gUnk_02000070

	thumb_func_start sub_08055D2C
sub_08055D2C: @ 0x08055D2C
	push {r4, lr}
	ldr r0, _08055D5C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055D5A
	movs r0, #0xff
	bl sub_0807CC3C
	cmp r0, #0
	beq _08055D5A
	ldr r4, _08055D60 @ =gUnk_02000080
	ldrb r0, [r4, #4]
	movs r1, #1
	bl sub_0801876C
	ldrb r0, [r4, #4]
	bl sub_080553E0
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	movs r0, #0x78
	strh r0, [r4, #8]
_08055D5A:
	pop {r4, pc}
	.align 2, 0
_08055D5C: .4byte gUnk_03000FD0
_08055D60: .4byte gUnk_02000080

	thumb_func_start sub_08055D64
sub_08055D64: @ 0x08055D64
	push {lr}
	ldr r1, _08055D7C @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08055D7A
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08055D7A:
	pop {pc}
	.align 2, 0
_08055D7C: .4byte gUnk_02000080

	thumb_func_start sub_08055D80
sub_08055D80: @ 0x08055D80
	push {lr}
	ldr r1, _08055D94 @ =gUnk_080FF3F4
	ldr r0, _08055D98 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055D94: .4byte gUnk_080FF3F4
_08055D98: .4byte gUnk_02000080

	thumb_func_start sub_08055D9C
sub_08055D9C: @ 0x08055D9C
	push {lr}
	ldr r1, _08055DB8 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	ldr r1, _08055DBC @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {pc}
	.align 2, 0
_08055DB8: .4byte gUnk_02000080
_08055DBC: .4byte gUnk_02000070

	thumb_func_start sub_08055DC0
sub_08055DC0: @ 0x08055DC0
	push {lr}
	ldr r0, _08055DE0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055DDC
	ldr r0, _08055DE4 @ =0x00000A01
	bl sub_08056378
	ldr r1, _08055DE8 @ =gUnk_02000080
	ldrb r0, [r1, #6]
	adds r0, #1
	strb r0, [r1, #6]
	movs r0, #0x78
	strh r0, [r1, #8]
_08055DDC:
	pop {pc}
	.align 2, 0
_08055DE0: .4byte gUnk_03000FD0
_08055DE4: .4byte 0x00000A01
_08055DE8: .4byte gUnk_02000080

	thumb_func_start sub_08055DEC
sub_08055DEC: @ 0x08055DEC
	push {lr}
	ldr r1, _08055E04 @ =gUnk_02000080
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08055E02
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
_08055E02:
	pop {pc}
	.align 2, 0
_08055E04: .4byte gUnk_02000080

	thumb_func_start sub_08055E08
sub_08055E08: @ 0x08055E08
	push {lr}
	ldr r1, _08055E1C @ =gUnk_080FF420
	ldr r0, _08055E20 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08055E1C: .4byte gUnk_080FF420
_08055E20: .4byte gUnk_02000080

	thumb_func_start sub_08055E24
sub_08055E24: @ 0x08055E24
	push {r4, lr}
	ldr r4, _08055E5C @ =gUnk_02000080
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055E60 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _08055E64 @ =gUnk_080FF400
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	movs r0, #4
	movs r1, #0x10
	bl sub_08050054
	pop {r4, pc}
	.align 2, 0
_08055E5C: .4byte gUnk_02000080
_08055E60: .4byte gUnk_02000070
_08055E64: .4byte gUnk_080FF400

	thumb_func_start nullsub_493
nullsub_493: @ 0x08055E68
	bx lr
	.align 2, 0