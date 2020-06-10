	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08045394
sub_08045394: @ 0x08045394
	push {lr}
	ldr r1, _080453A0 @ =gUnk_080D17E8
	bl sub_0800129E
	pop {pc}
	.align 2, 0
_080453A0: .4byte gUnk_080D17E8

	thumb_func_start sub_080453A4
sub_080453A4: @ 0x080453A4
	push {lr}
	ldr r2, _080453B8 @ =gUnk_080D1800
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080453B8: .4byte gUnk_080D1800

	thumb_func_start sub_080453BC
sub_080453BC: @ 0x080453BC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	beq _080453D6
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r1
	beq _080453D6
	movs r0, #2
	strb r0, [r2, #0xc]
	b _080453DE
_080453D6:
	ldr r1, _080453E0 @ =gUnk_080D17E8
	adds r0, r2, #0
	bl sub_0804AA30
_080453DE:
	pop {pc}
	.align 2, 0
_080453E0: .4byte gUnk_080D17E8

	thumb_func_start nullsub_172
nullsub_172: @ 0x080453E4
	bx lr
	.align 2, 0

	thumb_func_start sub_080453E8
sub_080453E8: @ 0x080453E8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3f
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0804A720
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08045524
	pop {r4, pc}

	thumb_func_start sub_08045430
sub_08045430: @ 0x08045430
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
	bne _08045452
	adds r0, r4, #0
	bl sub_08045524
_08045452:
	pop {r4, pc}

	thumb_func_start sub_08045454
sub_08045454: @ 0x08045454
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov r8, r0
	ldr r1, _08045518 @ =gUnk_080D180C
	ldrb r0, [r0, #0xa]
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r0, #0x48
	subs r0, r0, r7
	ldr r1, _0804551C @ =gUnk_03003DBC
	ldrb r1, [r1]
	cmp r0, r1
	ble _0804550C
	cmp r7, #0
	beq _0804548E
	mov r4, sp
	adds r5, r7, #0
_0804547C:
	mov r0, r8
	ldrb r1, [r0, #0xa]
	movs r0, #0x59
	bl CreateEnemy
	stm r4!, {r0}
	subs r5, #1
	cmp r5, #0
	bne _0804547C
_0804548E:
	ldr r2, _08045520 @ =gUnk_080D1810
	mov sb, r2
	movs r5, #0
	cmp r5, r7
	bge _080454EE
_08045498:
	lsls r0, r5, #2
	add r0, sp
	ldr r6, [r0]
	adds r4, r5, #1
	adds r0, r4, #0
	adds r1, r7, #0
	bl __modsi3
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r6, #0x54]
	adds r0, r5, r7
	subs r0, #1
	adds r1, r7, #0
	bl __modsi3
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r6, #0x50]
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xb]
	strh r1, [r6, #0x36]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0xf0
	strb r0, [r1]
	mov r0, sb
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	mov r0, r8
	adds r1, r6, #0
	bl sub_08045178
	movs r2, #2
	add sb, r2
	adds r5, r4, #0
	cmp r5, r7
	blt _08045498
_080454EE:
	mov r0, r8
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r6, r0, #0
	cmp r6, #0
	beq _08045506
	mov r0, r8
	adds r1, r6, #0
	bl CopyPosition
_08045506:
	mov r0, r8
	bl sub_0805E7BC
_0804550C:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08045518: .4byte gUnk_080D180C
_0804551C: .4byte gUnk_03003DBC
_08045520: .4byte gUnk_080D1810

	thumb_func_start sub_08045524
sub_08045524: @ 0x08045524
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #9
	str r0, [r5, #0x20]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #8
	bl sub_0804A024
	adds r4, r0, #0
	cmp r4, #0xff
	beq _08045556
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _08045556
	bl Random
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0xe]
	b _08045596
_08045556:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08045562
	subs r0, #1
	strb r0, [r5, #0xe]
	b _080455A8
_08045562:
	bl Random
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0804559E
	bl Random
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0804559E
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl Random
	movs r1, #8
	ands r0, r1
	adds r0, #0xfc
	adds r4, r4, r0
_08045596:
	movs r0, #0x18
	ands r4, r0
	strb r4, [r5, #0x15]
	b _080455A8
_0804559E:
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
_080455A8:
	pop {r4, r5, pc}
	.align 2, 0
