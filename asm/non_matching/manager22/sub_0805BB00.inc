	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805BB50 @ =gArea
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	bne _0805BB28
	bl GetEmptyManager
	adds r1, r0, #0
	cmp r1, #0
	beq _0805BB28
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x22
	strb r0, [r1, #9]
	adds r0, r1, #0
	movs r1, #0
	bl AppendEntityToList
_0805BB28:
	ldr r1, _0805BB54 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	movs r0, #0xf
	bl MemFill16
	ldr r0, _0805BB58 @ =gScreen
	ldr r1, _0805BB5C @ =0x00001E0C
	strh r1, [r0, #0x2c]
	adds r0, #0x66
	ldr r1, _0805BB60 @ =0x00003E48
	strh r1, [r0]
	ldr r0, _0805BB64 @ =gRoomVars
	strh r4, [r0, #0xc]
	cmp r5, #0
	beq _0805BB68
	ldr r1, _0805BB50 @ =gArea
	movs r0, #1
	b _0805BB6C
	.align 2, 0
_0805BB50: .4byte gArea
_0805BB54: .4byte 0x0600F000
_0805BB58: .4byte gScreen
_0805BB5C: .4byte 0x00001E0C
_0805BB60: .4byte 0x00003E48
_0805BB64: .4byte gRoomVars
_0805BB68:
	ldr r1, _0805BB70 @ =gArea
	movs r0, #2
_0805BB6C:
	strb r0, [r1, #0xc]
	pop {r4, r5, pc}
	.align 2, 0
_0805BB70: .4byte gArea
	.syntax divided
