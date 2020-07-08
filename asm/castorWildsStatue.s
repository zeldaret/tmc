	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start CastorWildsStatue
CastorWildsStatue: @ 0x08067380
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080673A4
	ldr r0, _080673A0 @ =gUnk_08110E5C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _080673BA
	.align 2, 0
_080673A0: .4byte gUnk_08110E5C
_080673A4:
	ldr r0, _080673BC @ =gUnk_08110E4C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
_080673BA:
	pop {r4, pc}
	.align 2, 0
_080673BC: .4byte gUnk_08110E4C

	thumb_func_start sub_080673C0
sub_080673C0: @ 0x080673C0
	push {lr}
	adds r2, r0, #0
	ldr r0, _080673D4 @ =gUnk_030010A0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _080673D8
	movs r0, #3
	b _080673DA
	.align 2, 0
_080673D4: .4byte gUnk_030010A0
_080673D8:
	movs r0, #1
_080673DA:
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0xa]
	movs r0, #1
	ands r0, r1
	strb r0, [r2, #0x1e]
	cmp r0, #0
	bne _080673EC
	ldr r0, _080673F0 @ =gUnk_08110E94
	str r0, [r2, #0x48]
_080673EC:
	pop {pc}
	.align 2, 0
_080673F0: .4byte gUnk_08110E94

	thumb_func_start sub_080673F4
sub_080673F4: @ 0x080673F4
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x39
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0806740C
	movs r1, #0
	movs r0, #2
	strb r0, [r2, #0xc]
	strb r1, [r3]
_0806740C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08067410
sub_08067410: @ 0x08067410
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08067418
sub_08067418: @ 0x08067418
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	strb r0, [r6, #0xc]
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, _08067488 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r7, r6, #0
	adds r7, #0x74
	strh r1, [r7]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _08067494
	ldr r0, _0806748C @ =gUnk_08110E94
	str r0, [r6, #0x48]
	ldr r5, _08067490 @ =0x00004022
	ldrh r1, [r7]
	subs r1, #1
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldrh r1, [r7]
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldrh r1, [r7]
	adds r1, #0x3f
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	ldrh r1, [r7]
	adds r1, #0x40
	ldrb r2, [r4]
	adds r0, r5, #0
	bl SetTile
	b _080674F8
	.align 2, 0
_08067488: .4byte gRoomControls
_0806748C: .4byte gUnk_08110E94
_08067490: .4byte 0x00004022
_08067494:
	adds r1, r6, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	ldrb r2, [r6, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r6, #0x1b]
	ldrb r0, [r6, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r6, #0x19]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x1d
	bl CheckLocalFlag
	cmp r0, #0
	bne _080674F8
	ldr r4, _08067500 @ =0x00004022
	ldr r1, _08067504 @ =0x00000E81
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _08067508 @ =0x00000E82
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _0806750C @ =0x00000E83
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _08067510 @ =0x00000EC3
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
_080674F8:
	adds r0, r6, #0
	bl sub_0807DD50
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08067500: .4byte 0x00004022
_08067504: .4byte 0x00000E81
_08067508: .4byte 0x00000E82
_0806750C: .4byte 0x00000E83
_08067510: .4byte 0x00000EC3

	thumb_func_start sub_08067514
sub_08067514: @ 0x08067514
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DD94
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0806752A
	adds r0, r4, #0
	bl sub_0806ED78
_0806752A:
	pop {r4, pc}

	thumb_func_start sub_0806752C
sub_0806752C: @ 0x0806752C
	push {lr}
	bl sub_0806FD3C
	pop {pc}

	thumb_func_start sub_08067534
sub_08067534: @ 0x08067534
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0806753A:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08067560
	ldr r0, _08067578 @ =gUnk_08110E64
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r1, #0x2e]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	adds r0, #0x1c
	strh r0, [r1, #0x32]
_08067560:
	adds r4, #1
	cmp r4, #1
	ble _0806753A
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_08004488
	movs r0, #0x28
	movs r1, #4
	bl sub_08080964
	pop {r4, r5, pc}
	.align 2, 0
_08067578: .4byte gUnk_08110E64

	thumb_func_start sub_0806757C
sub_0806757C: @ 0x0806757C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #0
	beq _080675CC
	cmp r0, #2
	bls _080675BC
	ldr r0, _080675AC @ =0x00000E81
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080675B0 @ =0x00000E82
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080675B4 @ =0x00000E83
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080675B8 @ =0x00000EC3
	movs r1, #1
	bl sub_0807BA8C
	b _080675CC
	.align 2, 0
_080675AC: .4byte 0x00000E81
_080675B0: .4byte 0x00000E82
_080675B4: .4byte 0x00000E83
_080675B8: .4byte 0x00000EC3
_080675BC:
	ldr r0, _080675D0 @ =gUnk_08110E68
	ldrb r1, [r2, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl LoadFixedGFX
_080675CC:
	pop {pc}
	.align 2, 0
_080675D0: .4byte gUnk_08110E68

	thumb_func_start sub_080675D4
sub_080675D4: @ 0x080675D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r5, _080676D0 @ =gUnk_08110E78
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r7, r0, #0
	subs r7, #0xc
	movs r0, #0x3f
	mov r8, r0
	movs r6, #8
_080675EC:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r3, r0, #0
	cmp r3, #0
	beq _08067646
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r1, [r3, #0x2e]
	adds r0, r0, r1
	strh r0, [r3, #0x2e]
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r1, [r3, #0x32]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
	strh r7, [r3, #0x36]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrb r1, [r4, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r3, #0x1b]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1b]
	ldrb r1, [r4, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r3, #0x19]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x19]
	adds r0, r4, #0
	adds r1, r3, #0
	bl ResolveEntityOnTop
_08067646:
	subs r6, #1
	adds r5, #2
	cmp r6, #0
	bge _080675EC
	ldr r5, _080676D4 @ =gUnk_08110E8A
	movs r0, #0x3f
	mov r8, r0
	movs r6, #3
_08067656:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl CreateFx
	adds r3, r0, #0
	cmp r3, #0
	beq _080676B0
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r1, [r3, #0x2e]
	adds r0, r0, r1
	strh r0, [r3, #0x2e]
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r1, [r3, #0x32]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
	strh r7, [r3, #0x36]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrb r1, [r4, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r3, #0x1b]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1b]
	ldrb r1, [r4, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r3, #0x19]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x19]
	adds r0, r4, #0
	adds r1, r3, #0
	bl ResolveEntityOnTop
_080676B0:
	subs r6, #1
	adds r5, #2
	cmp r6, #0
	bge _08067656
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bls _080676C8
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_080676C8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080676D0: .4byte gUnk_08110E78
_080676D4: .4byte gUnk_08110E8A

	thumb_func_start sub_080676D8
sub_080676D8: @ 0x080676D8
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	bx lr

	thumb_func_start sub_080676E0
sub_080676E0: @ 0x080676E0
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #1
	beq _08067706
	cmp r0, #1
	bgt _080676F6
	cmp r0, #0
	beq _080676FC
	b _08067734
_080676F6:
	cmp r0, #2
	beq _08067722
	b _08067734
_080676FC:
	movs r0, #1
	strb r0, [r2, #0x18]
	movs r0, #0x20
	strb r0, [r2, #0x19]
	b _08067742
_08067706:
	ldrb r1, [r2, #0x19]
	lsrs r0, r1, #1
	subs r0, #0x10
	strh r0, [r3, #0x36]
	subs r1, #1
	strb r1, [r2, #0x19]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08067742
	movs r0, #2
	strb r0, [r2, #0x18]
	movs r0, #0x24
	strb r0, [r2, #0x19]
	b _08067742
_08067722:
	ldrb r0, [r2, #0x19]
	subs r0, #1
	strb r0, [r2, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08067742
	movs r0, #3
	strb r0, [r2, #0x18]
	b _08067742
_08067734:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r3, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _08067748
_08067742:
	ldr r1, _0806774C @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_08067748:
	pop {pc}
	.align 2, 0
_0806774C: .4byte gUnk_02033280

	thumb_func_start CastorWildsStatue_Fusion
CastorWildsStatue_Fusion: @ 0x08067750
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08067788
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrh r0, [r4, #0x32]
	subs r0, #0x18
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	ldr r1, _08067784 @ =0x0000017B
	adds r0, r4, #0
	bl sub_0801D2B4
	b _0806778E
	.align 2, 0
_08067784: .4byte 0x0000017B
_08067788:
	adds r0, r4, #0
	bl GetNextFrame
_0806778E:
	pop {r4, pc}

	thumb_func_start sub_08067790
sub_08067790: @ 0x08067790
	push {lr}
	ldrb r2, [r0, #0xa]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _080677AC @ =gUnk_02002A40
	ldrb r2, [r2, #8]
	lsls r2, r2, #3
	ldr r3, _080677B0 @ =gUnk_08110EF8
	adds r2, r2, r3
	adds r1, r1, r2
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_080677AC: .4byte gUnk_02002A40
_080677B0: .4byte gUnk_08110EF8
