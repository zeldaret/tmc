	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0801EE18
sub_0801EE18: @ 0x0801EE18
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r4, r0, #0
	cmp r4, #0
	beq _0801EE9E
	cmp r4, #2
	beq _0801EE40
	ldr r0, _0801EE3C @ =gUnk_080012C8
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _0801EEE0
	.align 2, 0
_0801EE3C: .4byte gUnk_080012C8
_0801EE40:
	adds r2, r5, #0
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r4, r0
	beq _0801EE9E
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _0801EE9E
	cmp r0, #1
	bgt _0801EE66
	cmp r0, #0
	beq _0801EE6C
	b _0801EE9E
_0801EE66:
	cmp r0, #2
	beq _0801EE96
	b _0801EE9E
_0801EE6C:
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801EE9E
	movs r0, #6
	strb r0, [r5, #0xc]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	movs r0, #0x20
	strh r0, [r5, #0x24]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #5
	bl InitializeAnimation
	b _0801EE9E
_0801EE96:
	adds r0, r5, #0
	bl sub_080043A8
	b _0801EEE0
_0801EE9E:
	adds r0, r5, #0
	adds r0, #0x81
	strb r4, [r0]
	ldr r4, _0801EED0 @ =gUnk_080CA21C
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	ldr r0, [r5, #0x68]
	ldrb r0, [r0, #0xa]
	cmp r0, #0x1c
	bne _0801EED4
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	b _0801EEE0
	.align 2, 0
_0801EED0: .4byte gUnk_080CA21C
_0801EED4:
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0801EEE0
	adds r0, r5, #0
	bl sub_0801FB34
_0801EEE0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801EEE4
sub_0801EEE4: @ 0x0801EEE4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0801EF0C
	cmp r0, #1
	bgt _0801EEF8
	cmp r0, #0
	beq _0801EEFE
	b _0801EF38
_0801EEF8:
	cmp r0, #2
	beq _0801EF28
	b _0801EF38
_0801EEFE:
	adds r0, r4, #0
	bl sub_0801F3AC
	ldr r0, _0801EF08 @ =gUnk_080CA234
	b _0801EF14
	.align 2, 0
_0801EF08: .4byte gUnk_080CA234
_0801EF0C:
	adds r0, r4, #0
	bl sub_0801F764
	ldr r0, _0801EF24 @ =gUnk_080CA25C
_0801EF14:
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0801EF38
	.align 2, 0
_0801EF24: .4byte gUnk_080CA25C
_0801EF28:
	ldr r0, _0801EF3C @ =gUnk_080CA288
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0801EF38:
	pop {r4, pc}
	.align 2, 0
_0801EF3C: .4byte gUnk_080CA288

	thumb_func_start sub_0801EF40
sub_0801EF40: @ 0x0801EF40
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0801EF68
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x8e
	beq _0801EF58
	cmp r0, #0x95
	bne _0801EF68
_0801EF58:
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	movs r0, #0
	strb r1, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_0801EF68:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r6, [r0]
	adds r7, r0, #0
	cmp r6, #0
	beq _0801EFB0
	subs r0, #4
	ldrb r0, [r0]
	cmp r0, #0x94
	bne _0801EF94
	adds r0, r4, #0
	bl sub_0801FB68
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	adds r0, r4, #0
	movs r1, #6
	bl InitializeAnimation
	b _0801EFC0
_0801EF94:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, r6
	beq _0801EFC4
	adds r0, r4, #0
	bl sub_0801FB68
	adds r0, r4, #0
	movs r1, #6
	bl InitializeAnimation
	b _0801EFC4
_0801EFB0:
	adds r0, r4, #0
	bl sub_0804AA1C
	str r6, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #9
	bl InitializeAnimation
_0801EFC0:
	adds r5, r4, #0
	adds r5, #0x80
_0801EFC4:
	ldrb r0, [r7]
	strb r0, [r5]
	ldr r1, _0801EFD4 @ =gUnk_080CA21C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801EFD4: .4byte gUnk_080CA21C

	thumb_func_start sub_0801EFD8
sub_0801EFD8: @ 0x0801EFD8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _0801F000
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801F000
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
	adds r0, r4, #0
	movs r1, #6
	bl InitializeAnimation
	b _0801F028
_0801F000:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #8
	beq _0801F018
	adds r0, r4, #0
	bl sub_0801FB68
	adds r0, r4, #0
	movs r1, #8
	bl InitializeAnimation
_0801F018:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
_0801F028:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F02C
sub_0801F02C: @ 0x0801F02C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801F03E
	adds r0, r4, #0
	bl sub_08004274
_0801F03E:
	adds r0, r4, #0
	bl sub_08001318
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F048
sub_0801F048: @ 0x0801F048
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0801F068
	adds r0, r4, #0
	bl sub_0804A7D4
	b _0801F082
_0801F068:
	cmp r0, #1
	bne _0801F078
	adds r0, r4, #0
	movs r1, #0xf2
	movs r2, #0
	bl CreateDeathFx
	b _0801F082
_0801F078:
	adds r0, r4, #0
	movs r1, #0xf1
	movs r2, #0
	bl CreateDeathFx
_0801F082:
	pop {r4, pc}

	thumb_func_start sub_0801F084
sub_0801F084: @ 0x0801F084
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801F09A
	adds r0, r4, #0
	bl sub_08004274
_0801F09A:
	adds r0, r4, #0
	bl sub_08001242
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F0A4
sub_0801F0A4: @ 0x0801F0A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3b
	strb r1, [r0]
	adds r4, #0x82
	strb r2, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_4
nullsub_4: @ 0x0801F0C4
	bx lr
	.align 2, 0

	thumb_func_start sub_0801F0C8
sub_0801F0C8: @ 0x0801F0C8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F12A
	movs r4, #3
	movs r0, #3
	strb r0, [r5, #0xc]
	bl Random
	ands r0, r4
	adds r0, #0xc
	strb r0, [r5, #0xe]
	bl Random
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r5, #0x15]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #2
	bl InitializeAnimation
_0801F12A:
	pop {r4, r5, pc}

	thumb_func_start sub_0801F12C
sub_0801F12C: @ 0x0801F12C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F140
	adds r0, r4, #0
	bl sub_0801F328
	b _0801F1AC
_0801F140:
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801F158
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_0801F158:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F1AC
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x38
	bl sub_08049F64
	cmp r0, #0
	beq _0801F18A
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801FBE4
	b _0801F1AC
_0801F18A:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _0801F1A6
	bl Random
	movs r1, #3
	ands r0, r1
	adds r0, #0xc
	strb r0, [r4, #0xe]
	b _0801F1AC
_0801F1A6:
	adds r0, r4, #0
	bl sub_0801F328
_0801F1AC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F1B0
sub_0801F1B0: @ 0x0801F1B0
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F1FA
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F1DE
	movs r0, #1
	eors r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5a
	strb r0, [r1]
	adds r0, #0xd1
	bl sub_08004488
_0801F1DE:
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0801F200
	adds r0, r4, #0
	bl sub_08004274
	b _0801F200
_0801F1FA:
	adds r0, r4, #0
	bl sub_08004274
_0801F200:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F226
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F220
	adds r0, r4, #0
	bl sub_0801F328
	b _0801F226
_0801F220:
	adds r0, r4, #0
	bl sub_0801F340
_0801F226:
	pop {r4, pc}

	thumb_func_start sub_0801F228
sub_0801F228: @ 0x0801F228
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F246
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_0801F246:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F250
sub_0801F250: @ 0x0801F250
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F26C
	adds r0, r4, #0
	bl sub_0801F360
_0801F26C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F270
sub_0801F270: @ 0x0801F270
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xf]
	adds r0, r1, #1
	strb r0, [r4, #0xf]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801F28C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_0801F28C:
	adds r0, r4, #0
	bl sub_080AF160
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	bne _0801F2CA
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F2CA
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801F2C6
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	b _0801F2CA
_0801F2C6:
	movs r0, #8
	strb r0, [r4, #0xe]
_0801F2CA:
	pop {r4, pc}

	thumb_func_start sub_0801F2CC
sub_0801F2CC: @ 0x0801F2CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F2F6
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
_0801F2F6:
	pop {r4, pc}

	thumb_func_start sub_0801F2F8
sub_0801F2F8: @ 0x0801F2F8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F324
	adds r0, r4, #0
	bl sub_0801F340
	adds r0, r4, #0
	bl sub_0804AA1C
_0801F324:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F328
sub_0801F328: @ 0x0801F328
	push {lr}
	movs r1, #6
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #5
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801F340
sub_0801F340: @ 0x0801F340
	push {lr}
	movs r1, #5
	strb r1, [r0, #0xc]
	movs r1, #0x3c
	strb r1, [r0, #0xe]
	movs r1, #0x20
	strh r1, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x3f
	movs r1, #0x5c
	strb r1, [r2]
	movs r1, #2
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801F360
sub_0801F360: @ 0x0801F360
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x38
	ands r0, r1
	adds r0, #0xb4
	strb r0, [r4, #0xe]
	bl Random
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F3AC
sub_0801F3AC: @ 0x0801F3AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #9
	beq _0801F426
	cmp r0, #0
	beq _0801F426
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0801F408
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801F3DE
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _0801F400
_0801F3DE:
	ldrb r2, [r4, #0xc]
	cmp r2, #1
	bne _0801F426
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	b _0801F426
_0801F400:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0801F426
	b _0801F40E
_0801F408:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0801F416
_0801F40E:
	adds r0, r4, #0
	bl sub_0801F328
	b _0801F426
_0801F416:
	cmp r0, #7
	bne _0801F426
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #7
	bl InitializeAnimation
_0801F426:
	pop {r4, r5, pc}

	thumb_func_start sub_0801F428
sub_0801F428: @ 0x0801F428
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	bl Random
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3b
	strb r1, [r0]
	adds r0, #2
	strb r4, [r0]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0801F488
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r0, #0x1e
	strb r0, [r5, #0xf]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r0, r5, #0
	movs r1, #2
	bl InitializeAnimation
_0801F488:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801F48C
sub_0801F48C: @ 0x0801F48C
	push {lr}
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0801F494
sub_0801F494: @ 0x0801F494
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F4E8
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
_0801F4E8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F4EC
sub_0801F4EC: @ 0x0801F4EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F504
	movs r0, #4
	strb r0, [r4, #0xc]
_0801F504:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F508
sub_0801F508: @ 0x0801F508
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F51C
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	b _0801F55C
_0801F51C:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	adds r5, r0, #0
	ands r5, r1
	movs r0, #7
	ands r5, r0
	cmp r5, #0
	bne _0801F566
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x38
	bl sub_08049F64
	cmp r0, #0
	beq _0801F566
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0801F556
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801FBE4
	b _0801F580
_0801F556:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x78
_0801F55C:
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0801F730
	b _0801F580
_0801F566:
	cmp r5, #4
	bne _0801F574
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
_0801F574:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
_0801F580:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801F584
sub_0801F584: @ 0x0801F584
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F5CE
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F5B2
	movs r0, #1
	eors r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5b
	strb r0, [r1]
	adds r0, #0xd0
	bl sub_08004488
_0801F5B2:
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0801F5D4
	adds r0, r4, #0
	bl sub_08004274
	b _0801F5D4
_0801F5CE:
	adds r0, r4, #0
	bl sub_08004274
_0801F5D4:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F618
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F5FC
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0801F730
	b _0801F618
_0801F5FC:
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
_0801F618:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F61C
sub_0801F61C: @ 0x0801F61C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	subs r0, #1
	strb r0, [r1, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F630
	movs r0, #4
	strb r0, [r1, #0xc]
_0801F630:
	adds r0, r1, #0
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0801F638
sub_0801F638: @ 0x0801F638
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F684
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_0801F684:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F688
sub_0801F688: @ 0x0801F688
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801F69A
	subs r0, #1
	strb r0, [r5]
_0801F69A:
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	bne _0801F6AA
	ldrb r0, [r5]
	cmp r0, #0
	beq _0801F6C2
_0801F6AA:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AF160
	adds r0, r4, #0
	bl sub_08004274
	b _0801F6C8
_0801F6C2:
	adds r0, r4, #0
	bl sub_0801F748
_0801F6C8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801F6CC
sub_0801F6CC: @ 0x0801F6CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F6F6
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
_0801F6F6:
	pop {r4, pc}

	thumb_func_start sub_0801F6F8
sub_0801F6F8: @ 0x0801F6F8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F72E
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0804AA1C
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
_0801F72E:
	pop {r4, pc}

	thumb_func_start sub_0801F730
sub_0801F730: @ 0x0801F730
	push {lr}
	movs r1, #7
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #5
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801F748
sub_0801F748: @ 0x0801F748
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #6
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	movs r1, #4
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801F764
sub_0801F764: @ 0x0801F764
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0xa
	beq _0801F7D6
	cmp r0, #0
	beq _0801F7D6
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0801F7B8
	ldrb r6, [r4, #0xc]
	cmp r6, #1
	bne _0801F7D6
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801F79C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _0801F7D6
_0801F79C:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r6, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	b _0801F7D6
_0801F7B8:
	ldrb r0, [r4, #0xc]
	cmp r0, #4
	bne _0801F7C6
	adds r0, r4, #0
	bl sub_0801F730
	b _0801F7D6
_0801F7C6:
	cmp r0, #8
	bne _0801F7D6
	movs r0, #9
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #7
	bl InitializeAnimation
_0801F7D6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0801F7D8
sub_0801F7D8: @ 0x0801F7D8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3b
	strb r1, [r0]
	adds r4, #0x82
	strb r5, [r4]
	pop {r4, r5, pc}

	thumb_func_start sub_0801F7FC
sub_0801F7FC: @ 0x0801F7FC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0801F83E
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801F822
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x48
	bl sub_08049F64
	cmp r0, #0
	beq _0801F83E
_0801F822:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_0801F83E:
	pop {r4, r5, pc}

	thumb_func_start sub_0801F840
sub_0801F840: @ 0x0801F840
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F880
	adds r0, r4, #0
	bl sub_0801FB14
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
_0801F880:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F884
sub_0801F884: @ 0x0801F884
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0801F898
	subs r0, #1
	strb r0, [r4, #0xf]
	b _0801F8BC
_0801F898:
	adds r0, r4, #0
	movs r1, #0x1b
	bl sub_0804A9FC
	adds r1, r0, #0
	cmp r1, #0
	beq _0801F8BC
	movs r0, #0x40
	strb r0, [r1, #0xb]
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0xa5
	strb r0, [r1]
	adds r0, #0xee
	bl sub_08004488
_0801F8BC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801F8C0
sub_0801F8C0: @ 0x0801F8C0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F8D4
	adds r0, r4, #0
	bl sub_0801FAE0
	b _0801F938
_0801F8D4:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801F8E8
	adds r0, r4, #0
	bl sub_0801F730
	b _0801F938
_0801F8E8:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	adds r5, r0, #0
	ands r5, r1
	movs r0, #7
	ands r5, r0
	cmp r5, #0
	bne _0801F91C
	ldr r0, _0801F918 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x38
	bl sub_08049F1C
	cmp r0, #0
	beq _0801F91C
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801FBE4
	b _0801F938
	.align 2, 0
_0801F918: .4byte gUnk_020000B0
_0801F91C:
	cmp r5, #4
	bne _0801F92C
	ldr r0, _0801F93C @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
_0801F92C:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
_0801F938:
	pop {r4, r5, pc}
	.align 2, 0
_0801F93C: .4byte gUnk_020000B0

	thumb_func_start sub_0801F940
sub_0801F940: @ 0x0801F940
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801F988
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F966
	movs r0, #1
	eors r0, r1
	strb r0, [r2]
	ldr r0, _0801F984 @ =0x0000012B
	bl sub_08004488
_0801F966:
	adds r0, r4, #0
	bl sub_080AEFE0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0801F98E
	adds r0, r4, #0
	bl sub_08004274
	b _0801F98E
	.align 2, 0
_0801F984: .4byte 0x0000012B
_0801F988:
	adds r0, r4, #0
	bl sub_08004274
_0801F98E:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F9C2
	adds r0, r4, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801F9AE
	adds r0, r4, #0
	bl sub_0801FAE0
	b _0801F9C2
_0801F9AE:
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
_0801F9C2:
	pop {r4, pc}

	thumb_func_start sub_0801F9C4
sub_0801F9C4: @ 0x0801F9C4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xf]
	subs r0, #1
	strb r0, [r1, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F9D8
	movs r0, #4
	strb r0, [r1, #0xc]
_0801F9D8:
	adds r0, r1, #0
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_0801F9E0
sub_0801F9E0: @ 0x0801F9E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FA2C
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_0801FA2C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FA30
sub_0801FA30: @ 0x0801FA30
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801FBD0
	cmp r0, #0
	beq _0801FA54
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AF160
	adds r0, r4, #0
	bl sub_08004274
	b _0801FA74
_0801FA54:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0801FA6E
	movs r0, #9
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #7
	bl InitializeAnimation
	b _0801FA74
_0801FA6E:
	adds r0, r4, #0
	bl sub_0801FAF8
_0801FA74:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FA78
sub_0801FA78: @ 0x0801FA78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FAA8
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0804AA1C
_0801FAA8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FAAC
sub_0801FAAC: @ 0x0801FAAC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801FADC
	adds r0, r4, #0
	bl sub_0801FB14
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0804AA1C
_0801FADC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FAE0
sub_0801FAE0: @ 0x0801FAE0
	push {lr}
	movs r1, #7
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #5
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801FAF8
sub_0801FAF8: @ 0x0801FAF8
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #6
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	movs r1, #4
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801FB14
sub_0801FB14: @ 0x0801FB14
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	pop {r4, pc}

	thumb_func_start sub_0801FB34
sub_0801FB34: @ 0x0801FB34
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x68]
	cmp r3, #0
	beq _0801FB62
	ldr r2, _0801FB64 @ =gUnk_080CA2B4
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #1
	bl sub_0806FA90
	ldr r1, [r4, #0x68]
	adds r1, #0x63
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_0801FB62:
	pop {r4, pc}
	.align 2, 0
_0801FB64: .4byte gUnk_080CA2B4

	thumb_func_start sub_0801FB68
sub_0801FB68: @ 0x0801FB68
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _0801FB88
	cmp r0, #1
	bgt _0801FB7C
	cmp r0, #0
	beq _0801FB82
	b _0801FBC8
_0801FB7C:
	cmp r0, #2
	beq _0801FBB6
	b _0801FBC8
_0801FB82:
	movs r0, #9
	strb r0, [r4, #0xc]
	b _0801FBC8
_0801FB88:
	movs r0, #0xa
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	b _0801FBC8
_0801FBB6:
	movs r0, #0xa
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x5c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0804AA1C
_0801FBC8:
	movs r0, #0
	str r0, [r4, #0x20]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801FBD0
sub_0801FBD0: @ 0x0801FBD0
	push {lr}
	bl sub_080002B8
	cmp r0, #0x10
	beq _0801FBDE
	movs r0, #0
	b _0801FBE0
_0801FBDE:
	movs r0, #1
_0801FBE0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801FBE4
sub_0801FBE4: @ 0x0801FBE4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
	pop {r4, pc}
