	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	ldr r5, _0801A3C8 @ =gPlayerEntity
	ldrb r1, [r5, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A44E
	bl sub_0801A4F8
	cmp r0, #0
	beq _0801A44E
	movs r0, #2
	bl GetLayerByIndex
	adds r7, r0, #0
	ldr r1, _0801A3CC @ =gUnk_080B4488
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r6, [r0, r1]
	adds r4, r4, r6
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	bl GetTileType
	adds r1, r0, #0
	ldr r0, _0801A3D0 @ =0x0000402B
	cmp r1, r0
	beq _0801A3D4
	cmp r1, r0
	blo _0801A3D6
	adds r0, #4
	cmp r1, r0
	bhi _0801A3D6
_0801A3C4:
	movs r0, #1
	b _0801A450
	.align 2, 0
_0801A3C8: .4byte gPlayerEntity
_0801A3CC: .4byte gUnk_080B4488
_0801A3D0: .4byte 0x0000402B
_0801A3D4:
	adds r4, r4, r6
_0801A3D6:
	adds r0, r7, r4
	ldr r1, _0801A40C @ =0x00001F84
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x46
	beq _0801A44E
	ldr r0, _0801A410 @ =gPlayerEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	bl GetTileType
	bl sub_080B1B54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x52
	beq _0801A44E
	cmp r0, #0x52
	bgt _0801A414
	cmp r0, #0x26
	blt _0801A418
	cmp r0, #0x27
	ble _0801A44E
	cmp r0, #0x29
	beq _0801A44E
	b _0801A418
	.align 2, 0
_0801A40C: .4byte 0x00001F84
_0801A410: .4byte gPlayerEntity
_0801A414:
	cmp r0, #0x74
	beq _0801A44E
_0801A418:
	ldr r0, _0801A434 @ =0x00002004
	add r0, r8
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r0, #0xa
	beq _0801A446
	cmp r0, #0xa
	bgt _0801A438
	cmp r0, #0
	beq _0801A3C4
	cmp r0, #5
	beq _0801A440
	b _0801A44E
	.align 2, 0
_0801A434: .4byte 0x00002004
_0801A438:
	cmp r1, #0x44
	beq _0801A446
	cmp r1, #0x45
	bne _0801A44E
_0801A440:
	cmp r6, #1
	bne _0801A44E
	b _0801A3C4
_0801A446:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _0801A3C4
_0801A44E:
	movs r0, #0
_0801A450:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
