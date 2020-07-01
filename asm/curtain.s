	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Curtain
Curtain: @ 0x080481C0
	push {lr}
	ldr r1, _080481CC @ =gUnk_080D1CC8
	bl EnemyFunctionHandler
	pop {pc}
	.align 2, 0
_080481CC: .4byte gUnk_080D1CC8

	thumb_func_start sub_080481D0
sub_080481D0: @ 0x080481D0
	push {lr}
	ldr r2, _080481E4 @ =gUnk_080D1CE0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080481E4: .4byte gUnk_080D1CE0

	thumb_func_start sub_080481E8
sub_080481E8: @ 0x080481E8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x46
	ldrh r0, [r0]
	cmp r0, #0
	beq _08048210
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
	movs r0, #3
	b _08048212
_08048210:
	movs r0, #2
_08048212:
	strb r0, [r2, #0xe]
	ldrb r1, [r2, #0xe]
	adds r0, r2, #0
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_26
nullsub_26: @ 0x08048220
	bx lr
	.align 2, 0

	thumb_func_start sub_08048224
sub_08048224: @ 0x08048224
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r2]
	movs r0, #0x72
	bl CheckLocalFlag
	adds r1, r0, #0
	cmp r1, #0
	bne _0804824E
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	b _0804825E
_0804824E:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xe]
_0804825E:
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, pc}

	thumb_func_start sub_08048268
sub_08048268: @ 0x08048268
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08048292
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08048292
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_08048292:
	pop {r4, pc}

	thumb_func_start sub_08048294
sub_08048294: @ 0x08048294
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080482BC
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x72
	bl SetLocalFlag
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_080482BC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_27
nullsub_27: @ 0x080482C0
	bx lr
	.align 2, 0
