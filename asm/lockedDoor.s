	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start LockedDoor
LockedDoor: @ 0x08083320
	push {lr}
	ldr r2, _08083334 @ =gUnk_0811F65C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08083334: .4byte gUnk_0811F65C

	thumb_func_start sub_08083338
sub_08083338: @ 0x08083338
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x84
	ldrh r1, [r2]
	ldr r0, _08083400 @ =0x0000FFFF
	cmp r1, r0
	beq _08083356
	adds r0, r1, #0
	bl CheckFlags
	cmp r0, #0
	beq _08083356
	bl DeleteThisEntity
_08083356:
	adds r0, r4, #0
	bl sub_080837B0
	cmp r0, #0
	bne _08083362
	b _080834B2
_08083362:
	ldrb r2, [r4, #0xa]
	lsrs r0, r2, #2
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0xb]
	movs r7, #3
	adds r0, r7, #0
	ands r0, r2
	strb r0, [r4, #0x1e]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x70
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	ldrb r1, [r4, #0xa]
	adds r0, r7, #0
	ands r0, r1
	adds r6, r4, #0
	adds r6, #0x7e
	strb r0, [r6]
	ldr r0, _08083404 @ =gUnk_080FD170
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0xa]
	movs r0, #0xf
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x5a
	strb r0, [r1]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08083408 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r5, r4, #0
	adds r5, #0x76
	strh r1, [r5]
	ldrh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x74
	strh r0, [r1]
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _08083438
	cmp r0, #1
	bgt _0808340C
	cmp r0, #0
	beq _08083412
	b _080834AE
	.align 2, 0
_08083400: .4byte 0x0000FFFF
_08083404: .4byte gUnk_080FD170
_08083408: .4byte gRoomControls
_0808340C:
	cmp r0, #2
	beq _08083456
	b _080834AE
_08083412:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	bne _0808342E
	ldrb r1, [r4, #0xa]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808344E
	strb r7, [r4, #0xc]
	b _080834B2
_0808342E:
	ldrb r1, [r4, #0xa]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r4, #0xa]
	b _08083446
_08083438:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	bne _0808344E
_08083446:
	adds r0, r4, #0
	bl sub_08083638
	b _080834B2
_0808344E:
	adds r0, r4, #0
	bl sub_080836A0
	b _080834B2
_08083456:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	bne _080834A8
	ldrb r0, [r4, #0x1e]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x1e]
	ldrb r1, [r6]
	ldrh r2, [r5]
	adds r0, r4, #0
	bl sub_080836DC
	bl CheckIsDungeon
	cmp r0, #0
	bne _08083484
	movs r0, #5
	strb r0, [r4, #0xc]
	b _080834B2
_08083484:
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080787CC
	ldr r1, _080834A4 @ =gUnk_0811F740
	ldrb r0, [r6]
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08078850
	b _080834B2
	.align 2, 0
_080834A4: .4byte gUnk_0811F740
_080834A8:
	bl DeleteThisEntity
	b _080834B2
_080834AE:
	bl DeleteThisEntity
_080834B2:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080834B4
sub_080834B4: @ 0x080834B4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080834E6
	movs r0, #2
	strb r0, [r2, #0xc]
	movs r0, #7
	strb r0, [r2, #0xe]
	adds r0, r2, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x76
	ldrh r1, [r1]
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	ldr r0, _080834E8 @ =0x0000010B
	bl EnqueueSFX
_080834E6:
	pop {pc}
	.align 2, 0
_080834E8: .4byte 0x0000010B

	thumb_func_start sub_080834EC
sub_080834EC: @ 0x080834EC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08083516
	ldrb r1, [r4, #0xa]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08083512
	adds r0, r4, #0
	bl sub_08083638
	b _08083516
_08083512:
	bl DeleteThisEntity
_08083516:
	pop {r4, pc}

	thumb_func_start sub_08083518
sub_08083518: @ 0x08083518
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7e
	ldrb r1, [r5]
	bl sub_08083734
	cmp r0, #0
	beq _0808353C
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r5]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r2, [r0]
	adds r0, r4, #0
	bl sub_080836DC
_0808353C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08083540
sub_08083540: @ 0x08083540
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808358C
	ldrb r1, [r4, #0xa]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08083566
	movs r0, #0xef
	ands r0, r1
	strb r0, [r4, #0xa]
	b _0808356E
_08083566:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08083576
_0808356E:
	adds r0, r4, #0
	bl sub_080836A0
	b _0808357A
_08083576:
	movs r0, #5
	strb r0, [r4, #0xc]
_0808357A:
	adds r0, r4, #0
	adds r0, #0x7e
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08083814
	ldr r0, _08083590 @ =0x0000010B
	bl EnqueueSFX
_0808358C:
	pop {r4, pc}
	.align 2, 0
_08083590: .4byte 0x0000010B

	thumb_func_start nullsub_513
nullsub_513: @ 0x08083594
	bx lr
	.align 2, 0

	thumb_func_start sub_08083598
sub_08083598: @ 0x08083598
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080835B2
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _080835C6
	b _080835C0
_080835B2:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	bne _080835C6
_080835C0:
	adds r0, r4, #0
	bl sub_08083658
_080835C6:
	pop {r4, pc}

	thumb_func_start sub_080835C8
sub_080835C8: @ 0x080835C8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080835E2
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	bne _080835F4
	b _080835F0
_080835E2:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _080835F4
_080835F0:
	movs r0, #3
	strb r0, [r4, #0xc]
_080835F4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080835F8
sub_080835F8: @ 0x080835F8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08083616
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _08083636
_08083616:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08083658
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080526F8
_08083636:
	pop {r4, pc}

	thumb_func_start sub_08083638
sub_08083638: @ 0x08083638
	adds r2, r0, #0
	movs r0, #7
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	subs r0, #0xb
	ands r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	bx lr

	thumb_func_start sub_08083658
sub_08083658: @ 0x08083658
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x14
	strb r1, [r0, #0xe]
	adds r2, r0, #0
	adds r2, #0x7e
	ldrb r1, [r2]
	lsls r1, r1, #3
	strb r1, [r0, #0x15]
	ldrb r2, [r2]
	lsls r2, r2, #1
	ldr r1, _08083698 @ =gUnk_0811F680
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrh r3, [r0, #0x2e]
	adds r1, r1, r3
	strh r1, [r0, #0x2e]
	movs r1, #1
	ldrsb r1, [r2, r1]
	ldrh r2, [r0, #0x32]
	adds r1, r1, r2
	strh r1, [r0, #0x32]
	movs r1, #0x3c
	bl sub_0805E4E0
	ldr r0, _0808369C @ =0x0000010B
	bl SoundReq
	pop {pc}
	.align 2, 0
_08083698: .4byte gUnk_0811F680
_0808369C: .4byte 0x0000010B

	thumb_func_start sub_080836A0
sub_080836A0: @ 0x080836A0
	push {lr}
	adds r2, r0, #0
	movs r0, #6
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	subs r0, #0xa
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r2, #0x32]
	ldr r0, _080836D8 @ =0x00004022
	adds r1, r2, #0
	adds r1, #0x76
	ldrh r1, [r1]
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	pop {pc}
	.align 2, 0
_080836D8: .4byte 0x00004022

	thumb_func_start sub_080836DC
sub_080836DC: @ 0x080836DC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	ldr r0, _0808372C @ =0x00004022
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	movs r0, #7
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x18]
	subs r0, #0xb
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	lsls r0, r4, #3
	movs r1, #0x10
	eors r0, r1
	strb r0, [r5, #0x15]
	lsls r4, r4, #1
	ldr r0, _08083730 @ =gUnk_0811F688
	adds r4, r4, r0
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	beq _08083728
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r1, [r5, #0x32]
	adds r0, r0, r1
	strh r0, [r5, #0x32]
_08083728:
	pop {r4, r5, pc}
	.align 2, 0
_0808372C: .4byte 0x00004022
_08083730: .4byte gUnk_0811F688

	thumb_func_start sub_08083734
sub_08083734: @ 0x08083734
	push {lr}
	adds r2, r0, #0
	cmp r1, #1
	beq _08083760
	cmp r1, #1
	blo _0808374A
	cmp r1, #2
	beq _08083774
	cmp r1, #3
	beq _08083790
	b _080837AC
_0808374A:
	adds r0, r2, #0
	adds r0, #0x72
	ldrh r1, [r0]
	ldr r0, _0808375C @ =gPlayerEntity
	movs r2, #0x32
	ldrsh r0, [r0, r2]
	subs r0, #0xd
	b _0808379E
	.align 2, 0
_0808375C: .4byte gPlayerEntity
_08083760:
	ldr r0, _08083770 @ =gPlayerEntity
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	adds r0, #0xb
	adds r1, r2, #0
	adds r1, #0x70
	b _08083780
	.align 2, 0
_08083770: .4byte gPlayerEntity
_08083774:
	ldr r0, _0808378C @ =gPlayerEntity
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	adds r0, #8
	adds r1, r2, #0
	adds r1, #0x72
_08083780:
	ldrh r1, [r1]
	subs r0, r0, r1
	cmp r0, #0
	bge _080837AC
	movs r0, #1
	b _080837AE
	.align 2, 0
_0808378C: .4byte gPlayerEntity
_08083790:
	adds r0, r2, #0
	adds r0, #0x70
	ldrh r1, [r0]
	ldr r0, _080837A8 @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	subs r0, #0xa
_0808379E:
	subs r1, r1, r0
	cmp r1, #0
	bge _080837AC
	movs r0, #1
	b _080837AE
	.align 2, 0
_080837A8: .4byte gPlayerEntity
_080837AC:
	movs r0, #0
_080837AE:
	pop {pc}

	thumb_func_start sub_080837B0
sub_080837B0: @ 0x080837B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080837C8 @ =gRoomControls
	ldrb r2, [r0, #4]
	cmp r2, #0x3f
	bhi _080837DC
	cmp r2, #0x25
	beq _080837CC
	cmp r2, #0x35
	beq _080837D4
	movs r5, #0xa
	b _080837E8
	.align 2, 0
_080837C8: .4byte gRoomControls
_080837CC:
	ldr r5, _080837D0 @ =0x000001E7
	b _080837E8
	.align 2, 0
_080837D0: .4byte 0x000001E7
_080837D4:
	ldr r5, _080837D8 @ =0x000001C3
	b _080837E8
	.align 2, 0
_080837D8: .4byte 0x000001C3
_080837DC:
	ldr r1, _080837F8 @ =gUnk_0811F690
	adds r0, r2, #0
	subs r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
_080837E8:
	cmp r2, #0x68
	bne _080837FC
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801D2B4
	b _08083808
	.align 2, 0
_080837F8: .4byte gUnk_0811F690
_080837FC:
	cmp r2, #0x88
	bne _08083808
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801D2B4
_08083808:
	adds r0, r4, #0
	adds r1, r5, #0
	bl LoadFixedGFX
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08083814
sub_08083814: @ 0x08083814
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #2
	ldr r0, _08083868 @ =gUnk_0811F730
	adds r4, r1, r0
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _08083842
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_08083842:
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _08083866
	movs r0, #2
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	movs r0, #3
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_08083866:
	pop {r4, r5, pc}
	.align 2, 0
_08083868: .4byte gUnk_0811F730
