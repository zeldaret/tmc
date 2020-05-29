	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080692A0
sub_080692A0: @ 0x080692A0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _080692C6
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #0xf
	bl sub_080042AC
	b _080692CC
_080692C6:
	adds r0, r2, #0
	bl sub_080042B8
_080692CC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080692D0
sub_080692D0: @ 0x080692D0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080692F4
	ldr r0, _080692F0 @ =gUnk_08111A8C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0806930A
	.align 2, 0
_080692F0: .4byte gUnk_08111A8C
_080692F4:
	ldr r0, _0806930C @ =gUnk_08111A80
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
_0806930A:
	pop {r4, pc}
	.align 2, 0
_0806930C: .4byte gUnk_08111A80

	thumb_func_start sub_08069310
sub_08069310: @ 0x08069310
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078778
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042AC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08069328
sub_08069328: @ 0x08069328
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _0806934E
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	cmp r0, #0
	blt _0806934E
	strb r0, [r4, #0x14]
_0806934E:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _08069362
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080042AC
_08069362:
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806938E
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0805E47C
	adds r0, r4, #0
	movs r1, #8
	bl sub_080042AC
	ldrb r0, [r4, #0xe]
	movs r1, #0x90
	lsls r1, r1, #5
	adds r0, r0, r1
	bl TextboxTryNoOverlap
_0806938E:
	pop {r4, pc}

	thumb_func_start sub_08069390
sub_08069390: @ 0x08069390
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldr r0, _080693C0 @ =gTextBox
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _080693BC
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x39
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0805E584
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080042AC
_080693BC:
	pop {r4, pc}
	.align 2, 0
_080693C0: .4byte gTextBox

	thumb_func_start sub_080693C4
sub_080693C4: @ 0x080693C4
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	bl sub_0807DD50
	pop {pc}

	thumb_func_start sub_080693D0
sub_080693D0: @ 0x080693D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0
	bl sub_0807DD94
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #8
	bne _08069422
	adds r0, r5, #0
	adds r0, #0x82
	ldrh r0, [r0]
	movs r1, #0xf
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r6, r0, #0x1f
	adds r4, r5, #0
	adds r4, #0x5a
	ldrb r0, [r4]
	cmp r0, #1
	bne _0806940C
	movs r0, #0
	strb r0, [r4]
	ldr r1, _08069424 @ =0xFFF80000
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_08069428
_0806940C:
	ldrb r0, [r4]
	cmp r0, #2
	bne _08069422
	movs r0, #0
	strb r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_08069428
_08069422:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08069424: .4byte 0xFFF80000

	thumb_func_start sub_08069428
sub_08069428: @ 0x08069428
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #4
	movs r2, #0
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _08069452
	ldr r3, _0806947C @ =0xFFF00000
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl PositionRelative
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
_08069452:
	cmp r6, #0
	beq _0806947A
	adds r0, r5, #0
	movs r1, #0x41
	movs r2, #0
	bl CreateFX
	adds r4, r0, #0
	cmp r4, #0
	beq _0806947A
	ldr r3, _0806947C @ =0xFFF00000
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl PositionRelative
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
_0806947A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806947C: .4byte 0xFFF00000

	thumb_func_start sub_08069480
sub_08069480: @ 0x08069480
	push {lr}
	bl sub_0801E99C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {pc}

	thumb_func_start sub_0806948C
sub_0806948C: @ 0x0806948C
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08069480
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0801E7F4
	str r0, [r4, #0x14]
	ldr r2, _080694AC @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_080694AC: .4byte gUnk_02033280

	thumb_func_start sub_080694B0
sub_080694B0: @ 0x080694B0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08069480
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, #0
	bl sub_0801E7F4
	cmp r0, #0
	beq _080694CE
	adds r0, r4, #0
	bl sub_08078778
	b _080694D6
_080694CE:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08078784
_080694D6:
	pop {r4, r5, pc}

	thumb_func_start sub_080694D8
sub_080694D8: @ 0x080694D8
	push {lr}
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	ldr r2, _080694E8 @ =gUnk_08111A94
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_080694E8: .4byte gUnk_08111A94

	thumb_func_start sub_080694EC
sub_080694EC: @ 0x080694EC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #4
	strb r0, [r4, #0x14]
	movs r5, #2
	movs r0, #0x2f
	bl sub_0801E7F4
	cmp r0, #0
	bne _08069502
	movs r5, #8
_08069502:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080042AC
	adds r0, r4, #0
	adds r0, #0x80
	strh r5, [r0]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08069514
sub_08069514: @ 0x08069514
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806953A
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #2
	bl sub_080042AC
	b _08069540
_0806953A:
	adds r0, r2, #0
	bl sub_080042B8
_08069540:
	pop {pc}
	.align 2, 0

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
	bl sub_080042AC
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
	bl sub_080042AC
_080695E6:
	pop {r4, pc}

	thumb_func_start sub_080695E8
sub_080695E8: @ 0x080695E8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
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
	bl sub_080042AC
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
	bl sub_080042B8
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
	ldr r1, _080696B8 @ =gUnk_02034350
	movs r0, #0
	strb r0, [r1, #6]
	bx lr
	.align 2, 0
_080696B8: .4byte gUnk_02034350

	thumb_func_start sub_080696BC
sub_080696BC: @ 0x080696BC
	push {r4, r5, lr}
	ldr r0, _08069710 @ =gUnk_02034350
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
	bl GetProgressFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x3f
	bl GetProgressFlag
	cmp r0, #0
	beq _080696E8
	movs r4, #2
_080696E8:
	movs r0, #0x40
	bl GetProgressFlag
	cmp r0, #0
	beq _080696F4
	movs r4, #3
_080696F4:
	movs r0, #0x41
	bl GetProgressFlag
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
_08069710: .4byte gUnk_02034350
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
	ldr r5, _08069758 @ =gUnk_02034350
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
_08069758: .4byte gUnk_02034350
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

	thumb_func_start sub_08069784
sub_08069784: @ 0x08069784
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806979A
	adds r0, r2, #0
	bl sub_08069838
	b _080697A0
_0806979A:
	adds r0, r2, #0
	bl sub_080697A4
_080697A0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080697A4
sub_080697A4: @ 0x080697A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080697C0 @ =gUnk_08111C48
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_080697C0: .4byte gUnk_08111C48

	thumb_func_start sub_080697C4
sub_080697C4: @ 0x080697C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080697E8 @ =gUnk_08111C3C
	bl sub_0806FDEC
	cmp r0, #0
	beq _080697E4
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08078778
_080697E4:
	pop {r4, pc}
	.align 2, 0
_080697E8: .4byte gUnk_08111C3C

	thumb_func_start sub_080697EC
sub_080697EC: @ 0x080697EC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	blt _0806981E
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0806981A
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r1
	beq _0806981E
	adds r0, r4, #0
	bl sub_08004260
	b _0806981E
_0806981A:
	subs r0, #1
	strb r0, [r4, #0xf]
_0806981E:
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08069834
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08069888
_08069834:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08069838
sub_08069838: @ 0x08069838
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	bne _08069862
	ldr r1, _08069884 @ =gUnk_08111C3C
	bl sub_0806FDEC
	cmp r0, #0
	beq _08069880
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x68
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_0807DD64
_08069862:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08069880
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08069888
_08069880:
	pop {r4, r5, pc}
	.align 2, 0
_08069884: .4byte gUnk_08111C3C

	thumb_func_start sub_08069888
sub_08069888: @ 0x08069888
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x47
	bl GetProgressFlag
	cmp r0, #0
	bne _080698A0
	movs r4, #0
	movs r0, #0x47
	bl sub_0807CD04
	b _08069906
_080698A0:
	movs r0, #0x2b
	bl GetProgressFlag
	cmp r0, #0
	bne _080698C2
	movs r0, #0x2c
	bl GetProgressFlag
	cmp r0, #0
	bne _080698C2
	movs r0, #0x2d
	bl GetProgressFlag
	cmp r0, #0
	bne _080698C2
	movs r4, #1
	b _08069906
_080698C2:
	movs r0, #0x18
	bl GetProgressFlag
	cmp r0, #0
	bne _080698D0
	movs r4, #2
	b _08069906
_080698D0:
	movs r0, #0x48
	bl GetProgressFlag
	cmp r0, #0
	bne _080698E4
	movs r4, #3
	movs r0, #0x48
	bl sub_0807CD04
	b _08069906
_080698E4:
	movs r0, #0x2e
	bl GetProgressFlag
	cmp r0, #0
	bne _08069904
	movs r0, #0x2f
	bl GetProgressFlag
	cmp r0, #0
	bne _08069904
	movs r0, #0x30
	bl GetProgressFlag
	movs r4, #4
	cmp r0, #0
	beq _08069906
_08069904:
	movs r4, #5
_08069906:
	ldr r0, _08069918 @ =gUnk_08111C50
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_08069918: .4byte gUnk_08111C50

	thumb_func_start sub_0806991C
sub_0806991C: @ 0x0806991C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	adds r1, r5, #0
	adds r1, #0x68
	movs r3, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x69
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, _0806999C @ =gUnk_08111C5C
	adds r1, r1, r0
	ldr r2, _080699A0 @ =gRoomControls
	ldrh r0, [r1]
	ldrh r6, [r2, #6]
	adds r0, r0, r6
	strh r0, [r4, #0x1e]
	ldrh r0, [r1, #2]
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r4, #0x22]
	movs r0, #8
	strb r0, [r4, #0x19]
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	str r3, [r4, #0x14]
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	movs r3, #0x22
	ldrsh r1, [r4, r3]
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r5, #0x15]
	ldrb r2, [r5, #0x14]
	movs r1, #0x80
	ands r1, r2
	ldr r2, _080699A4 @ =gUnk_08111C74
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	adds r0, r0, r2
	ldrb r0, [r0]
	orrs r1, r0
	strb r1, [r5, #0x14]
	ldr r2, _080699A8 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806999C: .4byte gUnk_08111C5C
_080699A0: .4byte gRoomControls
_080699A4: .4byte gUnk_08111C74
_080699A8: .4byte gUnk_02033280

	thumb_func_start sub_080699AC
sub_080699AC: @ 0x080699AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	adds r1, r5, #0
	adds r1, #0x68
	movs r3, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x69
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, _08069A2C @ =gUnk_08111C84
	adds r1, r1, r0
	ldr r2, _08069A30 @ =gRoomControls
	ldrh r0, [r1]
	ldrh r6, [r2, #6]
	adds r0, r0, r6
	strh r0, [r4, #0x1e]
	ldrh r0, [r1, #2]
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	strh r0, [r4, #0x22]
	movs r0, #8
	strb r0, [r4, #0x19]
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	str r3, [r4, #0x14]
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	movs r3, #0x22
	ldrsh r1, [r4, r3]
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r5, #0x15]
	ldrb r2, [r5, #0x14]
	movs r1, #0x80
	ands r1, r2
	ldr r2, _08069A34 @ =gUnk_08111C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	adds r0, r0, r2
	ldrb r0, [r0]
	orrs r1, r0
	strb r1, [r5, #0x14]
	ldr r2, _08069A38 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08069A2C: .4byte gUnk_08111C84
_08069A30: .4byte gRoomControls
_08069A34: .4byte gUnk_08111C8C
_08069A38: .4byte gUnk_02033280

	thumb_func_start sub_08069A3C
sub_08069A3C: @ 0x08069A3C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000E50
	ldr r2, _08069A5C @ =gUnk_08111C9C
	movs r1, #1
	ands r1, r0
	adds r4, #0x69
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08069A5C: .4byte gUnk_08111C9C

	thumb_func_start sub_08069A60
sub_08069A60: @ 0x08069A60
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000E50
	ldr r2, _08069A80 @ =gUnk_08111CA8
	movs r1, #1
	ands r1, r0
	adds r4, #0x69
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08069A80: .4byte gUnk_08111CA8

	thumb_func_start sub_08069A84
sub_08069A84: @ 0x08069A84
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000E50
	ldr r2, _08069AA4 @ =gUnk_08111CB4
	movs r1, #1
	ands r1, r0
	adds r4, #0x69
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08069AA4: .4byte gUnk_08111CB4

	thumb_func_start sub_08069AA8
sub_08069AA8: @ 0x08069AA8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000E50
	ldr r2, _08069AC8 @ =gUnk_08111CB8
	movs r1, #1
	ands r1, r0
	adds r4, #0x69
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08069AC8: .4byte gUnk_08111CB8

	thumb_func_start sub_08069ACC
sub_08069ACC: @ 0x08069ACC
	push {lr}
	adds r2, r1, #0
	adds r0, #0x68
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bgt _08069AE2
	movs r0, #1
	b _08069AE4
_08069AE2:
	movs r0, #0
_08069AE4:
	str r0, [r2, #0x14]
	pop {pc}

	thumb_func_start sub_08069AE8
sub_08069AE8: @ 0x08069AE8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r0
	adds r2, #0xf
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08069B1C
sub_08069B1C: @ 0x08069B1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08069B40 @ =gUnk_08111D88
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	adds r0, r4, #0
	bl sub_08069FE8
	pop {r4, pc}
	.align 2, 0
_08069B40: .4byte gUnk_08111D88

	thumb_func_start sub_08069B44
sub_08069B44: @ 0x08069B44
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08069EF0
	cmp r0, #0
	beq _08069C30
	adds r0, r5, #0
	bl sub_0805ACC0
	cmp r0, #0
	bne _08069B64
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r2, #0x32
	ldrsh r4, [r5, r2]
	b _08069B68
_08069B64:
	lsrs r1, r0, #0x10
	adds r4, r0, #0
_08069B68:
	ldrb r0, [r5, #0xe]
	movs r3, #0x20
	cmp r0, #0
	beq _08069B72
	adds r3, r0, #0
_08069B72:
	subs r0, r1, r3
	adds r2, r5, #0
	adds r2, #0x6e
	strh r0, [r2]
	adds r1, r1, r3
	adds r0, r5, #0
	adds r0, #0x6c
	strh r1, [r0]
	adds r1, r4, #0
	subs r1, #8
	adds r0, #4
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #8
	adds r2, #4
	strh r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	movs r4, #2
	strb r4, [r5, #0x14]
	adds r1, r5, #0
	adds r1, #0x6a
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0801E99C
	adds r1, r5, #0
	adds r1, #0x74
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_080042AC
	ldrb r0, [r5, #0x10]
	ands r4, r0
	cmp r4, #0
	beq _08069BD2
	adds r0, r5, #0
	bl sub_0807DD50
_08069BD2:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _08069BF2
	ldr r0, _08069C34 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08069BF2
	movs r0, #0x36
	bl GetInventoryValue
	cmp r0, #2
	beq _08069BF2
	movs r0, #4
	strb r0, [r5, #0xc]
_08069BF2:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _08069C30
	movs r0, #0xcf
	bl sub_0807CBD0
	cmp r0, #0
	bne _08069C30
	ldr r0, _08069C38 @ =0x00004072
	movs r6, #0x2e
	ldrsh r1, [r5, r6]
	ldr r3, _08069C3C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	adds r3, #8
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0800015E
_08069C30:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08069C34: .4byte gUnk_03003F80
_08069C38: .4byte 0x00004072
_08069C3C: .4byte gRoomControls

	thumb_func_start sub_08069C40
sub_08069C40: @ 0x08069C40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08069F90
	cmp r0, #0
	beq _08069C80
	ldr r0, _08069C68 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08069C6C
	adds r0, r4, #0
	bl sub_08069CB8
	b _08069C7A
	.align 2, 0
_08069C68: .4byte gUnk_03003F80
_08069C6C:
	adds r0, r4, #0
	bl sub_0806EDC4
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08069D00
_08069C7A:
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _08069CB2
_08069C80:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08069CB2
	movs r0, #2
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
	bl sub_08000E50
	ldr r2, _08069CB4 @ =gUnk_08111DA8
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08069F6C
_08069CB2:
	pop {r4, pc}
	.align 2, 0
_08069CB4: .4byte gUnk_08111DA8

	thumb_func_start sub_08069CB8
sub_08069CB8: @ 0x08069CB8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08069CF8 @ =gLinkEntity
	bl sub_080045C4
	ldr r2, _08069CFC @ =gUnk_08111DB0
	ldrb r1, [r4, #0x14]
	lsls r1, r1, #5
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	lsrs r0, r1, #6
	strb r0, [r4, #0x14]
	movs r0, #0x3f
	ands r1, r0
	adds r5, r4, #0
	adds r5, #0x6b
	strb r1, [r5]
	adds r0, r4, #0
	bl sub_0806A028
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	ldrb r1, [r5]
	cmp r0, r1
	beq _08069CF6
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_080042AC
_08069CF6:
	pop {r4, r5, pc}
	.align 2, 0
_08069CF8: .4byte gLinkEntity
_08069CFC: .4byte gUnk_08111DB0

	thumb_func_start sub_08069D00
sub_08069D00: @ 0x08069D00
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x6b
	movs r7, #8
	strb r7, [r5]
	bl sub_0806A028
	adds r6, r4, #0
	adds r6, #0x58
	ldrb r0, [r6]
	cmp r0, #0x1f
	bls _08069D2A
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08069D4E
	strb r7, [r5]
_08069D2A:
	bl sub_08000E50
	ldr r1, _08069D50 @ =0x000001FF
	ands r1, r0
	cmp r1, #2
	bhi _08069D3C
	adds r0, r4, #0
	bl sub_08069FBC
_08069D3C:
	ldrb r2, [r6]
	ldrb r1, [r5]
	ldrb r0, [r4, #0x14]
	adds r1, r1, r0
	cmp r2, r1
	beq _08069D4E
	adds r0, r4, #0
	bl sub_080042AC
_08069D4E:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08069D50: .4byte 0x000001FF

	thumb_func_start sub_08069D54
sub_08069D54: @ 0x08069D54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08069F90
	cmp r0, #0
	bne _08069DD8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08069DD8
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_080AEF88
	ldrh r1, [r4, #0x2a]
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	cmp r2, r0
	bge _08069D92
	adds r0, #1
	strh r0, [r4, #0x2e]
	movs r1, #0xe0
	lsls r1, r1, #4
	b _08069DA4
_08069D92:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	cmp r2, r0
	ble _08069DA4
	subs r0, #1
	strh r0, [r4, #0x2e]
	movs r1, #0xe0
	lsls r1, r1, #8
_08069DA4:
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	cmp r2, r0
	bge _08069DBA
	adds r0, #1
	strh r0, [r4, #0x32]
	movs r1, #0xe
	b _08069DCA
_08069DBA:
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	cmp r2, r0
	ble _08069DCA
	subs r0, #1
	strh r0, [r4, #0x32]
	movs r1, #0xe0
_08069DCA:
	adds r0, r4, #0
	bl sub_0800417E
	adds r0, r4, #0
	bl sub_08069F6C
	b _08069DF6
_08069DD8:
	adds r0, r4, #0
	bl sub_08069F90
	cmp r0, #0
	beq _08069DE6
	movs r0, #1
	b _08069DE8
_08069DE6:
	movs r0, #3
_08069DE8:
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
_08069DF6:
	pop {r4, pc}

	thumb_func_start sub_08069DF8
sub_08069DF8: @ 0x08069DF8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08069F90
	cmp r0, #0
	beq _08069E0E
	movs r0, #1
	b _08069E34
_08069E0E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08069E22
	adds r0, r4, #0
	bl sub_08069D00
	b _08069E42
_08069E22:
	bl sub_08000E50
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x2f
	bhi _08069E32
	movs r0, #2
	b _08069E34
_08069E32:
	movs r0, #3
_08069E34:
	strb r0, [r4, #0xc]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
_08069E42:
	pop {r4, pc}

	thumb_func_start sub_08069E44
sub_08069E44: @ 0x08069E44
	push {lr}
	movs r1, #0
	bl sub_0807DD94
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08069E50
sub_08069E50: @ 0x08069E50
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_0806EDC4
	strb r0, [r4, #0x14]
	adds r5, r4, #0
	adds r5, #0x6b
	movs r7, #8
	strb r7, [r5]
	adds r0, r4, #0
	bl sub_0806A028
	adds r0, r4, #0
	bl sub_080042B8
	adds r6, r4, #0
	adds r6, #0x58
	ldrb r0, [r6]
	cmp r0, #0x1f
	bls _08069E88
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08069EC8
	strb r7, [r5]
_08069E88:
	adds r0, r4, #0
	bl sub_08069FBC
	ldrb r2, [r6]
	ldrb r1, [r5]
	ldrb r0, [r4, #0x14]
	adds r1, r1, r0
	cmp r2, r1
	beq _08069EA0
	adds r0, r4, #0
	bl sub_080042AC
_08069EA0:
	movs r0, #0x36
	bl GetInventoryValue
	cmp r0, #2
	bne _08069EC8
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x29
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_080788E0
	movs r0, #0xd1
	bl sub_08004488
	movs r0, #0xcd
	bl sub_08004488
_08069EC8:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08069ECC
sub_08069ECC: @ 0x08069ECC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F148
	cmp r0, #0
	beq _08069EDC
	movs r0, #1
	strb r0, [r4, #0xc]
_08069EDC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08069EE0
sub_08069EE0: @ 0x08069EE0
	push {lr}
	bl sub_080042B8
	pop {pc}

	thumb_func_start sub_08069EE8
sub_08069EE8: @ 0x08069EE8
	movs r1, #5
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08069EF0
sub_08069EF0: @ 0x08069EF0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08069F20 @ =gUnk_08111D58
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _08069F28
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, _08069F24 @ =gUnk_08111E30
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #1
	b _08069F2A
	.align 2, 0
_08069F20: .4byte gUnk_08111D58
_08069F24: .4byte gUnk_08111E30
_08069F28:
	movs r0, #0
_08069F2A:
	pop {r4, pc}

	thumb_func_start sub_08069F2C
sub_08069F2C: @ 0x08069F2C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	cmp r2, #0
	beq _08069F46
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	adds r2, r2, r0
_08069F46:
	subs r2, #1
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}

	thumb_func_start sub_08069F6C
sub_08069F6C: @ 0x08069F6C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	bl sub_0806F5A4
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	adds r1, r0, #4
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r1, r0
	beq _08069F8C
	adds r0, r4, #0
	bl sub_080042AC
_08069F8C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08069F90
sub_08069F90: @ 0x08069F90
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _08069FA8
	movs r0, #0xcf
	bl sub_0807CBD0
	cmp r0, #0
	bne _08069FA8
	movs r0, #1
	b _08069FB4
_08069FA8:
	ldr r1, _08069FB8 @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0x14
	movs r3, #0x14
	bl sub_080041A0
_08069FB4:
	pop {r4, pc}
	.align 2, 0
_08069FB8: .4byte gLinkEntity

	thumb_func_start sub_08069FBC
sub_08069FBC: @ 0x08069FBC
	push {lr}
	adds r2, r0, #0
	ldr r0, _08069FE4 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	movs r1, #0x20
	cmp r0, #0
	beq _08069FD0
	movs r1, #0x24
_08069FD0:
	ldrb r0, [r2, #0x14]
	cmp r0, #1
	beq _08069FDA
	cmp r0, #3
	bne _08069FE0
_08069FDA:
	adds r0, r2, #0
	adds r0, #0x6b
	strb r1, [r0]
_08069FE0:
	pop {pc}
	.align 2, 0
_08069FE4: .4byte gUnk_03003F80

	thumb_func_start sub_08069FE8
sub_08069FE8: @ 0x08069FE8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0806A010 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r5, r0
	beq _0806A020
	cmp r5, #0
	bne _0806A014
	adds r0, r4, #0
	bl sub_08078778
	b _0806A020
	.align 2, 0
_0806A010: .4byte gUnk_03003F80
_0806A014:
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080787A8
_0806A020:
	adds r0, r4, #0
	adds r0, #0x6a
	strb r5, [r0]
	pop {r4, r5, pc}
	