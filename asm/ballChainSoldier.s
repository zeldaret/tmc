	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0803E528
sub_0803E528: @ 0x0803E528
	push {lr}
	ldr r1, _0803E534 @ =gUnk_080D06E0
	bl EnemyFunctionHandler
	pop {pc}
	.align 2, 0
_0803E534: .4byte gUnk_080D06E0

	thumb_func_start sub_0803E538
sub_0803E538: @ 0x0803E538
	push {lr}
	ldr r2, _0803E54C @ =gUnk_080D06F8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803E54C: .4byte gUnk_080D06F8

	thumb_func_start sub_0803E550
sub_0803E550: @ 0x0803E550
	push {lr}
	ldr r1, _0803E55C @ =gUnk_080D06E0
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_0803E55C: .4byte gUnk_080D06E0

	thumb_func_start sub_0803E560
sub_0803E560: @ 0x0803E560
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08001324

	thumb_func_start sub_0803E568
sub_0803E568: @ 0x0803E568
	adds r0, r4, #0
	bl sub_0803E538
	pop {r4, pc}

	thumb_func_start sub_0803E570
sub_0803E570: @ 0x0803E570
	push {lr}
	movs r1, #0xff
	movs r2, #0x57
	bl CreateDeathFx
	pop {pc}

	thumb_func_start nullsub_20
nullsub_20: @ 0x0803E57C
	bx lr
	.align 2, 0

	thumb_func_start sub_0803E580
