	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified
	
	.text

	thumb_func_start sub_08018500
sub_08018500: @ 0x08018500
	push {r4, lr}
	ldr r4, _08018550 @ =gUnk_02033AB8
	adds r3, r4, #4
	ldr r0, _08018554 @ =gUnk_080B3D14
	ldrb r1, [r4]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrb r2, [r4, #1]
	lsls r0, r2, #1
	adds r0, r0, r2
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r2, #0
_0801851A:
	strh r0, [r3]
	adds r0, #1
	adds r3, #2
	adds r2, #1
	cmp r2, #2
	bls _0801851A
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r1, _08018558 @ =0x00000C81
	adds r0, r0, r1
	movs r2, #0
	adds r1, r4, #0
	adds r1, #0xa
_08018536:
	strh r0, [r3]
	adds r0, #1
	adds r3, #2
	adds r2, #1
	cmp r2, #4
	bls _08018536
	movs r0, #5
	bl sub_08018690
	movs r0, #0
	strb r0, [r4, #2]
	pop {r4, pc}
	.align 2, 0
_08018550: .4byte gUnk_02033AB8
_08018554: .4byte gUnk_080B3D14
_08018558: .4byte 0x00000C81

	thumb_func_start sub_0801855C
sub_0801855C: @ 0x0801855C
	push {r4, r5, r6, lr}
	ldr r4, _08018570 @ =gUnk_02033AB8
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_0801D630
	adds r5, r4, #0
	ldr r4, _08018574 @ =gUnk_080B3D20
	movs r6, #0
	b _0801858C
	.align 2, 0
_08018570: .4byte gUnk_02033AB8
_08018574: .4byte gUnk_080B3D20
_08018578:
	adds r0, r4, #0
	bl sub_080185B4
	cmp r0, #0
	beq _08018584
	ldrb r6, [r5, #3]
_08018584:
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
	adds r4, #4
_0801858C:
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _08018578
	strb r6, [r5, #3]
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	ldr r1, _080185B0 @ =gUnk_080B3D20
	adds r4, r0, r1
	ldrb r0, [r4, #2]
	strb r0, [r5]
	ldrb r0, [r4, #3]
	strb r0, [r5, #1]
	adds r0, r6, #1
	strb r0, [r5, #3]
	bl sub_08018500
	pop {r4, r5, r6, pc}
	.align 2, 0
_080185B0: .4byte gUnk_080B3D20

	thumb_func_start sub_080185B4
sub_080185B4: @ 0x080185B4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _080185C2
	movs r0, #0
	b _080185F6
_080185C2:
	cmp r0, #0xfe
	bne _080185D4
	ldrb r0, [r2, #1]
	bl GetInventoryValue
	cmp r0, #0
	beq _080185F6
	movs r0, #1
	b _080185F6
_080185D4:
	cmp r0, #0xfd
	beq _080185F0
	ldr r1, _080185EC @ =gUnk_0811E454
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrb r1, [r2, #1]
	bl GetProgressFlagWithOffset
	b _080185F6
	.align 2, 0
_080185EC: .4byte gUnk_0811E454
_080185F0:
	ldrb r0, [r2, #1]
	bl sub_0801E7F4
_080185F6:
	pop {pc}

	thumb_func_start sub_080185F8
sub_080185F8: @ 0x080185F8
	push {r4, r5, lr}
	ldr r5, _08018624 @ =gUnk_02033AB8
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	ldr r1, _08018628 @ =gUnk_080B3D20
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_080185B4
	cmp r0, #0
	beq _08018620
	ldrb r0, [r4, #2]
	strb r0, [r5]
	ldrb r0, [r4, #3]
	strb r0, [r5, #1]
	ldrb r0, [r5, #3]
	adds r0, #1
	strb r0, [r5, #3]
	bl sub_08018500
_08018620:
	pop {r4, r5, pc}
	.align 2, 0
_08018624: .4byte gUnk_02033AB8
_08018628: .4byte gUnk_080B3D20

	thumb_func_start sub_0801862C
sub_0801862C: @ 0x0801862C
	push {r4, r5, lr}
	ldr r1, _0801864C @ =gLinkState
	movs r2, #0
	movs r0, #0x16
	strb r0, [r1, #0xc]
	ldr r5, _08018650 @ =gUnk_030010A0
	adds r0, r5, #0
	adds r0, #0x35
	strb r2, [r0]
	ldr r4, _08018654 @ =gUnk_02033AB8
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _08018658
	ldrh r0, [r4, #4]
	strh r0, [r5, #0x36]
	b _0801868C
	.align 2, 0
_0801864C: .4byte gLinkState
_08018650: .4byte gUnk_030010A0
_08018654: .4byte gUnk_02033AB8
_08018658:
	ldrb r0, [r4, #2]
	lsls r0, r0, #1
	adds r1, r4, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x36]
	ldrb r0, [r4, #2]
	adds r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0801868C
	movs r0, #0
	strb r0, [r4, #2]
	movs r0, #8
	bl sub_08018690
	ldrh r0, [r4, #4]
	ldrh r5, [r5, #0x36]
	cmp r0, r5
	bne _0801868C
	adds r1, r0, #0
	ldrh r0, [r4, #0x12]
	strh r0, [r4, #4]
	strh r1, [r4, #0x12]
_0801868C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08018690
sub_08018690: @ 0x08018690
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	subs r4, r0, #1
	cmp r4, #0
	beq _080186BC
	lsls r0, r4, #1
	adds r5, r0, r6
_0801869E:
	bl Random
	adds r1, r4, #1
	bl __modsi3
	ldrh r2, [r5]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	strh r1, [r5]
	strh r2, [r0]
	subs r5, #2
	subs r4, #1
	cmp r4, #0
	bne _0801869E
_080186BC:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080186C0
sub_080186C0: @ 0x080186C0
	ldr r3, _080186D0 @ =gUnk_02033A90
	adds r2, r3, #0
	adds r2, #0x28
	movs r1, #0xff
	strb r1, [r2]
	strh r0, [r3, #0x2c]
	bx lr
	.align 2, 0
_080186D0: .4byte gUnk_02033A90

	thumb_func_start sub_080186D4
sub_080186D4: @ 0x080186D4
	push {lr}
	ldr r0, _080186E8 @ =gUnk_02033A90
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080186E4
	bl sub_0801855C
_080186E4:
	pop {pc}
	.align 2, 0
_080186E8: .4byte gUnk_02033A90

	thumb_func_start sub_080186EC
sub_080186EC: @ 0x080186EC
	push {r4, r5, lr}
	movs r5, #0
	ldr r4, _0801870C @ =gUnk_080C9CBC
_080186F2:
	ldrb r0, [r4, #3]
	cmp r0, #8
	bne _08018700
	ldrb r1, [r4, #4]
	adds r0, r5, #0
	bl sub_08018738
_08018700:
	adds r4, #8
	adds r5, #1
	cmp r5, #0x64
	bls _080186F2
	pop {r4, r5, pc}
	.align 2, 0
_0801870C: .4byte gUnk_080C9CBC

	thumb_func_start sub_08018710
sub_08018710: @ 0x08018710
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	ldr r4, _08018734 @ =gUnk_080C9CBC
_08018718:
	ldrb r0, [r4, #3]
	cmp r0, #8
	bne _0801872A
	ldrb r1, [r4, #4]
	cmp r6, r1
	beq _0801872A
	adds r0, r5, #0
	bl sub_08018738
_0801872A:
	adds r4, #8
	adds r5, #1
	cmp r5, #0x64
	bls _08018718
	pop {r4, r5, r6, pc}
	.align 2, 0
_08018734: .4byte gUnk_080C9CBC

	thumb_func_start sub_08018738
sub_08018738: @ 0x08018738
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08018764 @ =gUnk_080FE320
	adds r0, r0, r1
	ldr r1, _08018768 @ =gRoomControls
	ldrh r0, [r0, #2]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bne _08018760
	adds r0, r2, #0
	bl sub_0801E7F4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0801876C
_08018760:
	pop {r4, pc}
	.align 2, 0
_08018764: .4byte gUnk_080FE320
_08018768: .4byte gRoomControls

	thumb_func_start sub_0801876C
sub_0801876C: @ 0x0801876C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _08018790 @ =gUnk_080FE320
	adds r5, r0, r1
	ldrb r0, [r5]
	cmp r0, #0x1c
	bls _08018784
	b _080189E4
_08018784:
	lsls r0, r0, #2
	ldr r1, _08018794 @ =_08018798
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018790: .4byte gUnk_080FE320
_08018794: .4byte _08018798
_08018798: @ jump table
	.4byte _080189E4 @ case 0
	.4byte _08018838 @ case 1
	.4byte _0801882A @ case 2
	.4byte _08018858 @ case 3
	.4byte _08018878 @ case 4
	.4byte _08018886 @ case 5
	.4byte _0801880C @ case 6
	.4byte _08018894 @ case 7
	.4byte _080188E0 @ case 8
	.4byte _08018930 @ case 9
	.4byte _080189E4 @ case 10
	.4byte _080188FE @ case 11
	.4byte _080189E4 @ case 12
	.4byte _080189E4 @ case 13
	.4byte _080189E4 @ case 14
	.4byte _080189B4 @ case 15
	.4byte _080189E4 @ case 16
	.4byte _080189D0 @ case 17
	.4byte _080189E4 @ case 18
	.4byte _080189E4 @ case 19
	.4byte _080189E4 @ case 20
	.4byte _080189E4 @ case 21
	.4byte _080189E4 @ case 22
	.4byte _080189E4 @ case 23
	.4byte _080189A4 @ case 24
	.4byte _080188B8 @ case 25
	.4byte _080189E4 @ case 26
	.4byte _080189E4 @ case 27
	.4byte _080189E4 @ case 28
_0801880C:
	cmp r4, #0
	beq _08018812
	b _080189E4
_08018812:
	ldrh r0, [r5, #8]
	lsrs r0, r0, #4
	movs r2, #0x3f
	ands r0, r2
	ldrh r1, [r5, #0xa]
	lsrs r1, r1, #4
	ands r1, r2
	lsls r1, r1, #6
	orrs r0, r1
	bl sub_08018AB4
	b _080189E4
_0801882A:
	cmp r4, #0
	bne _08018830
	b _080189E4
_08018830:
	adds r0, r2, #0
	bl sub_08018BB4
	b _080189E4
_08018838:
	cmp r4, #0
	bne _0801883E
	b _080189E4
_0801883E:
	ldrh r0, [r5, #0x12]
	bl GetProgressFlag
	cmp r0, #0
	beq _0801884A
	b _080189E4
_0801884A:
	ldrb r0, [r5, #1]
	lsls r0, r0, #4
	ldr r1, _08018854 @ =gUnk_080FEC28
	b _080188A4
	.align 2, 0
_08018854: .4byte gUnk_080FEC28
_08018858:
	cmp r4, #0
	bne _0801885E
	b _080189E4
_0801885E:
	ldrh r0, [r5, #0x12]
	bl GetInventoryValue
	cmp r0, #0
	beq _0801886A
	b _080189E4
_0801886A:
	ldrb r0, [r5, #1]
	lsls r0, r0, #4
	ldr r1, _08018874 @ =gUnk_080FEBE8
	b _080188A4
	.align 2, 0
_08018874: .4byte gUnk_080FEBE8
_08018878:
	cmp r4, #0
	beq _0801887E
	b _080189E4
_0801887E:
	adds r0, r2, #0
	bl sub_08018A58
	b _080189E4
_08018886:
	cmp r4, #0
	bne _0801888C
	b _080189E4
_0801888C:
	adds r0, r2, #0
	bl sub_08018B50
	b _080189E4
_08018894:
	cmp r4, #0
	beq _0801889A
	b _080189E4
_0801889A:
	ldrb r0, [r5, #1]
	cmp r0, #0x80
	beq _080188B0
	lsls r0, r0, #4
	ldr r1, _080188AC @ =gUnk_080FECC8
_080188A4:
	adds r0, r0, r1
	bl CreateEntity
	b _080189E4
	.align 2, 0
_080188AC: .4byte gUnk_080FECC8
_080188B0:
	adds r0, r2, #0
	bl sub_080189EC
	b _080189E4
_080188B8:
	ldrb r0, [r5, #1]
	lsls r0, r0, #4
	ldr r1, _080188DC @ =gUnk_080FED18
	adds r0, r0, r1
	bl CreateEntity
	adds r2, r0, #0
	cmp r2, #0
	bne _080188CC
	b _080189E4
_080188CC:
	rsbs r0, r4, #0
	orrs r0, r4
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
	strb r0, [r2, #0xa]
	b _080189E4
	.align 2, 0
_080188DC: .4byte gUnk_080FED18
_080188E0:
	cmp r4, #0
	bne _080188E6
	b _080189E4
_080188E6:
	movs r0, #0xb4
	lsls r0, r0, #1
	ldrh r1, [r5, #8]
	lsrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	ldrh r2, [r5, #0xa]
	lsrs r2, r2, #4
	ands r2, r3
	lsls r2, r2, #6
	orrs r1, r2
	b _0801899C
_080188FE:
	cmp r4, #0
	beq _080189E4
	ldrb r0, [r5, #1]
	lsls r0, r0, #4
	ldr r1, _08018924 @ =gUnk_080FED58
	adds r0, r0, r1
	bl CreateEntity
	ldr r2, _08018928 @ =gUnk_02034350
	ldrb r0, [r5, #1]
	lsls r0, r0, #2
	adds r2, #0x8c
	adds r2, r0, r2
	ldr r1, _0801892C @ =gUnk_080FED98
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	b _080189E4
	.align 2, 0
_08018924: .4byte gUnk_080FED58
_08018928: .4byte gUnk_02034350
_0801892C: .4byte gUnk_080FED98
_08018930:
	cmp r4, #0
	beq _080189E4
	ldrb r0, [r5, #1]
	lsls r0, r0, #4
	ldr r1, _08018974 @ =gUnk_080FEE78
	adds r0, r0, r1
	bl CreateEntity
	adds r2, r0, #0
	cmp r2, #0
	beq _08018958
	ldr r0, _08018978 @ =gRoomControls
	ldrh r1, [r0, #6]
	ldrh r3, [r5, #8]
	adds r1, r1, r3
	strh r1, [r2, #0x38]
	ldrh r0, [r0, #8]
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	strh r0, [r2, #0x3a]
_08018958:
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _0801897C
	ldrh r1, [r5, #8]
	lsrs r1, r1, #4
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r5, #0xa]
	lsrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0x8d
	b _0801899C
	.align 2, 0
_08018974: .4byte gUnk_080FEE78
_08018978: .4byte gRoomControls
_0801897C:
	ldrh r4, [r5, #8]
	lsrs r4, r4, #4
	movs r1, #0x3f
	ands r4, r1
	ldrh r0, [r5, #0xa]
	lsrs r0, r0, #4
	ands r0, r1
	lsls r0, r0, #6
	orrs r4, r0
	subs r1, r4, #1
	movs r0, #0x8c
	movs r2, #1
	bl sub_0807B314
	movs r0, #0x8e
	adds r1, r4, #0
_0801899C:
	movs r2, #1
	bl sub_0807B314
	b _080189E4
_080189A4:
	cmp r4, #0
	beq _080189E4
	ldr r0, _080189B0 @ =gUnk_080FEE18
	bl LoadRoomEntityList
	b _080189E4
	.align 2, 0
_080189B0: .4byte gUnk_080FEE18
_080189B4:
	cmp r4, #0
	beq _080189C4
	ldr r0, _080189C0 @ =gUnk_080FEE58
	bl CreateEntity
	b _080189E4
	.align 2, 0
_080189C0: .4byte gUnk_080FEE58
_080189C4:
	ldr r0, _080189CC @ =gUnk_080FEE48
	bl CreateEntity
	b _080189E4
	.align 2, 0
_080189CC: .4byte gUnk_080FEE48
_080189D0:
	cmp r4, #0
	beq _080189E4
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0x79
	bl sub_0807CC9C
	ldr r0, _080189E8 @ =gUnk_080FEE38
	bl LoadRoomEntityList
_080189E4:
	pop {r4, r5, pc}
	.align 2, 0
_080189E8: .4byte gUnk_080FEE38

	thumb_func_start sub_080189EC
sub_080189EC: @ 0x080189EC
	push {r4, r5, r6, lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08018A48 @ =gUnk_080FE320
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	lsrs r6, r0, #4
	movs r2, #0x3f
	ands r6, r2
	ldrh r0, [r1, #0xa]
	lsrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r6, r0
	subs r6, #0x42
	movs r5, #0
_08018A0E:
	ldr r1, _08018A4C @ =0x000001DF
	adds r0, r5, r1
	adds r1, r6, r5
	movs r2, #2
	bl sub_0807B314
	adds r5, #1
	cmp r5, #3
	bls _08018A0E
	adds r6, #0x40
	movs r5, #0
_08018A24:
	ldr r1, _08018A50 @ =0x000001E3
	adds r0, r5, r1
	adds r4, r6, r5
	adds r1, r4, #0
	movs r2, #2
	bl sub_0807B314
	ldr r1, _08018A54 @ =0x000001DB
	adds r0, r5, r1
	adds r1, r4, #0
	movs r2, #1
	bl sub_0807B314
	adds r5, #1
	cmp r5, #3
	bls _08018A24
	pop {r4, r5, r6, pc}
	.align 2, 0
_08018A48: .4byte gUnk_080FE320
_08018A4C: .4byte 0x000001DF
_08018A50: .4byte 0x000001E3
_08018A54: .4byte 0x000001DB

	thumb_func_start sub_08018A58
sub_08018A58: @ 0x08018A58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08018AAC @ =gUnk_080FE320
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	lsrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	ldrh r0, [r1, #0xa]
	lsrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	subs r5, #0x43
	ldr r6, _08018AB0 @ =0x00000232
	movs r0, #0
_08018A80:
	movs r4, #0
	movs r1, #0x40
	adds r1, r1, r5
	mov r8, r1
	adds r7, r0, #1
_08018A8A:
	adds r0, r6, #0
	adds r6, #1
	adds r1, r5, r4
	movs r2, #1
	bl sub_0807B314
	adds r4, #1
	cmp r4, #6
	bls _08018A8A
	mov r5, r8
	adds r0, r7, #0
	cmp r0, #3
	bls _08018A80
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08018AAC: .4byte gUnk_080FE320
_08018AB0: .4byte 0x00000232

	thumb_func_start sub_08018AB4
sub_08018AB4: @ 0x08018AB4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0xf4
	lsls r3, r3, #1
	movs r7, #0xfa
	lsls r7, r7, #1
	movs r0, #0
_08018ACA:
	movs r6, #0
	movs r1, #0x40
	adds r1, r1, r5
	mov r8, r1
	adds r0, #1
	mov sb, r0
	adds r4, r5, #0
	subs r4, #0x40
_08018ADA:
	adds r0, r3, #0
	adds r3, #1
	adds r1, r5, r6
	movs r2, #1
	str r3, [sp]
	bl sub_0807B314
	adds r0, r7, #0
	adds r7, #1
	adds r1, r4, #0
	movs r2, #2
	bl sub_0807B314
	adds r4, #1
	adds r6, #1
	ldr r3, [sp]
	cmp r6, #3
	bls _08018ADA
	mov r5, r8
	mov r0, sb
	cmp r0, #2
	bls _08018ACA
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08018B10
sub_08018B10: @ 0x08018B10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0xf8
	lsls r0, r0, #1
	mov r8, r0
	movs r7, #0xfe
	lsls r7, r7, #1
	movs r5, #0
	adds r4, r6, #0
	subs r4, #0x40
_08018B28:
	mov r0, r8
	movs r1, #1
	add r8, r1
	adds r1, r6, r5
	movs r2, #1
	bl sub_0807B314
	adds r0, r7, #0
	adds r7, #1
	adds r1, r4, #0
	movs r2, #2
	bl sub_0807B314
	adds r4, #1
	adds r5, #1
	cmp r5, #3
	bls _08018B28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08018B50
sub_08018B50: @ 0x08018B50
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08018BAC @ =gUnk_080FE320
	adds r2, r1, r0
	ldrb r1, [r2, #1]
	movs r0, #0x80
	ands r0, r1
	ldr r3, _08018BB0 @ =0x00000219
	cmp r0, #0
	bne _08018B6C
	subs r3, #0x19
_08018B6C:
	ldrh r0, [r2, #8]
	lsrs r5, r0, #4
	movs r1, #0x3f
	ands r5, r1
	ldrh r0, [r2, #0xa]
	lsrs r0, r0, #4
	ands r0, r1
	lsls r0, r0, #6
	orrs r5, r0
	subs r5, #0x82
	movs r0, #0
_08018B82:
	movs r4, #0
	adds r6, r5, #0
	adds r6, #0x40
	adds r7, r0, #1
_08018B8A:
	adds r0, r3, #0
	adds r3, #1
	adds r1, r5, r4
	movs r2, #1
	str r3, [sp]
	bl sub_0807B314
	adds r4, #1
	ldr r3, [sp]
	cmp r4, #4
	bls _08018B8A
	adds r5, r6, #0
	adds r0, r7, #0
	cmp r0, #4
	bls _08018B82
	add sp, #4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08018BAC: .4byte gUnk_080FE320
_08018BB0: .4byte 0x00000219

	thumb_func_start sub_08018BB4
sub_08018BB4: @ 0x08018BB4
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r0, r4, #3
	ldr r1, _08018C14 @ =gUnk_080FEAC8
	adds r0, r0, r1
	mov r5, sp
	mov r1, sp
	movs r2, #8
	bl sub_0801D66C
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08018C18 @ =gUnk_080FE320
	adds r0, r0, r1
	ldrh r1, [r0, #8]
	lsrs r1, r1, #4
	movs r2, #0x3f
	ands r1, r2
	ldrh r0, [r0, #0xa]
	lsrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r5, #4]
	mov r0, sp
	bl sub_0804B3C4
	ldrb r0, [r5, #1]
	bl sub_0807CBD0
	cmp r0, #0
	bne _08018C10
	ldrh r3, [r5, #4]
	ldrb r1, [r5, #6]
	movs r0, #1
	ands r0, r1
	movs r2, #2
	cmp r0, #0
	bne _08018C08
	movs r2, #1
_08018C08:
	movs r0, #0x73
	adds r1, r3, #0
	bl sub_0807B314
_08018C10:
	add sp, #8
	pop {r4, r5, pc}
	.align 2, 0
_08018C14: .4byte gUnk_080FEAC8
_08018C18: .4byte gUnk_080FE320

	thumb_func_start sub_08018C1C
sub_08018C1C: @ 0x08018C1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r6, _08018C54 @ =0x00000185
	movs r0, #0
_08018C28:
	movs r4, #0
	movs r1, #0x40
	adds r1, r1, r5
	mov r8, r1
	adds r7, r0, #1
_08018C32:
	adds r0, r6, #0
	adds r6, #1
	adds r1, r5, r4
	movs r2, #1
	bl sub_0807B314
	adds r4, #1
	cmp r4, #4
	bls _08018C32
	mov r5, r8
	adds r0, r7, #0
	cmp r0, #3
	bls _08018C28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08018C54: .4byte 0x00000185

	thumb_func_start sub_08018C58
sub_08018C58: @ 0x08018C58
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
_08018C5E:
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, r4, #0
	movs r2, #1
	bl sub_0807B314
	ldr r1, _08018C84 @ =0x00000261
	adds r0, r5, r1
	adds r1, r4, #1
	movs r2, #1
	bl sub_0807B314
	adds r5, #2
	adds r4, #0x40
	cmp r5, #5
	bls _08018C5E
	pop {r4, r5, pc}
	.align 2, 0
_08018C84: .4byte 0x00000261

	thumb_func_start sub_08018C88
sub_08018C88: @ 0x08018C88
	push {lr}
	adds r2, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018CB4
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08018CB0 @ =gUnk_080B3DD0
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	b _08018CB8
	.align 2, 0
_08018CB0: .4byte gUnk_080B3DD0
_08018CB4:
	bl sub_0805E780
_08018CB8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08018CBC
sub_08018CBC: @ 0x08018CBC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x84
	ldr r5, _08018D50 @ =gLinkEntity
	ldr r0, [r5, #0x2c]
	str r0, [r4, #0x2c]
	str r0, [r1]
	subs r1, #4
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r0, [r1]
	ldrb r1, [r5, #0x14]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x96
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	adds r2, #0x3c
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3b
	strb r0, [r1]
	ldr r6, [r4, #0x54]
	cmp r6, #0
	beq _08018D58
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x56
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x1c
	strb r0, [r1]
	adds r1, #4
	movs r0, #6
	strb r0, [r1]
	ldr r0, _08018D54 @ =gUnk_080B3E18
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x54]
	adds r0, #0x62
	movs r1, #0
	strb r1, [r0]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	b _08018DD2
	.align 2, 0
_08018D50: .4byte gLinkEntity
_08018D54: .4byte gUnk_080B3E18
_08018D58:
	ldr r7, _08018DDC @ =gLinkState
	ldrb r0, [r7, #0x1c]
	cmp r0, #0
	bne _08018D64
	bl sub_0805E780
_08018D64:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #6
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xa6
	strh r0, [r4, #0x12]
	movs r0, #0x33
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	adds r0, #0x60
	strh r6, [r0]
	ldrb r0, [r7, #0x1d]
	subs r0, #1
	strb r0, [r4, #0xa]
	ldr r1, _08018DE0 @ =gUnk_080B3DE0
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x44
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x1b
	strb r0, [r1]
	ldr r1, _08018DE4 @ =gUnk_080B3DE8
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	str r4, [r5, #0x70]
	adds r0, r5, #0
	bl sub_08078CD0
	str r6, [r5, #0x70]
	ldrb r1, [r4, #0xa]
	adds r1, #0xa
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08018FA0
_08018DD2:
	adds r0, r4, #0
	bl sub_0801766C
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08018DDC: .4byte gLinkState
_08018DE0: .4byte gUnk_080B3DE0
_08018DE4: .4byte gUnk_080B3DE8

	thumb_func_start sub_08018DE8
sub_08018DE8: @ 0x08018DE8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r5, #4
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08018E08
	ldr r0, _08018E18 @ =gLinkState
	strb r1, [r0, #0x1c]
	bl sub_0805E780
_08018E08:
	ldr r0, _08018E18 @ =gLinkState
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _08018E1C
	cmp r0, #5
	beq _08018E24
	b _08018E5A
	.align 2, 0
_08018E18: .4byte gLinkState
_08018E1C:
	adds r0, r4, #0
	bl sub_08018F6C
	b _08018E5A
_08018E24:
	ldr r0, [r4, #0x54]
	strb r5, [r0, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r2, #2
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0xa
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r4, #0
	bl sub_08018FA0
_08018E5A:
	ldr r0, _08018E64 @ =gLinkEntity
	bl sub_08078CD0
	pop {r4, r5, pc}
	.align 2, 0
_08018E64: .4byte gLinkEntity

	thumb_func_start sub_08018E68
sub_08018E68: @ 0x08018E68
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _08018E82
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	movs r1, #5
	bl sub_08008790
	b _08018EA8
_08018E82:
	adds r0, #0x3a
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08018E92
	bl sub_0805E780
_08018E92:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08018EA8
	adds r0, r4, #0
	bl sub_08018F6C
	b _08018F62
_08018EA8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08018F46
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	beq _08018EEA
	cmp r0, #8
	bgt _08018ECC
	cmp r0, #0
	beq _08018ED6
	b _08018EEE
_08018ECC:
	cmp r0, #0x10
	beq _08018EDE
	cmp r0, #0x18
	beq _08018EE4
	b _08018EEE
_08018ED6:
	movs r6, #0
	movs r5, #4
	rsbs r5, r5, #0
	b _08018EEE
_08018EDE:
	movs r6, #0
	movs r5, #4
	b _08018EEE
_08018EE4:
	movs r6, #4
	rsbs r6, r6, #0
	b _08018EEC
_08018EEA:
	movs r6, #4
_08018EEC:
	movs r5, #0
_08018EEE:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08018F00
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl CopyPosition
_08018F00:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08018F0C
	adds r0, r4, #0
	bl sub_0800451C
_08018F0C:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0800029C
	ldr r1, _08018F64 @ =gUnk_080B3DF4
	bl sub_08007DD6
	cmp r0, #0
	bne _08018F62
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_080002B4
	cmp r0, #0x74
	beq _08018F62
	ldr r1, _08018F68 @ =gUnk_08003E44
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	adds r2, r2, r6
	movs r0, #0x32
	ldrsh r3, [r4, r0]
	adds r3, r3, r5
	adds r0, r4, #0
	bl sub_080040D8
	cmp r0, #0
	beq _08018F62
_08018F46:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _08018F56
	ldrb r1, [r4, #0xa]
	adds r1, #0xd
	adds r0, r4, #0
	bl UpdateSprite
_08018F56:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_08018F6C
_08018F62:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08018F64: .4byte gUnk_080B3DF4
_08018F68: .4byte gUnk_08003E44

	thumb_func_start sub_08018F6C
sub_08018F6C: @ 0x08018F6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08018F8A
	movs r0, #5
	strb r0, [r1, #0xd]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #9
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	b _08018F9A
_08018F8A:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018F9E
_08018F9A:
	bl sub_0805E780
_08018F9E:
	pop {r4, pc}

	thumb_func_start sub_08018FA0
sub_08018FA0: @ 0x08018FA0
	push {lr}
	adds r2, r0, #0
	ldr r0, _08018FC8 @ =gLinkEntity
	adds r0, #0x38
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x38
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08018FBC
	movs r0, #1
	strb r0, [r2, #0xb]
_08018FBC:
	ldrb r0, [r2, #0xa]
	adds r0, #0xea
	bl PlaySFX
	pop {pc}
	.align 2, 0
_08018FC8: .4byte gLinkEntity

	thumb_func_start sub_08018FCC
sub_08018FCC: @ 0x08018FCC
	push {lr}
	ldr r2, _08018FE0 @ =gUnk_080B3E30
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08018FE0: .4byte gUnk_080B3E30
