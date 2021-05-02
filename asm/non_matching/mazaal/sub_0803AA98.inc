
    .syntax unified

	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0803AB0C @ =gUnk_080CED6C
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #4
	adds r0, #3
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #4
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0803B870
	cmp r0, #0
	bne _0803AB0A
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_0803B6F4
	cmp r0, #0
	beq _0803AB0A
	movs r0, #0x14
	strb r0, [r4, #0xc]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0xa
	bl InitializeAnimation
	ldr r2, [r4, #0x74]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldr r2, [r4, #0x54]
	adds r1, r2, #0
	adds r1, #0x3f
	movs r0, #0x13
	strb r0, [r1]
	adds r0, r2, #0
	movs r1, #5
	bl InitAnimationForceUpdate
	movs r0, #0xb7
	lsls r0, r0, #1
	bl SoundReq
_0803AB0A:
	pop {r4, pc}
	.align 2, 0
_0803AB0C: .4byte gUnk_080CED6C

    .syntax divided
