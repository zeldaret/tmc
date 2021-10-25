	.syntax unified
	push {r4, lr}
	movs r4, #0
	ldr r2, _0805BBF8 @ =gArea
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	beq _0805BBF2
	ldr r0, _0805BBFC @ =gRoomVars
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bge _0805BBF2
	ldr r2, _0805BC00 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bl sub_0805BA78
	adds r4, r0, #0
	cmp r4, #0
	beq _0805BBF2
	bl sub_0805BAD4
_0805BBF2:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0805BBF8: .4byte gArea
_0805BBFC: .4byte gRoomVars
_0805BC00: .4byte gScreen
	.syntax divided
