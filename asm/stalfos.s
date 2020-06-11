	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080392AC
sub_080392AC: @ 0x080392AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080392C8 @ =gUnk_080CF8A4
	bl sub_0800129E
	movs r3, #0x12
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_080392C8: .4byte gUnk_080CF8A4

	thumb_func_start sub_080392CC
sub_080392CC: @ 0x080392CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080392FC @ =gUnk_080CF8BC
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x7c
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803930C
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08039300
	subs r1, #0x3d
	movs r0, #0x45
	b _0803930A
	.align 2, 0
_080392FC: .4byte gUnk_080CF8BC
_08039300:
	adds r0, r4, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3f
_0803930A:
	strb r0, [r1]
_0803930C:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	cmp r1, #0
	beq _0803933A
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08039334
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	b _0803933A
_08039334:
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
_0803933A:
	pop {r4, pc}

	thumb_func_start sub_0803933C
sub_0803933C: @ 0x0803933C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x44
	bne _08039390
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #6
	bgt _08039390
	cmp r1, #4
	blt _08039390
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _08039390
	movs r0, #4
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	movs r1, #0x10
	eors r0, r1
	asrs r0, r0, #3
	strb r0, [r5, #0x14]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	bl sub_0803981C
_08039390:
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r2, [r0]
	cmp r2, #0x9d
	bne _080393F8
	ldr r1, [r5, #0x54]
	cmp r1, #0
	bne _080393CA
	ldrb r0, [r5, #0xc]
	cmp r0, #8
	bhi _080393EC
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #1
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _080393DC
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #1
	strb r0, [r1, #0x1e]
	movs r0, #2
	strb r0, [r1, #0xb]
	movs r0, #0xc3
	lsls r0, r0, #1
	bl sub_08004488
	b _080393DC
_080393CA:
	adds r0, r1, #0
	adds r0, #0x41
	movs r4, #0
	strb r2, [r0]
	movs r0, #0xc3
	lsls r0, r0, #1
	bl sub_08004488
	str r4, [r5, #0x54]
_080393DC:
	adds r0, r5, #0
	bl sub_08039A48
	adds r1, r5, #0
	adds r1, #0x78
	ldrh r0, [r1]
	adds r0, #0x5a
	strh r0, [r1]
_080393EC:
	adds r2, r5, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_080393F8:
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803940A
	adds r0, r5, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0803940A:
	ldr r1, _08039414 @ =gUnk_080CF8A4
	adds r0, r5, #0
	bl sub_0804AA30
	pop {r4, r5, pc}
	.align 2, 0
_08039414: .4byte gUnk_080CF8A4

	thumb_func_start sub_08039418
sub_08039418: @ 0x08039418
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _0803942E
	adds r0, r1, #0
	movs r1, #0xf3
	movs r2, #0
	bl CreateDeathFx
	b _08039434
_0803942E:
	adds r0, r1, #0
	bl sub_0804A7D4
_08039434:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08039438
sub_08039438: @ 0x08039438
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08039454
	ldr r0, _08039458 @ =gUnk_080CF8EC
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08039454:
	pop {r4, pc}
	.align 2, 0
_08039458: .4byte gUnk_080CF8EC

	thumb_func_start sub_0803945C
sub_0803945C: @ 0x0803945C
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x5a
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_08039468
sub_08039468: @ 0x08039468
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_08039470
sub_08039470: @ 0x08039470
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x54]
	cmp r2, #0
	bne _08039494
	movs r1, #0x10
	movs r2, #1
	bl sub_0804A98C
	adds r2, r0, #0
	cmp r2, #0
	beq _0803949C
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	strb r0, [r2, #0x1e]
	movs r0, #1
	strb r0, [r2, #0xb]
	b _0803949C
_08039494:
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
_0803949C:
	movs r0, #0
	str r0, [r4, #0x54]
	adds r3, r4, #0
	adds r3, #0x3a
	ldrb r2, [r3]
	movs r1, #0xfb
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	bl sub_08039A48
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	adds r0, #0x5a
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080394CC
sub_080394CC: @ 0x080394CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	bl Random
	movs r1, #3
	ands r0, r1
	movs r1, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #0x3d
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08039A00
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0803950A
	adds r0, r4, #0
	bl sub_0803998C
	b _0803952A
_0803950A:
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	ldr r1, _0803952C @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0803981C
_0803952A:
	pop {r4, pc}
	.align 2, 0
_0803952C: .4byte gLinkEntity

	thumb_func_start sub_08039530
sub_08039530: @ 0x08039530
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _08039568
	adds r0, r4, #0
	bl sub_08039758
	cmp r0, #0
	bne _08039568
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08039568
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08039858
_08039568:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803956C
sub_0803956C: @ 0x0803956C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08039758
	cmp r0, #0
	bne _0803958A
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803958A
	adds r0, r4, #0
	bl sub_0803992C
_0803958A:
	pop {r4, pc}

	thumb_func_start sub_0803958C
sub_0803958C: @ 0x0803958C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08039758
	cmp r0, #0
	bne _080395D4
	adds r0, r4, #0
	bl sub_080AEF88
	cmp r0, #0
	beq _080395C0
	adds r0, r4, #0
	bl sub_080042B8
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080395D4
	adds r0, r4, #0
	bl sub_0803998C
	b _080395D4
_080395C0:
	adds r2, r4, #0
	adds r2, #0x7b
	ldrb r0, [r2]
	lsls r0, r0, #1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0803998C
_080395D4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080395D8
sub_080395D8: @ 0x080395D8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08039602
	adds r0, r4, #0
	bl sub_0803998C
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x5a
	strb r0, [r1]
	movs r0, #0x7d
	bl sub_08004488
_08039602:
	pop {r4, pc}

	thumb_func_start sub_08039604
sub_08039604: @ 0x08039604
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08039624
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
_08039624:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08039628
sub_08039628: @ 0x08039628
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	adds r1, r0, #0
	cmp r1, #0
	beq _0803963A
	subs r0, #1
	strb r0, [r2, #0xe]
	b _0803966A
_0803963A:
	ldrh r0, [r2, #0x36]
	adds r0, #4
	strh r0, [r2, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0803966A
	movs r0, #7
	strb r0, [r2, #0xc]
	movs r0, #0xa
	strb r0, [r2, #0xe]
	strh r1, [r2, #0x36]
	adds r1, r2, #0
	adds r1, #0x7a
	movs r0, #0x78
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_080399C4
	ldr r0, _0803966C @ =0x0000014B
	bl sub_08004488
_0803966A:
	pop {pc}
	.align 2, 0
_0803966C: .4byte 0x0000014B

	thumb_func_start sub_08039670
sub_08039670: @ 0x08039670
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08039686
	adds r0, r1, #0
	bl sub_0803998C
_08039686:
	pop {pc}

	thumb_func_start sub_08039688
sub_08039688: @ 0x08039688
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _080396AC
	adds r0, r4, #0
	movs r1, #0x3c
	bl sub_08039A00
	adds r0, r4, #0
	bl sub_0803998C
	b _080396BA
_080396AC:
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _080396BA
	adds r0, r4, #0
	bl sub_08039A20
_080396BA:
	pop {r4, pc}

	thumb_func_start sub_080396BC
sub_080396BC: @ 0x080396BC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _080396E2
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080396E2
	adds r0, r4, #0
	bl sub_08039A70
_080396E2:
	pop {r4, pc}

	thumb_func_start sub_080396E4
sub_080396E4: @ 0x080396E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEFE0
	adds r0, r4, #0
	bl sub_080042B8
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08039708
	adds r0, r4, #0
	bl sub_08039AD4
_08039708:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803970C
sub_0803970C: @ 0x0803970C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08039756
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0803973A
	adds r0, r4, #0
	bl sub_0803998C
	ldr r0, [r4, #0x54]
	bl DeleteEntity
	movs r0, #0
	str r0, [r4, #0x54]
	b _08039740
_0803973A:
	adds r0, r4, #0
	bl sub_08039A48
_08039740:
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	adds r0, #0x3c
	strh r0, [r1]
_08039756:
	pop {r4, pc}

	thumb_func_start sub_08039758
sub_08039758: @ 0x08039758
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7a
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803976A
	subs r0, #1
	strb r0, [r5]
_0803976A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08039818
	ldrb r0, [r5]
	cmp r0, #0
	bne _08039818
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080397DC
	ldr r5, _080397D8 @ =gUnk_020000B0
	ldr r0, [r5]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x24
	bl sub_0806FCB8
	cmp r0, #0
	beq _08039818
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #3
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0803981C
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x46
	strb r0, [r1]
	adds r1, #0x3e
	strb r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #1
	b _0803981A
	.align 2, 0
_080397D8: .4byte gUnk_020000B0
_080397DC:
	ldr r5, _08039814 @ =gUnk_020000B0
	ldr r0, [r5]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x48
	bl sub_0806FCB8
	cmp r0, #0
	beq _08039818
	movs r0, #8
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r1, [r5]
	adds r0, r4, #0
	bl sub_080045C4
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r1, #0xc
	adds r0, r4, #0
	bl LoadAnimation
	movs r0, #1
	b _0803981A
	.align 2, 0
_08039814: .4byte gUnk_020000B0
_08039818:
	movs r0, #0
_0803981A:
	pop {r4, r5, pc}

	thumb_func_start sub_0803981C
sub_0803981C: @ 0x0803981C
	push {lr}
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08039836
	movs r0, #0xf4
	strb r0, [r1]
_08039836:
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x45
	strb r0, [r1]
	adds r1, #0x3e
	strb r0, [r1]
	ldrb r1, [r2, #0x14]
	adds r1, #8
	adds r0, r2, #0
	bl LoadAnimation
	ldr r0, _08039854 @ =0x0000012B
	bl sub_08004488
	pop {pc}
	.align 2, 0
_08039854: .4byte 0x0000012B

	thumb_func_start sub_08039858
sub_08039858: @ 0x08039858
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_080398C0
	adds r6, r0, #0
	ldrb r0, [r5, #0x14]
	lsls r4, r0, #3
	adds r0, r6, #4
	movs r1, #0x18
	ands r0, r1
	cmp r0, r4
	bne _0803988C
	adds r1, r5, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	cmp r0, #3
	bne _080398B8
	movs r0, #0
	strb r0, [r1]
	bl Random
	movs r1, #2
	ands r1, r0
	subs r1, #1
	lsls r1, r1, #3
	adds r6, r6, r1
_0803988C:
	subs r0, r6, r4
	movs r1, #0x1f
	ands r0, r1
	lsrs r4, r0, #4
	movs r0, #1
	eors r4, r0
	ldr r1, _080398BC @ =gUnk_080CF8F8
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl LoadAnimation
	lsls r0, r4, #1
	ldrb r1, [r5, #0x14]
	adds r0, r0, r1
	subs r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0x14]
_080398B8:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080398BC: .4byte gUnk_080CF8F8

	thumb_func_start sub_080398C0
sub_080398C0: @ 0x080398C0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r5, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08039908
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08039908
	ldr r0, _08039900 @ =gUnk_020000B0
	ldr r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x58
	bl sub_0806FCB8
	cmp r0, #0
	beq _08039908
	ldr r1, _08039904 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	b _08039928
	.align 2, 0
_08039900: .4byte gUnk_020000B0
_08039904: .4byte gLinkEntity
_08039908:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08039922
	movs r0, #7
	ands r0, r5
	cmp r0, #0
	beq _08039922
	adds r0, r4, #0
	bl sub_08049EE4
	b _08039928
_08039922:
	lsrs r0, r5, #0x10
	movs r1, #0x18
	ands r0, r1
_08039928:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803992C
sub_0803992C: @ 0x0803992C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xe0
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	bl Random
	ldr r2, _08039978 @ =gUnk_080CF900
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE58C
	ldr r1, _0803997C @ =gUnk_080CF910
	ldrb r2, [r4, #0x14]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r4, #0x2a]
	ands r0, r1
	cmp r0, #0
	beq _08039980
	adds r0, r4, #0
	adds r1, r2, #0
	bl LoadAnimation
	b _08039988
	.align 2, 0
_08039978: .4byte gUnk_080CF900
_0803997C: .4byte gUnk_080CF910
_08039980:
	adds r1, r2, #4
	adds r0, r4, #0
	bl LoadAnimation
_08039988:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803998C
sub_0803998C: @ 0x0803998C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x3e
	strb r0, [r1]
	bl Random
	ldr r2, _080399C0 @ =gUnk_080CF918
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl LoadAnimation
	pop {r4, pc}
	.align 2, 0
_080399C0: .4byte gUnk_080CF918

	thumb_func_start sub_080399C4
sub_080399C4: @ 0x080399C4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x11
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _080399E2
	ldrh r0, [r1, #0x2e]
	subs r0, #4
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	adds r0, #2
	strh r0, [r1, #0x32]
_080399E2:
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _080399FE
	ldrh r0, [r1, #0x2e]
	adds r0, #4
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	adds r0, #2
	strh r0, [r1, #0x32]
_080399FE:
	pop {r4, pc}

	thumb_func_start sub_08039A00
sub_08039A00: @ 0x08039A00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl Random
	ldr r2, _08039A1C @ =gUnk_080CF928
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r5
	adds r4, #0x7a
	strb r0, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_08039A1C: .4byte gUnk_080CF928

	thumb_func_start sub_08039A20
sub_08039A20: @ 0x08039A20
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	movs r2, #0
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _08039A44
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x3c
	strb r0, [r1]
	movs r0, #0xfb
	bl sub_08004488
_08039A44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08039A48
sub_08039A48: @ 0x08039A48
	push {lr}
	adds r2, r0, #0
	movs r0, #9
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x47
	strb r0, [r1]
	adds r1, #0x3e
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xa
	strh r0, [r1]
	ldrb r1, [r2, #0x14]
	adds r1, #0x10
	adds r0, r2, #0
	bl LoadAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08039A70
sub_08039A70: @ 0x08039A70
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa
	strb r0, [r5, #0xc]
	movs r0, #0xe0
	strh r0, [r5, #0x24]
	bl Random
	adds r4, r0, #0
	ldr r1, _08039AB8 @ =gUnk_080CF92C
	movs r0, #3
	ands r0, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x78
	strh r1, [r0]
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08039ABC
	movs r0, #7
	ands r0, r4
	cmp r0, #0
	beq _08039ABC
	adds r0, r5, #0
	bl sub_08049EE4
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	b _08039AC2
	.align 2, 0
_08039AB8: .4byte gUnk_080CF92C
_08039ABC:
	movs r0, #0x18
	ands r4, r0
	strb r4, [r5, #0x15]
_08039AC2:
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #3
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0x14]
	adds r1, #0x14
	adds r0, r5, #0
	bl LoadAnimation
	pop {r4, r5, pc}

	thumb_func_start sub_08039AD4
sub_08039AD4: @ 0x08039AD4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08039B28
	adds r5, r0, #0
	ldr r0, _08039B18 @ =0x0000FFFF
	cmp r5, r0
	beq _08039B20
	ldrb r2, [r4, #0xb]
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0804A98C
	adds r1, r0, #0
	cmp r1, #0
	beq _08039B20
	str r4, [r1, #0x50]
	movs r0, #0xb
	strb r0, [r4, #0xc]
	str r1, [r4, #0x54]
	ldrb r1, [r4, #0x14]
	adds r1, #0x18
	adds r0, r4, #0
	bl LoadAnimation
	ldr r0, _08039B1C @ =0x00004067
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r2, [r1]
	adds r1, r5, #0
	bl SetTile
	b _08039B26
	.align 2, 0
_08039B18: .4byte 0x0000FFFF
_08039B1C: .4byte 0x00004067
_08039B20:
	adds r0, r4, #0
	bl sub_08039A48
_08039B26:
	pop {r4, r5, pc}

	thumb_func_start sub_08039B28
sub_08039B28: @ 0x08039B28
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x54]
	cmp r0, #0
	bne _08039B84
	ldrb r2, [r6, #0x14]
	lsls r2, r2, #1
	ldr r0, _08039B88 @ =gUnk_080CF930
	adds r2, r2, r0
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r4, _08039B8C @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r3, #0x3f
	ands r5, r3
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r5, r0
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	bl GetTileType
	adds r2, r0, #0
	ldr r1, _08039B90 @ =gUnk_080CF938
_08039B76:
	ldrh r0, [r1]
	cmp r0, r2
	beq _08039B98
	adds r1, #4
	ldrh r0, [r1]
	cmp r0, #0
	bne _08039B76
_08039B84:
	ldr r0, _08039B94 @ =0x0000FFFF
	b _08039B9E
	.align 2, 0
_08039B88: .4byte gUnk_080CF930
_08039B8C: .4byte gRoomControls
_08039B90: .4byte gUnk_080CF938
_08039B94: .4byte 0x0000FFFF
_08039B98:
	ldrh r0, [r1, #2]
	strb r0, [r6, #0xb]
	adds r0, r5, #0
_08039B9E:
	pop {r4, r5, r6, pc}
