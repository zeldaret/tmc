	.syntax unified
	push {r4, lr}
	ldr r4, [r0, #0x14]
	cmp r4, #0
	beq _0805D9FC
	ldr r3, _0805DA00 @ =gScreen
	ldr r2, _0805DA04 @ =gRoomControls
	ldrh r1, [r4, #0x2e]
	ldrh r0, [r2, #0xa]
	subs r1, r1, r0
	movs r0, #0x80
	subs r0, r0, r1
	strh r0, [r3, #0x2e]
	ldrh r1, [r4, #0x32]
	ldrh r0, [r2, #0xc]
	subs r1, r1, r0
	movs r0, #0x8c
	subs r0, r0, r1
	strh r0, [r3, #0x30]
_0805D9FC:
	pop {r4, pc}
	.align 2, 0
_0805DA00: .4byte gScreen
_0805DA04: .4byte gRoomControls
	.syntax divided
