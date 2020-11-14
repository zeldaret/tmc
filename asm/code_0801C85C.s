	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801C85C
sub_0801C85C: @ 0x0801C85C
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r5, _0801C884 @ =gUnk_0200AF00
	ldrb r1, [r5, #1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0801C878
	ldr r0, _0801C888 @ =gPlayerState
	adds r0, #0xa0
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
_0801C878:
	cmp r2, #0
	bne _0801C88C
	bl sub_0801C824
	b _0801C984
	.align 2, 0
_0801C884: .4byte gUnk_0200AF00
_0801C888: .4byte gPlayerState
_0801C88C:
	ldrb r0, [r5, #4]
	ldr r4, _0801C92C @ =gUnk_02034D30
	cmp r0, #0x28
	bls _0801C896
	adds r4, #0x40
_0801C896:
	ldr r0, _0801C930 @ =gPlayerState
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x13
	movs r1, #0x14
	bl Div
	adds r1, r0, #0
	cmp r1, #0x28
	bls _0801C8AE
	movs r1, #0x28
_0801C8AE:
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0801C8BA
	ldrb r0, [r5, #7]
	cmp r0, r1
	beq _0801C910
_0801C8BA:
	movs r6, #1
	strb r6, [r5, #6]
	strb r1, [r5, #7]
	adds r0, r1, #0
	movs r1, #4
	bl Div
	adds r3, r0, #0
	adds r5, r1, #0
	ldr r1, _0801C934 @ =0x0000F016
	adds r0, r1, #0
	strh r0, [r4]
	ldr r1, _0801C938 @ =0x0000F416
	adds r0, r1, #0
	strh r0, [r4, #0x16]
	ldr r2, _0801C93C @ =0x040000D4
	movs r0, #0xa
	subs r0, r0, r3
	lsls r0, r0, #1
	ldr r1, _0801C940 @ =gUnk_080C8F54
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r4, #2
	str r0, [r2, #4]
	ldr r0, _0801C944 @ =0x8000000A
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	cmp r5, #0
	beq _0801C90C
	lsls r2, r3, #1
	adds r2, r2, r4
	adds r0, r5, #0
	adds r0, #0x17
	ldr r3, _0801C948 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #2]
_0801C90C:
	ldr r0, _0801C94C @ =gScreen
	strh r6, [r0, #0xe]
_0801C910:
	ldr r0, _0801C930 @ =gPlayerState
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #5
	bgt _0801C962
	cmp r0, #4
	blt _0801C962
	ldr r2, _0801C950 @ =gUnk_0200AF00
	ldrb r1, [r2, #9]
	adds r4, r2, #0
	cmp r0, #4
	bne _0801C954
	adds r0, r1, #2
	b _0801C956
	.align 2, 0
_0801C92C: .4byte gUnk_02034D30
_0801C930: .4byte gPlayerState
_0801C934: .4byte 0x0000F016
_0801C938: .4byte 0x0000F416
_0801C93C: .4byte 0x040000D4
_0801C940: .4byte gUnk_080C8F54
_0801C944: .4byte 0x8000000A
_0801C948: .4byte 0x000003FF
_0801C94C: .4byte gScreen
_0801C950: .4byte gUnk_0200AF00
_0801C954:
	adds r0, r1, #1
_0801C956:
	strb r0, [r2, #9]
	ldrb r0, [r4, #9]
	lsrs r3, r0, #4
	movs r0, #3
	ands r3, r0
	b _0801C966
_0801C962:
	movs r3, #0
	ldr r4, _0801C988 @ =gUnk_0200AF00
_0801C966:
	ldrb r0, [r4, #8]
	cmp r3, r0
	beq _0801C984
	strb r3, [r4, #8]
	ldr r4, _0801C98C @ =0x0600C2C0
	ldr r1, _0801C990 @ =0x040000D4
	ldr r2, _0801C994 @ =gUnk_080C8F7C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0801C998 @ =0x84000030
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0801C984:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801C988: .4byte gUnk_0200AF00
_0801C98C: .4byte 0x0600C2C0
_0801C990: .4byte 0x040000D4
_0801C994: .4byte gUnk_080C8F7C
_0801C998: .4byte 0x84000030

	thumb_func_start sub_0801C99C
sub_0801C99C: @ 0x0801C99C
	push {r4, r5, lr}
	ldr r4, _0801C9E0 @ =gUnk_0200AF00
	ldrb r1, [r4, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801C9B2
	bl sub_08052724
	cmp r0, #0
	bne _0801C9EC
_0801C9B2:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0801CA50
	movs r0, #0
	strb r0, [r4, #0x10]
	ldr r2, _0801C9E4 @ =gUnk_020350E2
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r1, _0801C9E8 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	b _0801CA50
	.align 2, 0
_0801C9E0: .4byte gUnk_0200AF00
_0801C9E4: .4byte gUnk_020350E2
_0801C9E8: .4byte gScreen
_0801C9EC:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _0801CA1E
	ldr r2, _0801CA54 @ =gUnk_020350E2
	adds r1, r2, #0
	adds r1, #0x40
	ldr r3, _0801CA58 @ =0x0000F01C
	strh r3, [r2]
	adds r0, r3, #1
	strh r0, [r2, #2]
	adds r0, r3, #2
	strh r0, [r1]
	adds r0, r3, #3
	strh r0, [r1, #2]
	adds r3, #0x5a
	strh r3, [r2, #4]
	adds r0, r3, #1
	strh r0, [r1, #4]
	adds r0, r3, #2
	strh r0, [r2, #6]
	adds r0, r3, #3
	strh r0, [r1, #6]
	ldr r1, _0801CA5C @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_0801CA1E:
	ldr r0, _0801CA60 @ =gUnk_02002A40
	ldr r3, _0801CA64 @ =gArea
	ldrb r1, [r3, #3]
	ldr r5, _0801CA68 @ =0x0000045C
	adds r2, r0, r5
	adds r1, r1, r2
	ldrb r0, [r4, #0x12]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801CA38
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _0801CA50
_0801CA38:
	movs r0, #2
	strb r0, [r4, #0x10]
	ldrb r0, [r3, #3]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x12]
	ldrb r1, [r4, #0x12]
	movs r0, #0x76
	movs r2, #0
	movs r3, #2
	bl sub_0801C5E0
_0801CA50:
	pop {r4, r5, pc}
	.align 2, 0
_0801CA54: .4byte gUnk_020350E2
_0801CA58: .4byte 0x0000F01C
_0801CA5C: .4byte gScreen
_0801CA60: .4byte gUnk_02002A40
_0801CA64: .4byte gArea
_0801CA68: .4byte 0x0000045C

	thumb_func_start sub_0801CA6C
sub_0801CA6C: @ 0x0801CA6C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r3, #0
	ldr r7, _0801CAA8 @ =gUnk_0200AF34
	movs r0, #1
	mov ip, r0
	ldr r1, _0801CAAC @ =gUnk_080C8F8C
	lsls r0, r5, #4
	adds r4, r0, r1
_0801CA80:
	lsls r0, r3, #5
	adds r1, r0, r7
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0801CAB0
	strb r5, [r1, #1]
	strb r6, [r1, #2]
	movs r0, #0xff
	strb r0, [r1, #0x10]
	mov r0, ip
	orrs r0, r2
	strb r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #0x1a]
	ldrb r0, [r4, #0xc]
	strb r0, [r1, #3]
	b _0801CAB6
	.align 2, 0
_0801CAA8: .4byte gUnk_0200AF34
_0801CAAC: .4byte gUnk_080C8F8C
_0801CAB0:
	adds r3, #1
	cmp r3, #0x17
	bls _0801CA80
_0801CAB6:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801CAB8
sub_0801CAB8: @ 0x0801CAB8
	push {lr}
	str r1, [r0, #0x14]
	ldrb r2, [r1, #1]
	strb r2, [r0, #0x11]
	ldrb r2, [r1, #2]
	strb r2, [r0, #0x12]
	ldrb r2, [r1, #3]
	strb r2, [r0, #0x13]
	ldrb r1, [r1]
	bl sub_0801CAFC
	pop {pc}

	thumb_func_start sub_0801CAD0
sub_0801CAD0: @ 0x0801CAD0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x11]
	subs r0, #1
	strb r0, [r2, #0x11]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801CAF8
	ldr r1, [r2, #0x14]
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0801CAF0
	ldrb r0, [r1, #4]
	lsls r0, r0, #2
	subs r1, r1, r0
_0801CAF0:
	adds r1, #4
	adds r0, r2, #0
	bl sub_0801CAB8
_0801CAF8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801CAFC
sub_0801CAFC: @ 0x0801CAFC
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	ldr r1, _0801CB1C @ =gUnk_080C8F8C
	adds r1, r0, r1
	ldrb r0, [r2, #0x10]
	cmp r3, r0
	beq _0801CB18
	strb r3, [r2, #0x10]
	adds r0, r2, #0
	bl sub_0801CB20
_0801CB18:
	pop {pc}
	.align 2, 0
_0801CB1C: .4byte gUnk_080C8F8C

	thumb_func_start sub_0801CB20
sub_0801CB20: @ 0x0801CB20
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	bne _0801CB76
	ldrh r1, [r1, #6]
	lsls r1, r1, #4
	ldr r0, _0801CB54 @ =gUnk_080029B4
	adds r1, r1, r0
	ldrb r0, [r3, #0x10]
	lsls r0, r0, #2
	ldr r2, [r1, #4]
	adds r2, r2, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #5
	ldr r1, [r1, #8]
	adds r1, r1, r0
	ldrb r2, [r2]
	cmp r2, #0
	bne _0801CB58
	ldrb r1, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	b _0801CB74
	.align 2, 0
_0801CB54: .4byte gUnk_080029B4
_0801CB58:
	ldrb r0, [r3, #0x19]
	cmp r0, r2
	bne _0801CB64
	ldr r0, [r3, #0x1c]
	cmp r0, r1
	beq _0801CB74
_0801CB64:
	str r1, [r3, #0x1c]
	ldrb r0, [r3]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r3]
_0801CB74:
	strb r2, [r3, #0x19]
_0801CB76:
	pop {pc}

	thumb_func_start sub_0801CB78
sub_0801CB78: @ 0x0801CB78
	push {lr}
	ldr r2, _0801CB8C @ =gUnk_080C903C
	ldrb r1, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801CB8C: .4byte gUnk_080C903C

	thumb_func_start sub_0801CB90
sub_0801CB90: @ 0x0801CB90
	push {lr}
	ldr r3, _0801CBC4 @ =gUnk_0200AF00
	ldrb r1, [r0, #1]
	lsls r1, r1, #1
	adds r2, r3, #0
	adds r2, #0x16
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r0, #1]
	lsls r1, r1, #1
	adds r3, #0x1c
	adds r1, r1, r3
	ldrh r1, [r1]
	subs r1, #0x20
	strh r1, [r0, #0xe]
	movs r1, #1
	strb r1, [r0, #4]
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	ldrb r1, [r0, #1]
	bl sub_0801CAFC
	pop {pc}
	.align 2, 0
_0801CBC4: .4byte gUnk_0200AF00

	thumb_func_start sub_0801CBC8
sub_0801CBC8: @ 0x0801CBC8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	movs r6, #8
	cmp r0, #0
	bne _0801CC10
	movs r6, #4
	cmp r0, #0
	bne _0801CC10
	ldr r3, _0801CC08 @ =gUnk_0200AF00
	ldrb r0, [r3, #1]
	ldrb r2, [r5, #1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801CBF6
	ldr r0, _0801CC0C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0801CC10
_0801CBF6:
	lsls r0, r2, #1
	adds r1, r3, #0
	adds r1, #0x1c
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	subs r1, #0x28
	b _0801CC1E
	.align 2, 0
_0801CC08: .4byte gUnk_0200AF00
_0801CC0C: .4byte gTextBox
_0801CC10:
	ldr r1, _0801CC7C @ =gUnk_0200AF00
	ldrb r0, [r5, #1]
	lsls r0, r0, #1
	adds r1, #0x1c
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
_0801CC1E:
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	subs r4, r1, r0
	adds r1, r4, #0
	cmp r4, #0
	bge _0801CC2C
	rsbs r4, r4, #0
_0801CC2C:
	cmp r6, r4
	bgt _0801CC32
	adds r4, r6, #0
_0801CC32:
	adds r0, r1, #0
	bl sub_08000E44
	muls r4, r0, r4
	cmp r4, #0
	beq _0801CC44
	ldrh r0, [r5, #0xe]
	adds r0, r0, r4
	strh r0, [r5, #0xe]
_0801CC44:
	ldr r0, _0801CC7C @ =gUnk_0200AF00
	ldrb r1, [r5, #1]
	lsls r1, r1, #1
	adds r0, #0x16
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r2, #0xc
	ldrsh r0, [r5, r2]
	subs r4, r1, r0
	adds r1, r4, #0
	cmp r4, #0
	bge _0801CC60
	rsbs r4, r4, #0
_0801CC60:
	cmp r6, r4
	bgt _0801CC66
	adds r4, r6, #0
_0801CC66:
	adds r0, r1, #0
	bl sub_08000E44
	muls r4, r0, r4
	cmp r4, #0
	beq _0801CC78
	ldrh r0, [r5, #0xc]
	adds r0, r0, r4
	strh r0, [r5, #0xc]
_0801CC78:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801CC7C: .4byte gUnk_0200AF00

	thumb_func_start sub_0801CC80
sub_0801CC80: @ 0x0801CC80
	push {r4, r5, lr}
	ldrb r1, [r0, #1]
	movs r0, #3
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ldr r5, _0801CCAC @ =gUnk_02002A40
	adds r1, r5, #0
	adds r1, #0xb4
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_080544C8
	cmp r0, #0
	beq _0801CCA8
	adds r0, r5, r4
	adds r0, #0x9a
	ldrb r4, [r0]
_0801CCA8:
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0
_0801CCAC: .4byte gUnk_02002A40

	thumb_func_start sub_0801CCB0
sub_0801CCB0: @ 0x0801CCB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r0, r4, #0
	bl sub_0801CC80
	adds r1, r0, #0
	cmp r1, #0
	beq _0801CD90
	ldrb r0, [r4, #8]
	cmp r0, r1
	beq _0801CCE0
	strb r1, [r4, #8]
	ldr r0, _0801CD1C @ =gUnk_080FDFD8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl sub_0801CAB8
_0801CCE0:
	ldrb r0, [r4, #1]
	movs r1, #3
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
	ldr r3, _0801CD20 @ =gUnk_0200AF13
	cmp r6, #0
	beq _0801CCF4
	adds r3, #1
_0801CCF4:
	ldrb r0, [r4, #8]
	cmp r0, #7
	blt _0801CD60
	cmp r0, #8
	ble _0801CD28
	cmp r0, #0xa
	bgt _0801CD60
	ldr r1, _0801CD24 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xad
	ldrb r2, [r0]
	ldrb r0, [r3]
	adds r5, r1, #0
	cmp r0, r2
	beq _0801CD4C
	adds r0, r2, #0
	adds r0, #0x80
	strb r0, [r3]
	b _0801CD4C
	.align 2, 0
_0801CD1C: .4byte gUnk_080FDFD8
_0801CD20: .4byte gUnk_0200AF13
_0801CD24: .4byte gUnk_02002A40
_0801CD28:
	ldr r5, _0801CD44 @ =gUnk_02002A40
	adds r0, r5, #0
	adds r0, #0xac
	ldrb r2, [r0]
	ldrb r0, [r3]
	cmp r0, r2
	beq _0801CD3C
	adds r0, r2, #0
	adds r0, #0x80
	strb r0, [r3]
_0801CD3C:
	ldr r1, _0801CD48 @ =gBombBagSizes
	adds r0, r5, #0
	adds r0, #0xae
	b _0801CD52
	.align 2, 0
_0801CD44: .4byte gUnk_02002A40
_0801CD48: .4byte gBombBagSizes
_0801CD4C:
	ldr r1, _0801CD5C @ =gQuiverSizes
	adds r0, r5, #0
	adds r0, #0xaf
_0801CD52:
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0801CD64
	.align 2, 0
_0801CD5C: .4byte gQuiverSizes
_0801CD60:
	movs r0, #1
	movs r2, #0
_0801CD64:
	movs r1, #3
	cmp r0, r2
	bhi _0801CD6C
	movs r1, #4
_0801CD6C:
	strb r1, [r4, #0x18]
	adds r0, r6, #0
	bl sub_0801CE24
	adds r1, r0, #0
	cmp r1, #0
	beq _0801CD90
	ldrh r0, [r1, #0xc]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #0xe]
	strh r0, [r4, #0xe]
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r4, #0
	bl sub_0801CAD0
_0801CD90:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801CD94
sub_0801CD94: @ 0x0801CD94
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #2]
	ldr r1, _0801CDC0 @ =gUnk_0200AF00
	cmp r0, #9
	bne _0801CDD4
	adds r0, r1, #0
	adds r0, #0x2f
	ldrb r2, [r0]
	cmp r2, #0
	bne _0801CDCE
	ldr r0, _0801CDC4 @ =gArea
	ldrb r0, [r0, #0x18]
	cmp r0, #2
	beq _0801CDC8
	cmp r0, #3
	beq _0801CDCC
	adds r0, r1, #0
	adds r0, #0x2c
	ldrb r2, [r0]
	b _0801CDCE
	.align 2, 0
_0801CDC0: .4byte gUnk_0200AF00
_0801CDC4: .4byte gArea
_0801CDC8:
	movs r2, #0xb
	b _0801CDCE
_0801CDCC:
	movs r2, #0xa
_0801CDCE:
	adds r0, r1, #0
	adds r0, #0x32
	strb r2, [r0]
_0801CDD4:
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	cmp r2, #0
	beq _0801CE1E
	ldr r1, _0801CE20 @ =gUnk_080C9044
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r2, r0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0801CAFC
	ldrb r0, [r4, #3]
	bl sub_0801CE24
	adds r1, r0, #0
	cmp r1, #0
	beq _0801CE1E
	ldrh r0, [r1, #0xc]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #0xe]
	strh r0, [r4, #0xe]
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_0801CE1E:
	pop {r4, pc}
	.align 2, 0
_0801CE20: .4byte gUnk_080C9044

	thumb_func_start sub_0801CE24
sub_0801CE24: @ 0x0801CE24
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r6, #1
	ldr r3, _0801CE44 @ =gUnk_0200AF34
	adds r2, r3, #0
_0801CE30:
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0801CE48
	ldrb r0, [r2, #1]
	cmp r5, r0
	bne _0801CE48
	adds r0, r3, #0
	b _0801CE54
	.align 2, 0
_0801CE44: .4byte gUnk_0200AF34
_0801CE48:
	adds r2, #0x20
	adds r3, #0x20
	adds r4, #1
	cmp r4, #0x17
	bls _0801CE30
	movs r0, #0
_0801CE54:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801CE58
sub_0801CE58: @ 0x0801CE58
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3]
	movs r4, #3
	rsbs r4, r4, #0
	ands r4, r0
	strb r4, [r3]
	ldr r2, _0801CEB8 @ =gUnk_0200AF00
	ldrb r1, [r2, #1]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801CEB4
	ldr r0, _0801CEBC @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0801CEB4
	ldrb r2, [r2, #3]
	cmp r2, #0
	beq _0801CEB4
	movs r0, #2
	adds r1, r4, #0
	orrs r1, r0
	strb r1, [r3]
	adds r0, r2, #3
	lsrs r0, r0, #2
	lsls r0, r0, #3
	adds r1, r0, #3
	movs r4, #0xc
	cmp r2, #0x28
	bls _0801CE9E
	movs r4, #0x14
	subs r1, #0x50
_0801CE9E:
	strh r1, [r3, #0xc]
	strh r4, [r3, #0xe]
	movs r1, #3
	ands r1, r2
	cmp r1, #0
	bne _0801CEAC
	movs r1, #4
_0801CEAC:
	adds r1, #0x71
	adds r0, r3, #0
	bl sub_0801CAFC
_0801CEB4:
	pop {r4, pc}
	.align 2, 0
_0801CEB8: .4byte gUnk_0200AF00
_0801CEBC: .4byte gTextBox
