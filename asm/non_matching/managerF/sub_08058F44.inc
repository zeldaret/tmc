	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r2, #0
	bl CheckRoomFlag
	cmp r0, #0
	bne _08058F80
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_080002A8
	cmp r0, #0x61
	bne _08058F80
	lsrs r1, r4, #4
	movs r2, #0x3f
	ands r1, r2
	lsrs r0, r5, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0x26
	movs r2, #1
	bl SetTileType
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08058F84
_08058F80:
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
