	.syntax unified
	push {r4, r5, r6, lr}
	bl sub_0807BFD0
	ldr r2, _0807C850 @ =gUnk_03004030
	ldr r6, _0807C854 @ =gPlayerEntity
	ldr r4, _0807C858 @ =gRoomControls
	ldr r3, [r2]
	ldrh r1, [r3, #6]
	movs r0, #0x3f
	ands r0, r1
	lsls r0, r0, #4
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	ldrh r1, [r2, #4]
	adds r1, r1, r0
	movs r5, #0
	strh r1, [r6, #0x2e]
	ldrh r1, [r3, #6]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r1
	lsrs r0, r0, #2
	ldrh r4, [r4, #8]
	adds r0, r0, r4
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r6, #0x32]
	bl sub_080809D4
	ldr r0, _0807C85C @ =gUpdateVisibleTiles
	strb r5, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807C850: .4byte gUnk_03004030
_0807C854: .4byte gPlayerEntity
_0807C858: .4byte gRoomControls
_0807C85C: .4byte gUpdateVisibleTiles
	.syntax divided
