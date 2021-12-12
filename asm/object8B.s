	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object8B
Object8B: @ 0x0809AF5C
	push {lr}
	ldr r2, _0809AF70 @ =gUnk_08123D58
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809AF70: .4byte gUnk_08123D58

	thumb_func_start sub_0809AF74
sub_0809AF74: @ 0x0809AF74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0x1e]
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	ldr r1, _0809AFBC @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r2, r0
	adds r0, r4, #0
	adds r0, #0x80
	movs r6, #0
	strh r2, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0809AFC4
	movs r1, #1
	strb r1, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809AFC0
	strb r6, [r4, #0xd]
	b _0809B02C
	.align 2, 0
_0809AFBC: .4byte gRoomControls
_0809AFC0:
	strb r1, [r4, #0xd]
	b _0809B02C
_0809AFC4:
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x84
	strb r6, [r0]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	movs r0, #0x8b
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _0809B026
	str r4, [r5, #0x50]
	str r5, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	bne _0809B010
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r3, #0
	bl PositionRelative
	adds r0, r5, #0
	adds r0, #0x84
	strb r6, [r0]
	b _0809B026
_0809B010:
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #1
	strb r0, [r1]
_0809B026:
	adds r0, r4, #0
	bl sub_0809B334
_0809B02C:
	adds r0, r4, #0
	bl sub_0809B0B0
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0809B034
sub_0809B034: @ 0x0809B034
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x82
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	adds r0, r4, #0
	bl sub_0809B234
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809B050
sub_0809B050: @ 0x0809B050
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809B0A2
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0809B0A4 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x80
	strh r1, [r0]
	movs r0, #0
	bl SetPlayerControl
	adds r0, r4, #0
	bl sub_0809B0B0
	movs r0, #0x86
	lsls r0, r0, #1
	bl EnqueueSFX
_0809B0A2:
	pop {r4, r5, pc}
	.align 2, 0
_0809B0A4: .4byte gRoomControls

	thumb_func_start sub_0809B0A8
sub_0809B0A8: @ 0x0809B0A8
	push {lr}
	bl sub_0809B234
	pop {pc}

	thumb_func_start sub_0809B0B0
sub_0809B0B0: @ 0x0809B0B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r0, #0x80
	ldrh r0, [r0]
	subs r6, r0, #1
	mov r0, r8
	adds r0, #0x38
	ldrb r7, [r0]
	mov r1, r8
	ldrb r0, [r1, #0xd]
	cmp r0, #4
	bls _0809B0CE
	b _0809B228
_0809B0CE:
	lsls r0, r0, #2
	ldr r1, _0809B0D8 @ =_0809B0DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809B0D8: .4byte _0809B0DC
_0809B0DC: @ jump table
	.4byte _0809B0F0 @ case 0
	.4byte _0809B130 @ case 1
	.4byte _0809B178 @ case 2
	.4byte _0809B1C0 @ case 3
	.4byte _0809B208 @ case 4
_0809B0F0:
	mov r1, r8
	adds r1, #0x84
	movs r0, #0
	strb r0, [r1]
	adds r5, r6, #2
	mov r0, r8
	adds r0, #0x82
	strh r5, [r0]
	ldr r0, _0809B128 @ =0x00004082
	subs r1, r6, #1
	adds r2, r7, #0
	bl SetTile
	ldr r4, _0809B12C @ =0x00004022
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl SetTile
	adds r1, r6, #1
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	adds r0, r4, #0
	adds r1, r5, #0
	b _0809B162
	.align 2, 0
_0809B128: .4byte 0x00004082
_0809B12C: .4byte 0x00004022
_0809B130:
	mov r1, r8
	adds r1, #0x84
	movs r0, #1
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x82
	strh r6, [r0]
	ldr r0, _0809B16C @ =0x0000405F
	adds r1, r6, #0
	adds r2, r7, #0
	bl SetTile
	ldr r4, _0809B170 @ =0x00004022
	adds r1, r6, #1
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	adds r1, r6, #2
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	ldr r0, _0809B174 @ =0x00004082
	adds r1, r6, #3
_0809B162:
	adds r2, r7, #0
	bl SetTile
	b _0809B228
	.align 2, 0
_0809B16C: .4byte 0x0000405F
_0809B170: .4byte 0x00004022
_0809B174: .4byte 0x00004082
_0809B178:
	mov r1, r8
	adds r1, #0x84
	movs r0, #1
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x82
	strh r6, [r0]
	ldr r0, _0809B1B4 @ =0x00004082
	adds r1, r6, #3
	adds r2, r7, #0
	bl SetTile
	ldr r0, _0809B1B8 @ =0x00004022
	adds r1, r6, #2
	adds r2, r7, #0
	bl SetTile
	ldr r0, _0809B1BC @ =0x0000405F
	adds r1, r6, #0
	adds r2, r7, #0
	bl SetTile
	mov r1, r8
	ldr r0, [r1, #0x50]
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	b _0809B228
	.align 2, 0
_0809B1B4: .4byte 0x00004082
_0809B1B8: .4byte 0x00004022
_0809B1BC: .4byte 0x0000405F
_0809B1C0:
	mov r1, r8
	adds r1, #0x84
	movs r0, #0
	strb r0, [r1]
	adds r4, r6, #2
	mov r0, r8
	adds r0, #0x82
	strh r4, [r0]
	ldr r0, _0809B1FC @ =0x00004082
	subs r1, r6, #1
	adds r2, r7, #0
	bl SetTile
	ldr r0, _0809B200 @ =0x00004022
	adds r1, r6, #0
	adds r2, r7, #0
	bl SetTile
	ldr r0, _0809B204 @ =0x0000405F
	adds r1, r4, #0
	adds r2, r7, #0
	bl SetTile
	mov r1, r8
	ldr r0, [r1, #0x50]
	adds r0, #0x86
	ldrh r0, [r0]
	bl ClearFlag
	b _0809B228
	.align 2, 0
_0809B1FC: .4byte 0x00004082
_0809B200: .4byte 0x00004022
_0809B204: .4byte 0x0000405F
_0809B208:
	ldr r4, _0809B230 @ =0x00004022
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl SetTile
	adds r1, r6, #1
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
	adds r1, r6, #2
	adds r0, r4, #0
	adds r2, r7, #0
	bl SetTile
_0809B228:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809B230: .4byte 0x00004022

	thumb_func_start sub_0809B234
sub_0809B234: @ 0x0809B234
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0809B26A
	ldr r2, [r4, #0x50]
	ldrb r1, [r2, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r3, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, #0x29
	ldrb r1, [r2]
	lsls r1, r1, #0x1d
	adds r3, r4, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0809B270
_0809B26A:
	adds r0, r4, #0
	bl sub_0809B274
_0809B270:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809B274
sub_0809B274: @ 0x0809B274
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0809B290 @ =gPlayerEntity
	adds r2, r4, #0
	adds r2, #0x84
	ldrb r0, [r2]
	cmp r0, #1
	beq _0809B2BA
	cmp r0, #1
	bgt _0809B294
	cmp r0, #0
	beq _0809B29A
	b _0809B332
	.align 2, 0
_0809B290: .4byte gPlayerEntity
_0809B294:
	cmp r0, #2
	beq _0809B30C
	b _0809B332
_0809B29A:
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	adds r0, #0x14
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bge _0809B332
	movs r0, #1
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #5
	b _0809B306
_0809B2BA:
	movs r5, #0x2e
	ldrsh r0, [r3, r5]
	adds r0, #0x1c
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	cmp r0, r1
	ble _0809B2E8
	movs r0, #2
	strb r0, [r2]
	ldr r0, _0809B2E4 @ =0x00004022
	adds r1, r4, #0
	adds r1, #0x80
	ldrh r1, [r1]
	adds r1, #2
	movs r2, #1
	bl SetTile
	ldr r0, [r4, #0x54]
	bl sub_0809B358
	b _0809B332
	.align 2, 0
_0809B2E4: .4byte 0x00004022
_0809B2E8:
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	adds r0, #0x10
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _0809B332
	movs r0, #0
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #8
	ands r0, r1
	movs r1, #4
_0809B306:
	orrs r0, r1
	strb r0, [r2]
	b _0809B332
_0809B30C:
	movs r5, #0x2e
	ldrsh r0, [r3, r5]
	adds r0, #0x20
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bge _0809B332
	movs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r0, [r0]
	adds r0, #2
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, [r4, #0x54]
	bl sub_0809B38C
_0809B332:
	pop {r4, r5, pc}

	thumb_func_start sub_0809B334
sub_0809B334: @ 0x0809B334
	push {r4, r5, lr}
	adds r0, #0x80
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r4, #0x81
	movs r5, #2
_0809B340:
	ldr r0, _0809B354 @ =0x00004026
	adds r1, r4, #0
	movs r2, #1
	bl SetTile
	subs r5, #1
	adds r4, #1
	cmp r5, #0
	bge _0809B340
	pop {r4, r5, pc}
	.align 2, 0
_0809B354: .4byte 0x00004026

	thumb_func_start sub_0809B358
sub_0809B358: @ 0x0809B358
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	adds r1, #0x84
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldr r2, _0809B388 @ =gUnk_08123D68
	adds r5, r1, r2
	adds r0, #0x80
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r4, #0x82
	movs r6, #4
_0809B370:
	ldrh r0, [r5]
	adds r1, r4, #0
	movs r2, #1
	bl SetTile
	subs r6, #1
	adds r4, #1
	adds r5, #4
	cmp r6, #0
	bge _0809B370
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809B388: .4byte gUnk_08123D68

	thumb_func_start sub_0809B38C
sub_0809B38C: @ 0x0809B38C
	push {r4, r5, lr}
	adds r0, #0x80
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r4, #0x82
	movs r5, #4
_0809B398:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0807BA8C
	subs r5, #1
	adds r4, #1
	cmp r5, #0
	bge _0809B398
	pop {r4, r5, pc}
	.align 2, 0
