	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	bl sub_0807B464
	cmp r0, #0
	beq _0807B5AC
	adds r0, r5, #0
	subs r0, #0x40
	adds r1, r6, #0
	bl sub_0807B464
	adds r4, r0, #0
	adds r0, r5, #1
	adds r1, r6, #0
	bl sub_0807B464
	lsls r0, r0, #1
	orrs r4, r0
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r6, #0
	bl sub_0807B464
	lsls r0, r0, #2
	orrs r4, r0
	subs r0, r5, #1
	adds r1, r6, #0
	bl sub_0807B464
	lsls r0, r0, #3
	orrs r0, r4
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r2, r6, #0
	bl SetTileType
_0807B5AC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
