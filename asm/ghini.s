	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Ghini
Ghini: @ 0x0803EFDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803F004 @ =gUnk_080D0924
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, r5, pc}
	.align 2, 0
_0803F004: .4byte gUnk_080D0924

	thumb_func_start sub_0803F008
sub_0803F008: @ 0x0803F008
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803F024 @ =gUnk_080D093C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0803F694
	pop {r4, pc}
	.align 2, 0
_0803F024: .4byte gUnk_080D093C

	thumb_func_start sub_0803F028
sub_0803F028: @ 0x0803F028
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803F05C
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0803F630
	adds r0, r4, #0
	bl sub_0803F6EC
_0803F05C:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x41
	cmp r0, #0x25
	bne _0803F07E
	ldrb r0, [r1]
	cmp r0, #0x80
	bne _0803F07E
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
	b _0803F0E4
_0803F07E:
	ldrb r0, [r1]
	cmp r0, #0x9d
	bne _0803F08A
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
_0803F08A:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803F0B0
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsrs r0, r0, #4
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #7
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0803F0B0:
	adds r0, r4, #0
	adds r0, #0x45
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r0, [r0]
	ldrb r2, [r1]
	cmp r0, r2
	beq _0803F0E4
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803F0D4
	adds r0, r4, #0
	bl sub_0803F51C
_0803F0D4:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	lsrs r1, r1, #4
	adds r1, #7
	adds r0, r4, #0
	bl InitializeAnimation
_0803F0E4:
	ldr r1, _0803F0F0 @ =gUnk_080D0924
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0803F0F0: .4byte gUnk_080D0924

	thumb_func_start sub_0803F0F4
