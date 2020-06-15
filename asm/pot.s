	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Pot
Pot: @ 0x0808220C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08082228 @ =gUnk_0811F090
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r4, #0x41
	movs r0, #0
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_08082228: .4byte gUnk_0811F090

	thumb_func_start sub_0808222C
sub_0808222C: @ 0x0808222C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0808224C
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _0808224C
	bl DeleteThisEntity
_0808224C:
	movs r2, #1
	strb r2, [r4, #0xc]
	ldr r0, _08082308 @ =gUnk_080FD338
	str r0, [r4, #0x48]
	movs r1, #0
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x32]
	adds r0, #3
	strh r0, [r4, #0x32]
	strb r1, [r4, #0x16]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x45
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #3
	movs r0, #0x6e
	strb r0, [r1]
	subs r1, #4
	movs r0, #0x84
	strb r0, [r1]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r0, [r5]
	cmp r0, #0
	bne _08082298
	adds r0, r4, #0
	bl sub_08016A30
_08082298:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r7, _0808230C @ =gRoomControls
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r6, #0x3f
	ands r0, r6
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r7, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r0, r1
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x70
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #7
	mov r8, r1
	cmp r0, r8
	bne _080822D6
	bl DeleteThisEntity
_080822D6:
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	ldrh r0, [r7, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r6
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldrh r2, [r7, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r6
	lsls r0, r0, #6
	orrs r1, r0
	ldrb r2, [r5]
	mov r0, r8
	bl SetTile
	adds r0, r4, #0
	movs r1, #5
	bl InitializeAnimation
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08082308: .4byte gUnk_080FD338
_0808230C: .4byte gRoomControls

	thumb_func_start sub_08082310
sub_08082310: @ 0x08082310
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r6, #0x7f
	adds r1, r6, #0
	ands r1, r0
	cmp r1, #0x13
	beq _08082342
	cmp r1, #0x1d
	beq _0808234C
	adds r0, r5, #0
	bl GetTileTypeByEntity
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r4, r0
	bne _08082338
	b _080824F0
_08082338:
	adds r0, #1
	cmp r4, r0
	bhs _08082340
	b _08082484
_08082340:
	b _080823C4
_08082342:
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	b _080824F6
_0808234C:
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080823C0 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r7, #0x32
	ldrsh r2, [r5, r7]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	movs r1, #0
	movs r0, #5
	strb r0, [r5, #0xc]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x63
	strb r1, [r0]
	ldrb r1, [r5, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #0x10]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_08082824
	b _080824F6
	.align 2, 0
_080823C0: .4byte gRoomControls
_080823C4:
	ldr r0, _080823D4 @ =0x00004004
	cmp r4, r0
	bls _080823D8
	adds r0, #0x63
	cmp r4, r0
	beq _08082448
	b _08082484
	.align 2, 0
_080823D4: .4byte 0x00004004
_080823D8:
	ldr r1, _08082438 @ =0xFFFFBFFF
	adds r0, r4, r1
	lsls r0, r0, #3
	strb r0, [r5, #0x15]
	movs r0, #0x20
	strb r0, [r5, #0xe]
	movs r0, #4
	strb r0, [r5, #0xc]
	ldr r0, _0808243C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08082400
	ldrh r0, [r5, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x24]
	movs r0, #0x40
	strb r0, [r5, #0xe]
_08082400:
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08082440 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	ldr r0, _08082444 @ =0x0000010F
	bl sub_08004488
	b _080824F6
	.align 2, 0
_08082438: .4byte 0xFFFFBFFF
_0808243C: .4byte gLinkState
_08082440: .4byte gRoomControls
_08082444: .4byte 0x0000010F
_08082448:
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r7, #0x2e
	ldrsh r1, [r5, r7]
	ldr r3, _08082480 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	bl DeleteThisEntity
	b _080824F6
	.align 2, 0
_08082480: .4byte gRoomControls
_08082484:
	adds r0, r5, #0
	bl sub_080002B8
	cmp r0, #0xd
	bne _0808249A
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl CreateFx
	b _080824D8
_0808249A:
	ldr r0, _080824E4 @ =0x00004005
	cmp r4, r0
	bne _080824D8
	ldr r0, _080824E8 @ =gLinkState
	adds r0, #0xab
	movs r1, #4
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r7, #0x2e
	ldrsh r1, [r5, r7]
	ldr r3, _080824EC @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_080824D8:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08082850
	b _080824F6
	.align 2, 0
_080824E4: .4byte 0x00004005
_080824E8: .4byte gLinkState
_080824EC: .4byte gRoomControls
_080824F0:
	adds r0, r5, #0
	bl sub_08078930
_080824F6:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080824F8
sub_080824F8: @ 0x080824F8
	push {lr}
	ldr r2, _0808250C @ =gUnk_0811F0A8
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808250C: .4byte gUnk_0811F0A8

	thumb_func_start sub_08082510
sub_08082510: @ 0x08082510
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	movs r2, #0
	orrs r0, r1
	strb r0, [r5, #0x10]
	ldr r0, _08082578 @ =gUnk_080FD340
	str r0, [r5, #0x48]
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #3
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0808257C @ =gLinkEntity
	adds r0, #0x3b
	ldrb r0, [r0]
	subs r1, #4
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x63
	strb r2, [r0]
	adds r0, #0xd
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08082580 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	pop {r4, r5, r6, pc}
	.align 2, 0
_08082578: .4byte gUnk_080FD340
_0808257C: .4byte gLinkEntity
_08082580: .4byte gRoomControls

	thumb_func_start nullsub_511
nullsub_511: @ 0x08082584
	bx lr
	.align 2, 0

	thumb_func_start sub_08082588
sub_08082588: @ 0x08082588
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x18
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808259C
sub_0808259C: @ 0x0808259C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080043E8
	cmp r0, #2
	beq _080825B8
	cmp r0, #2
	bhi _080825B2
	cmp r0, #1
	beq _080825BE
	b _080825D0
_080825B2:
	cmp r0, #3
	beq _080825C4
	b _080825D0
_080825B8:
	adds r0, r4, #0
	movs r1, #0xb
	b _080825C8
_080825BE:
	adds r0, r4, #0
	movs r1, #0
	b _080825C8
_080825C4:
	adds r0, r4, #0
	movs r1, #0xc
_080825C8:
	movs r2, #0
	bl CreateFx
	b _080825E0
_080825D0:
	ldr r1, _080825DC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_08082850
	b _080825E4
	.align 2, 0
_080825DC: .4byte gLinkEntity
_080825E0:
	bl DeleteThisEntity
_080825E4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080825E8
sub_080825E8: @ 0x080825E8
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_080825F0
sub_080825F0: @ 0x080825F0
	push {lr}
	adds r1, r0, #0
	ldr r0, _08082604 @ =gLinkState
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08082602
	adds r0, r1, #0
	bl sub_08082608
_08082602:
	pop {pc}
	.align 2, 0
_08082604: .4byte gLinkState

	thumb_func_start sub_08082608
sub_08082608: @ 0x08082608
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082614
sub_08082614: @ 0x08082614
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0800445C
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08082638
	adds r0, r5, #0
	bl sub_0806F69C
	adds r0, r5, #0
	bl sub_08016A6C
	b _080826DC
_08082638:
	adds r0, r5, #0
	bl sub_0800442E
	cmp r0, #0
	bne _080826DC
	movs r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _080826A4 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08082658
	ldrh r0, [r5, #0x24]
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
_08082658:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _080826A8 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r4, #0x32
	ldrsh r1, [r5, r4]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x70
	strh r0, [r1]
	adds r0, r5, #0
	bl GetTileTypeByEntity
	adds r6, r4, #0
	cmp r0, #0x72
	bhi _080826AC
	cmp r0, #0x71
	blo _080826AC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08082850
	b _080826DC
	.align 2, 0
_080826A4: .4byte gLinkState
_080826A8: .4byte gRoomControls
_080826AC:
	movs r0, #0x80
	lsls r0, r0, #7
	movs r7, #0x2e
	ldrsh r1, [r5, r7]
	ldr r3, _080826E0 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r7, #0x32
	ldrsh r2, [r5, r7]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r6]
	bl SetTile
	adds r0, r5, #0
	bl sub_08078930
_080826DC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080826E0: .4byte gRoomControls

	thumb_func_start sub_080826E4
sub_080826E4: @ 0x080826E4
	push {lr}
	ldr r2, _080826F8 @ =gUnk_0811F0C4
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080826F8: .4byte gUnk_0811F0C4

	thumb_func_start sub_080826FC
sub_080826FC: @ 0x080826FC
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x30
	strb r1, [r0, #0x1d]
	strb r2, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808270C
sub_0808270C: @ 0x0808270C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08082768 @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0808272A
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _08082770
_0808272A:
	adds r1, r5, #0
	adds r1, #0x62
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0808276C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	b _08082776
	.align 2, 0
_08082768: .4byte gLinkState
_0808276C: .4byte gRoomControls
_08082770:
	adds r0, r5, #0
	bl sub_0806F4E8
_08082776:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08082778
sub_08082778: @ 0x08082778
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xe]
	cmp r1, #0
	bne _080827C4
	movs r0, #1
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x62
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0xfe
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x70
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080827E8 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_080827C4:
	ldr r0, _080827EC @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _080827DE
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _080827F0
_080827DE:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08082850
	b _080827F6
	.align 2, 0
_080827E8: .4byte gRoomControls
_080827EC: .4byte gLinkState
_080827F0:
	adds r0, r5, #0
	bl sub_0806F3E4
_080827F6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080827F8
sub_080827F8: @ 0x080827F8
	push {lr}
	adds r1, r0, #0
	ldr r0, _08082810 @ =gLinkState
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	bne _0808280C
	adds r0, r1, #0
	movs r1, #0
	bl sub_08082850
_0808280C:
	pop {pc}
	.align 2, 0
_08082810: .4byte gLinkState

	thumb_func_start nullsub_512
nullsub_512: @ 0x08082814
	bx lr
	.align 2, 0

	thumb_func_start sub_08082818
sub_08082818: @ 0x08082818
	push {lr}
	movs r1, #0
	bl sub_08082850
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08082824
sub_08082824: @ 0x08082824
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08082836
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_08082836:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0808284C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08082850
_0808284C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08082850
sub_08082850: @ 0x08082850
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r1, [r4, #0xa]
	adds r0, #0x7d
	ldrb r2, [r0]
	ldrb r3, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0808288C
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #5
	bl CreateFx
	cmp r0, #0
	beq _08082874
	str r5, [r0, #0x50]
_08082874:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _08082884
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
_08082884:
	bl DeleteThisEntity
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0808288C
sub_0808288C: @ 0x0808288C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	movs r6, #0
	cmp r4, #0
	beq _080828A6
	cmp r4, #0xff
	bne _080828AA
	b _080828D6
_080828A6:
	movs r6, #0x80
	b _080828D6
_080828AA:
	adds r0, r7, #0
	movs r1, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateObjectWithParent
	adds r2, r0, #0
	cmp r2, #0
	beq _080828D6
	mov r0, r8
	cmp r0, #2
	bne _080828D4
	movs r0, #5
	strb r0, [r2, #0xe]
	adds r0, r7, #0
	adds r0, #0x86
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x86
	strh r1, [r0]
	b _080828D6
_080828D4:
	strb r6, [r2, #0xe]
_080828D6:
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
