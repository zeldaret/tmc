	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldr r2, _0805BBB0 @ =gRoomVars
	cmp r1, #0
	bge _0805BB82
	movs r0, #0xc
	ldrsh r1, [r2, r0]
_0805BB82:
	ldr r0, _0805BBB4 @ =gArea
	strh r1, [r0, #0xa]
	strh r1, [r2, #0xc]
	movs r0, #9
	movs r1, #0x22
	bl DeepFindEntityByID
	cmp r0, #0
	beq _0805BBAE
	bl Manager22_Main
	ldr r0, _0805BBB8 @ =gScreen
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	bl sub_0805BA78
	bl sub_0805BAD4
_0805BBAE:
	pop {pc}
	.align 2, 0
_0805BBB0: .4byte gRoomVars
_0805BBB4: .4byte gArea
_0805BBB8: .4byte gScreen
	.syntax divided
