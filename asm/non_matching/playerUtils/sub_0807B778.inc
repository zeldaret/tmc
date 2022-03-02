	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl sub_080002C8
	cmp r0, #0xd
	bne _0807B7D0
	adds r0, r5, #0
	subs r0, #0x40
	adds r1, r6, #0
	bl sub_0807B434
	adds r4, r0, #0
	adds r0, r5, #1
	adds r1, r6, #0
	bl sub_0807B434
	lsls r0, r0, #1
	orrs r4, r0
	adds r0, r5, #0
	adds r0, #0x40
	adds r1, r6, #0
	bl sub_0807B434
	lsls r0, r0, #2
	orrs r4, r0
	subs r0, r5, #1
	adds r1, r6, #0
	bl sub_0807B434
	lsls r0, r0, #3
	orrs r0, r4
	ldr r1, _0807B7D4 @ =gUnk_0811C466
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r2, r6, #0
	bl SetTileType
_0807B7D0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807B7D4: .4byte gUnk_0811C466
	.syntax divided