sub_0803E580: @ 0x0803E580
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0804A720
	adds r0, r5, #0
	movs r1, #0x19
	movs r2, #0
	bl sub_0804A98C
	cmp r0, #0
	beq _0803E5E4
	str r5, [r0, #0x50]
	str r0, [r5, #0x54]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	movs r4, #0
	orrs r0, r1
	strb r0, [r5, #0x10]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	bl Random
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x7b
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x7e
	movs r0, #0x20
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xfe
	strb r0, [r1]
	ldrb r1, [r5, #0x14]
	lsls r1, r1, #2
	adds r0, r5, #0
	bl InitAnimationForceUpdate
	adds r0, r5, #0
	bl sub_0803E86C
_0803E5E4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803E5E8
sub_0803E5E8: @ 0x0803E5E8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	subs r1, #0xa
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r0, r4, #0
	bl sub_0803E9D4
	cmp r0, #0
	bne _0803E61A
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803E61A
	adds r0, r4, #0
	bl sub_0803E8CC
_0803E61A:
	pop {r4, pc}

	thumb_func_start sub_0803E61C
sub_0803E61C: @ 0x0803E61C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	subs r1, #0xa
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r0, r4, #0
	bl sub_0803E9D4
	cmp r0, #0
	bne _0803E66A
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803E654
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	bne _0803E654
	adds r0, r4, #0
	bl sub_0803E86C
	b _0803E66A
_0803E654:
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803E66A
	adds r0, r4, #0
	bl sub_0803E92C
_0803E66A:
	pop {r4, pc}

	thumb_func_start sub_0803E66C
sub_0803E66C: @ 0x0803E66C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0x21
	bhi _0803E68E
	adds r0, #1
	strb r0, [r1]
_0803E68E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803E6A4
	adds r0, r4, #0
	bl sub_0803EA64
	cmp r0, #0
	bne _0803E6B0
_0803E6A4:
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x7b
	movs r0, #0
	strb r0, [r1]
_0803E6B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803E6B4
sub_0803E6B4: @ 0x0803E6B4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	cmp r0, #0x20
	bls _0803E6D8
	subs r0, #1
	strb r0, [r1]
	b _0803E6DE
_0803E6D8:
	adds r0, r4, #0
	bl sub_0803E86C
_0803E6DE:
	pop {r4, pc}

	thumb_func_start sub_0803E6E0
sub_0803E6E0: @ 0x0803E6E0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	subs r1, #0xc
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	subs r0, #4
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0803E718
	movs r0, #0
	strb r0, [r1]
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x14]
	adds r1, #0x20
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_0803E718:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803E71C
sub_0803E71C: @ 0x0803E71C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _0803E756
	movs r0, #7
	strb r0, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0xe]
	ldr r1, _0803E758 @ =gUnk_080D0724
	ldrb r0, [r2, #0x14]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x7c
	strb r1, [r0]
	subs r0, #1
	strb r3, [r0]
	adds r1, r2, #0
	adds r1, #0x7f
	movs r0, #0xf6
	strb r0, [r1]
	adds r0, #0x65
	bl sub_08004488
_0803E756:
	pop {pc}
	.align 2, 0
_0803E758: .4byte gUnk_080D0724

	thumb_func_start sub_0803E75C
sub_0803E75C: @ 0x0803E75C
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803E774
	adds r0, r2, #0
	bl sub_080042B8
	b _0803E7B0
_0803E774:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	adds r1, r2, #0
	adds r1, #0x7f
	cmp r0, #0
	bne _0803E78E
	movs r0, #2
	strb r0, [r2, #0xe]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0803E78E:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803E7A0
	adds r1, r2, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #5
	strb r0, [r1]
	b _0803E7B0
_0803E7A0:
	movs r0, #8
	strb r0, [r2, #0xc]
	movs r0, #0x1e
	strb r0, [r2, #0xe]
	movs r0, #8
	movs r1, #0
	bl sub_08080964
_0803E7B0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803E7B4
sub_0803E7B4: @ 0x0803E7B4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803E7C8
	movs r0, #9
	strb r0, [r1, #0xc]
_0803E7C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803E7CC
sub_0803E7CC: @ 0x0803E7CC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bhi _0803E806
	movs r0, #0xa
	strb r0, [r2, #0xc]
	movs r0, #0x5a
	strb r0, [r2, #0xe]
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #3
	strb r0, [r2, #0x15]
	subs r1, #2
	movs r0, #0
	strb r0, [r1]
	adds r1, #3
	movs r0, #0xfe
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x10
	bl sub_0803E94C
	b _0803E814
_0803E806:
	cmp r0, #0x12
	bhi _0803E814
	ldr r2, [r2, #0x54]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_0803E814:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803E818
sub_0803E818: @ 0x0803E818
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0803E840
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803E868
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0x10]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x10]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
	b _0803E868
_0803E840:
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803E9A4
	adds r1, r4, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _0803E868
	adds r0, r4, #0
	bl sub_0803E86C
_0803E868:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803E86C
sub_0803E86C: @ 0x0803E86C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803E898
	adds r0, r4, #0
	movs r1, #0x50
	bl sub_0803EAD0
	cmp r0, #0
	beq _0803E898
	ldr r0, _0803E8C4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
_0803E898:
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _0803E8C8 @ =gUnk_080D0728
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
	pop {r4, pc}
	.align 2, 0
_0803E8C4: .4byte gUnk_020000B0
_0803E8C8: .4byte gUnk_080D0728

	thumb_func_start sub_0803E8CC
sub_0803E8CC: @ 0x0803E8CC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0803E8F4
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _0803E8F4
	adds r0, r4, #0
	bl sub_08049EE4
	adds r0, #4
	movs r1, #0x18
	b _0803E8F8
_0803E8F4:
	movs r1, #0x18
	adds r0, r5, #0
_0803E8F8:
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r2, _0803E928 @ =gUnk_080D0730
	lsrs r0, r5, #0x10
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0803E94C
	pop {r4, r5, pc}
	.align 2, 0
_0803E928: .4byte gUnk_080D0730

	thumb_func_start sub_0803E92C
sub_0803E92C: @ 0x0803E92C
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0803E944
	adds r0, r4, #0
	bl sub_0803E86C
	b _0803E94A
_0803E944:
	adds r0, r4, #0
	bl sub_0803E8CC
_0803E94A:
	pop {r4, pc}

	thumb_func_start sub_0803E94C
sub_0803E94C: @ 0x0803E94C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	ldrb r2, [r3, #0x15]
	adds r0, r2, #4
	movs r1, #0x18
	ands r0, r1
	asrs r4, r0, #3
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _0803E988
	movs r0, #7
	ands r0, r2
	ldrb r5, [r3, #0x14]
	cmp r0, #4
	bne _0803E984
	lsrs r0, r2, #3
	subs r0, r5, r0
	movs r1, #3
	ands r0, r1
	cmp r0, #1
	ble _0803E9A2
_0803E984:
	cmp r4, r5
	beq _0803E9A2
_0803E988:
	strb r4, [r3, #0x14]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	adds r0, r6, r0
	lsls r1, r4, #2
	adds r4, r0, r1
	adds r0, r3, #0
	adds r1, r4, #0
	bl InitAnimationForceUpdate
_0803E9A2:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0803E9A4
sub_0803E9A4: @ 0x0803E9A4
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0xff
	ands r0, r1
	asrs r4, r0, #6
	adds r3, r2, #0
	adds r3, #0x58
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, r4
	beq _0803E9D2
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r1, r4, r1
	adds r0, r2, #0
	bl InitAnimationForceUpdate
_0803E9D2:
	pop {r4, pc}

	thumb_func_start sub_0803E9D4
sub_0803E9D4: @ 0x0803E9D4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803EA58
	adds r0, r4, #0
	movs r1, #0x38
	bl sub_0803EAD0
	cmp r0, #0
	beq _0803EA10
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r0, _0803EA0C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x7b
	movs r0, #1
	b _0803EA46
	.align 2, 0
_0803EA0C: .4byte gUnk_020000B0
_0803EA10:
	adds r0, r4, #0
	movs r1, #0x4e
	bl sub_0803EAD0
	cmp r0, #0
	beq _0803EA58
	ldr r0, _0803EA54 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0804A044
	adds r2, r0, #0
	cmp r2, #0xff
	beq _0803EA58
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EA60
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r2, [r4, #0x15]
	movs r0, #4
_0803EA46:
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
	movs r0, #1
	b _0803EA62
	.align 2, 0
_0803EA54: .4byte gUnk_020000B0
_0803EA58:
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #4
	strb r0, [r1]
_0803EA60:
	movs r0, #0
_0803EA62:
	pop {r4, pc}

	thumb_func_start sub_0803EA64
sub_0803EA64: @ 0x0803EA64
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803EAC4
	adds r0, r4, #0
	movs r1, #0x4e
	bl sub_0803EAD0
	cmp r0, #0
	beq _0803EAB8
	ldr r0, _0803EAB4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0804A044
	adds r2, r0, #0
	cmp r2, #0xff
	beq _0803EAB8
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803EAAE
	movs r0, #5
	strb r0, [r4, #0xc]
	strb r2, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803E94C
_0803EAAE:
	movs r0, #1
	b _0803EACE
	.align 2, 0
_0803EAB4: .4byte gUnk_020000B0
_0803EAB8:
	adds r0, r4, #0
	movs r1, #0x38
	bl sub_0803EAD0
	cmp r0, #0
	bne _0803EAAE
_0803EAC4:
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #4
	strb r0, [r1]
	movs r0, #0
_0803EACE:
	pop {r4, pc}

	thumb_func_start sub_0803EAD0
sub_0803EAD0: @ 0x0803EAD0
	push {r4, lr}
	adds r3, r1, #0
	ldr r1, _0803EAE8 @ =gUnk_020000B0
	ldr r2, [r1]
	movs r4, #0x2e
	ldrsh r1, [r2, r4]
	movs r4, #0x32
	ldrsh r2, [r2, r4]
	subs r2, #4
	bl sub_0806FCB8
	pop {r4, pc}
	.align 2, 0
_0803EAE8: .4byte gUnk_020000B0
