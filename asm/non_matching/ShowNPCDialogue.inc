    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r6, r1, #0
	ldrh r1, [r6, #2]
	asrs r7, r1, #4
	movs r0, #1
	ands r7, r0
	movs r0, #0xf
	ands r1, r0
	cmp r1, #6
	bls _0806F1C8
	b _0806F332
_0806F1C8:
	lsls r0, r1, #2
	ldr r1, _0806F1D4 @ =_0806F1D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806F1D4: .4byte _0806F1D8
_0806F1D8: @ jump table
	.4byte _0806F332 @ case 0
	.4byte _0806F342 @ case 1
	.4byte _0806F1F4 @ case 2
	.4byte _0806F24E @ case 3
	.4byte _0806F2BA @ case 4
	.4byte _0806F324 @ case 5
	.4byte _0806F336 @ case 6
_0806F1F4:
	ldr r4, [r6]
	asrs r1, r4, #0xc
	movs r0, #0xf
	ands r1, r0
	ldr r0, _0806F210 @ =0x00000FFF
	ands r4, r0
	movs r5, #0
	cmp r1, #1
	beq _0806F22A
	cmp r1, #1
	bgt _0806F214
	cmp r1, #0
	beq _0806F21A
	b _0806F248
	.align 2, 0
_0806F210: .4byte 0x00000FFF
_0806F214:
	cmp r1, #2
	beq _0806F23A
	b _0806F248
_0806F21A:
	adds r0, r4, #0
	bl CheckRoomFlag
	adds r5, r0, #0
_0806F222:
	adds r0, r4, #0
	bl SetRoomFlag
	b _0806F248
_0806F22A:
	adds r0, r4, #0
	bl CheckLocalFlag
	adds r5, r0, #0
_0806F232:
	adds r0, r4, #0
	bl SetLocalFlag
	b _0806F248
_0806F23A:
	adds r0, r4, #0
	bl CheckGlobalFlag
	adds r5, r0, #0
	adds r0, r4, #0
	bl SetGlobalFlag
_0806F248:
	cmp r5, #0
	beq _0806F342
	b _0806F34C
_0806F24E:
	ldr r4, [r6]
	asrs r1, r4, #0xc
	movs r0, #0xf
	ands r1, r0
	ldr r0, _0806F26C @ =0x00000FFF
	ands r4, r0
	movs r5, #0
	cmp r1, #1
	beq _0806F28A
	cmp r1, #1
	bgt _0806F270
	cmp r1, #0
	beq _0806F276
	b _0806F248
	.align 2, 0
_0806F26C: .4byte 0x00000FFF
_0806F270:
	cmp r1, #2
	beq _0806F29E
	b _0806F248
_0806F276:
	adds r0, r4, #0
	bl CheckRoomFlag
	adds r5, r0, #0
	cmp r5, #0
	beq _0806F222
	adds r0, r4, #0
	bl ClearRoomFlag
	b _0806F248
_0806F28A:
	adds r0, r4, #0
	bl CheckLocalFlag
	adds r5, r0, #0
	cmp r5, #0
	beq _0806F232
	adds r0, r4, #0
	bl ClearLocalFlag
	b _0806F248
_0806F29E:
	adds r0, r4, #0
	bl CheckGlobalFlag
	adds r5, r0, #0
	cmp r5, #0
	bne _0806F2B2
	adds r0, r4, #0
	bl SetGlobalFlag
	b _0806F248
_0806F2B2:
	adds r0, r4, #0
	bl ClearGlobalFlag
	b _0806F248
_0806F2BA:
	ldr r4, [r6]
	asrs r1, r4, #0xc
	movs r0, #0xf
	ands r1, r0
	ldr r0, _0806F2D8 @ =0x00000FFF
	ands r4, r0
	movs r5, #0
	cmp r1, #4
	bhi _0806F248
	lsls r0, r1, #2
	ldr r1, _0806F2DC @ =_0806F2E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806F2D8: .4byte 0x00000FFF
_0806F2DC: .4byte _0806F2E0
_0806F2E0: @ jump table
	.4byte _0806F2F4 @ case 0
	.4byte _0806F2FC @ case 1
	.4byte _0806F304 @ case 2
	.4byte _0806F30C @ case 3
	.4byte _0806F314 @ case 4
_0806F2F4:
	adds r0, r4, #0
	bl CheckRoomFlag
	b _0806F320
_0806F2FC:
	adds r0, r4, #0
	bl CheckLocalFlag
	b _0806F320
_0806F304:
	adds r0, r4, #0
	bl CheckGlobalFlag
	b _0806F320
_0806F30C:
	adds r0, r4, #0
	bl CheckKinstoneFused
	b _0806F320
_0806F314:
	adds r0, r4, #0
	bl GetInventoryValue
	cmp r0, #0
	beq _0806F320
	movs r0, #1
_0806F320:
	adds r5, r0, #0
	b _0806F248
_0806F324:
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _0806F332
	mov r0, r8
	bl _call_via_r1
	b _0806F35E
_0806F332:
	movs r0, #0
	b _0806F34E
_0806F336:
	ldr r0, _0806F348 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806F34C
_0806F342:
	ldrh r0, [r6, #6]
	b _0806F34E
	.align 2, 0
_0806F348: .4byte gPlayerState
_0806F34C:
	ldrh r0, [r6, #4]
_0806F34E:
	cmp r7, #0
	beq _0806F35A
	mov r1, r8
	bl MessageNoOverlap
	b _0806F35E
_0806F35A:
	bl MessageFromTarget
_0806F35E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
    .syntax divided
