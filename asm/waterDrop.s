	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start WaterDrop
WaterDrop: @ 0x0802A238
	push {lr}
	ldr r2, _0802A24C @ =gUnk_080CD030
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802A24C: .4byte gUnk_080CD030

	thumb_func_start sub_0802A250
sub_0802A250: @ 0x0802A250
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xe]
	ldr r0, _0802A2A8 @ =0xFFFD0000
	str r0, [r5, #0x20]
	bl Random
	ldr r1, _0802A2AC @ =gUnk_080CD03C
	movs r4, #3
	ands r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r5, #0x24]
	bl Random
	ldr r1, _0802A2B0 @ =gUnk_080CD040
	ands r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #0x18
	strb r0, [r5, #0x15]
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r5, #0
	bl UpdateSpriteForCollisionLayer
	movs r0, #0x66
	movs r1, #0
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _0802A2A6
	str r5, [r0, #0x50]
_0802A2A6:
	pop {r4, r5, pc}
	.align 2, 0
_0802A2A8: .4byte 0xFFFD0000
_0802A2AC: .4byte gUnk_080CD03C
_0802A2B0: .4byte gUnk_080CD040

	thumb_func_start sub_0802A2B4
sub_0802A2B4: @ 0x0802A2B4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _0802A2DC
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x84
	bl sub_08004488
	b _0802A2E2
_0802A2DC:
	adds r0, r4, #0
	bl sub_0806F69C
_0802A2E2:
	adds r0, r4, #0
	bl sub_0802A39C
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0802A2FA
	adds r0, r4, #0
	bl sub_0802A334
_0802A2FA:
	pop {r4, pc}

	thumb_func_start sub_0802A2FC
sub_0802A2FC: @ 0x0802A2FC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802A31A
	adds r0, r4, #0
	bl DeleteEntity
	b _0802A332
_0802A31A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802A32C
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _0802A332
_0802A32C:
	adds r0, r4, #0
	bl sub_0802A39C
_0802A332:
	pop {r4, pc}

	thumb_func_start sub_0802A334
sub_0802A334: @ 0x0802A334
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802A380 @ =gRoomControls
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	ldr r3, _0802A384 @ =gScreen
	subs r1, r1, r0
	ldrh r5, [r3, #0x16]
	adds r1, r1, r5
	asrs r1, r1, #3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	movs r5, #0xc
	ldrsh r2, [r2, r5]
	subs r0, r0, r2
	ldrh r3, [r3, #0x18]
	adds r0, r0, r3
	asrs r0, r0, #3
	ldr r3, _0802A388 @ =gUnk_02001A40
	movs r2, #0x1f
	ands r1, r2
	ands r0, r2
	lsls r0, r0, #5
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A38C
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	b _0802A392
	.align 2, 0
_0802A380: .4byte gRoomControls
_0802A384: .4byte gScreen
_0802A388: .4byte gUnk_02001A40
_0802A38C:
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
_0802A392:
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	pop {r4, r5, pc}

	thumb_func_start sub_0802A39C
sub_0802A39C: @ 0x0802A39C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0802A3EC @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802A3F0 @ =gRoomControls
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	ldr r3, _0802A3F4 @ =gScreen
	subs r1, r1, r0
	ldrh r6, [r3, #0x16]
	adds r1, r1, r6
	asrs r1, r1, #3
	movs r6, #0x32
	ldrsh r0, [r4, r6]
	movs r4, #0xc
	ldrsh r2, [r2, r4]
	subs r0, r0, r2
	ldrh r3, [r3, #0x18]
	adds r0, r0, r3
	subs r0, #0xa
	asrs r0, r0, #3
	ldr r3, _0802A3F8 @ =gUnk_02001A40
	movs r2, #0x1f
	ands r1, r2
	ands r0, r2
	lsls r0, r0, #5
	adds r1, r1, r0
	movs r6, #0x80
	lsls r6, r6, #3
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A3FC
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	b _0802A402
	.align 2, 0
_0802A3EC: .4byte gPlayerEntity
_0802A3F0: .4byte gRoomControls
_0802A3F4: .4byte gScreen
_0802A3F8: .4byte gUnk_02001A40
_0802A3FC:
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
_0802A402:
	strb r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
