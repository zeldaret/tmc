	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start GentariCurtain
GentariCurtain: @ 0x08092038
	push {lr}
	ldr r2, _0809204C @ =gUnk_0812260C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809204C: .4byte gUnk_0812260C

	thumb_func_start sub_08092050
sub_08092050: @ 0x08092050
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _0809207A
	movs r0, #3
	strb r0, [r6, #0xc]
	ldrh r0, [r6, #0x2e]
	adds r0, #2
	strh r0, [r6, #0x2e]
	adds r0, r6, #0
	bl sub_0809223C
	adds r0, r6, #0
	movs r1, #1
	bl InitAnimationForceUpdate
	b _08092148
_0809207A:
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _08092138
	movs r1, #1
	strb r1, [r6, #0xd]
	adds r0, r6, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r6, #0x2e]
	adds r0, #2
	strh r0, [r6, #0x2e]
	adds r0, r6, #0
	bl UpdateSpriteOrderAndFlip
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldr r3, _08092130 @ =gRoomControls
	ldrh r0, [r3, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r4, #0x3f
	ands r2, r4
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrh r1, [r3, #8]
	adds r1, #8
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r2, r0
	adds r5, r6, #0
	adds r5, #0x70
	strh r2, [r5]
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldrh r0, [r3, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	ands r2, r4
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrh r1, [r3, #8]
	subs r1, #8
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r2, r0
	adds r7, r6, #0
	adds r7, #0x72
	strh r2, [r7]
	ldrh r0, [r5]
	movs r1, #1
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x74
	strh r0, [r1]
	ldrh r0, [r7]
	movs r1, #1
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x76
	strh r0, [r1]
	ldr r4, _08092134 @ =0x00004022
	ldrh r1, [r5]
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldrh r1, [r7]
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	adds r0, r6, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	b _08092148
	.align 2, 0
_08092130: .4byte gRoomControls
_08092134: .4byte 0x00004022
_08092138:
	movs r0, #1
	strb r0, [r6, #0xc]
	adds r0, r6, #0
	bl sub_080921BC
	adds r0, r6, #0
	bl sub_080921F0
_08092148:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0809214C
sub_0809214C: @ 0x0809214C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _08092160
	movs r0, #2
	strb r0, [r4, #0xc]
_08092160:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08092164
sub_08092164: @ 0x08092164
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080921B6
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r1, [r1]
	movs r2, #1
	bl SetTile
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x72
	ldrh r1, [r1]
	movs r2, #1
	bl SetTile
	adds r0, r4, #0
	bl sub_08092214
	adds r0, r4, #0
	bl sub_0809223C
	adds r0, r4, #0
	movs r1, #1
	bl InitAnimationForceUpdate
_080921B6:
	pop {r4, pc}

	thumb_func_start nullsub_118
nullsub_118: @ 0x080921B8
	bx lr
	.align 2, 0

	thumb_func_start sub_080921BC
sub_080921BC: @ 0x080921BC
	push {lr}
	adds r2, r0, #0
	ldr r1, _080921DC @ =gUnk_030011E8
	ldr r0, _080921E0 @ =0x000029F8
	adds r3, r1, r0
_080921C6:
	ldrb r0, [r1, #8]
	cmp r0, #6
	bne _080921E4
	ldrb r0, [r1, #9]
	cmp r0, #0x6f
	bne _080921E4
	ldrb r0, [r1, #0xa]
	cmp r0, #2
	bne _080921E4
	str r1, [r2, #0x54]
	b _080921EE
	.align 2, 0
_080921DC: .4byte gUnk_030011E8
_080921E0: .4byte 0x000029F8
_080921E4:
	adds r1, #0x88
	cmp r1, r3
	blo _080921C6
	movs r0, #0
	str r0, [r2, #0x54]
_080921EE:
	pop {pc}

	thumb_func_start sub_080921F0
sub_080921F0: @ 0x080921F0
	push {lr}
	ldr r2, [r0, #0x54]
	cmp r2, #0
	beq _08092212
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r0, [r3]
	movs r1, #7
	orrs r0, r1
	strb r0, [r3]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_08092212:
	pop {pc}

	thumb_func_start sub_08092214
sub_08092214: @ 0x08092214
	push {lr}
	ldr r2, [r0, #0x54]
	cmp r2, #0
	beq _0809223A
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0xa
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_0809223A:
	pop {pc}

	thumb_func_start sub_0809223C
sub_0809223C: @ 0x0809223C
	push {lr}
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #2
	strb r1, [r2]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	subs r1, #0xa
	ands r1, r2
	movs r2, #3
	orrs r1, r2
	strb r1, [r3]
	bl UpdateSpriteOrderAndFlip
	pop {pc}
