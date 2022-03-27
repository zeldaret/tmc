	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ObjectBlockingStairs
ObjectBlockingStairs: @ 0x08092ED4
	push {lr}
	ldr r2, _08092EE8 @ =gUnk_0812283C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08092EE8: .4byte gUnk_0812283C

	thumb_func_start sub_08092EEC
sub_08092EEC: @ 0x08092EEC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	bl sub_080932D8
	cmp r0, #1
	beq _08092F2C
	cmp r0, #2
	beq _08092F3A
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r1, #0
	movs r2, #0x80
	strh r2, [r4, #0x24]
	strb r0, [r4, #0x16]
	strb r1, [r4, #0xe]
	strb r1, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x7a
	movs r0, #0x20
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7b
	strb r2, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08092F48
	ldr r0, _08092F28 @ =gUnk_080FD288
	str r0, [r4, #0x48]
	b _08092F48
	.align 2, 0
_08092F28: .4byte gUnk_080FD288
_08092F2C:
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x2e]
	subs r0, #0x20
	strh r0, [r4, #0x2e]
	movs r5, #2
	b _08092F5E
_08092F3A:
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x2e]
	adds r0, #0x20
	strh r0, [r4, #0x2e]
	movs r5, #3
	b _08092F5E
_08092F48:
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x86
	ldrh r0, [r1]
	cmp r0, #0
	beq _08092F5E
	bl CheckFlags
	cmp r0, #0
	bne _08092F5E
	movs r5, #1
_08092F5E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080931A4
	pop {r4, r5, pc}

	thumb_func_start sub_08092F68
sub_08092F68: @ 0x08092F68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _08092FA4 @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r2, #0x2e
	ldrsh r0, [r6, r2]
	subs r1, r1, r0
	mov r8, r1
	adds r1, r6, #0
	adds r1, #0x86
	ldrh r0, [r1]
	cmp r0, #0
	beq _08092FA8
	bl CheckFlags
	cmp r0, #0
	bne _08092F92
	b _080930E6
_08092F92:
	adds r0, r6, #0
	adds r0, #0x7a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08092FA8
	adds r0, r6, #0
	bl sub_080932A8
	b _080930E6
	.align 2, 0
_08092FA4: .4byte gPlayerEntity
_08092FA8:
	adds r1, r6, #0
	adds r1, #0x7b
	ldrb r2, [r1]
	movs r0, #0x3f
	ands r0, r2
	adds r7, r1, #0
	cmp r0, #0
	bne _08092FD6
	movs r0, #0xf
	movs r4, #0
	orrs r0, r2
	strb r0, [r7]
	adds r0, r6, #0
	movs r1, #0
	bl sub_080931A4
	mov r0, r8
	cmp r0, #0
	bge _08092FD6
	ldrb r0, [r7]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r7]
_08092FD6:
	ldrb r1, [r7]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08092FEA
	adds r5, r6, #0
	adds r5, #0x78
	ldrh r0, [r5]
	subs r0, #1
	b _08092FF2
_08092FEA:
	adds r5, r6, #0
	adds r5, #0x78
	ldrh r0, [r5]
	adds r0, #1
_08092FF2:
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl GetTileType
	adds r1, r0, #0
	ldr r0, _08093034 @ =0x00004031
	cmp r1, r0
	bhi _08093040
	subs r0, #1
	cmp r1, r0
	blo _08093040
	movs r0, #3
	strb r0, [r6, #0xc]
	ldr r0, _08093038 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	strb r0, [r6, #0x15]
	movs r0, #0x80
	strh r0, [r6, #0x24]
	movs r0, #0x40
	strb r0, [r6, #0xe]
	adds r0, r6, #0
	movs r1, #0x50
	bl RequestPriorityDuration
	ldr r0, _0809303C @ =0x0000010F
	bl EnqueueSFX
	adds r0, r6, #0
	bl sub_08093248
	b _080930E6
	.align 2, 0
_08093034: .4byte 0x00004031
_08093038: .4byte gPlayerEntity
_0809303C: .4byte 0x0000010F
_08093040:
	ldr r0, _0809307C @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080930E6
	adds r0, r6, #0
	bl RegisterCarryEntity
	adds r3, r7, #0
	ldrb r2, [r3]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08093088
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809309C
	ldr r0, _08093080 @ =0x0000402C
	ldrh r1, [r5]
	subs r1, #1
	ldrb r2, [r4]
	bl SetTile
	ldr r0, _08093084 @ =0x0000403D
	b _080930AA
	.align 2, 0
_0809307C: .4byte gPlayerEntity
_08093080: .4byte 0x0000402C
_08093084: .4byte 0x0000403D
_08093088:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080930C0
	mov r1, r8
	cmp r1, #4
	ble _080930E6
	movs r0, #0x3f
	ands r0, r2
	strb r0, [r3]
_0809309C:
	ldr r0, _080930B8 @ =0x0000403D
	ldrh r1, [r5]
	subs r1, #1
	ldrb r2, [r4]
	bl SetTile
	ldr r0, _080930BC @ =0x0000402D
_080930AA:
	ldrh r1, [r5]
	adds r1, #1
	ldrb r2, [r4]
	bl SetTile
	b _080930E6
	.align 2, 0
_080930B8: .4byte 0x0000403D
_080930BC: .4byte 0x0000402D
_080930C0:
	mov r1, r8
	rsbs r0, r1, #0
	cmp r0, #4
	ble _080930E6
	movs r0, #0x40
	orrs r0, r2
	strb r0, [r7]
	ldr r0, _080930EC @ =0x0000402C
	ldrh r1, [r5]
	subs r1, #1
	ldrb r2, [r4]
	bl SetTile
	ldr r0, _080930F0 @ =0x0000403D
	ldrh r1, [r5]
	adds r1, #1
	ldrb r2, [r4]
	bl SetTile
_080930E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080930EC: .4byte 0x0000402C
_080930F0: .4byte 0x0000403D

	thumb_func_start sub_080930F4
sub_080930F4: @ 0x080930F4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0xe]
	cmp r3, #0
	beq _08093104
	bl sub_08093280
	b _08093174
_08093104:
	ldr r5, _0809315C @ =gPlayerState
	ldrb r0, [r5, #5]
	cmp r0, #0x12
	bne _08093168
	ldr r6, _08093160 @ =gPlayerEntity
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08093174
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08093174
	movs r0, #0x10
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x38
	movs r2, #0x40
	strb r2, [r0]
	ldr r0, [r5, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0x30]
	strh r3, [r6, #0x2c]
	strh r3, [r6, #0x30]
	ldrb r0, [r6, #0x14]
	movs r1, #4
	eors r0, r1
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	strb r2, [r4, #0xe]
	ldr r0, _08093164 @ =0x0000010F
	bl EnqueueSFX
	adds r0, r4, #0
	bl sub_08093248
	b _08093174
	.align 2, 0
_0809315C: .4byte gPlayerState
_08093160: .4byte gPlayerEntity
_08093164: .4byte 0x0000010F
_08093168:
	ldrb r0, [r4, #0xd]
	cmp r0, #6
	bne _08093174
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r3, [r4, #0xf]
_08093174:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08093178
sub_08093178: @ 0x08093178
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl LinearMoveUpdate
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08093198
	adds r0, r4, #0
	bl sub_08093334
_08093198:
	adds r0, r4, #0
	bl sub_08093364
	pop {r4, pc}

	thumb_func_start nullsub_120
nullsub_120: @ 0x080931A0
	bx lr
	.align 2, 0

	thumb_func_start sub_080931A4
sub_080931A4: @ 0x080931A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	ldr r3, _080931F0 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r2, r2, r1
	asrs r2, r2, #4
	movs r4, #0x3f
	ands r2, r4
	movs r6, #0x32
	ldrsh r1, [r0, r6]
	ldrh r3, [r3, #8]
	subs r1, r1, r3
	asrs r1, r1, #4
	ands r1, r4
	lsls r1, r1, #6
	orrs r2, r1
	adds r1, r0, #0
	adds r1, #0x78
	strh r2, [r1]
	ldrh r1, [r1]
	subs r1, #0x40
	mov r8, r1
	adds r0, #0x38
	ldrb r7, [r0]
	cmp r5, #1
	beq _080931F4
	cmp r5, #1
	blo _0809320C
	cmp r5, #2
	beq _080931FC
	cmp r5, #3
	beq _08093204
	b _0809320C
	.align 2, 0
_080931F0: .4byte gRoomControls
_080931F4:
	ldr r0, _080931F8 @ =gUnk_08122862
	b _0809320E
	.align 2, 0
_080931F8: .4byte gUnk_08122862
_080931FC:
	ldr r0, _08093200 @ =gUnk_08122874
	b _0809320E
	.align 2, 0
_08093200: .4byte gUnk_08122874
_08093204:
	ldr r0, _08093208 @ =gUnk_08122886
	b _0809320E
	.align 2, 0
_08093208: .4byte gUnk_08122886
_0809320C:
	ldr r0, _08093230 @ =gUnk_08122850
_0809320E:
	movs r4, #0
	movs r6, #0
	adds r5, r0, #0
_08093214:
	mov r0, r8
	adds r1, r0, r6
	adds r1, r1, r4
	subs r1, #1
	ldrh r0, [r5]
	adds r2, r7, #0
	bl SetTile
	cmp r4, #2
	beq _08093234
	cmp r4, #5
	beq _08093238
	b _0809323A
	.align 2, 0
_08093230: .4byte gUnk_08122850
_08093234:
	movs r6, #0x3d
	b _0809323A
_08093238:
	movs r6, #0x7a
_0809323A:
	adds r5, #2
	adds r4, #1
	cmp r4, #8
	bls _08093214
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08093248
sub_08093248: @ 0x08093248
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	adds r1, #0x78
	ldrh r1, [r1]
	adds r7, r1, #0
	subs r7, #0x40
	adds r0, #0x38
	ldrb r6, [r0]
	movs r4, #0
	movs r5, #0
_0809325C:
	adds r0, r7, r5
	adds r0, r0, r4
	subs r0, #1
	adds r1, r6, #0
	bl RestorePrevTileEntity
	cmp r4, #2
	beq _08093272
	cmp r4, #5
	beq _08093276
	b _08093278
_08093272:
	movs r5, #0x3d
	b _08093278
_08093276:
	movs r5, #0x7a
_08093278:
	adds r4, #1
	cmp r4, #8
	bls _0809325C
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08093280
sub_08093280: @ 0x08093280
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl LinearMoveUpdate
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080932A0
	adds r0, r4, #0
	bl sub_08093334
_080932A0:
	adds r0, r4, #0
	bl sub_08093364
	pop {r4, pc}

	thumb_func_start sub_080932A8
sub_080932A8: @ 0x080932A8
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x7a
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	movs r2, #3
	ands r2, r0
	cmp r2, #1
	beq _080932C8
	cmp r2, #3
	beq _080932D0
	adds r1, #0x62
	movs r0, #0
	b _080932D4
_080932C8:
	adds r0, r1, #0
	adds r0, #0x62
	strb r2, [r0]
	b _080932D6
_080932D0:
	adds r1, #0x62
	movs r0, #0xff
_080932D4:
	strb r0, [r1]
_080932D6:
	pop {pc}

	thumb_func_start sub_080932D8
sub_080932D8: @ 0x080932D8
	push {r4, lr}
	lsls r0, r0, #3
	ldr r1, _080932F0 @ =gUnk_08122898
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r1, [r4, #4]
	bl CheckLocalFlagByBank
	cmp r0, #0
	beq _080932F4
	movs r0, #1
	b _08093306
	.align 2, 0
_080932F0: .4byte gUnk_08122898
_080932F4:
	ldr r0, [r4]
	ldrh r1, [r4, #6]
	bl CheckLocalFlagByBank
	cmp r0, #0
	bne _08093304
	movs r0, #0
	b _08093306
_08093304:
	movs r0, #2
_08093306:
	pop {r4, pc}

	thumb_func_start sub_08093308
sub_08093308: @ 0x08093308
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #3
	ldr r1, _08093320 @ =gUnk_08122898
	adds r1, r0, r1
	cmp r2, #1
	bne _08093324
	ldr r0, [r1]
	ldrh r1, [r1, #4]
	bl SetLocalFlagByBank
	b _08093330
	.align 2, 0
_08093320: .4byte gUnk_08122898
_08093324:
	cmp r2, #2
	bne _08093330
	ldr r0, [r1]
	ldrh r1, [r1, #6]
	bl SetLocalFlagByBank
_08093330:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08093334
sub_08093334: @ 0x08093334
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x15]
	movs r0, #0x10
	ands r0, r1
	movs r5, #2
	cmp r0, #0
	beq _0809334A
	movs r5, #1
_0809334A:
	adds r1, r5, #1
	adds r0, r4, #0
	bl sub_080931A4
	ldrb r0, [r4, #0xa]
	adds r1, r5, #0
	bl sub_08093308
	movs r0, #0x72
	bl EnqueueSFX
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08093364
sub_08093364: @ 0x08093364
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080933BC
	movs r0, #0xf
	movs r1, #0x11
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080933BC
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r1, [r5, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809339C
	ldrh r0, [r4, #0x2e]
	adds r0, #0x12
	b _080933A0
_0809339C:
	ldrh r0, [r4, #0x2e]
	subs r0, #0x12
_080933A0:
	strh r0, [r4, #0x2e]
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	ldrb r1, [r5, #0xe]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080933B6
	adds r0, r2, #0
	adds r0, #8
	b _080933BA
_080933B6:
	adds r0, r2, #0
	subs r0, #8
_080933BA:
	strh r0, [r4, #0x32]
_080933BC:
	pop {r4, r5, pc}
	.align 2, 0
