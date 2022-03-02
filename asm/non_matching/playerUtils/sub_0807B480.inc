	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r1, #2
	bl sub_0807B464
	cmp r0, #0
	beq _0807B558
	adds r0, r6, #0
	subs r0, #0x40
	movs r1, #2
	bl sub_0807B464
	adds r5, r0, #0
	adds r0, r6, #1
	movs r1, #2
	bl sub_0807B464
	lsls r0, r0, #1
	orrs r5, r0
	adds r4, r6, #0
	adds r4, #0x40
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807B464
	lsls r0, r0, #2
	orrs r5, r0
	subs r0, r6, #1
	movs r1, #2
	bl sub_0807B464
	lsls r0, r0, #3
	orrs r5, r0
	adds r0, r6, #0
	adds r0, #0x41
	movs r1, #1
	bl sub_0807B464
	lsls r0, r0, #1
	orrs r5, r0
	adds r0, r6, #0
	adds r0, #0x3f
	movs r1, #1
	bl sub_0807B464
	lsls r0, r0, #3
	orrs r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl GetTileType
	cmp r0, #0
	beq _0807B4FA
	adds r0, r6, #0
	adds r0, #0x80
	movs r1, #1
	bl sub_0807B464
	lsls r0, r0, #2
	orrs r5, r0
_0807B4FA:
	ldr r0, _0807B514 @ =gUnk_0811C2CC
	lsls r1, r5, #1
	adds r1, r1, r0
	ldrh r4, [r1]
	adds r0, r6, #0
	movs r1, #2
	bl GetTileType
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0807B518 @ =gUnk_0811C2EC
	movs r3, #0
	b _0807B51E
	.align 2, 0
_0807B514: .4byte gUnk_0811C2CC
_0807B518: .4byte gUnk_0811C2EC
_0807B51C:
	adds r2, #6
_0807B51E:
	ldrh r1, [r2]
	cmp r1, #0
	beq _0807B52A
	cmp r0, r1
	bne _0807B51C
	ldrh r3, [r2, #2]
_0807B52A:
	movs r0, #1
	lsls r0, r7
	bics r3, r0
	ldr r2, _0807B534 @ =gUnk_0811C2EC
	b _0807B53A
	.align 2, 0
_0807B534: .4byte gUnk_0811C2EC
_0807B538:
	adds r2, #6
_0807B53A:
	ldrh r0, [r2]
	cmp r0, #0
	beq _0807B54E
	ldrh r0, [r2, #2]
	cmp r3, r0
	bne _0807B538
	ldrh r0, [r2, #4]
	cmp r5, r0
	bne _0807B538
	ldrh r4, [r2]
_0807B54E:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #2
	bl SetTileType
_0807B558:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
