	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080455AC
sub_080455AC: @ 0x080455AC
	push {lr}
	ldr r1, _080455B8 @ =gUnk_080D1868
	bl EnemyFunctionHandler
	pop {pc}
	.align 2, 0
_080455B8: .4byte gUnk_080D1868

	thumb_func_start sub_080455BC
sub_080455BC: @ 0x080455BC
	push {lr}
	ldr r2, _080455D0 @ =gUnk_080D1880
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080455D0: .4byte gUnk_080D1880

	thumb_func_start sub_080455D4
sub_080455D4: @ 0x080455D4
	push {lr}
	ldr r1, _080455E0 @ =gUnk_080D1868
	bl sub_0804AA30
	pop {pc}
	.align 2, 0
_080455E0: .4byte gUnk_080D1868

	thumb_func_start sub_080455E4
sub_080455E4: @ 0x080455E4
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x50]
	cmp r3, r0
	beq _0804560A
	cmp r0, #0
	beq _0804560A
	adds r2, r3, #0
	adds r2, #0x6c
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r3, #0x50]
	ldr r0, [r3, #0x54]
	str r0, [r1, #0x54]
	ldr r1, [r3, #0x54]
	ldr r0, [r3, #0x50]
	str r0, [r1, #0x50]
_0804560A:
	adds r0, r3, #0
	bl sub_0804A7D4
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_23
nullsub_23: @ 0x08045614
	bx lr
	.align 2, 0

	thumb_func_start sub_08045618
sub_08045618: @ 0x08045618
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0804A720
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08045678
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08045654
sub_08045654: @ 0x08045654
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	bl sub_08004274
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08045676
	adds r0, r4, #0
	bl sub_08045678
_08045676:
	pop {r4, pc}

	thumb_func_start sub_08045678
sub_08045678: @ 0x08045678
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #9
	str r0, [r5, #0x20]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0804568E
	subs r0, #1
	strb r0, [r5, #0xe]
	b _080456D4
_0804568E:
	bl Random
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _080456CA
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080456CA
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl Random
	movs r1, #8
	ands r0, r1
	adds r0, #0xfc
	adds r4, r4, r0
	movs r0, #0x18
	ands r4, r0
	strb r4, [r5, #0x15]
	b _080456D4
_080456CA:
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
_080456D4:
	pop {r4, r5, pc}
	.align 2, 0
