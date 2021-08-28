	.syntax unified
	push {lr}
	ldr r2, _0805B79C @ =gUnk_08108C9C
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	ldrb r3, [r0, #0xb]
	adds r1, r1, r3
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r3, [r1]
	movs r2, #0x38
	ldrsh r1, [r0, r2]
	adds r0, #0x36
	ldrb r2, [r0]
	adds r0, r3, #0
	bl SetTileType
	pop {pc}
	.align 2, 0
_0805B79C: .4byte gUnk_08108C9C
	.syntax divided
