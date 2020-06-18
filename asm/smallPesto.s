	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08031714
sub_08031714: @ 0x08031714
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080317B4
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803176E
	bl Random
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _08031750
	ldrb r1, [r4, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031750
	adds r0, r4, #0
	bl sub_08049EE4
	b _08031766
_08031750:
	ldrb r0, [r4, #0x15]
	adds r0, #0x18
	strb r0, [r4, #0x15]
	bl Random
	movs r1, #0xe
	ands r0, r1
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
_08031766:
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080317E0
_0803176E:
	pop {r4, pc}

	thumb_func_start sub_08031770
sub_08031770: @ 0x08031770
	push {r4, lr}
	adds r1, r0, #0
	adds r4, r1, #0
	adds r4, #0x80
	ldrh r0, [r4]
	cmp r0, #0
	beq _08031790
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080317B2
	adds r0, r1, #0
	bl sub_08031840
	b _080317B2
_08031790:
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _080317AA
	bl Random
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	b _080317B2
_080317AA:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080317B2
	str r0, [r1, #0x54]
_080317B2:
	pop {r4, pc}

	thumb_func_start sub_080317B4
sub_080317B4: @ 0x080317B4
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #0x30
	ands r1, r0
	movs r2, #0xd
	rsbs r2, r2, #0
	adds r0, r2, #0
	cmp r1, #0
	beq _080317D0
	movs r1, #0xc
	rsbs r1, r1, #0
	adds r0, r1, #0
_080317D0:
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}

	thumb_func_start sub_080317E0
sub_080317E0: @ 0x080317E0
	push {lr}
	ldrb r1, [r0, #0x15]
	adds r1, #2
	movs r2, #0x1c
	ands r1, r2
	lsrs r1, r1, #2
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x14]
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080317F8
sub_080317F8: @ 0x080317F8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl Random
	movs r1, #0x18
	ands r0, r1
	movs r5, #1
	strb r5, [r4, #0xc]
	movs r6, #0
	ldr r1, _08031838 @ =0x0000FFF4
	strh r1, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x38
	strb r5, [r1]
	adds r3, r4, #0
	adds r3, #0x3c
	ldrb r2, [r3]
	movs r1, #0x10
	orrs r1, r2
	strb r1, [r3]
	strb r5, [r4, #0x1c]
	strb r0, [r4, #0x15]
	ldr r0, _0803183C @ =gUnk_080CE560
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_080317E0
	strb r6, [r4, #0xe]
	movs r0, #0x20
	strb r0, [r4, #0xf]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08031838: .4byte 0x0000FFF4
_0803183C: .4byte gUnk_080CE560

	thumb_func_start sub_08031840
sub_08031840: @ 0x08031840
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xa]
	movs r0, #0x2d
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _08031862
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	str r5, [r4, #0x50]
	str r4, [r5, #0x54]
	movs r0, #1
	strb r0, [r4, #0xb]
_08031862:
	pop {r4, r5, pc}
