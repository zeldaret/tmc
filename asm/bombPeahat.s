	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start BombPeahat
BombPeahat: @ 0x0802A804
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0802A830
	adds r0, r5, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _0802A830
	ldr r0, _0802A82C @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _0802A844
	.align 2, 0
_0802A82C: .4byte gUnk_080012C8
_0802A830:
	ldr r4, _0802A848 @ =gUnk_080CD0F0
	adds r0, r5, #0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_0802A844:
	pop {r4, r5, pc}
	.align 2, 0
_0802A848: .4byte gUnk_080CD0F0

	thumb_func_start sub_0802A84C
sub_0802A84C: @ 0x0802A84C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0802A878
	cmp r0, #3
	beq _0802A894
	ldr r0, _0802A874 @ =gUnk_080CD108
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0802AD54
	b _0802A8A4
	.align 2, 0
_0802A874: .4byte gUnk_080CD108
_0802A878:
	ldr r0, _0802A890 @ =gUnk_080CD120
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0802B048
	b _0802A8A4
	.align 2, 0
_0802A890: .4byte gUnk_080CD120
_0802A894:
	ldr r0, _0802A8A8 @ =gUnk_080CD134
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0802A8A4:
	pop {r4, pc}
	.align 2, 0
_0802A8A8: .4byte gUnk_080CD134

	thumb_func_start sub_0802A8AC
