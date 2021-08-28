	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1d
	adds r1, r4, #0
	movs r2, #1
	bl SetTileType
	movs r0, #0
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	subs r4, #0x40
	movs r0, #0
	adds r1, r4, #0
	movs r2, #2
	bl SetTileType
	pop {r4, pc}
	.align 2, 0
	.syntax divided
