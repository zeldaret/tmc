	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08063740
sub_08063740: @ 0x08063740
	push {lr}
	ldr r2, _08063754 @ =gUnk_0810CBD8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08063754: .4byte gUnk_0810CBD8

	thumb_func_start sub_08063758
sub_08063758: @ 0x08063758
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08063794 @ =gUnk_0810CB78
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _080637B4
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xe]
	ands r1, r2
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08063798
	movs r0, #6
	b _0806379A
	.align 2, 0
_08063794: .4byte gUnk_0810CB78
_08063798:
	movs r0, #2
_0806379A:
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	movs r1, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x69
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0807DD50
	adds r0, r4, #0
	bl sub_080637B8
_080637B4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080637B8
sub_080637B8: @ 0x080637B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _08063804
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _08063800 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080637F2
	adds r1, #4
_080637F2:
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_0806F118
	b _0806382E
	.align 2, 0
_08063800: .4byte gLinkEntity
_08063804:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r0, [r5]
	cmp r0, #0xfe
	bne _08063828
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r5]
_08063828:
	adds r0, r4, #0
	bl sub_08004274
_0806382E:
	pop {r4, r5, pc}

	thumb_func_start sub_08063830
sub_08063830: @ 0x08063830
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _0806384C
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl UpdateSprite
_0806384C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08063850
sub_08063850: @ 0x08063850
	push {lr}
	ldrb r3, [r0, #0x18]
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1f
	rsbs r2, r3, #0
	orrs r2, r3
	asrs r2, r2, #0x1f
	movs r3, #4
	ands r2, r3
	ldr r1, [r1, #4]
	adds r1, r1, r2
	ldrb r2, [r0, #0x14]
	lsrs r2, r2, #1
	adds r1, r1, r2
	bl UpdateSprite
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08063874
sub_08063874: @ 0x08063874
	ldrb r1, [r0, #0xe]
	strb r1, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806387C
sub_0806387C: @ 0x0806387C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #3
	movs r0, #0xda
	bl sub_0807CBD0
	cmp r0, #0
	bne _08063896
	movs r4, #0
	movs r0, #0xda
	bl sub_0807CCB4
	b _080638D6
_08063896:
	movs r0, #0xd1
	bl sub_0807CBD0
	cmp r0, #0
	bne _080638D6
	movs r5, #0
	movs r4, #1
_080638A4:
	ldr r0, _080638F8 @ =gUnk_02002B0E
	adds r1, r4, #0
	bl sub_0801D5A8
	cmp r0, #0
	beq _080638B2
	adds r5, #1
_080638B2:
	adds r4, #1
	cmp r4, #0x82
	ble _080638A4
	movs r4, #1
	cmp r5, #0x81
	ble _080638D6
	movs r4, #2
	movs r0, #0xd1
	bl sub_0807CCB4
	ldr r0, _080638FC @ =0x00000A17
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _08063900 @ =0x00000A57
	movs r1, #1
	bl sub_0807BA8C
_080638D6:
	ldr r0, _08063904 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r1, r0, #6
	cmp r1, #0
	bge _080638E2
	movs r1, #0
_080638E2:
	ldr r2, _08063908 @ =gUnk_0810CBE4
	lsls r0, r4, #1
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r6, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_080638F8: .4byte gUnk_02002B0E
_080638FC: .4byte 0x00000A17
_08063900: .4byte 0x00000A57
_08063904: .4byte gUnk_02002A40
_08063908: .4byte gUnk_0810CBE4

	thumb_func_start sub_0806390C
sub_0806390C: @ 0x0806390C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	movs r0, #0xd9
	bl sub_0807CBD0
	cmp r0, #0
	bne _0806392E
	movs r5, #0
	movs r0, #0xd9
	bl sub_0807CCB4
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #1
	str r0, [r1, #0x14]
_0806392E:
	ldr r0, _08063940 @ =gUnk_0810CC04
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_08063940: .4byte gUnk_0810CC04

	thumb_func_start sub_08063944
sub_08063944: @ 0x08063944
	push {lr}
	adds r3, r0, #0
	movs r0, #0
	str r0, [r1, #0x14]
	ldr r0, _0806396C @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _08063958
	movs r0, #0
_08063958:
	ldrb r1, [r3, #0xb]
	lsls r1, r1, #6
	lsls r0, r0, #3
	ldr r2, _08063970 @ =gUnk_0810CC08
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r3, #0
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806396C: .4byte gUnk_02002A40
_08063970: .4byte gUnk_0810CC08

	thumb_func_start sub_08063974
sub_08063974: @ 0x08063974
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xa]
	lsls r5, r5, #2
	ldr r0, _080639C8 @ =gUnk_0810CBC0
	adds r5, r5, r0
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
	ldrb r0, [r5]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldr r2, _080639CC @ =gUnk_0810CD88
	ldrb r1, [r4, #0x1e]
	movs r0, #3
	ands r0, r1
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r2, [r0]
	ldrb r0, [r5, #1]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, r5, pc}
	.align 2, 0
_080639C8: .4byte gUnk_0810CBC0
_080639CC: .4byte gUnk_0810CD88

	thumb_func_start sub_080639D0
sub_080639D0: @ 0x080639D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_080639E8
sub_080639E8: @ 0x080639E8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08063A40
	ldrb r0, [r4, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08063A3C @ =gUnk_0810CB78
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _08063A5C
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrh r0, [r4, #0x32]
	subs r0, #4
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_08096208
	b _08063A5C
	.align 2, 0
_08063A3C: .4byte gUnk_0810CB78
_08063A40:
	adds r5, r4, #0
	adds r5, #0x59
	ldrb r0, [r5]
	cmp r0, #0xfe
	bne _08063A56
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r5]
_08063A56:
	adds r0, r4, #0
	bl sub_08004274
_08063A5C:
	pop {r4, r5, pc}
	.align 2, 0
