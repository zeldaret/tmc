	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0x17
	bne _0807AE32
	ldr r0, _0807AE58 @ =gPlayerState
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _0807AE74
_0807AE32:
	ldr r0, _0807AE5C @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #0
	bne _0807AE74
	ldr r0, _0807AE58 @ =gPlayerState
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0807AE74
	movs r0, #0x72
	bl GetInventoryValue
	cmp r0, #1
	bne _0807AE60
	movs r0, #0xe0
	lsls r0, r0, #1
	b _0807AE64
	.align 2, 0
_0807AE58: .4byte gPlayerState
_0807AE5C: .4byte gRoomControls
_0807AE60:
	movs r0, #0xc0
	lsls r0, r0, #1
_0807AE64:
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08079520
	movs r0, #0xb1
	lsls r0, r0, #1
	bl SoundReq
_0807AE74:
	movs r0, #0x10
	bl sub_080793E4
	cmp r0, #0
	beq _0807AEA8
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #5
	movs r0, #4
	strb r0, [r1]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	movs r0, #0x7a
	bl SoundReq
_0807AEA8:
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807AECC
	ldr r0, _0807AEC8 @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0807AEDE
	adds r0, r4, #0
	movs r1, #4
	bl CreateRandomWaterTrace
	b _0807AEDE
	.align 2, 0
_0807AEC8: .4byte gRoomTransition
_0807AECC:
	ldr r0, _0807AEE0 @ =gRoomTransition
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0807AEDE
	adds r0, r4, #0
	bl CreateWaterTrace
_0807AEDE:
	pop {r4, pc}
	.align 2, 0
_0807AEE0: .4byte gRoomTransition
	.syntax divided
