.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803E046
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0803E046
	movs r0, #0
	b _0803E082
_0803E046:
	adds r0, r4, #0
	adds r0, #0x77
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803E080
	ldr r2, _0803E084 @ =gRoomControls
	ldrh r0, [r2, #6]
	adds r1, r0, #0
	adds r1, #0x58
	ldr r0, _0803E088 @ =gPlayerEntity
	movs r3, #0x2e
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _0803E080
	ldrh r2, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x58
	cmp r1, r0
	bgt _0803E080
	adds r1, r2, #0
	adds r1, #0xf8
	cmp r1, r0
	blt _0803E080
	adds r1, r4, #0
	adds r1, #0x81
	ldrb r0, [r1]
	adds r0, #5
	strb r0, [r1]
	movs r5, #1
_0803E080:
	adds r0, r5, #0
_0803E082:
	pop {r4, r5, pc}
	.align 2, 0
_0803E084: .4byte gRoomControls
_0803E088: .4byte gPlayerEntity
.syntax divided
