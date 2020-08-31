	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ObjectA0
ObjectA0: @ 0x0809F12C
	push {lr}
	ldr r2, _0809F140 @ =gUnk_08124670
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809F140: .4byte gUnk_08124670

	thumb_func_start sub_0809F144
sub_0809F144: @ 0x0809F144
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0809F188 @ =gUnk_080FD178
	str r0, [r4, #0x48]
	ldr r0, _0809F18C @ =0x00004022
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	ldr r3, _0809F190 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r5, #0x3f
	ands r1, r5
	movs r6, #0x32
	ldrsh r2, [r4, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r5
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809F188: .4byte gUnk_080FD178
_0809F18C: .4byte 0x00004022
_0809F190: .4byte gRoomControls

	thumb_func_start sub_0809F194
sub_0809F194: @ 0x0809F194
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	ldrb r0, [r0, #0xf]
	cmp r0, #1
	bne _0809F1AE
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0xa]
	adds r1, #4
	adds r0, r2, #0
	bl InitializeAnimation
_0809F1AE:
	pop {pc}

	thumb_func_start sub_0809F1B0
sub_0809F1B0: @ 0x0809F1B0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0809F20C
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x1b
	bl sub_080A7EE0
	adds r5, r0, #0
	cmp r5, #0
	beq _0809F21E
	ldrb r0, [r4, #0xa]
	strb r0, [r5, #0xa]
	ldr r0, [r4, #0x50]
	str r0, [r5, #0x50]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #1
	ldr r1, _0809F208 @ =gUnk_08124684
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
	movs r0, #0xec
	bl EnqueSFX
	b _0809F21E
	.align 2, 0
_0809F208: .4byte gUnk_08124684
_0809F20C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809F21E
	strb r3, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl InitializeAnimation
_0809F21E:
	pop {r4, r5, pc}

	thumb_func_start sub_0809F220
sub_0809F220: @ 0x0809F220
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F242
	movs r0, #4
	strb r0, [r2, #0xc]
	movs r0, #0xf
	strb r0, [r2, #0xe]
	ldrb r1, [r2, #0xa]
	adds r0, r2, #0
	bl InitializeAnimation
	b _0809F252
_0809F242:
	ldr r0, [r2, #0x50]
	adds r0, #0x36
	movs r1, #1
	ldrb r2, [r2, #0xb]
	lsls r1, r2
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_0809F252:
	pop {pc}

	thumb_func_start sub_0809F254
sub_0809F254: @ 0x0809F254
	push {r4, r5, lr}
	adds r3, r0, #0
	ldrb r1, [r3, #0x18]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	movs r5, #1
	eors r0, r5
	movs r4, #4
	rsbs r4, r4, #0
	adds r2, r4, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x18]
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809F284
	movs r0, #1
	strb r5, [r3, #0xc]
	ands r2, r4
	orrs r2, r0
	strb r2, [r3, #0x18]
_0809F284:
	pop {r4, r5, pc}
	.align 2, 0
