	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

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