sub_0803F0F4: @ 0x0803F0F4
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_08001328
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F144
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803F144
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F144
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r0, [r1]
	subs r0, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803F144
	ldrb r1, [r1]
	subs r1, #7
	movs r0, #1
	eors r1, r0
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
_0803F144:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F148
sub_0803F148: @ 0x0803F148
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0803F164
	ldrb r1, [r4, #0x14]
	adds r1, #7
	adds r0, r4, #0
	bl InitializeAnimation
_0803F164:
	adds r0, r4, #0
	bl sub_08001242
	ldrh r1, [r4, #0x36]
	movs r2, #0x36
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0803F178
	ldr r0, _0803F1A4 @ =0x0000FFFF
	strh r0, [r4, #0x36]
_0803F178:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F1A0
	ldrb r0, [r4, #0x14]
	movs r1, #1
	eors r1, r0
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
	movs r0, #0xff
	strb r0, [r4, #0x15]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0803F630
_0803F1A0:
	pop {r4, pc}
	.align 2, 0
_0803F1A4: .4byte 0x0000FFFF

	thumb_func_start sub_0803F1A8
sub_0803F1A8: @ 0x0803F1A8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _0803F1CC
	ldr r0, _0803F1C8 @ =gUnk_080D0964
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0803F1DE
	.align 2, 0
_0803F1C8: .4byte gUnk_080D0964
_0803F1CC:
	adds r0, r4, #0
	bl sub_0803F51C
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
_0803F1DE:
	pop {r4, pc}

	thumb_func_start sub_0803F1E0
sub_0803F1E0: @ 0x0803F1E0
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	ldr r1, _0803F1F8 @ =gPlayerEntity
	ldrb r1, [r1, #0x14]
	lsrs r1, r1, #2
	adds r1, #5
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
_0803F1F8: .4byte gPlayerEntity

	thumb_func_start sub_0803F1FC
sub_0803F1FC: @ 0x0803F1FC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F4E8
	pop {r4, pc}

	thumb_func_start sub_0803F20C
sub_0803F20C: @ 0x0803F20C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0803F244
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	cmp r0, #0
	beq _0803F23E
	adds r2, r0, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_0803F23E:
	adds r0, r4, #0
	bl sub_0804A7D4
_0803F244:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F248
sub_0803F248: @ 0x0803F248
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	bl Random
	movs r2, #0x1e
	adds r1, r0, #0
	ands r1, r2
	movs r2, #0
	strb r1, [r4, #0x15]
	movs r1, #0xff
	strb r1, [r4, #0x14]
	movs r1, #1
	strb r1, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r1, [r1]
	adds r3, r4, #0
	adds r3, #0x7a
	strb r1, [r3]
	lsrs r0, r0, #4
	adds r1, r4, #0
	adds r1, #0x7b
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	strh r2, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0803F28E
	adds r0, r4, #0
	bl sub_0803F50C
	b _0803F2A0
_0803F28E:
	adds r0, r4, #0
	bl sub_0803F51C
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
_0803F2A0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F2A4
sub_0803F2A4: @ 0x0803F2A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F5A8
	cmp r0, #0
	beq _0803F2C0
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x60
	ands r0, r1
	adds r0, #0xa
	strb r0, [r4, #0xe]
_0803F2C0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F2C4
sub_0803F2C4: @ 0x0803F2C4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F5A8
	cmp r0, #0
	bne _0803F2D8
	adds r0, r4, #0
	bl sub_0803F50C
	b _0803F322
_0803F2D8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803F322
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _0803F308
	ldr r0, _0803F304 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl GetFacingDirection
	b _0803F310
	.align 2, 0
_0803F304: .4byte gUnk_020000B0
_0803F308:
	bl Random
	movs r1, #0x1f
	ands r0, r1
_0803F310:
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #4
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
_0803F322:
	pop {r4, pc}

	thumb_func_start sub_0803F324
sub_0803F324: @ 0x0803F324
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803F33E
	adds r0, r4, #0
	bl sub_0803F51C
_0803F33E:
	pop {r4, pc}

	thumb_func_start sub_0803F340
sub_0803F340: @ 0x0803F340
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F5D4
	cmp r0, #0
	bne _0803F36A
	adds r0, r4, #0
	bl sub_0803F58C
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803F36A
	adds r0, r4, #0
	bl sub_0803F51C
_0803F36A:
	pop {r4, pc}

	thumb_func_start sub_0803F36C
sub_0803F36C: @ 0x0803F36C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0803F3A6
	adds r0, r4, #0
	bl sub_0803F66C
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803F3AC
	movs r0, #6
	strb r0, [r4, #0xc]
	adds r0, #0xfa
	strh r0, [r4, #0x24]
	b _0803F3AC
_0803F3A6:
	adds r0, r4, #0
	bl sub_0803F51C
_0803F3AC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F3B0
sub_0803F3B0: @ 0x0803F3B0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F5A8
	cmp r0, #0
	bne _0803F3C4
	adds r0, r4, #0
	bl sub_0803F51C
	b _0803F41C
_0803F3C4:
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _0803F414
	ldrb r1, [r4, #0xe]
	adds r1, #1
	strb r1, [r4, #0xe]
	ldr r2, _0803F40C @ =gUnk_080D0970
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1e
	adds r0, r0, r2
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _0803F3F6
	ldr r0, _0803F410 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl GetFacingDirection
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_0803F3F6:
	adds r0, r4, #0
	bl sub_0803F66C
	adds r0, r4, #0
	bl sub_080AEFB4
	adds r0, r4, #0
	bl GetNextFrame
	b _0803F41C
	.align 2, 0
_0803F40C: .4byte gUnk_080D0970
_0803F410: .4byte gUnk_020000B0
_0803F414:
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_0803F41C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F420
sub_0803F420: @ 0x0803F420
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803F43A
	adds r0, r4, #0
	bl sub_0803F51C
_0803F43A:
	pop {r4, pc}

	thumb_func_start sub_0803F43C
sub_0803F43C: @ 0x0803F43C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F738
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803F474
	movs r2, #0
	movs r0, #9
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x78
	strh r2, [r0]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
_0803F474:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803F478
sub_0803F478: @ 0x0803F478
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803F494
	adds r0, r4, #0
	bl sub_0803F6C0
_0803F494:
	bl sub_0807953C
	adds r1, r4, #0
	adds r1, #0x78
	cmp r0, #0
	beq _0803F4A6
	ldrh r0, [r1]
	adds r0, #0xc
	strh r0, [r1]
_0803F4A6:
	ldr r2, _0803F500 @ =gPlayerEntity
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F4B6
	movs r0, #0xe0
	strh r0, [r1]
_0803F4B6:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xdf
	bls _0803F504
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	subs r1, #0x3f
	movs r0, #0xf4
	strb r0, [r1]
	adds r1, #5
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803F51C
	adds r0, r4, #0
	bl sub_0803F6EC
	b _0803F50A
	.align 2, 0
_0803F500: .4byte gPlayerEntity
_0803F504:
	adds r0, r4, #0
	bl sub_0803F738
_0803F50A:
	pop {r4, pc}

	thumb_func_start sub_0803F50C
sub_0803F50C: @ 0x0803F50C
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #9
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0803F51C
sub_0803F51C: @ 0x0803F51C
	push {lr}
	movs r1, #4
	strb r1, [r0, #0xc]
	bl sub_0803F528
	pop {pc}

	thumb_func_start sub_0803F528
sub_0803F528: @ 0x0803F528
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r5, r0, #0
	movs r0, #8
	adds r1, r5, #0
	ands r1, r0
	adds r1, #8
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0803F55C
	ldr r1, _0803F558 @ =gUnk_080D0978
	movs r0, #7
	ands r0, r5
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	b _0803F562
	.align 2, 0
_0803F558: .4byte gUnk_080D0978
_0803F55C:
	adds r0, r4, #0
	bl sub_08049EE4
_0803F562:
	movs r1, #0x1e
	ands r0, r1
	strb r0, [r4, #0x15]
	ldr r2, _0803F588 @ =gUnk_080D0974
	lsrs r0, r5, #4
	movs r1, #3
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x24
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803F66C
	pop {r4, r5, pc}
	.align 2, 0
_0803F588: .4byte gUnk_080D0974

	thumb_func_start sub_0803F58C
sub_0803F58C: @ 0x0803F58C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x30]
	bl sub_080AEFB4
	ldr r1, [r5, #0x30]
	subs r4, r1, r4
	lsrs r0, r4, #0x1f
	adds r4, r4, r0
	asrs r4, r4, #1
	subs r1, r1, r4
	str r1, [r5, #0x30]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803F5A8
sub_0803F5A8: @ 0x0803F5A8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	bne _0803F5BA
	movs r0, #0
	b _0803F5D2
_0803F5BA:
	ldr r0, _0803F5CC @ =gArea
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	cmp r0, #0xf
	bgt _0803F5D0
	adds r0, r4, #0
	bl sub_0806FD54
	b _0803F5D2
	.align 2, 0
_0803F5CC: .4byte gArea
_0803F5D0:
	movs r0, #1
_0803F5D2:
	pop {r4, pc}

	thumb_func_start sub_0803F5D4
sub_0803F5D4: @ 0x0803F5D4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803F5E8
	subs r0, #1
	strh r0, [r1]
	b _0803F62C
_0803F5E8:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0803F62C
	adds r0, r4, #0
	bl sub_0806FD54
	cmp r0, #0
	bne _0803F61A
	ldr r0, _0803F624 @ =gArea
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	cmp r0, #0xf
	ble _0803F62C
	ldr r0, _0803F628 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x70
	movs r3, #0x48
	bl sub_080041A0
	cmp r0, #0
	beq _0803F62C
_0803F61A:
	adds r0, r4, #0
	bl sub_0803F630
	movs r0, #1
	b _0803F62E
	.align 2, 0
_0803F624: .4byte gArea
_0803F628: .4byte gUnk_020000B0
_0803F62C:
	movs r0, #0
_0803F62E:
	pop {r4, pc}

	thumb_func_start sub_0803F630
sub_0803F630: @ 0x0803F630
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x25
	strb r0, [r1]
	movs r5, #0
	ldr r0, _0803F664 @ =gUnk_03004040
	ldr r0, [r0]
	cmp r0, #0
	beq _0803F64C
	movs r5, #0x3c
_0803F64C:
	bl Random
	ldr r2, _0803F668 @ =gUnk_080D0980
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r5
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	pop {r4, r5, pc}
	.align 2, 0
_0803F664: .4byte gUnk_03004040
_0803F668: .4byte gUnk_080D0980

	thumb_func_start sub_0803F66C
sub_0803F66C: @ 0x0803F66C
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x15]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0803F680
	ldrb r0, [r2, #0x14]
	cmp r0, #0xff
	bne _0803F692
_0803F680:
	lsrs r0, r1, #4
	ldrb r1, [r2, #0x14]
	cmp r0, r1
	beq _0803F692
	strb r0, [r2, #0x14]
	adds r1, r0, #1
	adds r0, r2, #0
	bl InitializeAnimation
_0803F692:
	pop {pc}

	thumb_func_start sub_0803F694
sub_0803F694: @ 0x0803F694
	push {r4, lr}
	ldr r3, _0803F6BC @ =gUnk_080D0984
	movs r1, #0x7b
	adds r1, r1, r0
	mov ip, r1
	ldrb r1, [r1]
	adds r2, r1, #1
	mov r4, ip
	strb r2, [r4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	movs r2, #3
	ands r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r0, #0x36]
	pop {r4, pc}
	.align 2, 0
_0803F6BC: .4byte gUnk_080D0984

	thumb_func_start sub_0803F6C0
sub_0803F6C0: @ 0x0803F6C0
	push {r4, lr}
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r1, #0xfe
	ands r1, r2
	strb r1, [r0]
	ldr r4, _0803F6E8 @ =gPlayerEntity
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xc
	strb r0, [r1]
	subs r0, #0x10
	bl ModHealth
	adds r0, r4, #0
	movs r1, #0x7a
	bl sub_0800449C
	pop {r4, pc}
	.align 2, 0
_0803F6E8: .4byte gPlayerEntity

	thumb_func_start sub_0803F6EC
sub_0803F6EC: @ 0x0803F6EC
	push {lr}
	ldr r2, _0803F72C @ =gPlayerEntity
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	ldr r3, _0803F730 @ =gPlayerState
	cmp r0, #0
	beq _0803F720
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r2, #0x20]
	ldr r0, _0803F734 @ =0x0000FFFE
	strh r0, [r2, #0x36]
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	strb r0, [r2, #0x15]
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #0xc4
	strb r0, [r1]
	movs r0, #0x41
	strb r0, [r3, #2]
_0803F720:
	ldr r0, [r3, #0x30]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x30]
	pop {pc}
	.align 2, 0
_0803F72C: .4byte gPlayerEntity
_0803F730: .4byte gPlayerState
_0803F734: .4byte 0x0000FFFE

	thumb_func_start sub_0803F738
sub_0803F738: @ 0x0803F738
	push {r4, lr}
	adds r4, r0, #0
	bl ResetPlayer
	ldr r2, _0803F768 @ =gPlayerState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldr r0, _0803F76C @ =gPlayerEntity
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806FA90
	adds r4, #0x63
	ldrb r0, [r4]
	subs r0, #2
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0803F768: .4byte gPlayerState
_0803F76C: .4byte gPlayerEntity
