	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start LakituCloud
LakituCloud: @ 0x0803CCB8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803CCD0 @ =gUnk_080D0418
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_0803CCD0: .4byte gUnk_080D0418

	thumb_func_start sub_0803CCD4
sub_0803CCD4: @ 0x0803CCD4
	push {lr}
	ldr r2, _0803CCE8 @ =gUnk_080D0430
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0803CCE8: .4byte gUnk_080D0430

	thumb_func_start sub_0803CCEC
sub_0803CCEC: @ 0x0803CCEC
	push {lr}
	adds r2, r0, #0
	adds r2, #0x42
	movs r1, #0
	strb r1, [r2]
	bl sub_0803CCD4
	pop {pc}

	thumb_func_start sub_0803CCFC
sub_0803CCFC: @ 0x0803CCFC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _0803CD16
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bne _0803CD26
	adds r0, r4, #0
	bl sub_0803CE3C
	b _0803CD26
_0803CD16:
	ldr r0, _0803CD28 @ =gUnk_080D043C
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0803CD26:
	pop {r4, pc}
	.align 2, 0
_0803CD28: .4byte gUnk_080D043C

	thumb_func_start sub_0803CD2C
sub_0803CD2C: @ 0x0803CD2C
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0803CD38
sub_0803CD38: @ 0x0803CD38
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0803CD40
sub_0803CD40: @ 0x0803CD40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _0803CD66
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	ldr r0, _0803CD68 @ =gLinkEntity
	movs r1, #0x7a
	bl sub_0800449C
	bl sub_08079D84
	adds r0, r4, #0
	bl sub_0803CE3C
_0803CD66:
	pop {r4, pc}
	.align 2, 0
_0803CD68: .4byte gLinkEntity

	thumb_func_start sub_0803CD6C
sub_0803CD6C: @ 0x0803CD6C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0803CDA4 @ =0x0000FFFE
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0xa]
	bl sub_0804B128
	str r0, [r4, #0x54]
	str r0, [r4, #0x50]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x78
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #4
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_0803CE14
	pop {r4, pc}
	.align 2, 0
_0803CDA4: .4byte 0x0000FFFE

	thumb_func_start sub_0803CDA8
sub_0803CDA8: @ 0x0803CDA8
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803CDC0
	adds r0, r4, #0
	bl sub_0806F69C
_0803CDC0:
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803CDD6
	adds r0, r4, #0
	bl sub_0803CE14
_0803CDD6:
	pop {r4, pc}

	thumb_func_start sub_0803CDD8
sub_0803CDD8: @ 0x0803CDD8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	movs r2, #1
	eors r0, r2
	movs r5, #4
	rsbs r5, r5, #0
	adds r3, r5, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803CE10
	movs r0, #1
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r4, #0x10]
	ands r3, r5
	orrs r3, r0
	strb r3, [r4, #0x18]
_0803CE10:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0803CE14
sub_0803CE14: @ 0x0803CE14
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x54
	adds r2, r4, #0
	adds r2, #0x74
	bl sub_080A2CC0
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0803CE38
	lsrs r1, r1, #3
	adds r1, #4
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_0803CE38:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0803CE3C
sub_0803CE3C: @ 0x0803CE3C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x3a
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	ldr r0, [r4, #0x50]
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0803CE14
	pop {r4, pc}
