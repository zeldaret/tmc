	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0807BF04 @ =gArea
	ldrb r1, [r0, #0xd]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807BF0C
	ldr r0, _0807BF08 @ =gRoomControls
	ldrb r0, [r0, #5]
	b _0807BF7C
	.align 2, 0
_0807BF04: .4byte gArea
_0807BF08: .4byte gRoomControls
_0807BF0C:
	cmp r2, #1
	beq _0807BF2C
	cmp r2, #1
	blo _0807BF1E
	cmp r2, #2
	beq _0807BF40
	cmp r2, #3
	beq _0807BF58
	b _0807BF7A
_0807BF1E:
	ldr r0, _0807BF28 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r7, r0, #0
	subs r7, #0x10
	b _0807BF60
	.align 2, 0
_0807BF28: .4byte gRoomControls
_0807BF2C:
	ldr r0, _0807BF3C @ =gRoomControls
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #0x1e]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	b _0807BF60
	.align 2, 0
_0807BF3C: .4byte gRoomControls
_0807BF40:
	ldr r0, _0807BF50 @ =gRoomControls
	ldrh r1, [r0, #8]
	ldrh r0, [r0, #0x20]
	adds r1, r1, r0
	adds r7, r1, #0
	adds r7, #0x10
	b _0807BF60
	.align 2, 0
_0807BF50: .4byte gRoomControls
_0807BF54:
	adds r0, r4, #0
	b _0807BF7C
_0807BF58:
	ldr r0, _0807BF80 @ =gRoomControls
	ldrh r0, [r0, #6]
	adds r6, r0, #0
	subs r6, #0x10
_0807BF60:
	ldr r5, _0807BF84 @ =gUnk_02033ACC
	movs r4, #0
_0807BF64:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_0807BF88
	cmp r0, #0
	bne _0807BF54
	adds r4, #1
	adds r5, #0x20
	cmp r4, #0x3f
	bls _0807BF64
_0807BF7A:
	movs r0, #0xff
_0807BF7C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807BF80: .4byte gRoomControls
_0807BF84: .4byte gUnk_02033ACC
	.syntax divided
