	.syntax unified
	push {r4, r5, lr}
	bl sub_0807BFD0
	bl LoadRoomGfx
	ldr r4, _0807C780 @ =gRoomControls
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _0807C788
	ldrh r1, [r2, #0x2e]
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0807C764
	ldr r0, _0807C784 @ =0x00007FFF
	ands r0, r1
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	strh r0, [r2, #0x2e]
_0807C764:
	movs r0, #0x2e
	ldrsh r3, [r2, r0]
	ldrh r1, [r2, #0x32]
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0807C77A
	ldr r0, _0807C784 @ =0x00007FFF
	ands r0, r1
	ldrh r1, [r4, #8]
	subs r0, r0, r1
	strh r0, [r2, #0x32]
_0807C77A:
	movs r0, #0x32
	ldrsh r5, [r2, r0]
	b _0807C78C
	.align 2, 0
_0807C780: .4byte gRoomControls
_0807C784: .4byte 0x00007FFF
_0807C788:
	movs r3, #0
	movs r5, #0
_0807C78C:
	cmp r3, #0x77
	bgt _0807C794
	movs r0, #0
	b _0807C7A2
_0807C794:
	ldrh r1, [r4, #0x1e]
	adds r0, r1, #0
	subs r0, #0x78
	cmp r0, r3
	blt _0807C7A0
	adds r0, r3, #0
_0807C7A0:
	subs r0, #0x78
_0807C7A2:
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #6]
	ldrh r2, [r4, #0xa]
	adds r0, r1, r2
	strh r0, [r4, #0xa]
	cmp r5, #0x4f
	bgt _0807C7B4
	movs r0, #0
	b _0807C7C2
_0807C7B4:
	ldrh r2, [r4, #0x20]
	adds r0, r2, #0
	subs r0, #0x50
	cmp r0, r5
	blt _0807C7C0
	adds r0, r5, #0
_0807C7C0:
	subs r0, #0x50
_0807C7C2:
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #8]
	ldrh r3, [r4, #0xc]
	adds r0, r0, r3
	strh r0, [r4, #0xc]
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _0807C7FC
	ldrh r3, [r2, #0x2e]
	adds r0, r1, r3
	strh r0, [r2, #0x2e]
	ldr r1, [r4, #0x30]
	ldrh r0, [r4, #8]
	ldrh r2, [r1, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	ldr r0, _0807C80C @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807C7FC
	ldr r0, [r4, #0x30]
	adds r0, #0x38
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	bl UpdateSpriteForCollisionLayer
_0807C7FC:
	ldrb r1, [r4, #0xf]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4, #0xf]
	bl sub_08080BC4
	pop {r4, r5, pc}
	.align 2, 0
_0807C80C: .4byte gRoomControls
	.syntax divided
