	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080891DC
sub_080891DC: @ 0x080891DC
	push {lr}
	ldr r2, _080891F0 @ =gUnk_08120C98
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080891F0: .4byte gUnk_08120C98

	thumb_func_start sub_080891F4
sub_080891F4: @ 0x080891F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808965C
	cmp r0, #0
	beq _08089236
	movs r3, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x11]
	subs r0, #0x90
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldr r0, _08089238 @ =gUnk_080FD1F4
	str r0, [r4, #0x48]
	strb r2, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x86
	strh r3, [r0]
	adds r0, r4, #0
	bl sub_08089454
	adds r0, r4, #0
	bl sub_080894C8
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
_08089236:
	pop {r4, pc}
	.align 2, 0
_08089238: .4byte gUnk_080FD1F4

	thumb_func_start sub_0808923C
sub_0808923C: @ 0x0808923C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0800442E
	cmp r0, #0
	bne _080892C0
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08089278 @ =0x0000400B
	cmp r5, r0
	beq _080892BA
	adds r0, r5, #0
	bl sub_0808968C
	cmp r0, #1
	beq _0808927C
	cmp r0, #1
	blo _08089294
	cmp r0, #2
	beq _080892B2
	b _080892C0
	.align 2, 0
_08089278: .4byte 0x0000400B
_0808927C:
	movs r1, #3
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r5, #0
	subs r0, #0xc
	ands r0, r1
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_08089538
	b _080892C0
_08089294:
	movs r0, #0xf
	movs r1, #4
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _080892AA
	adds r0, r4, #0
	bl CopyPosition
_080892AA:
	adds r0, r4, #0
	bl sub_080894FC
	b _080892C0
_080892B2:
	adds r0, r4, #0
	adds r0, #0x80
	strh r5, [r0]
	b _080892C0
_080892BA:
	adds r0, r4, #0
	bl sub_08078930
_080892C0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080892C4
sub_080892C4: @ 0x080892C4
	push {lr}
	adds r2, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r0, #0
	beq _080892D8
	adds r0, r2, #0
	bl sub_080895C0
	b _080892F6
_080892D8:
	ldr r0, _080892F8 @ =gLinkState
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _080892E4
	movs r0, #6
	strb r0, [r2, #0xd]
_080892E4:
	ldr r0, _080892FC @ =gUnk_08120CAC
	ldrb r1, [r2, #0xd]
	subs r1, #5
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_080892F6:
	pop {pc}
	.align 2, 0
_080892F8: .4byte gLinkState
_080892FC: .4byte gUnk_08120CAC

	thumb_func_start sub_08089300
sub_08089300: @ 0x08089300
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x83
	ldrb r0, [r1]
	cmp r0, #0
	bne _0808932C
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0808935C @ =gLinkEntity
	ldrb r0, [r1, #0x14]
	ldr r2, _08089360 @ =gUnk_08120CB4
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #0x10
	movs r3, #1
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0x10
	adds r0, r5, #0
	bl PositionRelative
_0808932C:
	adds r0, r5, #0
	adds r0, #0x84
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08089364 @ =0x0000400B
	cmp r4, r0
	beq _080893A0
	adds r0, r4, #0
	bl sub_0808968C
	cmp r0, #1
	beq _08089368
	cmp r0, #1
	blo _0808937C
	cmp r0, #2
	beq _0808939A
	b _080893A0
	.align 2, 0
_0808935C: .4byte gLinkEntity
_08089360: .4byte gUnk_08120CB4
_08089364: .4byte 0x0000400B
_08089368:
	adds r0, r4, #0
	subs r0, #0xc
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #3
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08089538
	b _080893A0
_0808937C:
	movs r0, #0xf
	movs r1, #4
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08089392
	adds r0, r5, #0
	bl CopyPosition
_08089392:
	adds r0, r5, #0
	bl sub_080894FC
	b _080893D6
_0808939A:
	adds r0, r5, #0
	adds r0, #0x80
	strh r4, [r0]
_080893A0:
	bl sub_080896B0
	cmp r0, #0
	beq _080893D6
	ldr r2, _080893D8 @ =gLinkState
	movs r3, #0
	movs r0, #0x10
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #0x20
	strb r0, [r1]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	ldr r0, _080893DC @ =gLinkEntity
	strh r3, [r0, #0x2c]
	strh r3, [r0, #0x30]
	ldrb r0, [r0, #0x14]
	movs r1, #4
	eors r0, r1
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08089538
_080893D6:
	pop {r4, r5, pc}
	.align 2, 0
_080893D8: .4byte gLinkState
_080893DC: .4byte gLinkEntity

	thumb_func_start sub_080893E0
sub_080893E0: @ 0x080893E0
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r0, #0x83
	strb r2, [r0]
	bx lr

	thumb_func_start sub_080893EC
sub_080893EC: @ 0x080893EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080895C0
	cmp r0, #0
	beq _080893FC
	movs r0, #1
	strb r0, [r4, #0xc]
_080893FC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08089400
sub_08089400: @ 0x08089400
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08089424
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	b _0808944E
_08089424:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _08089450 @ =0x0000400B
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	adds r0, r4, #0
	bl sub_080894C8
_0808944E:
	pop {r4, pc}
	.align 2, 0
_08089450: .4byte 0x0000400B

	thumb_func_start sub_08089454
sub_08089454: @ 0x08089454
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _080894C0 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r6, r5, #0
	adds r6, #0x84
	strh r1, [r6]
	ldrh r0, [r6]
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x80
	strh r0, [r1]
	ldr r5, _080894C4 @ =0x0000400B
	ldrh r1, [r6]
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldrb r0, [r4]
	cmp r0, #2
	bne _080894BC
	ldrh r0, [r6]
	movs r1, #1
	bl GetTileType
	movs r1, #0xc4
	lsls r1, r1, #2
	cmp r0, r1
	bne _080894BC
	ldrh r1, [r6]
	adds r0, r5, #0
	movs r2, #1
	bl SetTile
_080894BC:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080894C0: .4byte gRoomControls
_080894C4: .4byte 0x0000400B

	thumb_func_start sub_080894C8
sub_080894C8: @ 0x080894C8
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r1, _080894E0 @ =gRoomVars
	adds r4, r1, #0
	adds r4, #0xac
	ldr r0, [r4]
	mov ip, r1
	cmp r0, #0
	bne _080894E4
	str r3, [r4]
	b _080894FA
	.align 2, 0
_080894E0: .4byte gRoomVars
_080894E4:
	adds r2, #1
	cmp r2, #7
	bhi _080894FA
	lsls r0, r2, #2
	mov r1, ip
	adds r1, #0xac
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #0
	bne _080894E4
	str r3, [r1]
_080894FA:
	pop {r4, pc}

	thumb_func_start sub_080894FC
sub_080894FC: @ 0x080894FC
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r1, _08089514 @ =gRoomVars
	adds r4, r1, #0
	adds r4, #0xac
	ldr r0, [r4]
	mov ip, r1
	cmp r3, r0
	bne _08089518
	str r2, [r4]
	b _08089530
	.align 2, 0
_08089514: .4byte gRoomVars
_08089518:
	adds r2, #1
	cmp r2, #7
	bhi _08089530
	lsls r0, r2, #2
	mov r1, ip
	adds r1, #0xac
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r3, r0
	bne _08089518
	movs r0, #0
	str r0, [r1]
_08089530:
	adds r0, r3, #0
	bl DeleteEntity
	pop {r4, pc}

	thumb_func_start sub_08089538
sub_08089538: @ 0x08089538
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x86
	movs r0, #0x20
	strh r0, [r1]
	adds r0, #0xef
	bl sub_08004488
	adds r0, r5, #0
	adds r0, #0x80
	ldrh r0, [r0]
	adds r6, r5, #0
	adds r6, #0x84
	ldrh r1, [r6]
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r2, [r4]
	bl SetTile
	ldrb r0, [r4]
	cmp r0, #2
	bne _08089580
	ldrh r0, [r6]
	movs r1, #1
	bl GetTileType
	ldr r1, _080895B8 @ =0x0000400B
	cmp r0, r1
	bne _08089580
	movs r0, #0xc4
	lsls r0, r0, #2
	ldrh r1, [r6]
	movs r2, #1
	bl sub_08000152
_08089580:
	adds r2, r5, #0
	adds r2, #0x84
	ldr r1, _080895BC @ =gUnk_080B4488
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #3
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldrh r2, [r2]
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x79
	beq _080895AC
	cmp r0, #0x77
	bne _080895B4
_080895AC:
	adds r1, r5, #0
	adds r1, #0x63
	movs r0, #0xfe
	strb r0, [r1]
_080895B4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080895B8: .4byte 0x0000400B
_080895BC: .4byte gUnk_080B4488

	thumb_func_start sub_080895C0
sub_080895C0: @ 0x080895C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r1, r4, #0
	adds r1, #0x86
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808964C
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _0808964C
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080002D0
	cmp r0, #0
	bne _080895FE
	adds r0, r4, #0
	bl sub_08089454
	movs r0, #1
	b _08089654
_080895FE:
	movs r0, #0xf
	movs r1, #4
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08089614
	adds r0, r4, #0
	bl CopyPosition
_08089614:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r2, _08089658 @ =gUnk_08120CBC
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #2
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r3, [r4, #0x2e]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_08089454
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
_0808964C:
	adds r0, r4, #0
	bl sub_0800445C
	movs r0, #0
_08089654:
	pop {r4, pc}
	.align 2, 0
_08089658: .4byte gUnk_08120CBC

	thumb_func_start sub_0808965C
sub_0808965C: @ 0x0808965C
	push {lr}
	adds r2, r0, #0
	ldr r3, _08089678 @ =gRoomControls
	ldrb r0, [r3, #4]
	cmp r0, #0x3f
	bls _08089680
	ldr r1, _0808967C @ =gUnk_08120CCC
	subs r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	b _08089684
	.align 2, 0
_08089678: .4byte gRoomControls
_0808967C: .4byte gUnk_08120CCC
_08089680:
	adds r0, r2, #0
	movs r1, #0xe9
_08089684:
	bl sub_080ADF80
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808968C
sub_0808968C: @ 0x0808968C
	push {lr}
	adds r2, r0, #0
	ldr r1, _08089694 @ =gUnk_08120D6C
	b _080896A4
	.align 2, 0
_08089694: .4byte gUnk_08120D6C
_08089698:
	ldrh r0, [r1]
	cmp r0, r2
	bne _080896A2
	ldrh r0, [r1, #2]
	b _080896AC
_080896A2:
	adds r1, #4
_080896A4:
	ldrh r0, [r1]
	cmp r0, #0
	bne _08089698
	movs r0, #0
_080896AC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080896B0
sub_080896B0: @ 0x080896B0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08089750 @ =gLinkState
	ldrb r1, [r0, #5]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x12
	bne _08089768
	ldr r6, _08089754 @ =gLinkEntity
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08089768
	ldrb r3, [r6, #0x14]
	movs r2, #6
	ands r2, r3
	lsls r2, r2, #1
	ldr r0, _08089758 @ =gUnk_080B4468
	adds r2, r2, r0
	ldr r0, _0808975C @ =gUnk_080B4488
	lsrs r3, r3, #1
	lsls r3, r3, #1
	adds r3, r3, r0
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r1, r1, r0
	ldr r5, _08089760 @ =gRoomControls
	ldrh r0, [r5, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r7, #0x32
	ldrsh r0, [r6, r7]
	movs r7, #2
	ldrsh r2, [r2, r7]
	adds r0, r0, r2
	ldrh r2, [r5, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0
	ldrsh r7, [r3, r0]
	subs r1, r1, r7
	lsls r4, r1, #0x10
	lsrs r0, r4, #0x10
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080002C8
	adds r1, r0, #0
	subs r0, #0x26
	cmp r0, #1
	bls _08089768
	cmp r1, #0x29
	beq _08089768
	ldrb r0, [r5]
	bl GetLayerByIndex
	asrs r1, r4, #0x10
	ldr r2, _08089764 @ =0x00002004
	adds r0, r0, r2
	adds r2, r0, r1
	ldrb r2, [r2]
	subs r1, r1, r7
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r2, #0
	bne _08089768
	cmp r0, #0
	bne _08089768
	movs r0, #1
	b _0808976A
	.align 2, 0
_08089750: .4byte gLinkState
_08089754: .4byte gLinkEntity
_08089758: .4byte gUnk_080B4468
_0808975C: .4byte gUnk_080B4488
_08089760: .4byte gRoomControls
_08089764: .4byte 0x00002004
_08089768:
	movs r0, #0
_0808976A:
	pop {r4, r5, r6, r7, pc}
