	thumb_func_start ProjectileE
ProjectileE: @ 0x080A9500
	push {lr}
	ldr r2, _080A9514 @ =gUnk_08129A64
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9514: .4byte gUnk_08129A64

	thumb_func_start sub_080A9518
sub_080A9518: @ 0x080A9518
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0xa
	strb r1, [r0, #0xe]
	ldrh r1, [r0, #0x36]
	subs r1, #2
	strh r1, [r0, #0x36]
	ldrh r1, [r0, #0x32]
	adds r1, #2
	strh r1, [r0, #0x32]
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _080A953C @ =0x00000149
	bl SoundReq
	pop {pc}
	.align 2, 0
_080A953C: .4byte 0x00000149

	thumb_func_start sub_080A9540
sub_080A9540: @ 0x080A9540
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9578
	movs r0, #2
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r3, #0x32]
	adds r0, #6
	strh r0, [r3, #0x32]
	adds r0, r3, #0
	movs r1, #1
	bl InitializeAnimation
	b _080A95B6
_080A9578:
	ldrh r1, [r3, #0x36]
	movs r2, #0x36
	ldrsh r0, [r3, r2]
	cmp r0, #0
	beq _080A9586
	adds r0, r1, #1
	strh r0, [r3, #0x36]
_080A9586:
	ldrb r1, [r3, #0x15]
	lsls r1, r1, #1
	ldr r0, _080A95B8 @ =gSineTable
	adds r1, r1, r0
	movs r4, #0
	ldrsh r2, [r1, r4]
	movs r4, #0x24
	ldrsh r0, [r3, r4]
	muls r2, r0, r2
	ldr r0, [r3, #0x2c]
	adds r0, r0, r2
	str r0, [r3, #0x2c]
	adds r1, #0x80
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r2, #0x24
	ldrsh r0, [r3, r2]
	muls r1, r0, r1
	ldr r0, [r3, #0x30]
	subs r0, r0, r1
	str r0, [r3, #0x30]
	adds r0, r3, #0
	bl GetNextFrame
_080A95B6:
	pop {r4, pc}
	.align 2, 0
_080A95B8: .4byte gSineTable

	thumb_func_start sub_080A95BC
sub_080A95BC: @ 0x080A95BC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A95D8
	adds r0, r4, #0
	bl DeleteEntity
_080A95D8:
	pop {r4, pc}
	.align 2, 0