sub_0802A8AC: @ 0x0802A8AC
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x81
	movs r0, #0
	strb r0, [r2]
	ldrb r0, [r1, #0xa]
	cmp r0, #1
	bhi _0802A8C6
	adds r0, r1, #0
	movs r1, #0
	bl InitializeAnimation
_0802A8C6:
	pop {pc}

	thumb_func_start sub_0802A8C8
sub_0802A8C8: @ 0x0802A8C8
	push {lr}
	ldr r2, _0802A8DC @ =gUnk_080CD140
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802A8DC: .4byte gUnk_080CD140

	thumb_func_start sub_0802A8E0
sub_0802A8E0: @ 0x0802A8E0
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A8EC
sub_0802A8EC: @ 0x0802A8EC
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0802A8F4
sub_0802A8F4: @ 0x0802A8F4
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_0802A8FC
sub_0802A8FC: @ 0x0802A8FC
	push {lr}
	adds r2, r0, #0
	ldr r0, _0802A914 @ =gLinkState
	ldrb r0, [r0, #0x1c]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _0802A912
	adds r0, r2, #0
	adds r0, #0x45
	strb r1, [r0]
_0802A912:
	pop {pc}
	.align 2, 0
_0802A914: .4byte gLinkState

	thumb_func_start nullsub_143
nullsub_143: @ 0x0802A918
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A91C
sub_0802A91C: @ 0x0802A91C
	adds r0, #0x45
	movs r1, #0
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0802A924
sub_0802A924: @ 0x0802A924
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
	movs r6, #1
	movs r0, #1
	strb r0, [r7, #0xc]
	strb r5, [r7, #0xd]
	strb r5, [r7, #0xe]
	strb r5, [r7, #0xf]
	ldr r0, _0802A9A0 @ =gUnk_080CD16C
	str r0, [r7, #0x48]
	movs r4, #0
	ldr r0, _0802A9A4 @ =0x0000FFD0
	strh r0, [r7, #0x36]
	bl Random
	ands r0, r6
	adds r1, r7, #0
	adds r1, #0x80
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x82
	strh r5, [r0]
	subs r0, #7
	strb r4, [r0]
	adds r0, #6
	strb r4, [r0]
	subs r0, #7
	strb r4, [r0]
	subs r0, #2
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	subs r1, #0x48
	movs r0, #3
	strb r0, [r1]
	ldrb r2, [r7, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r7, #0x1b]
	ldrb r0, [r7, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r7, #0x19]
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldrb r1, [r7, #0xa]
	adds r1, #1
	adds r0, r7, #0
	bl InitializeAnimation
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802A9A0: .4byte gUnk_080CD16C
_0802A9A4: .4byte 0x0000FFD0

	thumb_func_start sub_0802A9A8
sub_0802A9A8: @ 0x0802A9A8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802A9B8
	subs r0, #1
	strb r0, [r4, #0xf]
	b _0802AA3E
_0802A9B8:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802A9DE
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802AA38
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x40
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0802ACDC
	b _0802AA38
_0802A9DE:
	ldr r0, _0802AA14 @ =gRoomControls
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _0802AA3E
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AA18
	ldrh r0, [r2, #0xa]
	subs r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #8
	b _0802AA26
	.align 2, 0
_0802AA14: .4byte gRoomControls
_0802AA18:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	movs r0, #0x18
_0802AA26:
	strb r0, [r4, #0x15]
	ldrh r0, [r2, #0xc]
	adds r0, #0x40
	strh r0, [r4, #0x32]
	movs r0, #0x80
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0802ADDC
_0802AA38:
	adds r0, r4, #0
	bl sub_0802AC40
_0802AA3E:
	pop {r4, pc}

	thumb_func_start sub_0802AA40
sub_0802AA40: @ 0x0802AA40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802AC40
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AA66
	adds r0, r4, #0
	movs r1, #8
	bl sub_0802ACDC
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802AA66:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802AA72
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0802AABE
_0802AA72:
	ldr r2, [r4, #0x54]
	cmp r2, #0
	beq _0802AABE
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _0802AA82
	str r0, [r4, #0x54]
	b _0802AABE
_0802AA82:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r0, #0
	adds r1, #0x18
	movs r0, #0x18
	ands r1, r0
	adds r3, r4, #0
	adds r3, #0x7b
	ldrb r0, [r3]
	cmp r0, #0x20
	bls _0802AA9E
	strb r1, [r4, #0x15]
_0802AA9E:
	ldrb r0, [r4, #0x15]
	cmp r0, r1
	bne _0802AABE
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	strb r1, [r3]
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x96
	strb r0, [r2, #0xe]
_0802AABE:
	pop {r4, pc}

	thumb_func_start sub_0802AAC0
sub_0802AAC0: @ 0x0802AAC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0802AC40
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r6, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AADE
	adds r0, r4, #0
	movs r1, #4
	bl sub_0802AD1C
_0802AADE:
	adds r2, r4, #0
	adds r2, #0x81
	ldrb r5, [r2]
	cmp r5, #0
	beq _0802AB0E
	ldr r1, [r4, #0x54]
	cmp r1, #0
	bne _0802AAF2
	strb r1, [r2]
	b _0802AB3C
_0802AAF2:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0802AAFE
	strb r0, [r2]
	str r0, [r4, #0x54]
	b _0802AB3C
_0802AAFE:
	ldrb r3, [r1, #0xe]
	cmp r3, #0
	bne _0802AB3C
	ldrb r0, [r1, #0xf]
	cmp r0, #0x50
	bhi _0802AB3C
	strb r3, [r2]
	b _0802AB3C
_0802AB0E:
	movs r3, #4
	strb r3, [r4, #0xc]
	movs r0, #0xc0
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x78
	strb r5, [r0]
	adds r0, #1
	strb r3, [r0]
	ldrb r0, [r4, #0x15]
	orrs r0, r6
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_0802AB3C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802AB40
sub_0802AB40: @ 0x0802AB40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802AC40
	adds r3, r4, #0
	adds r3, #0x78
	ldrb r0, [r3]
	cmp r0, #1
	beq _0802AB94
	cmp r0, #1
	bgt _0802AB5C
	cmp r0, #0
	beq _0802AB62
	b _0802AC04
_0802AB5C:
	cmp r0, #2
	beq _0802ABC2
	b _0802AC04
_0802AB62:
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0802AB86
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AC04
	movs r0, #4
	strb r0, [r1]
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	b _0802AC04
_0802AB86:
	movs r0, #1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x30
	strb r0, [r1]
	b _0802ABB6
_0802AB94:
	adds r2, r4, #0
	adds r2, #0x79
	ldrb r0, [r2]
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0802ABAE
	movs r0, #2
	strb r0, [r3]
	movs r0, #4
	strb r0, [r2]
	b _0802AC04
_0802ABAE:
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0802AC04
_0802ABB6:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08049F84
	strb r0, [r4, #0x15]
	b _0802AC04
_0802ABC2:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x30
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0802ABF2
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AC04
	movs r0, #4
	strb r0, [r1]
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #4
	bl sub_0802ACDC
	b _0802AC04
_0802ABF2:
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	strh r1, [r4, #0x24]
	ldrb r1, [r4, #0xa]
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
_0802AC04:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802AC08
sub_0802AC08: @ 0x0802AC08
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802AC36
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x40
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0802ACDC
	adds r0, r4, #0
	bl sub_0802ADDC
_0802AC36:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802AC40
sub_0802AC40: @ 0x0802AC40
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F69C
	adds r5, r4, #0
	adds r5, #0x7a
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802ACA2
	adds r0, r4, #0
	bl sub_0802B234
	cmp r0, #0
	bne _0802AC72
	strb r0, [r5]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	b _0802ACD8
_0802AC72:
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0802AC92
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #8
	beq _0802ACDA
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	b _0802ACD6
_0802AC92:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	beq _0802ACDA
	b _0802ACCE
_0802ACA2:
	adds r0, r4, #0
	bl sub_0802B234
	cmp r0, #0
	beq _0802ACDA
	movs r0, #1
	strb r0, [r5]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0802ACC8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	b _0802ACD6
_0802ACC8:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
_0802ACCE:
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
_0802ACD6:
	orrs r0, r1
_0802ACD8:
	strb r0, [r2]
_0802ACDA:
	pop {r4, r5, pc}

	thumb_func_start sub_0802ACDC
sub_0802ACDC: @ 0x0802ACDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802ACF8
	ldr r0, _0802ACF4 @ =gRoomControls
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	adds r1, #0x20
	b _0802AD00
	.align 2, 0
_0802ACF4: .4byte gRoomControls
_0802ACF8:
	ldr r0, _0802AD18 @ =gRoomControls
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	adds r1, #0xd0
_0802AD00:
	movs r3, #0xc
	ldrsh r2, [r0, r3]
	adds r2, #0x60
	adds r0, r4, #0
	bl sub_080045B4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	strb r5, [r4, #0xf]
	pop {r4, r5, pc}
	.align 2, 0
_0802AD18: .4byte gRoomControls

	thumb_func_start sub_0802AD1C
sub_0802AD1C: @ 0x0802AD1C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _0802AD48
	movs r1, #0x32
	ldrsh r2, [r0, r1]
	subs r2, #0x18
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	adds r0, r4, #0
	bl sub_080045B4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	strb r5, [r4, #0xf]
	b _0802AD50
_0802AD48:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0802ACDC
_0802AD50:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802AD54
sub_0802AD54: @ 0x0802AD54
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x82
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802ADAE
	ldr r4, _0802AD7C @ =gRoomControls
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802AD80
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	bl DeleteEntity
	b _0802ADD8
	.align 2, 0
_0802AD7C: .4byte gRoomControls
_0802AD80:
	ldrh r1, [r4, #8]
	movs r0, #0x32
	ldrsh r3, [r2, r0]
	cmp r1, r3
	bgt _0802AD94
	ldrh r0, [r4, #0x20]
	adds r0, r1, r0
	adds r0, #0x20
	cmp r0, r3
	bge _0802ADA0
_0802AD94:
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	b _0802ADAE
_0802ADA0:
	ldrb r0, [r2, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2, #0x18]
_0802ADAE:
	adds r0, r2, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802ADD8
	ldr r0, [r2, #0x54]
	cmp r0, #0
	beq _0802ADC4
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802ADD8
_0802ADC4:
	movs r1, #4
	strb r1, [r2, #0xc]
	movs r0, #0xc0
	strb r0, [r2, #0xe]
	strb r1, [r2, #0xf]
	adds r2, #0x80
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
_0802ADD8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802ADDC
sub_0802ADDC: @ 0x0802ADDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	adds r1, #2
	movs r0, #0x1b
	bl CreateEnemy
	adds r5, r0, #0
	cmp r5, #0
	beq _0802AE20
	adds r0, r4, #0
	bl sub_0802B234
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	strb r1, [r5, #0xb]
	str r4, [r5, #0x50]
	str r5, [r4, #0x54]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0802AE20
	subs r1, #7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802AE20:
	pop {r4, r5, pc}
	.align 2, 0


	thumb_func_start sub_0802AE24
sub_0802AE24: @ 0x0802AE24
	push {lr}
	mov ip, r0
	movs r2, #0
	movs r3, #1
	strb r3, [r0, #0xc]
	movs r0, #0xf0
	mov r1, ip
	strb r0, [r1, #0xe]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1, #0x20]
	ldr r0, _0802AE64 @ =gUnk_080CD174
	str r0, [r1, #0x48]
	adds r1, #0x3c
	movs r0, #3
	strb r0, [r1]
	mov r0, ip
	strb r2, [r0, #0x16]
	movs r0, #2
	mov r1, ip
	strb r0, [r1, #0x1c]
	mov r0, ip
	adds r0, #0x81
	strb r2, [r0]
	subs r0, #6
	strb r3, [r0]
	mov r0, ip
	movs r1, #3
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
_0802AE64: .4byte gUnk_080CD174

	thumb_func_start sub_0802AE68
sub_0802AE68: @ 0x0802AE68
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802B250
	adds r1, r0, #0
	cmp r1, #0
	bne _0802AE8A
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802B264
	b _0802AEBA
_0802AE8A:
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AEA8
	adds r0, r1, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0802AEBA
_0802AEA8:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802B264
_0802AEBA:
	pop {r4, pc}

	thumb_func_start sub_0802AEBC
sub_0802AEBC: @ 0x0802AEBC
	push {lr}
	ldr r2, _0802AED0 @ =gUnk_080CD158
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802AED0: .4byte gUnk_080CD158

	thumb_func_start sub_0802AED4
sub_0802AED4: @ 0x0802AED4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r5, r4, #0
	adds r5, #0x81
	ldrb r0, [r5]
	cmp r0, #1
	bhi _0802AEFC
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bne _0802AF0C
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _0802AF0C
_0802AEFC:
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _0802AF0C
	adds r0, r4, #0
	bl sub_08078930
_0802AF0C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802AF24
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AF24
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
_0802AF24:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802AF28
sub_0802AF28: @ 0x0802AF28
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl sub_08079BD8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}

	thumb_func_start sub_0802AF50
sub_0802AF50: @ 0x0802AF50
	push {lr}
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0802AF58
sub_0802AF58: @ 0x0802AF58
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802AF74
sub_0802AF74: @ 0x0802AF74
	push {lr}
	adds r2, r0, #0
	movs r0, #0
	movs r1, #3
	strb r1, [r2, #0xc]
	strb r0, [r2, #0xd]
	ldrb r0, [r2, #0xe]
	cmp r0, #0x3c
	bls _0802AF8A
	movs r0, #0x3c
	strb r0, [r2, #0xe]
_0802AF8A:
	adds r0, r2, #0
	bl sub_08004274
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802AF94
sub_0802AF94: @ 0x0802AF94
	push {lr}
	bl DeleteEntity
	pop {pc}

	thumb_func_start sub_0802AF9C
sub_0802AF9C: @ 0x0802AF9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AFC6
	ldr r0, [r4, #0x50]
	adds r1, r0, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802AFC0
	subs r0, #1
	strb r0, [r1]
_0802AFC0:
	adds r0, r4, #0
	bl DeleteEntity
_0802AFC6:
	pop {r4, pc}

	thumb_func_start sub_0802AFC8
sub_0802AFC8: @ 0x0802AFC8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	movs r7, #8
	cmp r0, #0x28
	bhi _0802B022
	movs r7, #4
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0802AFEC
	adds r0, r2, #0
	subs r0, #0x10
	b _0802AFF0
_0802AFEC:
	adds r0, r2, #0
	adds r0, #0x10
_0802AFF0:
	strh r0, [r1]
	adds r5, r1, #0
	ldrh r2, [r5]
	movs r6, #0xf0
	adds r3, r6, #0
	ands r3, r2
	subs r0, r3, #1
	cmp r0, #0x7f
	bls _0802B00C
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	eors r0, r2
	strh r0, [r5]
_0802B00C:
	ldrh r0, [r1]
	adds r3, r6, #0
	ands r3, r0
	movs r2, #0x98
	lsls r2, r2, #1
	subs r2, r2, r3
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
_0802B022:
	ldrb r0, [r4, #0xf]
	ands r0, r7
	cmp r0, #0
	beq _0802B03A
	ldrb r0, [r4, #0x1a]
	lsrs r2, r0, #4
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1a]
	b _0802B044
_0802B03A:
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1a]
_0802B044:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0802B048
sub_0802B048: @ 0x0802B048
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B080
	ldr r0, _0802B074 @ =gRoomControls
	ldrh r1, [r0, #8]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	cmp r1, r2
	bgt _0802B06A
	ldrh r0, [r0, #0x20]
	adds r0, r1, r0
	adds r0, #0x20
	cmp r0, r2
	bge _0802B078
_0802B06A:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	b _0802B07E
	.align 2, 0
_0802B074: .4byte gRoomControls
_0802B078:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
_0802B07E:
	strb r0, [r4, #0x10]
_0802B080:
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _0802B0CA
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0802B0CA
	ldrb r1, [r5, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r3, [r4, #0x19]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	lsrs r1, r1, #0x1d
	ldrb r3, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r0, [r5, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1b]
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x1b]
_0802B0CA:
	ldrb r2, [r4, #0xc]
	cmp r2, #4
	beq _0802B19E
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B19E
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802B10E
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802B19E
	movs r0, #0x50
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x82
	strh r1, [r0]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	b _0802B19E
_0802B10E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802B19E
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802B198
	cmp r2, #2
	bne _0802B12E
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _0802B12E
	ldr r0, _0802B188 @ =gLinkState
	strb r1, [r0, #5]
_0802B12E:
	adds r0, r4, #0
	bl sub_0805EC60
	movs r5, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	ldr r0, _0802B18C @ =gUnk_080CD17C
	str r0, [r4, #0x48]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x13
	ands r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_08078954
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0802B16C
	adds r0, r1, #0
	adds r0, #0x81
	strb r5, [r0]
_0802B16C:
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r5, r0, #0
	cmp r5, #0
	beq _0802B190
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	b _0802B19E
	.align 2, 0
_0802B188: .4byte gLinkState
_0802B18C: .4byte gUnk_080CD17C
_0802B190:
	adds r0, r4, #0
	bl DeleteEntity
	b _0802B19E
_0802B198:
	adds r0, r4, #0
	bl sub_0802AFC8
_0802B19E:
	pop {r4, r5, pc}

	thumb_func_start sub_0802B1A0
sub_0802B1A0: @ 0x0802B1A0
	push {lr}
	movs r1, #0
	movs r2, #1
	strb r2, [r0, #0xc]
	strb r1, [r0, #0xe]
	movs r1, #0x4f
	strb r1, [r0, #0xf]
	adds r1, r0, #0
	adds r1, #0x81
	strb r2, [r1]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}

	thumb_func_start sub_0802B1BC
sub_0802B1BC: @ 0x0802B1BC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802B1CA
	subs r0, #1
	strb r0, [r4, #0xe]
_0802B1CA:
	adds r0, r4, #0
	bl sub_0802B250
	adds r1, r0, #0
	cmp r1, #0
	bne _0802B1E2
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0802B264
	b _0802B200
_0802B1E2:
	adds r0, r1, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B1F6
	adds r0, r1, #0
	adds r1, r4, #0
	bl CopyPosition
	b _0802B200
_0802B1F6:
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0802B264
_0802B200:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802B204
sub_0802B204: @ 0x0802B204
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #6
	bl sub_080044EC
	cmp r0, #1
	bne _0802B232
	movs r0, #0x22
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0802B22E
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldr r0, [r5, #0x50]
	str r0, [r4, #0x50]
_0802B22E:
	bl DeleteThisEntity
_0802B232:
	pop {r4, r5, pc}
	
	thumb_func_start sub_0802B234
sub_0802B234: @ 0x0802B234
	push {r4, lr}
	movs r4, #0
	bl GetTileTypeByEntity
	ldr r1, _0802B24C @ =0xFFFFFE3C
	adds r0, r0, r1
	cmp r0, #1
	bls _0802B246
	movs r4, #1
_0802B246:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0802B24C: .4byte 0xFFFFFE3C

	thumb_func_start sub_0802B250
sub_0802B250: @ 0x0802B250
	push {lr}
	ldr r1, [r0, #0x50]
	cmp r1, #0
	beq _0802B260
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0802B260
	movs r1, #0
_0802B260:
	adds r0, r1, #0
	pop {pc}

	thumb_func_start sub_0802B264
sub_0802B264: @ 0x0802B264
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0802B234
	cmp r0, #0
	beq _0802B294
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x18
	orrs r1, r0
	strb r1, [r2]
	b _0802B2A2
_0802B294:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0802B2A2:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0