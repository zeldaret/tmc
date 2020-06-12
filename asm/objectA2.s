	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809F2F8
sub_0809F2F8: @ 0x0809F2F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0809F314 @ =gUnk_081246F4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_0809F314: .4byte gUnk_081246F4

	thumb_func_start sub_0809F318
sub_0809F318: @ 0x0809F318
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl InitializeAnimation
	bl Random
	movs r1, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0809F336
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_0809F336:
	movs r0, #0x28
	strh r0, [r4, #0x2e]
	movs r0, #0x48
	strh r0, [r4, #0x32]
	ldr r0, _0809F36C @ =0x0000FFB0
	strh r0, [r4, #0x36]
	ldrb r1, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1b]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, _0809F370 @ =gUnk_08124704
	ldrb r0, [r4, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0801D2B4
	adds r0, r4, #0
	movs r1, #7
	bl sub_0805E3A0
	pop {r4, pc}
	.align 2, 0
_0809F36C: .4byte 0x0000FFB0
_0809F370: .4byte gUnk_08124704

	thumb_func_start sub_0809F374
sub_0809F374: @ 0x0809F374
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #1
	bhi _0809F3AE
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #1
	bhi _0809F3C0
	movs r0, #0
	str r0, [r4, #0x34]
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	movs r0, #0xc3
	lsls r0, r0, #1
	bl PlaySFX
	b _0809F3E6
_0809F3AE:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	beq _0809F3C8
	cmp r0, #1
	beq _0809F3D4
_0809F3C0:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	b _0809F3E6
_0809F3C8:
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_0809F3D4:
	movs r0, #0
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0809F448
	movs r0, #0xc3
	lsls r0, r0, #1
	bl PlaySFX
_0809F3E6:
	pop {r4, pc}

	thumb_func_start sub_0809F3E8
sub_0809F3E8: @ 0x0809F3E8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809F404
	movs r0, #3
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	movs r1, #2
	bl InitializeAnimation
_0809F404:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809F408
sub_0809F408: @ 0x0809F408
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #9
	beq _0809F41C
	cmp r0, #0x80
	beq _0809F438
	b _0809F442
_0809F41C:
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #0x43
	movs r2, #0
	bl CreateFx
	ldr r1, _0809F434 @ =gUnk_02000080
	movs r0, #1
	strb r0, [r1]
	b _0809F442
	.align 2, 0
_0809F434: .4byte gUnk_02000080
_0809F438:
	ldr r1, _0809F444 @ =gUnk_02000080
	movs r0, #1
	strb r0, [r1, #4]
	bl DeleteThisEntity
_0809F442:
	pop {pc}
	.align 2, 0
_0809F444: .4byte gUnk_02000080

	thumb_func_start sub_0809F448
sub_0809F448: @ 0x0809F448
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl Random
	adds r5, r0, #0
	ldrb r0, [r6, #0xf]
	lsls r2, r0, #1
	ldr r1, _0809F474 @ =gUnk_08124708
	adds r7, r2, r1
	adds r0, #1
	strb r0, [r6, #0xf]
	ldr r1, [r6, #0x2c]
	movs r0, #0xa0
	lsls r0, r0, #0xe
	subs r4, r0, r1
	ldrb r0, [r7]
	cmp r0, #0
	beq _0809F478
	cmp r0, #1
	beq _0809F492
	b _0809F49C
	.align 2, 0
_0809F474: .4byte gUnk_08124708
_0809F478:
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r5, #0
	bl __modsi3
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r5
	cmp r0, #0
	beq _0809F49C
	rsbs r4, r4, #0
	b _0809F49C
_0809F492:
	ldr r0, _0809F4BC @ =0xFFF80000
	adds r1, r4, r0
	ldr r0, _0809F4C0 @ =0x000FFFFF
	ands r0, r5
	adds r4, r1, r0
_0809F49C:
	adds r0, r4, #0
	cmp r4, #0
	bge _0809F4A4
	rsbs r0, r4, #0
_0809F4A4:
	ldrb r1, [r7, #1]
	lsls r1, r1, #8
	bl __divsi3
	strh r0, [r6, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080045DA
	lsrs r0, r0, #3
	strb r0, [r6, #0x15]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809F4BC: .4byte 0xFFF80000
_0809F4C0: .4byte 0x000FFFFF
