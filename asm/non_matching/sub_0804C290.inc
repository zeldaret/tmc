    .syntax unified
	push {lr}
	ldr r0, _0804C2B4 @ =gArea
	ldrb r1, [r0, #0xd]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0804C2B2
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1d
	lsls r1, r1, #2
	ldr r0, _0804C2B8 @ =gUnk_080D9348
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	movs r2, #1
	bl SetTileType
_0804C2B2:
	pop {pc}
	.align 2, 0
_0804C2B4: .4byte gArea
_0804C2B8: .4byte gUnk_080D9348
    .syntax divided
