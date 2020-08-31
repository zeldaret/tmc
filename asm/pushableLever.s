	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start PushableLever
PushableLever: @ 0x08098260
	push {lr}
	ldr r2, _08098274 @ =gUnk_08123494
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08098274: .4byte gUnk_08123494

	thumb_func_start sub_08098278
sub_08098278: @ 0x08098278
	push {lr}
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #5
	orrs r1, r2
	strb r1, [r3]
	bl sub_08098340
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08098294
sub_08098294: @ 0x08098294
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08098418
	cmp r0, #0
	beq _080982FA
	movs r5, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x62
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #0xf
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	movs r0, #0xb5
	lsls r0, r0, #1
	bl EnqueSFX
	adds r0, r4, #0
	movs r1, #0x1e
	bl sub_0805E4E0
	bl sub_08079F8C
	cmp r0, #0
	beq _080982FA
	ldr r2, _080982FC @ =gPlayerState
	movs r0, #0x90
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r1, _08098300 @ =gPlayerEntity
	strh r5, [r1, #0x2c]
	strh r5, [r1, #0x30]
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	strb r0, [r1, #0x15]
_080982FA:
	pop {r4, r5, pc}
	.align 2, 0
_080982FC: .4byte gPlayerState
_08098300: .4byte gPlayerEntity

	thumb_func_start sub_08098304
sub_08098304: @ 0x08098304
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809833C
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0809832C
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	b _08098336
_0809832C:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl ClearFlag
_08098336:
	adds r0, r4, #0
	bl sub_08098340
_0809833C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08098340
sub_08098340: @ 0x08098340
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x74
	movs r1, #0x3c
	strh r1, [r2]
	bl sub_08098354
	pop {pc}

	thumb_func_start sub_08098354
sub_08098354: @ 0x08098354
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	bne _080983BC
	strb r0, [r6, #0xb]
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldr r1, _080983B4 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r1, [r1, #8]
	adds r1, #0x10
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r2, r0
	adds r4, r6, #0
	adds r4, #0x70
	strh r2, [r4]
	ldrh r0, [r4]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x72
	strh r0, [r1]
	ldr r0, _080983B8 @ =0x00004053
	ldrh r1, [r4]
	ldrb r2, [r5]
	bl SetTile
	adds r0, r6, #0
	movs r1, #1
	bl InitializeAnimation
	b _0809840C
	.align 2, 0
_080983B4: .4byte gRoomControls
_080983B8: .4byte 0x00004053
_080983BC:
	movs r0, #1
	strb r0, [r6, #0xb]
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldr r1, _08098410 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #0x10
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r2, r0
	adds r4, r6, #0
	adds r4, #0x70
	strh r2, [r4]
	ldrh r0, [r4]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x72
	strh r0, [r1]
	ldr r0, _08098414 @ =0x00004052
	ldrh r1, [r4]
	ldrb r2, [r5]
	bl SetTile
	adds r0, r6, #0
	movs r1, #0
	bl InitializeAnimation
_0809840C:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08098410: .4byte gRoomControls
_08098414: .4byte 0x00004052

	thumb_func_start sub_08098418
sub_08098418: @ 0x08098418
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x70
	ldrh r0, [r6]
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	ldr r1, _08098448 @ =0x00004054
	cmp r0, r1
	bne _0809846C
	adds r1, r4, #0
	adds r1, #0x74
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809844C
	movs r0, #1
	b _08098482
	.align 2, 0
_08098448: .4byte 0x00004054
_0809844C:
	adds r0, r4, #0
	bl sub_08098484
	ldr r1, _08098468 @ =gUnk_081234A0
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r6]
	ldrb r2, [r5]
	bl SetTile
	b _08098480
	.align 2, 0
_08098468: .4byte gUnk_081234A0
_0809846C:
	adds r1, r4, #0
	adds r1, #0x74
	movs r2, #0
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x62
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
_08098480:
	movs r0, #0
_08098482:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08098484
sub_08098484: @ 0x08098484
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xb]
	ldr r4, _080984C4 @ =gUnk_081234AC
	cmp r0, #0
	bne _08098492
	ldr r4, _080984C8 @ =gUnk_081234A4
_08098492:
	adds r2, r3, #0
	adds r2, #0x74
	ldrh r0, [r2]
	lsrs r0, r0, #2
	movs r1, #6
	ands r0, r1
	adds r4, r4, r0
	ldrb r0, [r4]
	adds r1, r3, #0
	adds r1, #0x62
	strb r0, [r1]
	ldrb r1, [r4, #1]
	adds r0, r3, #0
	adds r0, #0x63
	strb r1, [r0]
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080984C2
	movs r0, #0x82
	lsls r0, r0, #1
	bl EnqueSFX
_080984C2:
	pop {r4, pc}
	.align 2, 0
_080984C4: .4byte gUnk_081234AC
_080984C8: .4byte gUnk_081234A4
