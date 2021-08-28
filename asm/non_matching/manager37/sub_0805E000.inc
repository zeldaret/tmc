	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x51
	movs r1, #0
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0805E062
	ldr r1, _0805E064 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #0xb0
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, #0x48
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x38
	movs r5, #1
	strb r5, [r0]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	ldr r0, _0805E068 @ =gScreenTransition
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0805E040
	bl DeleteThisEntity
_0805E040:
	str r4, [r6, #0x18]
	strb r5, [r6, #0xc]
	movs r0, #3
	bl sub_08078A90
	ldr r0, _0805E06C @ =gArea
	ldr r1, _0805E070 @ =0x00000864
	adds r0, r0, r1
	ldr r1, _0805E074 @ =0x80010000
	str r1, [r0]
	movs r0, #6
	movs r1, #4
	bl DoFade
	movs r0, #0xf7
	bl SoundReq
_0805E062:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805E064: .4byte gRoomControls
_0805E068: .4byte gScreenTransition
_0805E06C: .4byte gArea
_0805E070: .4byte 0x00000864
_0805E074: .4byte 0x80010000
	.syntax divided
