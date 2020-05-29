	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806E884
sub_0806E884: @ 0x0806E884
	push {lr}
	adds r1, r0, #0
	ldr r0, _0806E890 @ =0x00000DB6
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_0806E890: .4byte 0x00000DB6

	thumb_func_start sub_0806E894
sub_0806E894: @ 0x0806E894
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806E8B6
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0x1e]
	b _0806E8CA
_0806E8B6:
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0806E8CA
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
_0806E8CA:
	pop {r4, pc}

	thumb_func_start sub_0806E8CC
sub_0806E8CC: @ 0x0806E8CC
	push {lr}
	adds r3, r0, #0
	ldr r2, _0806E8EC @ =gUnk_080B313C
	ldrb r1, [r3, #0xf]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _0806E8F0
	adds r0, r3, #0
	bl _call_via_r1
	b _0806E8F4
	.align 2, 0
_0806E8EC: .4byte gUnk_080B313C
_0806E8F0:
	bl sub_0805E780
_0806E8F4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806E8F8
sub_0806E8F8: @ 0x0806E8F8
	push {lr}
	adds r3, r0, #0
	ldr r2, _0806E918 @ =gUnk_080B313C
	ldrb r1, [r3, #0xf]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	cmp r1, #0
	beq _0806E916
	adds r0, r3, #0
	bl _call_via_r1
_0806E916:
	pop {pc}
	.align 2, 0
_0806E918: .4byte gUnk_080B313C

	thumb_func_start sub_0806E91C
sub_0806E91C: @ 0x0806E91C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0806E950
	adds r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x68
	movs r4, #0
	movs r0, #1
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0806E960 @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_0807DD64
	strb r4, [r5, #0x1e]
_0806E950:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r5, #0
	bl sub_0807DDE4
	pop {r4, r5, pc}
	.align 2, 0
_0806E960: .4byte 0x0000FFFF

	thumb_func_start sub_0806E964
sub_0806E964: @ 0x0806E964
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r2, r1, #0
	ldr r0, _0806E984 @ =gUnk_03000FF0
	mov r8, r0
	ldrh r1, [r0, #2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E988
	bl sub_08050384
	b _0806EAAA
	.align 2, 0
_0806E984: .4byte gUnk_03000FF0
_0806E988:
	ldrb r0, [r2, #0x18]
	adds r1, r0, #0
	mov r6, sb
	adds r6, #0x6c
	mov r7, sb
	adds r7, #0x68
	cmp r1, #0
	bne _0806E9A8
	adds r0, #1
	strb r0, [r2, #0x18]
	strh r1, [r6]
	movs r2, #0
	ldrsh r1, [r7, r2]
	mov r0, sb
	bl sub_0806EABC
_0806E9A8:
	movs r5, #0x1c
	movs r0, #0x55
	bl GetProgressFlag
	cmp r0, #0
	beq _0806E9B6
	movs r5, #0x34
_0806E9B6:
	movs r0, #0
	ldrsh r4, [r7, r0]
	mov r2, r8
	ldrh r1, [r2, #2]
	movs r2, #0xc0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0806E9E4
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E9D4
	adds r4, #1
	b _0806E9D6
_0806E9D4:
	subs r4, #1
_0806E9D6:
	cmp r4, #0
	bgt _0806E9DC
	adds r4, r5, #0
_0806E9DC:
	cmp r4, r5
	ble _0806EA0A
	movs r4, #1
	b _0806EA0A
_0806E9E4:
	mov r0, r8
	ldrh r1, [r0, #4]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0806EA0A
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806E9FC
	adds r4, #1
	b _0806E9FE
_0806E9FC:
	subs r4, #1
_0806E9FE:
	cmp r4, #0
	bgt _0806EA04
	movs r4, #1
_0806EA04:
	cmp r4, r5
	ble _0806EA0A
	adds r4, r5, #0
_0806EA0A:
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r4, r0
	beq _0806EA28
	mov r0, sb
	adds r1, r4, #0
	bl sub_0806EABC
	ldrh r1, [r6]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _0806EA28
	subs r0, r1, #1
	strh r0, [r6]
_0806EA28:
	strh r4, [r7]
	ldr r0, _0806EA74 @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806EA86
	mov r5, sb
	adds r5, #0x6a
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	cmp r0, r1
	bne _0806EA4E
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _0806EA7C
_0806EA4E:
	ldr r4, _0806EA78 @ =gUnk_081145E4
	movs r2, #0
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl PlaySFX
	ldrh r0, [r7]
	strh r0, [r5]
	movs r2, #0
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	adds r4, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r6]
	b _0806EA86
	.align 2, 0
_0806EA74: .4byte gUnk_03000FF0
_0806EA78: .4byte gUnk_081145E4
_0806EA7C:
	ldr r0, _0806EAB4 @ =0x80010000
	bl PlaySFX
	movs r0, #0
	strh r0, [r5]
_0806EA86:
	ldrh r1, [r6]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _0806EAA4
	subs r0, r1, #1
	movs r1, #0
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0806EAA4
	mov r0, sb
	adds r0, #0x6a
	strh r1, [r0]
	strh r1, [r6]
_0806EAA4:
	ldr r1, _0806EAB8 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0806EAAA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806EAB4: .4byte 0x80010000
_0806EAB8: .4byte gUnk_02033280

	thumb_func_start sub_0806EABC
sub_0806EABC: @ 0x0806EABC
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08050384
	ldr r1, _0806EAE0 @ =gUnk_020227E8
	ldr r2, _0806EAE4 @ =0x00202020
	adds r0, r4, #0
	bl sub_08057044
	ldr r0, _0806EAE8 @ =0x00003302
	ldr r1, _0806EAEC @ =gUnk_081146B8
	bl sub_0805F46C
	ldr r1, _0806EAF0 @ =gLCDControls
	movs r0, #1
	strh r0, [r1, #0xe]
	pop {r4, pc}
	.align 2, 0
_0806EAE0: .4byte gUnk_020227E8
_0806EAE4: .4byte 0x00202020
_0806EAE8: .4byte 0x00003302
_0806EAEC: .4byte gUnk_081146B8
_0806EAF0: .4byte gLCDControls

	thumb_func_start sub_0806EAF4
sub_0806EAF4: @ 0x0806EAF4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _0806EB48
	ldr r1, _0806EBA0 @ =gUnk_081146D0
	adds r0, r6, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806EBA8
	ldrb r0, [r6, #0xc]
	adds r0, #1
	strb r0, [r6, #0xc]
	ldrb r1, [r6, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r6, #0x18]
	ldrb r2, [r6, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r6, #0x19]
	adds r3, r6, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldrb r0, [r6, #0x1b]
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r6, #0x1b]
	movs r0, #0x78
	strh r0, [r6, #0x2e]
	movs r0, #0x10
	strh r0, [r6, #0x32]
_0806EB48:
	ldr r7, [r6, #0x50]
	cmp r7, #0
	beq _0806EBA4
	adds r0, r7, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r5, #0x96
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r1, r5, #0
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0x68
	strh r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl __modsi3
	adds r4, r0, #0
	movs r1, #0x3c
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x3c
	bl __modsi3
	movs r1, #6
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0x6c
	strh r0, [r1]
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _0806EBA8
	bl sub_0805E780
	b _0806EBA8
	.align 2, 0
_0806EBA0: .4byte gUnk_081146D0
_0806EBA4:
	bl sub_0805E780
_0806EBA8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0806EBAC
sub_0806EBAC: @ 0x0806EBAC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	adds r0, r4, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	adds r0, #0x6c
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0xa
	bl sub_0806FF60
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0806FFBC
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0
	bl sub_0806FFBC
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0xc
	movs r3, #0
	bl sub_0806FFBC
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806EC20
sub_0806EC20: @ 0x0806EC20
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x58
	movs r1, #0
	movs r2, #0
	bl CreateNPC
	cmp r0, #0
	beq _0806EC34
	str r4, [r0, #0x50]
_0806EC34:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806EC38
sub_0806EC38: @ 0x0806EC38
	push {lr}
	movs r0, #7
	movs r1, #0x58
	movs r2, #7
	bl sub_0805EB00
	cmp r0, #0
	beq _0806EC4C
	bl sub_0805E7BC
_0806EC4C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806EC50
sub_0806EC50: @ 0x0806EC50
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #9]
	lsls r0, r0, #3
	ldr r1, _0806EC74 @ =gUnk_08114AE4
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne _0806EC6E
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #3
	ldr r1, [r2, #4]
	adds r2, r1, r0
_0806EC6E:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_0806EC74: .4byte gUnk_08114AE4

	thumb_func_start sub_0806EC78
sub_0806EC78: @ 0x0806EC78
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806ED4A
	adds r0, r4, #0
	bl sub_0806EC50
	adds r5, r0, #0
	ldrb r1, [r5]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0806ECA2
	ldrb r1, [r4, #0x10]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _0806ED4A
_0806ECA2:
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x16
	lsrs r2, r0, #0x16
	adds r1, r2, #0
	ldrb r0, [r5, #3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0806ECC0
	cmp r0, #2
	bne _0806ECCA
	adds r0, r4, #0
	adds r0, #0x60
	strh r2, [r0]
	b _0806ECD0
_0806ECC0:
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE008
	b _0806ECD0
_0806ECCA:
	adds r0, r4, #0
	bl sub_080ADF80
_0806ECD0:
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x16
	lsrs r1, r0, #0x16
	adds r0, r4, #0
	bl sub_0801D040
	ldrh r0, [r5, #6]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #5]
	movs r3, #3
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r5, #7]
	lsls r1, r1, #0x1b
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	lsrs r1, r1, #0x1d
	lsls r1, r1, #3
	ldrb r2, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r5, #7]
	lsrs r1, r1, #5
	ands r1, r3
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r1, _0806ED4C @ =gUnk_08114EE4
	ldrb r0, [r5, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	ldrb r1, [r4, #0x10]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r1, #0xff
	adds r0, r4, #0
	adds r0, #0x58
	strb r1, [r0]
	strb r1, [r4, #0x1e]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_0806ED4A:
	pop {r4, r5, pc}
	.align 2, 0
_0806ED4C: .4byte gUnk_08114EE4