	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xf
	movs r1, #0x43
.ifdef EU
	movs r2, #0x0
.else
	movs r2, #0x40
.endif
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805933A
	ldr r1, _0805933C @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r4, #0x38]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r4, [r4, #0x3a]
	adds r0, r0, r4
	strh r0, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
_0805933A:
	pop {r4, pc}
	.align 2, 0
_0805933C: .4byte gRoomControls
	.syntax divided
