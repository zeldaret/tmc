	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08069544
sub_08069544: @ 0x08069544
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08069568
	ldr r0, _08069564 @ =gUnk_08111B98
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0806957E
	.align 2, 0
_08069564: .4byte gUnk_08111B98
_08069568:
	ldr r0, _08069580 @ =gUnk_08111B88
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
_0806957E:
	pop {r4, pc}
	.align 2, 0
_08069580: .4byte gUnk_08111B88

	thumb_func_start sub_08069584
sub_08069584: @ 0x08069584
	push {lr}
	adds r1, r0, #0
	ldr r0, _08069598 @ =gUnk_030010A0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806959C
	movs r0, #3
	b _0806959E
	.align 2, 0
_08069598: .4byte gUnk_030010A0
_0806959C:
	movs r0, #1
_0806959E:
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	movs r1, #2
	bl InitAnimationForceUpdate
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080695AC
sub_080695AC: @ 0x080695AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _080695D2
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	cmp r0, #0
	blt _080695D2
	strb r0, [r4, #0x14]
_080695D2:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _080695E6
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_080695E6:
	pop {r4, pc}

	thumb_func_start sub_080695E8
sub_080695E8: @ 0x080695E8
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldr r0, _08069618 @ =gTextBox
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _08069614
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x39
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0805E584
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_08069614:
	pop {r4, pc}
	.align 2, 0
_08069618: .4byte gTextBox

	thumb_func_start sub_0806961C
sub_0806961C: @ 0x0806961C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08069638 @ =gUnk_030010A0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #2
	bne _08069630
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_08069630:
	adds r0, r4, #0
	bl sub_0806FD3C
	pop {r4, pc}
	.align 2, 0
_08069638: .4byte gUnk_030010A0

	thumb_func_start sub_0806963C
sub_0806963C: @ 0x0806963C
	push {lr}
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	bl sub_0807DD50
	pop {pc}

	thumb_func_start sub_08069654
sub_08069654: @ 0x08069654
	push {lr}
	movs r1, #0
	bl sub_0807DD94
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08069660
sub_08069660: @ 0x08069660
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806967C @ =0x00002C1C
	adds r1, r4, #0
	bl TextboxNoOverlap
	adds r0, r4, #0
	bl sub_080696BC
	ldr r1, _08069680 @ =gTextBox
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1, #0x10]
	pop {r4, pc}
	.align 2, 0
_0806967C: .4byte 0x00002C1C
_08069680: .4byte gTextBox

	thumb_func_start sub_08069684
sub_08069684: @ 0x08069684
	push {lr}
	movs r0, #9
	movs r1, #0x31
	movs r2, #8
	bl sub_0805EB00
	cmp r0, #0
	bne _080696AE
	bl sub_0805E8D4
	adds r1, r0, #0
	cmp r1, #0
	beq _080696AE
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x31
	strb r0, [r1, #9]
	adds r0, r1, #0
	movs r1, #8
	bl sub_0805EA2C
_080696AE:
	pop {pc}

	thumb_func_start sub_080696B0
sub_080696B0: @ 0x080696B0
	ldr r1, _080696B8 @ =gRoomVars
	movs r0, #0
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_080696B8: .4byte gRoomVars

	thumb_func_start sub_080696BC
sub_080696BC: @ 0x080696BC
	push {r4, r5, lr}
	ldr r0, _08069710 @ =gRoomVars
	ldrb r0, [r0, #7]
	movs r5, #0
	cmp r0, #0x70
	ble _080696CA
	movs r5, #1
_080696CA:
	cmp r0, #0x72
	ble _080696D0
	movs r5, #2
_080696D0:
	movs r0, #0x3e
	bl CheckGlobalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x3f
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080696E8
	movs r4, #2
_080696E8:
	movs r0, #0x40
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080696F4
	movs r4, #3
_080696F4:
	movs r0, #0x41
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08069700
	movs r4, #4
_08069700:
	ldr r0, _08069714 @ =gUnk_08111BA0
	lsls r1, r4, #1
	adds r1, r1, r4
	adds r1, r1, r5
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	pop {r4, r5, pc}
	.align 2, 0
_08069710: .4byte gRoomVars
_08069714: .4byte gUnk_08111BA0

	thumb_func_start sub_08069718
sub_08069718: @ 0x08069718
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	bl sub_080696BC
	adds r6, r0, #0
	ldr r0, _08069754 @ =gUnk_02002A40
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r6, r0
	bgt _08069764
	ldr r5, _08069758 @ =gRoomVars
	ldrb r0, [r5, #7]
	bl sub_0801E7D0
	cmp r0, #0x62
	bhi _0806975C
	rsbs r0, r6, #0
	bl ModRupees
	ldrb r1, [r5, #7]
	movs r0, #0x5c
	movs r2, #0
	bl sub_080A7C18
	movs r0, #0
	strb r0, [r5, #6]
	strb r0, [r5, #7]
	movs r0, #1
	b _0806976E
	.align 2, 0
_08069754: .4byte gUnk_02002A40
_08069758: .4byte gRoomVars
_0806975C:
	ldr r0, _08069760 @ =0x00002C1F
	b _08069766
	.align 2, 0
_08069760: .4byte 0x00002C1F
_08069764:
	ldr r0, _0806977C @ =0x00002C1E
_08069766:
	adds r1, r4, #0
	bl TextboxNoOverlap
	movs r0, #0
_0806976E:
	str r0, [r7, #0x14]
	ldr r2, _08069780 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806977C: .4byte 0x00002C1E
_08069780: .4byte gUnk_02033280
