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
	ldr r0, _0801C888 @ =gLinkState
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
_0801C888: .4byte gLinkState
_0801C88C:
	ldrb r0, [r5, #4]
	ldr r4, _0801C92C @ =gUnk_02034D30
	cmp r0, #0x28
	bls _0801C896
	adds r4, #0x40
_0801C896:
	ldr r0, _0801C930 @ =gLinkState
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
	ldr r0, _0801C930 @ =gLinkState
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
_0801C930: .4byte gLinkState
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

	thumb_func_start sub_0801CEC0
sub_0801CEC0: @ 0x0801CEC0
	push {lr}
	ldr r2, _0801CED4 @ =gUnk_080C904C
	ldrb r1, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801CED4: .4byte gUnk_080C904C

	thumb_func_start sub_0801CED8
sub_0801CED8: @ 0x0801CED8
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0801CF10 @ =gUnk_0200AF00
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r4, [r1]
	cmp r4, #1
	bne _0801CF0E
	movs r2, #2
	movs r0, #2
	strb r0, [r1]
	movs r1, #0
	movs r0, #0x10
	strh r0, [r3, #0xc]
	movs r0, #0x90
	strh r0, [r3, #0xe]
	strb r1, [r3, #6]
	movs r0, #7
	strb r0, [r3, #1]
	strb r4, [r3, #4]
	ldrb r0, [r3]
	orrs r0, r2
	strb r0, [r3]
	ldr r1, _0801CF14 @ =gUnk_080C9094
	adds r0, r3, #0
	bl sub_0801CAB8
_0801CF0E:
	pop {r4, pc}
	.align 2, 0
_0801CF10: .4byte gUnk_0200AF00
_0801CF14: .4byte gUnk_080C9094

	thumb_func_start sub_0801CF18
sub_0801CF18: @ 0x0801CF18
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0801CF54 @ =gUnk_080C9058
	ldrb r0, [r5, #6]
	adds r1, r0, #1
	strb r1, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	ldrh r4, [r0]
	movs r0, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0805ECEC
	cmp r4, #0
	bne _0801CF52
	movs r0, #2
	strb r0, [r5, #4]
	movs r0, #8
	strb r0, [r5, #1]
	ldr r0, _0801CF58 @ =gUnk_0200AF00
	adds r0, #0x24
	movs r1, #3
	strb r1, [r0]
	ldr r0, _0801CF5C @ =0x00000173
	bl PlaySFX
_0801CF52:
	pop {r4, r5, pc}
	.align 2, 0
_0801CF54: .4byte gUnk_080C9058
_0801CF58: .4byte gUnk_0200AF00
_0801CF5C: .4byte 0x00000173

	thumb_func_start sub_0801CF60
sub_0801CF60: @ 0x0801CF60
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0801CF8C @ =gUnk_0200AF00
	adds r5, r0, #0
	adds r5, #0x24
	ldrb r0, [r5]
	cmp r0, #4
	bhi _0801CF7C
	ldr r0, _0801CF90 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0801CF94
_0801CF7C:
	movs r0, #0
	strb r0, [r4, #4]
	ldrb r1, [r4]
	subs r0, #3
	ands r0, r1
	strb r0, [r4]
	b _0801CFA4
	.align 2, 0
_0801CF8C: .4byte gUnk_0200AF00
_0801CF90: .4byte gTextBox
_0801CF94:
	adds r0, r4, #0
	bl sub_0801CAD0
	ldrb r0, [r4, #0x13]
	cmp r0, #1
	bne _0801CFA4
	movs r0, #4
	strb r0, [r5]
_0801CFA4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801CFA8
sub_0801CFA8: @ 0x0801CFA8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0801CFCC @ =gUnk_02001A00
	movs r1, #0x40
	bl _DmaZero
	movs r4, #0
_0801CFB6:
	adds r0, r4, #0
	bl sub_0801CFD0
	adds r4, #1
	cmp r4, #5
	bls _0801CFB6
	adds r0, r5, #0
	bl sub_0801D000
	pop {r4, r5, pc}
	.align 2, 0
_0801CFCC: .4byte gUnk_02001A00

	thumb_func_start sub_0801CFD0
sub_0801CFD0: @ 0x0801CFD0
	lsls r0, r0, #2
	ldr r1, _0801CFF8 @ =gUnk_02001A00
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	movs r2, #0xf
	ands r1, r2
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	movs r1, #0x80
	strb r1, [r0, #1]
	ldr r1, _0801CFFC @ =0x0000FFFF
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0801CFF8: .4byte gUnk_02001A00
_0801CFFC: .4byte 0x0000FFFF

	thumb_func_start sub_0801D000
sub_0801D000: @ 0x0801D000
	push {lr}
	adds r2, r0, #0
	ldr r0, _0801D024 @ =gScreenTransition
	movs r1, #0
	cmp r2, #0
	beq _0801D00E
	movs r1, #0xf
_0801D00E:
	adds r0, #0x2f
	strb r1, [r0]
	cmp r2, #0
	beq _0801D028
	bl sub_0801D34C
	movs r0, #0xf
	bl sub_0801CFD0
	b _0801D03A
	.align 2, 0
_0801D024: .4byte gScreenTransition
_0801D028:
	ldr r3, _0801D03C @ =gUnk_02001A3C
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #4
	bne _0801D03A
	strb r2, [r3]
	strb r2, [r3, #1]
	strh r2, [r3, #2]
_0801D03A:
	pop {pc}
	.align 2, 0
_0801D03C: .4byte gUnk_02001A3C

	thumb_func_start sub_0801D040
sub_0801D040: @ 0x0801D040
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	adds r6, r1, #0
	adds r0, r6, #0
	bl sub_0801D108
	adds r5, r0, #0
	cmp r5, #0
	bge _0801D0E8
	cmp r6, #0x15
	bhi _0801D064
	movs r4, #1
	b _0801D074
_0801D064:
	ldr r0, _0801D100 @ =gUnk_08133368
	adds r1, r6, #0
	subs r1, #0x16
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r4, [r1, #3]
	movs r0, #0xf
	ands r4, r0
_0801D074:
	adds r0, r4, #0
	bl sub_0801D134
	adds r5, r0, #0
	cmp r5, #0
	bge _0801D090
	bl sub_0801D34C
	adds r0, r4, #0
	bl sub_0801D134
	adds r5, r0, #0
	cmp r5, #0
	blt _0801D0E8
_0801D090:
	lsls r1, r5, #2
	ldr r0, _0801D104 @ =gUnk_02001A00
	adds r3, r1, r0
	movs r0, #0
	strh r6, [r3, #2]
	strb r0, [r3, #1]
	movs r2, #0x10
	rsbs r2, r2, #0
	lsls r0, r4, #4
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	subs r4, #1
	cmp r4, #0
	beq _0801D0E0
	movs r0, #0
	mov sl, r0
	movs r1, #0
	mov r8, r1
	movs r0, #0xf
	mov sb, r0
	mov ip, r2
	movs r7, #2
_0801D0BE:
	adds r3, #4
	mov r1, r8
	strh r1, [r3, #2]
	mov r0, sl
	strb r0, [r3, #1]
	lsls r2, r4, #4
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	ands r0, r1
	orrs r0, r7
	strb r0, [r3]
	subs r4, #1
	cmp r4, #0
	bne _0801D0BE
_0801D0E0:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0801D2C8
_0801D0E8:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_0801D19C
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D100: .4byte gUnk_08133368
_0801D104: .4byte gUnk_02001A00

	thumb_func_start sub_0801D108
sub_0801D108: @ 0x0801D108
	push {lr}
	adds r2, r0, #0
	cmp r2, #5
	bhi _0801D116
	b _0801D12E
_0801D112:
	adds r0, r1, #0
	b _0801D12E
_0801D116:
	movs r1, #6
	ldr r0, _0801D130 @ =gUnk_02001A00
	adds r0, #0x18
_0801D11C:
	ldrh r3, [r0, #2]
	cmp r2, r3
	beq _0801D112
	adds r0, #4
	adds r1, #1
	cmp r1, #0xf
	bls _0801D11C
	movs r0, #1
	rsbs r0, r0, #0
_0801D12E:
	pop {pc}
	.align 2, 0
_0801D130: .4byte gUnk_02001A00

	thumb_func_start sub_0801D134
sub_0801D134: @ 0x0801D134
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #6
	ldr r0, _0801D154 @ =gUnk_02001A00
	adds r3, r0, #0
	adds r3, #0x18
_0801D142:
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bne _0801D158
	adds r1, #1
	cmp r4, r1
	bhi _0801D15A
	b _0801D180
	.align 2, 0
_0801D154: .4byte gUnk_02001A00
_0801D158:
	movs r1, #0
_0801D15A:
	adds r3, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D142
	movs r1, #0
	movs r2, #6
	ldr r0, _0801D188 @ =gUnk_02001A00
	adds r3, r0, #0
	adds r3, #0x18
_0801D16C:
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _0801D18C
	cmp r0, #0
	blt _0801D18C
	adds r1, #1
	cmp r4, r1
	bhi _0801D18E
_0801D180:
	subs r0, r1, #1
	subs r0, r2, r0
	b _0801D19A
	.align 2, 0
_0801D188: .4byte gUnk_02001A00
_0801D18C:
	movs r1, #0
_0801D18E:
	adds r3, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D16C
	movs r0, #1
	rsbs r0, r0, #0
_0801D19A:
	pop {r4, pc}

	thumb_func_start sub_0801D19C
sub_0801D19C: @ 0x0801D19C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	cmp r3, #0
	bge _0801D1A8
	movs r3, #0
_0801D1A8:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bls _0801D1BE
	adds r0, r4, #0
	adds r0, #0x27
	strb r3, [r0]
_0801D1BE:
	movs r0, #0xf
	adds r1, r3, #0
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	movs r2, #0xf
	adds r1, r3, #0
	ands r1, r2
	lsls r1, r1, #4
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	lsls r1, r3, #2
	ldr r0, _0801D22C @ =gUnk_02001A00
	adds r4, r1, r0
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	beq _0801D22A
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	ldr r0, [r4]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x1c
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4]
	subs r3, #1
	cmp r3, #0
	beq _0801D22A
	movs r7, #0xf
	adds r6, r5, #0
	movs r5, #2
_0801D212:
	adds r4, #4
	lsls r2, r3, #4
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r2
	ands r0, r6
	orrs r0, r5
	strb r0, [r4]
	subs r3, #1
	cmp r3, #0
	bne _0801D212
_0801D22A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D22C: .4byte gUnk_02001A00

	thumb_func_start sub_0801D230
sub_0801D230: @ 0x0801D230
	push {lr}
	adds r0, #0x27
	ldrb r2, [r0]
	movs r1, #0
	strb r1, [r0]
	adds r0, r2, #0
	bl sub_0801D244
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801D244
sub_0801D244: @ 0x0801D244
	push {r4, r5, r6, lr}
	lsls r0, r0, #2
	ldr r1, _0801D288 @ =gUnk_02001A00
	adds r2, r0, r1
	ldr r0, [r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _0801D284
	ldrb r0, [r2, #1]
	subs r0, #1
	strb r0, [r2, #1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D284
	ldr r0, [r2]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x1c
	movs r5, #0
	movs r6, #0x10
	rsbs r6, r6, #0
	movs r4, #1
_0801D270:
	strb r5, [r2, #1]
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bne _0801D270
_0801D284:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801D288: .4byte gUnk_02001A00

	thumb_func_start sub_0801D28C
sub_0801D28C: @ 0x0801D28C
	push {lr}
	adds r3, r1, #0
	adds r0, #0x27
	ldrb r2, [r0]
	ldr r1, _0801D2B0 @ =gUnk_02001A00
	lsls r0, r2, #2
	adds r1, r0, r1
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _0801D2AE
	strh r3, [r1, #2]
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_0801D2C8
_0801D2AE:
	pop {pc}
	.align 2, 0
_0801D2B0: .4byte gUnk_02001A00

	thumb_func_start sub_0801D2B4
sub_0801D2B4: @ 0x0801D2B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0801D230
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801D040
	pop {r4, r5, pc}

	thumb_func_start sub_0801D2C8
sub_0801D2C8: @ 0x0801D2C8
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _0801D2F8 @ =gUnk_0200B644
	adds r4, r1, #0
	adds r4, #0x10
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	cmp r3, #5
	bls _0801D33C
	cmp r3, #0x15
	bne _0801D300
	ldr r2, _0801D2FC @ =gUnk_020176A0
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	lsls r1, r4, #5
	adds r1, r1, r2
	movs r2, #0x20
	bl _DmaFill16
	b _0801D33C
	.align 2, 0
_0801D2F8: .4byte gUnk_0200B644
_0801D2FC: .4byte gUnk_020176A0
_0801D300:
	cmp r3, #0x14
	bhi _0801D31C
	subs r0, r3, #6
	lsls r0, r0, #5
	ldr r1, _0801D318 @ =gUnk_020176A0
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #1
	bl sub_0801D754
	b _0801D33C
	.align 2, 0
_0801D318: .4byte gUnk_020176A0
_0801D31C:
	ldr r1, _0801D340 @ =gUnk_08133368
	adds r0, r3, #0
	subs r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r2, r0, #0x18
	movs r1, #0xf
	ands r2, r1
	ldr r1, _0801D344 @ =0x00FFFFFF
	ands r0, r1
	ldr r1, _0801D348 @ =gUnk_085A2E80
	adds r0, r0, r1
	adds r1, r4, #0
	bl sub_0801D754
_0801D33C:
	pop {r4, pc}
	.align 2, 0
_0801D340: .4byte gUnk_08133368
_0801D344: .4byte 0x00FFFFFF
_0801D348: .4byte gUnk_085A2E80

	thumb_func_start sub_0801D34C
sub_0801D34C: @ 0x0801D34C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r2, #0
	movs r3, #0
	ldr r1, _0801D37C @ =gUnk_02001A00
_0801D356:
	mov r4, sp
	adds r0, r4, r2
	strb r2, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _0801D370
	cmp r0, #0
	blt _0801D370
	strb r3, [r1]
	strb r3, [r1, #1]
	strh r3, [r1, #2]
_0801D370:
	adds r1, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D356
	movs r4, #6
	b _0801D390
	.align 2, 0
_0801D37C: .4byte gUnk_02001A00
_0801D380:
	cmp r4, r1
	ble _0801D390
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0801D48C
_0801D390:
	adds r0, r4, #1
	bl sub_0801D458
	adds r4, r0, #0
	cmp r4, #0
	beq _0801D3AC
	movs r0, #1
	bl sub_0801D134
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801D380
_0801D3AC:
	movs r1, #0
	ldr r4, _0801D450 @ =gUnk_03003D70
	mov ip, r4
_0801D3B2:
	lsls r0, r1, #3
	mov r2, ip
	adds r3, r0, r2
	adds r0, r3, #0
	ldr r3, [r3, #4]
	adds r5, r1, #1
	cmp r0, r3
	beq _0801D444
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r4, r0, #0
	ldr r6, _0801D454 @ =gUnk_020000C0
_0801D3CA:
	ldrb r0, [r3, #8]
	cmp r0, #9
	beq _0801D43E
	adds r1, r3, #0
	adds r1, #0x28
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bhi _0801D40C
	ldrb r1, [r1]
	lsls r1, r1, #6
	adds r1, r1, r6
	ldrb r0, [r1, #5]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1, #5]
	ldrb r0, [r1, #0x15]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1, #0x15]
	adds r2, r1, #0
	adds r2, #0x25
	ldrb r0, [r2]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r2]
	adds r1, #0x35
	ldrb r0, [r1]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1]
_0801D40C:
	adds r1, r3, #0
	adds r1, #0x27
	ldrb r0, [r1]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r2, [r3, #0x1a]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1a]
	lsrs r1, r0, #4
	add r1, sp
	ldrb r2, [r1]
	lsls r2, r2, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x1a]
_0801D43E:
	ldr r3, [r3, #4]
	cmp r4, r3
	bne _0801D3CA
_0801D444:
	adds r1, r5, #0
	cmp r1, #8
	bls _0801D3B2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D450: .4byte gUnk_03003D70
_0801D454: .4byte gUnk_020000C0

	thumb_func_start sub_0801D458
sub_0801D458: @ 0x0801D458
	push {lr}
	adds r2, r0, #0
	cmp r2, #0xf
	bhi _0801D488
	ldr r1, _0801D47C @ =gUnk_02001A00
	lsls r0, r2, #2
	adds r1, r0, r1
_0801D466:
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0
	blt _0801D478
	cmp r0, #1
	ble _0801D480
	cmp r0, #4
	beq _0801D480
_0801D478:
	adds r0, r2, #0
	b _0801D48A
	.align 2, 0
_0801D47C: .4byte gUnk_02001A00
_0801D480:
	adds r1, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D466
_0801D488:
	movs r0, #0
_0801D48A:
	pop {pc}

	thumb_func_start sub_0801D48C
sub_0801D48C: @ 0x0801D48C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r3, r1, #0
	ldr r0, _0801D50C @ =gUnk_02001A00
	mov r8, r0
	lsls r0, r6, #2
	mov r1, r8
	adds r4, r0, r1
	ldrb r0, [r4]
	lsrs r5, r0, #4
	subs r5, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _0801D4F8
	ldr r2, _0801D510 @ =gUnk_020176A0
	lsls r0, r3, #5
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r7, r0, r2
	lsls r0, r3, #2
	add r8, r0
	lsls r0, r6, #5
	adds r0, r0, r1
	adds r6, r0, r2
	movs r3, #0
_0801D4C8:
	ldr r0, [r4]
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	strb r3, [r4]
	strb r3, [r4, #1]
	strh r3, [r4, #2]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0x20
	str r3, [sp]
	bl sub_0801D66C
	adds r6, #0x20
	adds r4, #4
	adds r7, #0x20
	subs r5, #1
	movs r0, #1
	rsbs r0, r0, #0
	ldr r3, [sp]
	cmp r5, r0
	bne _0801D4C8
_0801D4F8:
	ldr r0, _0801D514 @ =gUnk_0200B644
	ldr r1, [r0]
	ldr r2, _0801D518 @ =0xFFFF0000
	orrs r1, r2
	str r1, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D50C: .4byte gUnk_02001A00
_0801D510: .4byte gUnk_020176A0
_0801D514: .4byte gUnk_0200B644
_0801D518: .4byte 0xFFFF0000

	thumb_func_start sub_0801D51C
sub_0801D51C: @ 0x0801D51C
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _0801D58C @ =0x05F5E0FF
	cmp r2, r0
	bhi _0801D5A0
	ldr r1, _0801D590 @ =0x00989680
	adds r0, r2, #0
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x1c
	ldr r2, _0801D594 @ =0x000F4240
	adds r0, r1, #0
	adds r1, r2, #0
	bl Div
	lsls r0, r0, #0x18
	adds r4, r4, r0
	ldr r2, _0801D598 @ =0x000186A0
	adds r0, r1, #0
	adds r1, r2, #0
	bl Div
	lsls r0, r0, #0x14
	adds r4, r4, r0
	ldr r2, _0801D59C @ =0x00002710
	adds r0, r1, #0
	adds r1, r2, #0
	bl Div
	lsls r0, r0, #0x10
	adds r4, r4, r0
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r1, #0
	adds r1, r2, #0
	bl Div
	lsls r0, r0, #0xc
	adds r4, r4, r0
	adds r0, r1, #0
	movs r1, #0x64
	bl Div
	lsls r0, r0, #8
	adds r4, r4, r0
	adds r0, r1, #0
	movs r1, #0xa
	bl Div
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r4, r4, r1
	adds r0, r4, #0
	b _0801D5A2
	.align 2, 0
_0801D58C: .4byte 0x05F5E0FF
_0801D590: .4byte 0x00989680
_0801D594: .4byte 0x000F4240
_0801D598: .4byte 0x000186A0
_0801D59C: .4byte 0x00002710
_0801D5A0:
	ldr r0, _0801D5A4 @ =0x99999999
_0801D5A2:
	pop {r4, pc}
	.align 2, 0
_0801D5A4: .4byte 0x99999999

	thumb_func_start ReadBit
ReadBit: @ 0x0801D5A8
	lsrs r2, r1, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r1
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start WriteBit
WriteBit: @ 0x0801D5BC
	lsrs r2, r1, #3
	adds r3, r0, r2
	movs r2, #7
	ands r1, r2
	movs r2, #1
	lsls r2, r1
	ldrb r0, [r3]
	adds r1, r0, #0
	orrs r1, r2
	strb r1, [r3]
	ands r0, r2
	bx lr

	thumb_func_start ClearBit
ClearBit: @ 0x0801D5D4
	lsrs r2, r1, #3
	adds r3, r0, r2
	movs r2, #7
	ands r1, r2
	movs r2, #1
	lsls r2, r1
	ldrb r0, [r3]
	adds r1, r0, #0
	bics r1, r2
	strb r1, [r3]
	ands r0, r2
	bx lr