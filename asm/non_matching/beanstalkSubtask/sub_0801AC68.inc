	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0801AC84 @ =gUnk_0200B240
	ldr r0, _0801AC88 @ =gRoomVars
	ldrh r3, [r0, #0xe]
	movs r0, #0
	cmp r0, r3
	bhs _0801AC94
_0801AC78:
	ldrh r5, [r2]
	cmp r4, r5
	bne _0801AC8C
	ldrh r0, [r2, #2]
	lsls r0, r0, #2
	b _0801AC96
	.align 2, 0
_0801AC84: .4byte gUnk_0200B240
_0801AC88: .4byte gRoomVars
_0801AC8C:
	adds r2, #4
	adds r0, #1
	cmp r0, r3
	blo _0801AC78
_0801AC94:
	lsls r0, r1, #2
_0801AC96:
	pop {r4, r5, pc}
	.syntax divided
