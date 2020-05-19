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
	bl sub_0807CA84
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
	ldr r1, _0801864C @ =gUnk_03003F80
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
_0801864C: .4byte gUnk_03003F80
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
	bl sub_08000E50
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
	ldr r1, _08018768 @ =gUnk_03000BF0
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
_08018768: .4byte gUnk_03000BF0

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
	bl sub_0807CA84
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
	ldr r0, _08018978 @ =gUnk_03000BF0
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
_08018978: .4byte gUnk_03000BF0
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
	ldr r7, _08018DDC @ =gUnk_03003F80
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
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08018FA0
_08018DD2:
	adds r0, r4, #0
	bl sub_0801766C
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08018DDC: .4byte gUnk_03003F80
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
	ldr r0, _08018E18 @ =gUnk_03003F80
	strb r1, [r0, #0x1c]
	bl sub_0805E780
_08018E08:
	ldr r0, _08018E18 @ =gUnk_03003F80
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _08018E1C
	cmp r0, #5
	beq _08018E24
	b _08018E5A
	.align 2, 0
_08018E18: .4byte gUnk_03003F80
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
	bl sub_0806FA24
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
	bl sub_08004260
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
	bl sub_080A3268
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

	thumb_func_start sub_08018FE4
sub_08018FE4: @ 0x08018FE4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r3, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r5, [r4, #0xa]
	cmp r5, #0
	bne _08018FF6
	b _080190FC
_08018FF6:
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x6a
	str r0, [r4, #0x74]
	ldrb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x40
	strb r0, [r1]
	movs r0, #0xa6
	strh r0, [r4, #0x12]
	ldrb r0, [r1]
	adds r6, r1, #0
	cmp r0, #0xe
	bne _08019026
	movs r0, #0x80
	lsls r0, r0, #3
	b _0801902A
_08019026:
	movs r0, #0xc0
	lsls r0, r0, #2
_0801902A:
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldr r2, _0801905C @ =gLinkEntity
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	subs r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	adds r5, r2, #0
	cmp r0, #2
	bne _08019060
	movs r0, #1
	b _08019062
	.align 2, 0
_0801905C: .4byte gLinkEntity
_08019060:
	movs r0, #0
_08019062:
	strb r0, [r4, #0xb]
	ldrb r1, [r5, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r0, _080190F8 @ =gUnk_080B3E40
	adds r3, r3, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrsb r0, [r3, r0]
	ldrh r5, [r5, #0x32]
	adds r0, r0, r5
	strh r0, [r4, #0x32]
	ldrb r1, [r3, #2]
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r3, #3]
	lsls r1, r1, #7
	movs r2, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r3, #6]
	adds r5, r4, #0
	adds r5, #0x58
	strb r0, [r5]
	movs r0, #4
	ldrsb r0, [r3, r0]
	str r0, [r4, #0x6c]
	movs r0, #5
	ldrsb r0, [r3, r0]
	str r0, [r4, #0x70]
	ldr r0, [r3, #8]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0801766C
	ldrb r0, [r6]
	cmp r0, #0xe
	bne _080190E8
	ldrb r0, [r5]
	adds r0, #6
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #0
	strh r0, [r1]
_080190E8:
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_08004260
	movs r0, #0xfc
	bl sub_080A3268
	b _08019178
	.align 2, 0
_080190F8: .4byte gUnk_080B3E40
_080190FC:
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldr r2, _08019168 @ =gUnk_080B3E40
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #2]
	ands r1, r3
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _0801916C @ =gUnk_03003F80
	str r4, [r0, #0x2c]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_08079BD8
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _08019170
	movs r0, #0x3c
	str r0, [r4, #0x78]
	ldrb r1, [r4, #0xa]
	movs r0, #0x43
	movs r2, #1
	bl sub_080A2960
	adds r1, r0, #0
	cmp r1, #0
	beq _08019172
	adds r0, r4, #0
	bl sub_0806FA24
	b _08019172
	.align 2, 0
_08019168: .4byte gUnk_080B3E40
_0801916C: .4byte gUnk_03003F80
_08019170:
	str r5, [r4, #0x78]
_08019172:
	adds r0, r4, #0
	bl sub_0801917C
_08019178:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801917C
sub_0801917C: @ 0x0801917C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	cmp r2, #0
	bne _08019188
	b _0801934A
_08019188:
	ldr r0, [r4, #0x74]
	subs r0, #1
	str r0, [r4, #0x74]
	cmp r0, #0
	bne _0801919C
	adds r0, r4, #0
	bl sub_08019468
	bl sub_0805E780
_0801919C:
	adds r0, r4, #0
	bl sub_08004274
	ldr r0, [r4, #0x74]
	cmp r0, #0x17
	bhi _080191BA
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080191BA:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r1, [r0]
	movs r5, #4
	adds r6, r0, #0
	cmp r1, #0xe
	bne _080191D0
	movs r5, #1
_080191D0:
	ldr r2, [r4, #0x6c]
	ldr r3, [r4, #0x70]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08008782
	cmp r0, #0
	beq _080191EE
	ldrb r0, [r6]
	cmp r0, #0xe
	beq _080191EA
	bl sub_0805E780
_080191EA:
	movs r7, #1
	b _080191F0
_080191EE:
	movs r7, #0
_080191F0:
	ldrb r0, [r6]
	cmp r0, #0xe
	bne _0801920E
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0801920E
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0
	bl CreateFX
_0801920E:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0801921A
	adds r0, r4, #0
	bl sub_0800451C
_0801921A:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08019288 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0801928C @ =gLinkEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _080192D0
	cmp r7, #0
	bne _080192D0
	ldr r1, _08019290 @ =gUnk_08003E44
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r5, #0x32
	ldrsh r3, [r4, r5]
	adds r0, r4, #0
	bl sub_080040D8
	cmp r0, #0
	beq _080192D0
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r6]
	cmp r0, #0xe
	bne _08019294
	adds r0, r4, #0
	bl sub_08019468
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #0xf
	adds r0, r4, #0
	bl sub_08004260
	b _080192A2
	.align 2, 0
_08019288: .4byte gUnk_03000BF0
_0801928C: .4byte gLinkEntity
_08019290: .4byte gUnk_08003E44
_08019294:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #2
	adds r0, r4, #0
	bl sub_08004260
_080192A2:
	adds r0, r4, #0
	bl sub_08017744
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	movs r0, #0
	strb r1, [r4, #0x10]
	strh r0, [r4, #0x24]
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bge _080192BC
	movs r0, #0
_080192BC:
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bge _080192C6
	movs r0, #0
_080192C6:
	str r0, [r4, #0x30]
	movs r0, #0xc5
	lsls r0, r0, #1
	bl sub_080A3268
_080192D0:
	adds r5, r4, #0
	adds r5, #0x41
	ldrb r0, [r5]
	cmp r0, #0
	bne _080192DC
	b _08019402
_080192DC:
	cmp r7, #0
	beq _080192E2
	b _08019402
_080192E2:
	ldrb r0, [r6]
	cmp r0, #0xe
	bne _080192EE
	adds r0, r4, #0
	bl sub_08019468
_080192EE:
	adds r0, r4, #0
	bl sub_08017744
	ldrb r1, [r5]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0x42
	bne _08019336
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _08019402
_08019336:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	strb r0, [r4, #0x18]
	b _08019402
_0801934A:
	ldr r1, _0801938C @ =gUnk_03003F80
	ldr r0, [r1, #0x2c]
	cmp r0, r4
	bne _0801935E
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _08019368
	str r0, [r1, #0x2c]
_0801935E:
	adds r0, r1, #0
	adds r0, #0x21
	strb r2, [r0]
	bl sub_0805E780
_08019368:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _08019398
	ldr r0, _0801938C @ =gUnk_03003F80
	adds r2, r0, #0
	adds r2, #0x21
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _08019398
	cmp r1, #0x77
	bhi _08019390
	adds r0, #1
	strb r0, [r2]
	b _08019398
	.align 2, 0
_0801938C: .4byte gUnk_03003F80
_08019390:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xe
	strb r0, [r1]
_08019398:
	ldr r0, _08019404 @ =gUnk_02002A40
	adds r0, #0xad
	ldrb r5, [r0]
	ldrb r1, [r4, #0x1e]
	ldr r2, [r4, #0x78]
	subs r1, r1, r2
	ldr r0, _08019408 @ =gLinkEntity
	ldrb r0, [r0, #0x1e]
	cmp r1, r0
	beq _080193C2
	adds r0, r0, r2
	strb r0, [r4, #0x1e]
	cmp r5, #0
	bne _080193B8
	adds r0, #0x2a
	strb r0, [r4, #0x1e]
_080193B8:
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_080193C2:
	ldr r0, _08019408 @ =gLinkEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080193FA
	cmp r5, #0
	beq _080193FA
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r2, [r0]
	movs r0, #4
	movs r1, #1
	movs r3, #9
	bl sub_08077CB8
	cmp r0, #0
	beq _080193FA
	ldr r2, _0801940C @ =gUnk_03003F80
	ldrb r1, [r2, #4]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #4]
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08054330
_080193FA:
	ldr r1, _08019408 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_08078E84
_08019402:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08019404: .4byte gUnk_02002A40
_08019408: .4byte gLinkEntity
_0801940C: .4byte gUnk_03003F80

	thumb_func_start sub_08019410
sub_08019410: @ 0x08019410
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0xe
	bhi _08019428
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004260
	b _0801942E
_08019428:
	adds r0, r4, #0
	bl sub_08004274
_0801942E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08019440
	bl sub_0805E780
_08019440:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08019444
sub_08019444: @ 0x08019444
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08019464
	bl sub_0805E780
_08019464:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08019468
sub_08019468: @ 0x08019468
	push {lr}
	adds r1, r0, #0
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _0801947E
	adds r0, r1, #0
	movs r1, #0x50
	movs r2, #0
	bl CreateFX
_0801947E:
	pop {pc}

	thumb_func_start sub_08019480
sub_08019480: @ 0x08019480
	push {lr}
	ldr r2, _08019494 @ =gUnk_080B43F4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08019494: .4byte gUnk_080B43F4

	thumb_func_start sub_08019498
sub_08019498: @ 0x08019498
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08019504 @ =gLinkEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FA24
	ldrb r0, [r5, #0xc]
	adds r0, #1
	movs r2, #0
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	adds r4, #0x3c
	ldrb r0, [r4]
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldr r0, _08019508 @ =gUnk_080B4408
	str r0, [r5, #0x48]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r5, #0x24]
	movs r0, #2
	str r0, [r5, #0x74]
	str r2, [r5, #0x70]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _080194E6
	movs r0, #1
	strb r0, [r5, #0xb]
_080194E6:
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r0, #0x3c
	str r0, [r5, #0x6c]
	ldrb r0, [r5, #0x14]
	adds r2, r0, #0
	cmp r0, #2
	beq _08019534
	cmp r0, #2
	bgt _0801950C
	cmp r0, #0
	beq _08019516
	b _0801954E
	.align 2, 0
_08019504: .4byte gLinkEntity
_08019508: .4byte gUnk_080B4408
_0801950C:
	cmp r0, #4
	beq _0801952C
	cmp r0, #6
	beq _08019542
	b _0801954E
_08019516:
	ldrh r0, [r5, #0x2e]
	subs r0, #3
	strh r0, [r5, #0x2e]
	ldrh r0, [r5, #0x32]
	subs r0, #8
	strh r0, [r5, #0x32]
	ldrb r0, [r5, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x18]
	b _0801954E
_0801952C:
	ldrh r0, [r5, #0x2e]
	adds r0, #2
	strh r0, [r5, #0x2e]
	b _0801954E
_08019534:
	ldrb r0, [r5, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldrh r0, [r5, #0x2e]
	adds r0, #1
	b _08019546
_08019542:
	ldrh r0, [r5, #0x2e]
	subs r0, #1
_08019546:
	strh r0, [r5, #0x2e]
	ldrh r0, [r5, #0x32]
	subs r0, #4
	strh r0, [r5, #0x32]
_0801954E:
	ldr r1, _08019578 @ =gUnk_080B43FC
	lsrs r0, r2, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08004260
	adds r0, r5, #0
	bl sub_0801766C
	adds r0, r5, #0
	bl sub_0806F69C
	adds r0, r5, #0
	bl sub_08019580
	ldr r0, _0801957C @ =0x0000013F
	bl sub_080A3268
	pop {r4, r5, pc}
	.align 2, 0
_08019578: .4byte gUnk_080B43FC
_0801957C: .4byte 0x0000013F

	thumb_func_start sub_08019580
sub_08019580: @ 0x08019580
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x6c]
	subs r0, #1
	str r0, [r4, #0x6c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08019638
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080195B0
	adds r0, r4, #0
	bl sub_0800451C
_080195B0:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0801962C @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _08019630 @ =gLinkEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _08019602
	ldr r1, _08019634 @ =gUnk_08003E44
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r5, #0x32
	ldrsh r3, [r4, r5]
	adds r0, r4, #0
	bl sub_080040D8
	cmp r0, #0
	beq _08019602
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_08019602:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801961A
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl CreateFX
	bl sub_0805E780
_0801961A:
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08008790
	cmp r0, #0
	beq _0801963C
	bl sub_0805E780
	b _0801963C
	.align 2, 0
_0801962C: .4byte gUnk_03000BF0
_08019630: .4byte gLinkEntity
_08019634: .4byte gUnk_08003E44
_08019638:
	bl sub_0805E780
_0801963C:
	adds r0, r4, #0
	bl sub_08019644
	pop {r4, r5, pc}

	thumb_func_start sub_08019644
sub_08019644: @ 0x08019644
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x74]
	subs r1, r0, #1
	str r1, [r2, #0x74]
	cmp r1, #0
	bne _08019674
	movs r0, #2
	str r0, [r2, #0x74]
	ldr r0, [r2, #0x70]
	adds r0, #1
	str r0, [r2, #0x70]
	ldr r3, _08019678 @ =gUnk_080B4400
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08019668
	str r1, [r2, #0x70]
_08019668:
	ldr r0, [r2, #0x70]
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_0801D2B4
_08019674:
	pop {pc}
	.align 2, 0
_08019678: .4byte gUnk_080B4400

	thumb_func_start sub_0801967C
sub_0801967C: @ 0x0801967C
	push {lr}
	ldr r1, _08019690 @ =gUnk_080B4458
	ldr r0, _08019694 @ =gUnk_02000080
	ldrb r0, [r0, #6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08019690: .4byte gUnk_080B4458
_08019694: .4byte gUnk_02000080

	thumb_func_start sub_08019698
sub_08019698: @ 0x08019698
	push {r4, r5, lr}
	ldr r0, _08019724 @ =gUnk_02032EC0
	ldrb r1, [r0, #3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08019728 @ =gUnk_080B4410
	adds r4, r0, r1
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r4, #4]
	bl sub_0807CC9C
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_08052FD8
	ldr r5, _0801972C @ =gUnk_03000BF0
	ldrh r0, [r4, #6]
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	strh r0, [r5, #0xa]
	ldrh r0, [r4, #8]
	ldrh r2, [r5, #0xc]
	adds r0, r0, r2
	strh r0, [r5, #0xc]
	ldr r1, _08019730 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	bl sub_08000108
	ldr r2, _08019734 @ =gUnk_03000F50
	ldrh r1, [r2]
	ldr r0, _08019738 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0x2c
	movs r1, #0
	movs r2, #0
	bl sub_080A2960
	adds r1, r0, #0
	cmp r1, #0
	beq _08019700
	ldrh r0, [r4, #0xa]
	ldrh r2, [r5, #0xa]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0xc]
	ldrh r5, [r5, #0xc]
	adds r0, r0, r5
	strh r0, [r1, #0x32]
_08019700:
	movs r0, #0x11
	bl sub_0801D7EC
	bl sub_080AD90C
	bl sub_080AD9B0
	bl sub_080AD918
	movs r0, #4
	movs r1, #8
	bl sub_08050054
	ldr r1, _0801973C @ =gUnk_02018EB0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r4, r5, pc}
	.align 2, 0
_08019724: .4byte gUnk_02032EC0
_08019728: .4byte gUnk_080B4410
_0801972C: .4byte gUnk_03000BF0
_08019730: .4byte gUnk_02000070
_08019734: .4byte gUnk_03000F50
_08019738: .4byte 0x0000FEFF
_0801973C: .4byte gUnk_02018EB0

	thumb_func_start sub_08019740
sub_08019740: @ 0x08019740
	push {lr}
	ldr r0, _0801975C @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08019758
	ldr r0, _08019760 @ =gUnk_02018EB0
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	movs r1, #0xc3
	lsls r1, r1, #1
	strh r1, [r0, #4]
_08019758:
	pop {pc}
	.align 2, 0
_0801975C: .4byte gUnk_03000FD0
_08019760: .4byte gUnk_02018EB0

	thumb_func_start sub_08019764
sub_08019764: @ 0x08019764
	push {lr}
	bl sub_080AD90C
	bl sub_0805E5C0
	bl sub_080AD9B0
	bl sub_080AD918
	ldr r2, _08019798 @ =gUnk_02018EB0
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08019790
	ldr r0, _0801979C @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08019796
_08019790:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08019796:
	pop {pc}
	.align 2, 0
_08019798: .4byte gUnk_02018EB0
_0801979C: .4byte gUnk_03000FF0

	thumb_func_start sub_080197A0
sub_080197A0: @ 0x080197A0
	push {lr}
	movs r0, #2
	movs r1, #0xb
	bl sub_080A7138
	pop {pc}

	thumb_func_start sub_080197AC
sub_080197AC: @ 0x080197AC
	ldr r0, _080197C4 @ =gUnk_02025EB0
	ldr r1, _080197C8 @ =gUnk_03000F70
	str r1, [r0]
	ldr r2, _080197CC @ =gUnk_080B77C0
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r0, _080197D0 @ =gUnk_0200B650
	subs r1, #0xc
	str r1, [r0]
	ldrh r0, [r2, #2]
	strh r0, [r1]
	bx lr
	.align 2, 0
_080197C4: .4byte gUnk_02025EB0
_080197C8: .4byte gUnk_03000F70
_080197CC: .4byte gUnk_080B77C0
_080197D0: .4byte gUnk_0200B650

	thumb_func_start sub_080197D4
sub_080197D4: @ 0x080197D4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x80
	lsls r5, r5, #0x18
_080197DC:
	ldr r3, [r4, #4]
	cmp r3, #0
	beq _08019824
	ldr r1, [r4]
	ldr r0, _08019808 @ =0x7FFFFFFF
	ands r1, r0
	ldr r0, _0801980C @ =gUnk_08324AE4
	adds r1, r1, r0
	ldr r2, [r4, #8]
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _0801981A
	lsrs r0, r3, #0x18
	cmp r0, #6
	bne _08019810
	adds r0, r1, #0
	adds r1, r3, #0
	bl LZ77UnCompVram
	b _0801982E
	.align 2, 0
_08019808: .4byte 0x7FFFFFFF
_0801980C: .4byte gUnk_08324AE4
_08019810:
	adds r0, r1, #0
	adds r1, r3, #0
	bl LZ77UnCompWram
	b _0801982E
_0801981A:
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_0801D66C
	b _0801982E
_08019824:
	ldrh r0, [r4]
	bl sub_0801D714
	bl sub_080533CC
_0801982E:
	adds r4, #0xc
	adds r0, r4, #0
	subs r0, #0xc
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	bne _080197DC
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08019840
sub_08019840: @ 0x08019840
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0801985C @ =gUnk_03003F80
	adds r2, r0, #0
	adds r2, #0xa8
	ldrb r1, [r2]
	adds r7, r0, #0
	cmp r1, #0
	bne _08019860
	adds r0, #0xa9
	ldrb r0, [r0]
	b _08019862
	.align 2, 0
_0801985C: .4byte gUnk_03003F80
_08019860:
	ldrb r0, [r2]
_08019862:
	cmp r0, #0x12
	bne _0801986A
	bl _0801A2A4
_0801986A:
	cmp r0, #0x12
	bgt _08019878
	cmp r0, #3
	bne _08019876
	bl _0801A2A4
_08019876:
	b _08019880
_08019878:
	cmp r0, #0x16
	bne _08019880
	bl _0801A2A4
_08019880:
	ldrb r0, [r7, #0x1e]
	ldr r1, _08019898 @ =gLinkEntity
	mov sb, r1
	cmp r0, #0
	bne _08019890
	ldrb r0, [r1, #0xc]
	cmp r0, #0x1d
	bne _0801989C
_08019890:
	mov r2, sb
	ldrb r4, [r2, #0x15]
	b _0801989E
	.align 2, 0
_08019898: .4byte gLinkEntity
_0801989C:
	ldrb r4, [r7, #0xd]
_0801989E:
	movs r0, #0x83
	ands r0, r4
	cmp r0, #0
	bne _0801997C
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	bne _0801997C
	lsrs r1, r4, #2
	mov r0, sb
	bl sub_0807BDB8
	adds r4, r0, #0
	cmp r4, #0xff
	beq _0801997C
	ldr r5, _08019960 @ =gUnk_03000BF0
	ldrb r1, [r5, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801997C
	lsls r1, r4, #2
	ldr r0, _08019964 @ =gUnk_080B4490
	adds r6, r1, r0
	mov r3, sb
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	mov r1, sb
	movs r2, #0x32
	ldrsh r1, [r1, r2]
	mov r8, r1
	movs r1, #2
	ldrsh r6, [r6, r1]
	mov r2, r8
	adds r1, r2, r6
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	mov r1, sb
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	cmp r0, #0xff
	bne _0801997C
	ldr r0, [r7, #0x30]
	ldr r1, _08019968 @ =0x00010002
	ands r0, r1
	cmp r0, #0
	bne _0801995A
	ldrb r1, [r7, #0x1b]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801995A
	mov r3, sb
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r3, r2]
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	adds r2, r4, #0
	movs r3, #5
	bl sub_080806BC
	cmp r0, #0
	bne _0801996C
	ldrb r0, [r7, #5]
	cmp r0, #0
	bne _0801995A
	ldrb r1, [r7, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0801995A
	mov r0, sb
	adds r1, r4, #0
	bl sub_0807BD14
	cmp r0, #0
	bne _0801996C
_0801995A:
	movs r0, #3
	bl _0801A2A6
	.align 2, 0
_08019960: .4byte gUnk_03000BF0
_08019964: .4byte gUnk_080B4490
_08019968: .4byte 0x00010002
_0801996C:
	ldr r1, _08019978 @ =gLinkEntity
	lsls r0, r4, #3
	strb r0, [r1, #0x15]
	movs r0, #0xf
	bl _0801A2A6
	.align 2, 0
_08019978: .4byte gLinkEntity
_0801997C:
	ldr r4, _080199DC @ =gLinkEntity
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r0, [r5]
	bl sub_0808094C
	mov r8, r0
	ldrb r1, [r4, #0x14]
	movs r0, #6
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _080199E0 @ =gUnk_080B4468
	adds r6, r0, r1
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	ldr r3, _080199E4 @ =gUnk_03000BF0
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r7, r0, #4
	movs r2, #0x3f
	ands r7, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	movs r4, #2
	ldrsh r1, [r6, r4]
	adds r0, r0, r1
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r7, r0
	ldrb r1, [r5]
	adds r0, r7, #0
	bl sub_080002B0
	adds r6, r0, #0
	ldr r0, _080199E8 @ =0x00003FFF
	cmp r6, r0
	bhi _080199EC
	adds r0, r6, #0
	bl sub_080002E4
	adds r4, r0, #0
	b _080199EE
	.align 2, 0
_080199DC: .4byte gLinkEntity
_080199E0: .4byte gUnk_080B4468
_080199E4: .4byte gUnk_03000BF0
_080199E8: .4byte 0x00003FFF
_080199EC:
	adds r4, r6, #0
_080199EE:
	ldr r5, _08019A28 @ =gLinkEntity
	ldrb r1, [r5, #0x14]
	adds r3, r1, #0
	ldr r0, _08019A2C @ =0x00004036
	mov sb, r5
	cmp r4, r0
	bne _080199FE
	b _08019F0C
_080199FE:
	cmp r4, r0
	bhi _08019AE0
	cmp r4, #0x71
	bne _08019A08
	b _08019D94
_08019A08:
	cmp r4, #0x71
	bhi _08019A4E
	cmp r4, #0x3a
	bne _08019A12
	b _08019CFC
_08019A12:
	cmp r4, #0x3a
	bhi _08019A30
	cmp r4, #0x1a
	bne _08019A1C
	b _08019D48
_08019A1C:
	cmp r4, #0x28
	bne _08019A22
	b _08019BB8
_08019A22:
	bl _0801A2A4
	.align 2, 0
_08019A28: .4byte gLinkEntity
_08019A2C: .4byte 0x00004036
_08019A30:
	cmp r4, #0x5b
	bne _08019A36
	b _08019CFC
_08019A36:
	cmp r4, #0x5b
	bhi _08019A44
	cmp r4, #0x3d
	bne _08019A40
	b _08019DD4
_08019A40:
	bl _0801A2A4
_08019A44:
	cmp r4, #0x70
	bne _08019A4A
	b _08019CC0
_08019A4A:
	bl _0801A2A4
_08019A4E:
	ldr r0, _08019A6C @ =0x0000400B
	cmp r4, r0
	bne _08019A56
	b _08019E44
_08019A56:
	cmp r4, r0
	bhi _08019A70
	cmp r4, #0x72
	bne _08019A60
	b _08019FA8
_08019A60:
	subs r0, #0xb
	cmp r4, r0
	bne _08019A68
	b _08019B78
_08019A68:
	bl _0801A2A4
	.align 2, 0
_08019A6C: .4byte 0x0000400B
_08019A70:
	ldr r0, _08019AD4 @ =0x0000401B
	cmp r4, r0
	bne _08019A78
	b _08019C70
_08019A78:
	cmp r4, r0
	bhs _08019A80
	bl _0801A2A4
_08019A80:
	adds r0, #0x12
	cmp r4, r0
	bls _08019A8A
	bl _0801A2A4
_08019A8A:
	subs r0, #2
	cmp r4, r0
	bhs _08019A94
	bl _0801A2A4
_08019A94:
	mov r0, r8
	adds r1, r7, #0
	bl sub_0801A370
	cmp r0, #0
	bne _08019AA4
	bl _0801A2A4
_08019AA4:
	lsls r0, r7, #1
	mov r2, r8
	adds r2, #4
	adds r2, r2, r0
	ldrb r1, [r5, #0x14]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
	ldr r3, _08019AD8 @ =0x00004030
	adds r1, r3, #0
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _08019ADC @ =gUnk_03003F80
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	ands r1, r0
	adds r7, r2, #0
	mov sb, r5
	cmp r1, #0
	bne _08019AD0
	b _0801A09A
_08019AD0:
	b _0801A094
	.align 2, 0
_08019AD4: .4byte 0x0000401B
_08019AD8: .4byte 0x00004030
_08019ADC: .4byte gUnk_03003F80
_08019AE0:
	ldr r0, _08019B04 @ =0x00004053
	cmp r4, r0
	bne _08019AE8
	b _0801A13C
_08019AE8:
	cmp r4, r0
	bhi _08019B24
	subs r0, #0xb
	cmp r4, r0
	bhi _08019B08
	subs r0, #8
	cmp r4, r0
	blo _08019AFA
	b _08019DD4
_08019AFA:
	subs r0, #2
	cmp r4, r0
	bne _08019B02
	b _08019F50
_08019B02:
	b _0801A2A4
	.align 2, 0
_08019B04: .4byte 0x00004053
_08019B08:
	ldr r0, _08019B20 @ =0x00004051
	cmp r4, r0
	bne _08019B10
	b _08019CFC
_08019B10:
	cmp r4, r0
	bls _08019B16
	b _0801A120
_08019B16:
	subs r0, #7
	cmp r4, r0
	bne _08019B1E
	b _0801A0BC
_08019B1E:
	b _0801A2A4
	.align 2, 0
_08019B20: .4byte 0x00004051
_08019B24:
	ldr r0, _08019B48 @ =0x00004058
	cmp r4, r0
	bne _08019B2C
	b _0801A19A
_08019B2C:
	cmp r4, r0
	bhi _08019B4C
	subs r0, #2
	cmp r4, r0
	bne _08019B38
	b _0801A15A
_08019B38:
	cmp r4, r0
	bls _08019B3E
	b _0801A198
_08019B3E:
	subs r0, #1
	cmp r4, r0
	bne _08019B46
	b _0801A158
_08019B46:
	b _0801A2A4
	.align 2, 0
_08019B48: .4byte 0x00004058
_08019B4C:
	ldr r0, _08019B64 @ =0x0000405F
	cmp r4, r0
	bne _08019B54
	b _0801A1D4
_08019B54:
	cmp r4, r0
	bhi _08019B68
	subs r0, #5
	cmp r4, r0
	bne _08019B60
	b _08019EC8
_08019B60:
	b _0801A2A4
	.align 2, 0
_08019B64: .4byte 0x0000405F
_08019B68:
	ldr r0, _08019B74 @ =0x0000407D
	cmp r4, r0
	bne _08019B70
	b _0801A23C
_08019B70:
	b _0801A2A4
	.align 2, 0
_08019B74: .4byte 0x0000407D
_08019B78:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #2
	bl sub_0801A458
	cmp r0, #0
	bne _08019B88
	b _0801A2A4
_08019B88:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r4, _08019BB0 @ =0x00004001
	adds r0, r0, r4
	strh r0, [r1]
	ldr r2, _08019BB4 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _08019BAA
	b _0801A0F8
_08019BAA:
	movs r0, #0xc0
	b _0801A0FA
	.align 2, 0
_08019BB0: .4byte 0x00004001
_08019BB4: .4byte gUnk_03003F80
_08019BB8:
	ldr r1, _08019C50 @ =gUnk_03003F80
	ldr r0, [r1, #0x30]
	movs r2, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08019BC6
	b _0801A2A4
_08019BC6:
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _08019BCE
	b _0801A2A4
_08019BCE:
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	ldrb r1, [r1, #0xd]
	cmp r0, r1
	beq _08019BDA
	b _0801A2A4
_08019BDA:
	ldrb r1, [r5, #0x15]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08019BE6
	b _0801A2A4
_08019BE6:
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_080002E0
	cmp r0, #0xf
	beq _08019BF8
	b _0801A2A4
_08019BF8:
	bl sub_08079778
	cmp r0, #0
	bne _08019C02
	b _0801A2A4
_08019C02:
	ldrb r1, [r5, #0x14]
	movs r0, #6
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _08019C54 @ =gUnk_080B4478
	adds r6, r0, r1
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r4, _08019C58 @ =gUnk_03000BF0
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r5, r3]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	movs r3, #2
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	bl sub_08080734
	adds r2, r0, #0
	cmp r2, #0
	bne _08019C38
	b _0801A2A4
_08019C38:
	ldrb r1, [r5, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019C5C
	ldrh r0, [r2, #4]
	ldrh r4, [r4, #8]
	adds r0, r0, r4
	adds r0, #6
	strh r0, [r5, #0x32]
	b _08019C64
	.align 2, 0
_08019C50: .4byte gUnk_03003F80
_08019C54: .4byte gUnk_080B4478
_08019C58: .4byte gUnk_03000BF0
_08019C5C:
	ldrh r0, [r2, #2]
	ldrh r4, [r4, #6]
	adds r0, r0, r4
	strh r0, [r5, #0x2e]
_08019C64:
	movs r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_08078AC0
	b _0801A2A4
_08019C70:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #0xb
	bl sub_0801A2B0
	cmp r0, #0
	bne _08019C80
	b _0801A2A4
_08019C80:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r4, _08019CB8 @ =0x0000401C
	adds r0, r0, r4
	movs r3, #0
	strh r0, [r1]
	ldr r1, _08019CBC @ =gUnk_03003F80
	movs r0, #0xa0
	strb r0, [r1, #6]
	movs r0, #5
	strb r0, [r1, #0xc]
	ldr r0, [r1, #0x30]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0x30]
	strh r3, [r5, #0x2c]
	strh r3, [r5, #0x30]
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	strb r2, [r5, #0xa]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019CB8: .4byte 0x0000401C
_08019CBC: .4byte gUnk_03003F80
_08019CC0:
	ldr r0, _08019CF8 @ =gUnk_03003F80
	adds r2, r0, #0
	adds r2, #0x35
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019CD2
	b _0801A2A4
_08019CD2:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08019CE2
	b _0801A2A4
_08019CE2:
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0801A9F0
	cmp r0, #0
	bne _08019CF4
	b _0801A2A4
_08019CF4:
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019CF8: .4byte gUnk_03003F80
_08019CFC:
	ldr r2, _08019D40 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019D0A
	b _0801A2A4
_08019D0A:
	mov r1, sb
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	beq _08019D14
	b _0801A2A4
_08019D14:
	ldr r0, _08019D44 @ =gUnk_0200AF00
	adds r0, #0x2d
	movs r1, #4
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08019D2C
	b _0801A2A4
_08019D2C:
	movs r0, #1
	strb r0, [r2, #0x1a]
	mov r0, sb
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_080A7CFC
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019D40: .4byte gUnk_03003F80
_08019D44: .4byte gUnk_0200AF00
_08019D48:
	cmp r3, #0
	beq _08019D4E
	b _0801A2A4
_08019D4E:
	ldr r2, _08019D8C @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x81
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08019D5E
	b _0801A2A4
_08019D5E:
	ldr r0, _08019D90 @ =gUnk_0200AF00
	adds r0, #0x2d
	movs r1, #6
	strb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x88
	ands r0, r1
	cmp r0, #0
	bne _08019D76
	b _0801A2A4
_08019D76:
	movs r0, #1
	strb r0, [r2, #0x1a]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_080A7C8C
	movs r0, #2
	b _0801A2A6
	.align 2, 0
_08019D8C: .4byte gUnk_03003F80
_08019D90: .4byte gUnk_0200AF00
_08019D94:
	bl sub_08052734
	cmp r0, #0
	bne _08019D9E
	b _0801A2A4
_08019D9E:
	ldr r0, _08019DCC @ =gUnk_0200AF00
	adds r0, #0x2d
	movs r1, #6
	strb r1, [r0]
	ldr r2, _08019DD0 @ =gUnk_03003F80
	adds r0, r2, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r0, #0x88
	ands r0, r1
	cmp r0, #0
	bne _08019DB8
	b _0801A2A4
_08019DB8:
	movs r0, #1
	strb r0, [r2, #0x1a]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_0804B388
	movs r0, #2
	b _0801A2A6
	.align 2, 0
_08019DCC: .4byte gUnk_0200AF00
_08019DD0: .4byte gUnk_03003F80
_08019DD4:
	ldr r4, _08019E3C @ =gUnk_03003F80
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08019DE4
	b _0801A2A4
_08019DE4:
	bl sub_08079778
	cmp r0, #0
	bne _08019DEE
	b _0801A2A4
_08019DEE:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08019DF6
	b _0801A2A4
_08019DF6:
	ldr r2, _08019E40 @ =gLinkEntity
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	ldrb r3, [r4, #0xd]
	cmp r0, r3
	beq _08019E04
	b _0801A2A4
_08019E04:
	ldrb r1, [r2, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019E10
	b _0801A2A4
_08019E10:
	ldrb r0, [r2, #0xf]
	cmp r0, #5
	bhi _08019E18
	b _0801A2A4
_08019E18:
	movs r0, #0x81
	strb r0, [r4, #2]
	ldr r0, [r4, #0x30]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x30]
	movs r0, #0x15
	strb r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019E3C: .4byte gUnk_03003F80
_08019E40: .4byte gLinkEntity
_08019E44:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #8
	bl sub_0801A2B0
	cmp r0, #0
	bne _08019E54
	b _0801A2A4
_08019E54:
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r1, r7, #1
	cmp r0, #3
	bne _08019E84
	ldr r0, _08019E7C @ =gUnk_0200B650
	adds r0, #4
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, r4
	bne _08019E84
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r4, _08019E80 @ =0x0000400C
	adds r0, r0, r4
	strh r0, [r2]
	mov sb, r5
	b _08019E98
	.align 2, 0
_08019E7C: .4byte gUnk_0200B650
_08019E80: .4byte 0x0000400C
_08019E84:
	mov r0, r8
	adds r0, #4
	adds r0, r0, r1
	ldr r2, _08019EBC @ =gLinkEntity
	ldrb r1, [r2, #0x14]
	lsrs r1, r1, #1
	ldr r3, _08019EC0 @ =0x0000400C
	adds r1, r1, r3
	strh r1, [r0]
	mov sb, r2
_08019E98:
	ldr r2, _08019EC4 @ =gUnk_03003F80
	movs r3, #0
	movs r0, #0xa0
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	mov r4, sb
	strh r3, [r4, #0x2c]
	strh r3, [r4, #0x30]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_08019EBC: .4byte gLinkEntity
_08019EC0: .4byte 0x0000400C
_08019EC4: .4byte gUnk_03003F80
_08019EC8:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #2
	bl sub_0801A2B0
	cmp r0, #0
	bne _08019ED8
	b _0801A2A4
_08019ED8:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r2, _08019F04 @ =0x0000405B
	adds r0, r0, r2
	movs r3, #0
	strh r0, [r1]
	ldr r2, _08019F08 @ =gUnk_03003F80
	movs r0, #0x98
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r3, [r5, #0x2c]
	strh r3, [r5, #0x30]
	b _0801A228
	.align 2, 0
_08019F04: .4byte 0x0000405B
_08019F08: .4byte gUnk_03003F80
_08019F0C:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #0xb
	bl sub_0801A2B0
	cmp r0, #0
	bne _08019F1C
	b _0801A2A4
_08019F1C:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r3, _08019F48 @ =0x00004037
	adds r0, r0, r3
	movs r3, #0
	strh r0, [r1]
	ldr r2, _08019F4C @ =gUnk_03003F80
	movs r0, #0xa0
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r3, [r5, #0x2c]
	strh r3, [r5, #0x30]
	b _0801A228
	.align 2, 0
_08019F48: .4byte 0x00004037
_08019F4C: .4byte gUnk_03003F80
_08019F50:
	cmp r3, #0
	beq _08019F56
	b _0801A2A4
_08019F56:
	ldr r2, _08019FA0 @ =gUnk_03003F80
	adds r0, r2, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r2, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019F6C
	b _0801A2A4
_08019F6C:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08019F7C
	b _0801A2A4
_08019F7C:
	lsls r1, r7, #1
	mov r0, r8
	adds r0, #4
	adds r0, r0, r1
	ldr r1, _08019FA4 @ =0x0000403F
	strh r1, [r0]
	movs r0, #0x82
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r3, [r5, #0x2c]
	strh r3, [r5, #0x30]
	b _0801A228
	.align 2, 0
_08019FA0: .4byte gUnk_03003F80
_08019FA4: .4byte 0x0000403F
_08019FA8:
	ldr r0, _0801A07C @ =gUnk_03003F80
	adds r0, #0x35
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019FB8
	b _0801A2A4
_08019FB8:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08019FC8
	b _0801A2A4
_08019FC8:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801A570
	adds r7, r0, #0
	ldr r0, _0801A080 @ =0x0000FFFF
	cmp r7, r0
	bne _08019FDA
	b _0801A2A4
_08019FDA:
	lsrs r0, r7, #0xc
	subs r0, #1
	mov r8, r0
	ldr r0, _0801A084 @ =0x00000FFF
	ands r7, r0
	movs r4, #0
	movs r6, #0
	ldr r5, _0801A088 @ =gUnk_03004040
	mov sb, r5
_08019FEC:
	mov r1, sb
	ldr r0, [r1]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r0, #0x6c]
	ands r0, r1
	cmp r0, #0
	beq _0801A00A
	ldr r0, [r5]
	movs r1, #0
	bl sub_0801A570
	cmp r0, r7
	bne _0801A00A
	adds r6, #1
_0801A00A:
	adds r5, #4
	adds r4, #1
	cmp r4, #2
	bls _08019FEC
	cmp r6, r8
	bhs _0801A018
	b _0801A2A4
_0801A018:
	movs r0, #7
	mov r1, r8
	movs r2, #0
	bl sub_080A2960
	adds r5, r0, #0
	cmp r5, #0
	bne _0801A02A
	b _0801A2A4
_0801A02A:
	ldr r3, _0801A08C @ =gLinkEntity
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #2
	movs r4, #0
	strb r0, [r5, #0x15]
	movs r1, #0x3f
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0801A090 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r5, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r7
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r2, #8]
	adds r1, r1, r0
	strh r1, [r5, #0x32]
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r2, _0801A07C @ =gUnk_03003F80
	movs r0, #0xa0
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r4, [r3, #0x2c]
	strh r4, [r3, #0x30]
	ldrb r0, [r5, #0x15]
	b _0801A0B6
	.align 2, 0
_0801A07C: .4byte gUnk_03003F80
_0801A080: .4byte 0x0000FFFF
_0801A084: .4byte 0x00000FFF
_0801A088: .4byte gUnk_03004040
_0801A08C: .4byte gLinkEntity
_0801A090: .4byte gUnk_03000BF0
_0801A094:
	movs r0, #0xa0
	strb r0, [r2, #6]
	b _0801A09E
_0801A09A:
	movs r0, #0x90
	strb r0, [r7, #6]
_0801A09E:
	movs r2, #0
	movs r0, #5
	strb r0, [r7, #0xc]
	ldr r0, [r7, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x30]
	mov r3, sb
	strh r2, [r3, #0x2c]
	strh r2, [r3, #0x30]
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #2
_0801A0B6:
	strb r0, [r3, #0x15]
	movs r0, #1
	b _0801A2A6
_0801A0BC:
	mov r0, r8
	adds r1, r7, #0
	movs r2, #8
	bl sub_0801A458
	cmp r0, #0
	bne _0801A0CC
	b _0801A2A4
_0801A0CC:
	lsls r0, r7, #1
	mov r1, r8
	adds r1, #4
	adds r1, r1, r0
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	ldr r4, _0801A0F0 @ =0x0000404B
	adds r0, r0, r4
	strh r0, [r1]
	ldr r2, _0801A0F4 @ =gUnk_03003F80
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _0801A0F8
	movs r0, #0xc0
	b _0801A0FA
	.align 2, 0
_0801A0F0: .4byte 0x0000404B
_0801A0F4: .4byte gUnk_03003F80
_0801A0F8:
	movs r0, #0xa0
_0801A0FA:
	strb r0, [r7, #6]
	movs r2, #0
	movs r0, #5
	strb r0, [r7, #0xc]
	ldr r0, [r7, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x30]
	ldr r1, _0801A11C @ =gLinkEntity
	strh r2, [r1, #0x2c]
	strh r2, [r1, #0x30]
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	strb r0, [r1, #0x15]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_0801A11C: .4byte gLinkEntity
_0801A120:
	ldr r0, _0801A134 @ =gUnk_03003F80
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A12C
	b _0801A2A4
_0801A12C:
	ldr r0, _0801A138 @ =0x00004054
	adds r1, r5, #0
	b _0801A28C
	.align 2, 0
_0801A134: .4byte gUnk_03003F80
_0801A138: .4byte 0x00004054
_0801A13C:
	ldr r0, _0801A150 @ =gUnk_03003F80
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801A148
	b _0801A2A4
_0801A148:
	ldr r0, _0801A154 @ =0x00004054
	adds r1, r5, #0
	b _0801A28C
	.align 2, 0
_0801A150: .4byte gUnk_03003F80
_0801A154: .4byte 0x00004054
_0801A158:
	subs r7, #1
_0801A15A:
	ldr r0, _0801A190 @ =gUnk_03003F80
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A166
	b _0801A2A4
_0801A166:
	mov r0, sb
	ldrh r1, [r0, #0x32]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #9
	bgt _0801A174
	b _0801A2A4
_0801A174:
	movs r4, #0
	ldr r5, _0801A194 @ =gUnk_03004040
_0801A178:
	ldr r0, [r5]
	movs r1, #0
	bl sub_0801A8D0
	cmp r0, r7
	bne _0801A186
	b _0801A288
_0801A186:
	adds r5, #4
	adds r4, #1
	cmp r4, #2
	bls _0801A178
	b _0801A2A4
	.align 2, 0
_0801A190: .4byte gUnk_03003F80
_0801A194: .4byte gUnk_03004040
_0801A198:
	subs r7, #0x40
_0801A19A:
	ldr r0, _0801A1CC @ =gUnk_03003F80
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801A1A6
	b _0801A2A4
_0801A1A6:
	mov r2, sb
	ldrh r1, [r2, #0x2e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #9
	ble _0801A2A4
	movs r4, #0
	ldr r5, _0801A1D0 @ =gUnk_03004040
_0801A1B6:
	ldr r0, [r5]
	movs r1, #6
	bl sub_0801A8D0
	cmp r0, r7
	beq _0801A288
	adds r5, #4
	adds r4, #1
	cmp r4, #2
	bls _0801A1B6
	b _0801A2A4
	.align 2, 0
_0801A1CC: .4byte gUnk_03003F80
_0801A1D0: .4byte gUnk_03004040
_0801A1D4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A2A4
	ldr r6, _0801A234 @ =gUnk_03003F80
	adds r0, r6, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r6, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0801A2A4
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r3, #1
	mov r8, r3
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0801A2A4
	ldr r0, _0801A238 @ =0x00004074
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r2, [r1]
	adds r1, r7, #0
	bl sub_0800015E
	movs r0, #0xa0
	strb r0, [r6, #6]
	movs r0, #5
	strb r0, [r6, #0xc]
	ldr r0, [r6, #0x30]
	mov r1, r8
	orrs r0, r1
	str r0, [r6, #0x30]
	strh r4, [r5, #0x2c]
	strh r4, [r5, #0x30]
_0801A228:
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_0801A234: .4byte gUnk_03003F80
_0801A238: .4byte 0x00004074
_0801A23C:
	cmp r3, #4
	bne _0801A2A4
	ldr r1, _0801A280 @ =gUnk_03003F80
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r1, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801A2A4
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801A2A4
	ldr r0, _0801A284 @ =0x00004074
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r2, [r4]
	adds r1, r7, #0
	bl sub_0800015E
	ldrb r2, [r4]
	movs r0, #0xd
	adds r1, r7, #0
	bl sub_080001D0
	movs r0, #1
	b _0801A2A6
	.align 2, 0
_0801A280: .4byte gUnk_03003F80
_0801A284: .4byte 0x00004074
_0801A288:
	ldr r0, _0801A29C @ =0x00004059
	ldr r1, _0801A2A0 @ =gLinkEntity
_0801A28C:
	adds r1, #0x38
	ldrb r2, [r1]
	adds r1, r7, #0
	bl sub_0800015E
	movs r0, #4
	b _0801A2A6
	.align 2, 0
_0801A29C: .4byte 0x00004059
_0801A2A0: .4byte gLinkEntity
_0801A2A4:
	movs r0, #0
_0801A2A6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0801A2B0
sub_0801A2B0: @ 0x0801A2B0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r1, _0801A31C @ =gUnk_080B4488
	ldr r2, _0801A320 @ =gLinkEntity
	ldrb r0, [r2, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r1, _0801A324 @ =gUnk_03003F80
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r1, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801A36C
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801A36C
	adds r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080002B0
	bl sub_080002E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0x52
	beq _0801A36C
	cmp r0, #0x52
	bgt _0801A328
	cmp r0, #0x26
	blt _0801A32C
	cmp r0, #0x27
	ble _0801A36C
	cmp r0, #0x29
	beq _0801A36C
	b _0801A32C
	.align 2, 0
_0801A31C: .4byte gUnk_080B4488
_0801A320: .4byte gLinkEntity
_0801A324: .4byte gUnk_03003F80
_0801A328:
	cmp r1, #0x74
	beq _0801A36C
_0801A32C:
	ldr r0, _0801A364 @ =0x00002004
	adds r3, r5, r0
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0x28
	beq _0801A36C
	movs r1, #0x3f
	ands r1, r4
	ldr r0, _0801A368 @ =gUnk_03000BF0
	lsls r1, r1, #4
	ldrh r2, [r0, #6]
	adds r1, r1, r2
	lsrs r2, r4, #6
	lsls r2, r2, #4
	ldrh r0, [r0, #8]
	adds r2, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r3, #0
	adds r3, r6, #0
	bl sub_080AE4CC
	cmp r0, #0
	bne _0801A36C
	movs r0, #1
	b _0801A36E
	.align 2, 0
_0801A364: .4byte 0x00002004
_0801A368: .4byte gUnk_03000BF0
_0801A36C:
	movs r0, #0
_0801A36E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0801A370
sub_0801A370: @ 0x0801A370
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	ldr r5, _0801A3C8 @ =gLinkEntity
	ldrb r1, [r5, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801A44E
	bl sub_0801A4F8
	cmp r0, #0
	beq _0801A44E
	movs r0, #2
	bl sub_0808094C
	adds r7, r0, #0
	ldr r1, _0801A3CC @ =gUnk_080B4488
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r6, [r0, r1]
	adds r4, r4, r6
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080002B0
	adds r1, r0, #0
	ldr r0, _0801A3D0 @ =0x0000402B
	cmp r1, r0
	beq _0801A3D4
	cmp r1, r0
	blo _0801A3D6
	adds r0, #4
	cmp r1, r0
	bhi _0801A3D6
_0801A3C4:
	movs r0, #1
	b _0801A450
	.align 2, 0
_0801A3C8: .4byte gLinkEntity
_0801A3CC: .4byte gUnk_080B4488
_0801A3D0: .4byte 0x0000402B
_0801A3D4:
	adds r4, r4, r6
_0801A3D6:
	adds r0, r7, r4
	ldr r1, _0801A40C @ =0x00001F84
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x46
	beq _0801A44E
	ldr r0, _0801A410 @ =gLinkEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080002B0
	bl sub_080002E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x52
	beq _0801A44E
	cmp r0, #0x52
	bgt _0801A414
	cmp r0, #0x26
	blt _0801A418
	cmp r0, #0x27
	ble _0801A44E
	cmp r0, #0x29
	beq _0801A44E
	b _0801A418
	.align 2, 0
_0801A40C: .4byte 0x00001F84
_0801A410: .4byte gLinkEntity
_0801A414:
	cmp r0, #0x74
	beq _0801A44E
_0801A418:
	ldr r0, _0801A434 @ =0x00002004
	add r0, r8
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r0, #0xa
	beq _0801A446
	cmp r0, #0xa
	bgt _0801A438
	cmp r0, #0
	beq _0801A3C4
	cmp r0, #5
	beq _0801A440
	b _0801A44E
	.align 2, 0
_0801A434: .4byte 0x00002004
_0801A438:
	cmp r1, #0x44
	beq _0801A446
	cmp r1, #0x45
	bne _0801A44E
_0801A440:
	cmp r6, #1
	bne _0801A44E
	b _0801A3C4
_0801A446:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _0801A3C4
_0801A44E:
	movs r0, #0
_0801A450:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0801A458
sub_0801A458: @ 0x0801A458
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r0, _0801A4A4 @ =gUnk_080B4488
	ldr r6, _0801A4A8 @ =gLinkEntity
	ldrb r1, [r6, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r0, #0
	ldrsh r4, [r1, r0]
	bl sub_0801A4F8
	cmp r0, #0
	beq _0801A4F0
	adds r4, r5, r4
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080002B0
	bl sub_080002E4
	cmp r0, #0x52
	beq _0801A4F0
	cmp r0, #0x52
	bhi _0801A4AC
	cmp r0, #0x26
	blo _0801A4B0
	cmp r0, #0x27
	bls _0801A4F0
	cmp r0, #0x29
	beq _0801A4F0
	b _0801A4B0
	.align 2, 0
_0801A4A4: .4byte gUnk_080B4488
_0801A4A8: .4byte gLinkEntity
_0801A4AC:
	cmp r0, #0x74
	beq _0801A4F0
_0801A4B0:
	ldr r2, _0801A4E8 @ =0x00002004
	adds r3, r7, r2
	adds r5, r3, r4
	ldrb r0, [r5]
	cmp r0, #0x28
	beq _0801A4F0
	movs r1, #0x3f
	ands r1, r4
	ldr r0, _0801A4EC @ =gUnk_03000BF0
	lsls r1, r1, #4
	ldrh r2, [r0, #6]
	adds r1, r1, r2
	lsrs r2, r4, #6
	lsls r2, r2, #4
	ldrh r0, [r0, #8]
	adds r2, r2, r0
	adds r0, r3, #0
	mov r3, r8
	bl sub_080AE4CC
	cmp r0, #0
	bne _0801A4F0
	ldrb r0, [r5]
	subs r0, #1
	cmp r0, #0xe
	bls _0801A4F0
	movs r0, #1
	b _0801A4F2
	.align 2, 0
_0801A4E8: .4byte 0x00002004
_0801A4EC: .4byte gUnk_03000BF0
_0801A4F0:
	movs r0, #0
_0801A4F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801A4F8
sub_0801A4F8: @ 0x0801A4F8
	push {r4, r5, lr}
	ldr r4, _0801A538 @ =gUnk_03003F80
	ldr r0, [r4, #0x30]
	movs r5, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0801A544
	movs r0, #0x45
	bl sub_0807CA84
	cmp r0, #1
	bne _0801A564
	ldrb r1, [r4, #0xd]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801A564
	ldr r2, _0801A53C @ =gLinkEntity
	ldrb r0, [r2, #0x15]
	cmp r1, r0
	bne _0801A564
	ldrb r0, [r2, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	ldr r1, _0801A540 @ =gUnk_080B44A0
	lsrs r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r2, #0x2a]
	b _0801A55E
	.align 2, 0
_0801A538: .4byte gUnk_03003F80
_0801A53C: .4byte gLinkEntity
_0801A540: .4byte gUnk_080B44A0
_0801A544:
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	ldrb r1, [r4, #0xd]
	orrs r0, r1
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801A564
	ldr r0, _0801A568 @ =gLinkEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
_0801A55E:
	ands r0, r1
	cmp r0, #0
	bne _0801A56C
_0801A564:
	movs r0, #0
	b _0801A56E
	.align 2, 0
_0801A568: .4byte gLinkEntity
_0801A56C:
	movs r0, #1
_0801A56E:
	pop {r4, r5, pc}

	thumb_func_start sub_0801A570
sub_0801A570: @ 0x0801A570
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r1
	cmp r6, #0
	bne _0801A58C
	ldr r0, _0801A588 @ =0x0000FFFF
	b _0801A8C2
	.align 2, 0
_0801A588: .4byte 0x0000FFFF
_0801A58C:
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r0, [r4]
	bl sub_0808094C
	mov r8, r0
	ldr r0, _0801A668 @ =0x00005004
	add r0, r8
	mov ip, r0
	movs r5, #4
	movs r7, #2
	ldrb r0, [r6, #0x14]
	lsrs r0, r0, #1
	mov sb, r4
	cmp r0, #1
	beq _0801A678
	cmp r0, #1
	ble _0801A5BC
	cmp r0, #2
	bne _0801A5B6
	b _0801A73C
_0801A5B6:
	cmp r0, #3
	bne _0801A5BC
	b _0801A7FC
_0801A5BC:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r2, _0801A66C @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r3, #0x3f
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrh r1, [r2, #8]
	adds r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r4, r0
	mov r2, r8
	adds r2, #4
	movs r3, #0xdc
	lsls r3, r3, #2
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A5EA:
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, r3
	beq _0801A600
	subs r1, #2
	subs r4, #1
	subs r5, #1
	cmp r5, #0
	bne _0801A5EA
_0801A600:
	subs r4, #0x40
	movs r3, #0xdd
	lsls r3, r3, #2
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A60A:
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801A620
	adds r7, #1
	subs r1, #0x80
	subs r4, #0x40
	cmp r7, #3
	bls _0801A60A
_0801A620:
	mov r2, sl
	cmp r2, #0
	bne _0801A628
	b _0801A8C0
_0801A628:
	mov r0, sb
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080002B0
	adds r5, r0, #0
	ldr r1, _0801A670 @ =0xFFFFFC97
	adds r0, r5, r1
	cmp r0, #1
	bls _0801A63E
	b _0801A8B4
_0801A63E:
	ldr r2, _0801A674 @ =0x00001FC4
	adds r0, r4, r2
	mov r2, r8
	adds r1, r2, r0
	movs r5, #0
	cmp r5, r7
	blo _0801A64E
	b _0801A8B6
_0801A64E:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801A656
	b _0801A8B4
_0801A656:
	adds r5, #1
	cmp r5, r7
	blo _0801A65E
	b _0801A8B6
_0801A65E:
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A656
	b _0801A8B4
	.align 2, 0
_0801A668: .4byte 0x00005004
_0801A66C: .4byte gUnk_03000BF0
_0801A670: .4byte 0xFFFFFC97
_0801A674: .4byte 0x00001FC4
_0801A678:
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r3, _0801A730 @ =gUnk_03000BF0
	ldrh r0, [r3, #6]
	subs r0, #0xa
	subs r1, r1, r0
	asrs r4, r1, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	mov r2, r8
	adds r2, #4
	mov r3, ip
	movs r6, #0xdc
	lsls r6, r6, #2
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A6A8:
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	cmp r0, r6
	beq _0801A6BE
	adds r1, #0x80
	adds r4, #0x40
	subs r5, #1
	cmp r5, #0
	bne _0801A6A8
_0801A6BE:
	subs r4, #0x40
	movs r3, #0xdd
	lsls r3, r3, #2
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A6C8:
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801A6DE
	adds r7, #1
	subs r1, #0x80
	subs r4, #0x40
	cmp r7, #3
	bls _0801A6C8
_0801A6DE:
	mov r2, sl
	cmp r2, #0
	bne _0801A6E6
	b _0801A8C0
_0801A6E6:
	mov r0, sb
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080002B0
	adds r5, r0, #0
	ldr r0, _0801A734 @ =0x00000369
	cmp r5, r0
	beq _0801A700
	adds r0, #4
	cmp r5, r0
	beq _0801A700
	b _0801A8B4
_0801A700:
	adds r0, r4, r7
	ldr r1, _0801A738 @ =0x00002004
	adds r0, r0, r1
	mov r2, r8
	adds r1, r2, r0
	movs r5, #0
	cmp r5, r7
	blo _0801A712
	b _0801A8B6
_0801A712:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801A71A
	b _0801A8B4
_0801A71A:
	adds r5, #1
	cmp r5, r7
	blo _0801A722
	b _0801A8B6
_0801A722:
	lsls r0, r5, #6
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A71A
	b _0801A8B4
	.align 2, 0
_0801A730: .4byte gUnk_03000BF0
_0801A734: .4byte 0x00000369
_0801A738: .4byte 0x00002004
_0801A73C:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r2, _0801A7E8 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r3, #0x3f
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrh r1, [r2, #8]
	subs r1, #0xa
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r4, r0
	mov r2, r8
	adds r2, #4
	mov r3, ip
	ldr r6, _0801A7EC @ =0x0000036F
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A76A:
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	cmp r0, r6
	beq _0801A780
	adds r1, #2
	adds r4, #1
	subs r5, #1
	cmp r5, #0
	bne _0801A76A
_0801A780:
	subs r4, #1
	ldr r3, _0801A7F0 @ =0x00000372
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A788:
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801A79E
	adds r7, #1
	subs r1, #2
	subs r4, #1
	cmp r7, #3
	bls _0801A788
_0801A79E:
	mov r2, sl
	cmp r2, #0
	bne _0801A7A6
	b _0801A8C0
_0801A7A6:
	mov r0, sb
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080002B0
	adds r5, r0, #0
	ldr r0, _0801A7F4 @ =0x00000369
	cmp r5, r0
	beq _0801A7BE
	adds r0, #2
	cmp r5, r0
	bne _0801A8B4
_0801A7BE:
	lsls r0, r7, #6
	adds r0, r4, r0
	ldr r1, _0801A7F8 @ =0x00002004
	adds r0, r0, r1
	mov r2, r8
	adds r1, r2, r0
	movs r5, #0
	cmp r5, r7
	bhs _0801A8B6
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801A8B4
_0801A7D6:
	adds r5, #1
	cmp r5, r7
	bhs _0801A8B6
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801A7D6
	b _0801A8B4
	.align 2, 0
_0801A7E8: .4byte gUnk_03000BF0
_0801A7EC: .4byte 0x0000036F
_0801A7F0: .4byte 0x00000372
_0801A7F4: .4byte 0x00000369
_0801A7F8: .4byte 0x00002004
_0801A7FC:
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r3, _0801A890 @ =gUnk_03000BF0
	ldrh r0, [r3, #6]
	adds r0, #0xa
	subs r1, r1, r0
	asrs r4, r1, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	mov r2, r8
	adds r2, #4
	mov r3, ip
	ldr r6, _0801A894 @ =0x0000036F
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A82A:
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	cmp r0, r6
	beq _0801A840
	subs r1, #0x80
	subs r4, #0x40
	subs r5, #1
	cmp r5, #0
	bne _0801A82A
_0801A840:
	subs r4, #1
	ldr r3, _0801A898 @ =0x00000372
	lsls r0, r4, #1
	adds r1, r0, r2
_0801A848:
	ldrh r0, [r1]
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	cmp r0, r3
	bne _0801A85E
	adds r7, #1
	subs r1, #2
	subs r4, #1
	cmp r7, #3
	bls _0801A848
_0801A85E:
	mov r2, sl
	cmp r2, #0
	beq _0801A8C0
	mov r0, sb
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080002B0
	adds r5, r0, #0
	ldr r0, _0801A89C @ =0x00000369
	cmp r5, r0
	beq _0801A87C
	adds r0, #3
	cmp r5, r0
	bne _0801A8B4
_0801A87C:
	ldr r1, _0801A8A0 @ =0x00002003
	adds r0, r4, r1
	mov r2, r8
	adds r1, r2, r0
	movs r5, #0
	cmp r5, r7
	bhs _0801A8B6
	ldrb r0, [r1]
	b _0801A8B0
	.align 2, 0
_0801A890: .4byte gUnk_03000BF0
_0801A894: .4byte 0x0000036F
_0801A898: .4byte 0x00000372
_0801A89C: .4byte 0x00000369
_0801A8A0: .4byte 0x00002003
_0801A8A4:
	adds r5, #1
	cmp r5, r7
	bhs _0801A8B6
	lsls r0, r5, #6
	adds r0, r0, r1
	ldrb r0, [r0]
_0801A8B0:
	cmp r0, #0
	beq _0801A8A4
_0801A8B4:
	ldr r4, _0801A8CC @ =0x0000FFFF
_0801A8B6:
	mov r0, sl
	cmp r0, #0
	beq _0801A8C0
	lsls r0, r7, #0xc
	orrs r4, r0
_0801A8C0:
	adds r0, r4, #0
_0801A8C2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801A8CC: .4byte 0x0000FFFF

	thumb_func_start sub_0801A8D0
sub_0801A8D0: @ 0x0801A8D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r5, #0
	beq _0801A978
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl sub_0808094C
	adds r6, r0, #4
	cmp r4, #0
	bne _0801A92C
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _0801A91C @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r3, #0x3f
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r2, #8]
	adds r1, #8
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r4, r0
	lsls r0, r4, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	ldr r0, _0801A920 @ =0x00004055
	cmp r1, r0
	bne _0801A924
	subs r0, r4, #1
	b _0801A97A
	.align 2, 0
_0801A91C: .4byte gUnk_03000BF0
_0801A920: .4byte 0x00004055
_0801A924:
	ldr r0, _0801A928 @ =0x00004056
	b _0801A96A
	.align 2, 0
_0801A928: .4byte 0x00004056
_0801A92C:
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r3, _0801A960 @ =gUnk_03000BF0
	ldrh r0, [r3, #6]
	adds r0, #8
	subs r1, r1, r0
	asrs r4, r1, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	lsls r0, r4, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	ldr r0, _0801A964 @ =0x00004057
	cmp r1, r0
	bne _0801A968
	adds r0, r4, #0
	subs r0, #0x40
	b _0801A97A
	.align 2, 0
_0801A960: .4byte gUnk_03000BF0
_0801A964: .4byte 0x00004057
_0801A968:
	ldr r0, _0801A974 @ =0x00004058
_0801A96A:
	cmp r1, r0
	bne _0801A978
	adds r0, r4, #0
	b _0801A97A
	.align 2, 0
_0801A974: .4byte 0x00004058
_0801A978:
	ldr r0, _0801A97C @ =0x0000FFFF
_0801A97A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801A97C: .4byte 0x0000FFFF

	thumb_func_start sub_0801A980
sub_0801A980: @ 0x0801A980
	push {r4, r5, r6, r7, lr}
	ldr r4, _0801A9E0 @ =gLinkEntity
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r0, [r6]
	bl sub_0808094C
	ldrb r0, [r4, #0x14]
	movs r2, #6
	ands r2, r0
	lsls r2, r2, #1
	ldr r0, _0801A9E4 @ =gUnk_080B44A8
	adds r2, r2, r0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r5, _0801A9E8 @ =gUnk_03000BF0
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r7, #0x32
	ldrsh r1, [r4, r7]
	movs r4, #2
	ldrsh r2, [r2, r4]
	adds r1, r1, r2
	ldrh r2, [r5, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldrb r1, [r6]
	bl sub_080002B0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0801A9EC @ =0x00003FFF
	cmp r1, r0
	bhi _0801A9DC
	adds r0, r1, #0
	bl sub_080002E4
_0801A9DC:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801A9E0: .4byte gLinkEntity
_0801A9E4: .4byte gUnk_080B44A8
_0801A9E8: .4byte gUnk_03000BF0
_0801A9EC: .4byte 0x00003FFF

	thumb_func_start sub_0801A9F0
sub_0801A9F0: @ 0x0801A9F0
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r2, #0
	movs r2, #0
	ldr r5, _0801AA0C @ =0xFFFFFCA0
	adds r0, r1, r5
	cmp r0, #4
	bhi _0801AA40
	lsls r0, r0, #2
	ldr r1, _0801AA10 @ =_0801AA14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801AA0C: .4byte 0xFFFFFCA0
_0801AA10: .4byte _0801AA14
_0801AA14: @ jump table
	.4byte _0801AA44 @ case 0
	.4byte _0801AA28 @ case 1
	.4byte _0801AA34 @ case 2
	.4byte _0801AA3A @ case 3
	.4byte _0801AA2E @ case 4
_0801AA28:
	cmp r3, #0
	bne _0801AA40
	b _0801AA44
_0801AA2E:
	cmp r3, #8
	bne _0801AA40
	b _0801AA44
_0801AA34:
	cmp r3, #0x10
	bne _0801AA40
	b _0801AA44
_0801AA3A:
	cmp r3, #0x18
	bne _0801AA40
	movs r2, #1
_0801AA40:
	cmp r2, #0
	beq _0801AA54
_0801AA44:
	ldr r0, _0801AA50 @ =gLinkEntity
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_0801AA58
	b _0801AA56
	.align 2, 0
_0801AA50: .4byte gLinkEntity
_0801AA54:
	movs r0, #0
_0801AA56:
	pop {r4, r5, pc}

	thumb_func_start sub_0801AA58
sub_0801AA58: @ 0x0801AA58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	movs r0, #0x38
	adds r0, r0, r6
	mov r8, r0
	ldrb r0, [r0]
	bl sub_0808094C
	ldr r2, _0801AAF0 @ =gUnk_080B4488
	lsrs r1, r7, #3
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r1, r5, r1
	ldr r2, _0801AAF4 @ =0x00002004
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801AA94
	subs r0, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bhi _0801AB00
_0801AA94:
	movs r0, #7
	movs r1, #0
	movs r2, #0
	bl sub_080A2960
	adds r4, r0, #0
	cmp r4, #0
	beq _0801AB00
	movs r3, #0
	strb r7, [r4, #0x15]
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0801AAF8 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r4, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r2, #8]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r2, _0801AAFC @ =gUnk_03003F80
	movs r0, #0xa0
	strb r0, [r2, #6]
	movs r0, #5
	strb r0, [r2, #0xc]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	strh r3, [r6, #0x2c]
	strh r3, [r6, #0x30]
	strb r7, [r6, #0x15]
	movs r0, #1
	b _0801AB02
	.align 2, 0
_0801AAF0: .4byte gUnk_080B4488
_0801AAF4: .4byte 0x00002004
_0801AAF8: .4byte gUnk_03000BF0
_0801AAFC: .4byte gUnk_03003F80
_0801AB00:
	movs r0, #0
_0801AB02:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801AB08
sub_0801AB08: @ 0x0801AB08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov r8, r1
	ldr r0, _0801AB4C @ =gUnk_02025EB0
	movs r1, #2
	cmp r8, r0
	bne _0801AB22
	movs r1, #1
_0801AB22:
	lsls r2, r1, #0xc
	ldr r7, _0801AB50 @ =0x00003004
	add r7, r8
	mov r6, r8
	adds r6, #4
	movs r0, #0
	ldr r1, _0801AB54 @ =0x00003FFF
	mov sb, r1
_0801AB32:
	movs r3, #0
	mov sl, r3
	adds r0, #1
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r5, r0
_0801AB40:
	ldrh r0, [r6]
	cmp r0, sb
	bhi _0801AB58
	lsls r0, r0, #2
	b _0801AB64
	.align 2, 0
_0801AB4C: .4byte gUnk_02025EB0
_0801AB50: .4byte 0x00003004
_0801AB54: .4byte 0x00003FFF
_0801AB58:
	ldrh r1, [r7]
	adds r0, r2, #0
	str r2, [sp, #4]
	bl sub_0801AC68
	ldr r2, [sp, #4]
_0801AB64:
	lsls r0, r0, #1
	ldr r1, _0801AB8C @ =0x00007004
	adds r0, r0, r1
	mov r3, r8
	adds r1, r3, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #4
	ldrh r0, [r6, #2]
	cmp r0, sb
	bhi _0801AB90
	lsls r0, r0, #2
	b _0801AB9C
	.align 2, 0
_0801AB8C: .4byte 0x00007004
_0801AB90:
	adds r0, r2, #1
	ldrh r1, [r7, #2]
	str r2, [sp, #4]
	bl sub_0801AC68
	ldr r2, [sp, #4]
_0801AB9C:
	lsls r0, r0, #1
	ldr r1, _0801ABC4 @ =0x00007004
	adds r0, r0, r1
	mov r3, r8
	adds r1, r3, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #4
	ldrh r0, [r6, #4]
	cmp r0, sb
	bhi _0801ABC8
	lsls r0, r0, #2
	b _0801ABD4
	.align 2, 0
_0801ABC4: .4byte 0x00007004
_0801ABC8:
	adds r0, r2, #2
	ldrh r1, [r7, #4]
	str r2, [sp, #4]
	bl sub_0801AC68
	ldr r2, [sp, #4]
_0801ABD4:
	lsls r0, r0, #1
	ldr r1, _0801ABFC @ =0x00007004
	adds r0, r0, r1
	mov r3, r8
	adds r1, r3, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #4
	ldrh r0, [r6, #6]
	cmp r0, sb
	bhi _0801AC00
	lsls r0, r0, #2
	b _0801AC0C
	.align 2, 0
_0801ABFC: .4byte 0x00007004
_0801AC00:
	adds r0, r2, #3
	ldrh r1, [r7, #6]
	str r2, [sp, #4]
	bl sub_0801AC68
	ldr r2, [sp, #4]
_0801AC0C:
	lsls r0, r0, #1
	ldr r1, _0801AC64 @ =0x00007004
	adds r0, r0, r1
	mov r3, r8
	adds r1, r3, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #4
	adds r6, #8
	adds r7, #8
	adds r0, r2, #4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0xf
	bhi _0801AC44
	b _0801AB40
_0801AC44:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r5, r0
	ldr r1, [sp]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bhi _0801AC56
	b _0801AB32
_0801AC56:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801AC64: .4byte 0x00007004

	thumb_func_start sub_0801AC68
sub_0801AC68: @ 0x0801AC68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0801AC84 @ =gUnk_0200B240
	ldr r0, _0801AC88 @ =gUnk_02034350
	ldrh r3, [r0, #0xe]
	movs r0, #0
	cmp r0, r3
	bhs _0801AC94
_0801AC78:
	ldrh r5, [r2]
	cmp r4, r5
	bne _0801AC8C
	ldrh r0, [r2, #2]
	lsls r0, r0, #2
	b _0801AC96
	.align 2, 0
_0801AC84: .4byte gUnk_0200B240
_0801AC88: .4byte gUnk_02034350
_0801AC8C:
	adds r2, #4
	adds r0, #1
	cmp r0, r3
	blo _0801AC78
_0801AC94:
	lsls r0, r1, #2
_0801AC96:
	pop {r4, r5, pc}

	thumb_func_start sub_0801AC98
sub_0801AC98: @ 0x0801AC98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0801ACD0 @ =gUnk_03000BF0
	ldrh r1, [r0, #0x1e]
	lsrs r1, r1, #4
	mov r8, r1
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #4
	str r0, [sp]
	movs r6, #0
	movs r1, #0
	cmp r1, r0
	bhs _0801AD5C
_0801ACBA:
	movs r0, #0
	adds r1, #1
	str r1, [sp, #4]
	cmp r0, r8
	bhs _0801AD4C
_0801ACC4:
	ldr r5, _0801ACD4 @ =gUnk_080B44C0
	adds r0, #1
	mov sl, r0
	adds r0, r6, #1
	mov sb, r0
	b _0801ACDA
	.align 2, 0
_0801ACD0: .4byte gUnk_03000BF0
_0801ACD4: .4byte gUnk_080B44C0
_0801ACD8:
	adds r5, #0xc
_0801ACDA:
	ldrh r0, [r5]
	ldr r1, _0801AD0C @ =0x0000FFFF
	cmp r0, r1
	beq _0801AD06
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #1
	bl sub_080002B0
	cmp r4, r0
	bne _0801ACD8
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #2
	ldr r1, _0801AD10 @ =gUnk_080B44B8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801ACD8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801AD6C
_0801AD06:
	ldr r5, _0801AD14 @ =gUnk_080B44C2
	ldr r7, _0801AD0C @ =0x0000FFFF
	b _0801AD1A
	.align 2, 0
_0801AD0C: .4byte 0x0000FFFF
_0801AD10: .4byte gUnk_080B44B8
_0801AD14: .4byte gUnk_080B44C2
_0801AD18:
	adds r5, #0xc
_0801AD1A:
	ldrh r0, [r5]
	cmp r0, r7
	beq _0801AD44
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #2
	bl sub_080002B0
	cmp r4, r0
	bne _0801AD18
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #2
	ldr r1, _0801AD68 @ =gUnk_080B44B8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801AD18
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801AD6C
_0801AD44:
	mov r0, sl
	mov r6, sb
	cmp r0, r8
	blo _0801ACC4
_0801AD4C:
	adds r0, r6, #0
	adds r0, #0x40
	mov r1, r8
	subs r6, r0, r1
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, r0
	blo _0801ACBA
_0801AD5C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801AD68: .4byte gUnk_080B44B8

	thumb_func_start sub_0801AD6C
sub_0801AD6C: @ 0x0801AD6C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldrh r0, [r4, #2]
	cmp r0, #9
	beq _0801ADDC
	bl sub_0805E678
	adds r5, r0, #0
	cmp r5, #0
	beq _0801AE26
	ldrh r0, [r4, #2]
	strb r0, [r5, #8]
	ldrh r0, [r4, #4]
	strb r0, [r5, #9]
	ldrh r0, [r4, #6]
	strb r0, [r5, #0xa]
	ldrh r0, [r4, #8]
	strb r0, [r5, #0xb]
	movs r1, #0x3f
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0801ADD4 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	movs r3, #0
	strh r1, [r5, #0x2e]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r6
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r2, #8]
	adds r1, r1, r0
	strh r1, [r5, #0x32]
	adds r0, r5, #0
	adds r0, #0x38
	strb r3, [r0]
	adds r0, r5, #0
	bl sub_08016A30
	ldr r1, _0801ADD8 @ =gUnk_081091E4
	ldrb r0, [r5, #8]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_0805EA2C
	b _0801AE26
	.align 2, 0
_0801ADD4: .4byte gUnk_03000BF0
_0801ADD8: .4byte gUnk_081091E4
_0801ADDC:
	bl sub_0805E8D4
	adds r3, r0, #0
	cmp r3, #0
	beq _0801AE26
	ldrh r0, [r4, #2]
	strb r0, [r3, #8]
	ldrh r0, [r4, #4]
	strb r0, [r3, #9]
	ldrh r0, [r4, #6]
	strb r0, [r3, #0xa]
	ldrh r0, [r4, #8]
	strb r0, [r3, #0xb]
	movs r1, #0x3f
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	ldr r2, _0801AE28 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	adds r1, r1, r0
	strh r1, [r3, #0x38]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r6
	lsrs r0, r0, #2
	adds r0, #8
	ldrh r1, [r2, #8]
	adds r1, r1, r0
	strh r1, [r3, #0x3a]
	ldr r1, _0801AE2C @ =gUnk_081091E4
	ldrb r0, [r3, #8]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r3, #0
	bl sub_0805EA2C
_0801AE26:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801AE28: .4byte gUnk_03000BF0
_0801AE2C: .4byte gUnk_081091E4

	thumb_func_start sub_0801AE30
sub_0801AE30: @ 0x0801AE30
	movs r0, #1
	bx lr

	thumb_func_start sub_0801AE34
sub_0801AE34: @ 0x0801AE34
	ldr r0, _0801AE40 @ =gUnk_03000BF0
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0801AE40: .4byte gUnk_03000BF0

	thumb_func_start sub_0801AE44
sub_0801AE44: @ 0x0801AE44
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801AEE0 @ =gUnk_03000BF0
	movs r0, #0
	str r0, [r1, #0x34]
	bl sub_0807BFD0
	cmp r4, #0
	beq _0801AE5A
	bl sub_0807C0DC
_0801AE5A:
	bl sub_080809D4
	bl sub_080805F8
	ldr r0, _0801AEE4 @ =gUnk_030010A0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801AE70
	bl sub_0807C898
_0801AE70:
	ldr r4, _0801AEE8 @ =gUnk_02033A90
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0801AE8C
	ldr r1, _0801AEEC @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	movs r0, #0xf
	bl sub_0801D5EC
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_0805BB74
_0801AE8C:
	movs r0, #5
	bl sub_0804B128
	cmp r0, #0
	beq _0801AE9A
	bl _call_via_r0
_0801AE9A:
	ldr r0, _0801AEF0 @ =gUnk_03004030
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0801AEB6
	ldr r1, _0801AEF4 @ =0x0000088C
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801AEB6
	ldr r2, _0801AEF8 @ =0x00000888
	adds r0, r4, r2
	ldr r0, [r0]
	bl _call_via_r1
_0801AEB6:
	ldr r0, _0801AEE0 @ =gUnk_03000BF0
	ldrb r1, [r0, #0xf]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801AF0C
	ldr r1, _0801AEFC @ =gUnk_02025EB0
	ldr r0, [r1]
	cmp r0, #0
	beq _0801AED0
	ldr r0, _0801AF00 @ =gUnk_02019EE0
	bl sub_0801AB08
_0801AED0:
	ldr r1, _0801AF04 @ =gUnk_0200B650
	ldr r0, [r1]
	cmp r0, #0
	beq _0801AF10
	ldr r0, _0801AF08 @ =gUnk_02002F00
	bl sub_0801AB08
	b _0801AF10
	.align 2, 0
_0801AEE0: .4byte gUnk_03000BF0
_0801AEE4: .4byte gUnk_030010A0
_0801AEE8: .4byte gUnk_02033A90
_0801AEEC: .4byte 0x0600F000
_0801AEF0: .4byte gUnk_03004030
_0801AEF4: .4byte 0x0000088C
_0801AEF8: .4byte 0x00000888
_0801AEFC: .4byte gUnk_02025EB0
_0801AF00: .4byte gUnk_02019EE0
_0801AF04: .4byte gUnk_0200B650
_0801AF08: .4byte gUnk_02002F00
_0801AF0C:
	bl sub_0807C4F8
_0801AF10:
	bl sub_08000108
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801AF18
sub_0801AF18: @ 0x0801AF18
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801AF46
	adds r7, r1, #0
_0801AF2E:
	ldrh r0, [r4]
	movs r2, #2
	ldrsh r1, [r4, r2]
	adds r1, r6, r1
	adds r2, r5, #0
	bl sub_0800015E
	adds r4, #4
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r7
	bne _0801AF2E
_0801AF46:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801AF48
sub_0801AF48: @ 0x0801AF48
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, _0801AF7C @ =0x00003FFF
	cmp r4, r0
	bhi _0801AF7A
	ldr r0, _0801AF80 @ =gUnk_030010A0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801AF7A
	ldr r2, _0801AF84 @ =gUnk_02034350
	ldrh r3, [r2, #0xe]
	cmp r3, #0xff
	bhi _0801AF7A
	ldr r0, _0801AF88 @ =gUnk_0200B240
	lsls r1, r3, #2
	adds r1, r1, r0
	strh r4, [r1, #2]
	lsls r0, r5, #0xc
	orrs r0, r6
	strh r0, [r1]
	adds r0, r3, #1
	strh r0, [r2, #0xe]
_0801AF7A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801AF7C: .4byte 0x00003FFF
_0801AF80: .4byte gUnk_030010A0
_0801AF84: .4byte gUnk_02034350
_0801AF88: .4byte gUnk_0200B240

	thumb_func_start sub_0801AF8C
sub_0801AF8C: @ 0x0801AF8C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0xc
	orrs r4, r1
	ldr r2, _0801AFB8 @ =gUnk_0200B240
	ldr r0, _0801AFBC @ =gUnk_02034350
	ldrh r1, [r0, #0xe]
	movs r3, #0
	adds r5, r2, #0
	cmp r3, r1
	bhs _0801AFE0
	ldrh r6, [r2]
	cmp r4, r6
	bne _0801AFC0
	subs r1, #1
	strh r1, [r0, #0xe]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r2]
	b _0801AFE0
	.align 2, 0
_0801AFB8: .4byte gUnk_0200B240
_0801AFBC: .4byte gUnk_02034350
_0801AFC0:
	adds r2, #4
	adds r3, #1
	cmp r3, r1
	bhs _0801AFE0
	ldrh r6, [r2]
	cmp r4, r6
	bne _0801AFC0
	subs r1, #1
	strh r1, [r0, #0xe]
	adds r2, r5, #0
	lsls r0, r3, #2
	adds r0, r0, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0]
_0801AFE0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801AFE4
sub_0801AFE4: @ 0x0801AFE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0801B018 @ =gUnk_02027EB4
	ldr r0, _0801B01C @ =gUnk_03000BF0
	ldrh r1, [r0, #0x1e]
	lsrs r1, r1, #4
	mov sl, r1
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #4
	mov sb, r0
	movs r7, #0
	cmp r7, sb
	bhs _0801B054
_0801B004:
	movs r2, #0
	adds r0, r7, #1
	mov r8, r0
	cmp r2, sl
	bhs _0801B046
_0801B00E:
	ldr r1, _0801B020 @ =gUnk_080B44D0
	adds r4, r3, #1
	adds r5, r2, #1
	b _0801B026
	.align 2, 0
_0801B018: .4byte gUnk_02027EB4
_0801B01C: .4byte gUnk_03000BF0
_0801B020: .4byte gUnk_080B44D0
_0801B024:
	adds r1, #4
_0801B026:
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801B03E
	ldrb r6, [r3]
	cmp r0, r6
	bne _0801B024
	ldrh r0, [r1, #2]
	lsls r1, r7, #6
	adds r1, r1, r2
	movs r2, #1
	bl sub_0800015E
_0801B03E:
	adds r3, r4, #0
	adds r2, r5, #0
	cmp r2, sl
	blo _0801B00E
_0801B046:
	adds r0, r3, #0
	adds r0, #0x40
	mov r1, sl
	subs r3, r0, r1
	mov r7, r8
	cmp r7, sb
	blo _0801B004
_0801B054:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0801B060
sub_0801B060: @ 0x0801B060
	push {r4, r5, lr}
	movs r3, #0
	ldr r4, _0801B0B0 @ =gUnk_02000CC0
	movs r5, #8
_0801B068:
	ldr r2, [r4]
	cmp r2, #0
	beq _0801B0C2
	ldrh r1, [r4, #6]
	subs r0, r1, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801B0BA
	cmp r3, #0
	bne _0801B0B8
	ldr r0, _0801B0B4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801B08C
	ldr r0, [r2]
	bl sub_0801B0EC
_0801B08C:
	ldr r0, [r4]
	adds r0, #4
	bl sub_0801B0C4
	strh r0, [r4, #6]
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #8
	str r1, [r4]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0801B0AC
	ldr r0, [r1, #4]
	lsls r0, r0, #3
	subs r0, r1, r0
	str r0, [r4]
_0801B0AC:
	movs r3, #1
	b _0801B0BA
	.align 2, 0
_0801B0B0: .4byte gUnk_02000CC0
_0801B0B4: .4byte gUnk_03000FD0
_0801B0B8:
	strh r1, [r4, #6]
_0801B0BA:
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bne _0801B068
_0801B0C2:
	pop {r4, r5, pc}

	thumb_func_start sub_0801B0C4
sub_0801B0C4: @ 0x0801B0C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bge _0801B0E6
	bl sub_08000E50
	ldr r1, _0801B0E8 @ =gUnk_080B4550
	ldrb r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r1
	movs r1, #7
	ands r1, r0
	ldr r0, [r2]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_0801B0E6:
	pop {r4, pc}
	.align 2, 0
_0801B0E8: .4byte gUnk_080B4550

	thumb_func_start sub_0801B0EC
sub_0801B0EC: @ 0x0801B0EC
	push {r4, r5, lr}
	adds r4, r0, #0
_0801B0F0:
	ldr r1, [r4, #4]
	ldr r0, _0801B110 @ =gUnk_085A2E80
	adds r5, r1, r0
	ldrb r2, [r4, #2]
	ldrh r3, [r4]
	ldr r0, [r4]
	lsrs r0, r0, #0x1c
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801B114
	lsrs r1, r3, #5
	adds r0, r5, #0
	bl sub_0801D754
	b _0801B122
	.align 2, 0
_0801B110: .4byte gUnk_085A2E80
_0801B114:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r3, r0
	lsls r2, r2, #5
	adds r0, r5, #0
	bl sub_0801D66C
_0801B122:
	ldr r0, [r4]
	cmp r0, #0
	bge _0801B12C
	adds r4, #8
	b _0801B0F0
_0801B12C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801B130
sub_0801B130: @ 0x0801B130
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_0801B170
	ldr r5, _0801B164 @ =gUnk_02000CC0
	ldrh r0, [r4]
	ldr r1, _0801B168 @ =0x0000FFFF
	cmp r0, r1
	beq _0801B162
	ldr r7, _0801B16C @ =gUnk_080B7278
	adds r6, r1, #0
_0801B146:
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [r5]
	adds r0, #4
	bl sub_0801B0C4
	strh r0, [r5, #6]
	adds r5, #8
	adds r4, #2
	ldrh r0, [r4]
	cmp r0, r6
	bne _0801B146
_0801B162:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801B164: .4byte gUnk_02000CC0
_0801B168: .4byte 0x0000FFFF
_0801B16C: .4byte gUnk_080B7278

	thumb_func_start sub_0801B170
sub_0801B170: @ 0x0801B170
	push {lr}
	movs r1, #0
	movs r2, #0
	ldr r0, _0801B184 @ =gUnk_02000CC0
_0801B178:
	str r2, [r0]
	adds r0, #8
	adds r1, #1
	cmp r1, #7
	bls _0801B178
	pop {pc}
	.align 2, 0
_0801B184: .4byte gUnk_02000CC0

	thumb_func_start sub_0801B188
sub_0801B188: @ 0x0801B188
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801B1E0 @ =gUnk_080B77C8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08004274
	ldrb r2, [r4, #0xc]
	cmp r2, #3
	beq _0801B24E
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _0801B1E4
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #7
	bne _0801B1BC
	subs r0, r1, #1
	strb r0, [r4, #0xe]
_0801B1BC:
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	bne _0801B24E
	movs r0, #0x50
	strb r0, [r4, #0xf]
	str r1, [r4, #0x68]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	b _0801B24E
	.align 2, 0
_0801B1E0: .4byte gUnk_080B77C8
_0801B1E4:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0801B24E
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0801B248
	cmp r2, #2
	bne _0801B204
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _0801B204
	ldr r0, _0801B244 @ =gUnk_03003F80
	strb r1, [r0, #5]
_0801B204:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3c
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x13
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0805EC60
	adds r0, r4, #0
	bl sub_08078954
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
	adds r0, r4, #0
	bl sub_0801B418
	b _0801B24E
	.align 2, 0
_0801B244: .4byte gUnk_03003F80
_0801B248:
	adds r0, r4, #0
	bl sub_0801B3A4
_0801B24E:
	pop {r4, pc}

	thumb_func_start sub_0801B250
sub_0801B250: @ 0x0801B250
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	strb r0, [r2, #0xc]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x3a
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0xa]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0801B28A
	movs r0, #0x3c
	b _0801B29C
_0801B28A:
	cmp r0, #0xfe
	bne _0801B29A
	movs r0, #0xf
	strb r0, [r2, #0xe]
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r2, #0xa]
	b _0801B29E
_0801B29A:
	movs r0, #0x96
_0801B29C:
	strb r0, [r2, #0xe]
_0801B29E:
	ldr r0, _0801B2BC @ =gUnk_080B77F4
	str r0, [r2, #0x48]
	movs r0, #0
	strb r0, [r2, #0x16]
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #7
	bne _0801B2C0
	adds r0, r2, #0
	movs r1, #5
	bl sub_08004260
	b _0801B2C8
	.align 2, 0
_0801B2BC: .4byte gUnk_080B77F4
_0801B2C0:
	adds r0, r2, #0
	movs r1, #0x15
	bl sub_08004260
_0801B2C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B2CC
sub_0801B2CC: @ 0x0801B2CC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0800442E
	cmp r0, #0
	bne _0801B2DE
	adds r0, r4, #0
	bl sub_08078930
_0801B2DE:
	movs r0, #8
	bl sub_0805436C
	cmp r0, #1
	beq _0801B2F6
	cmp r0, #1
	blo _0801B2F2
	cmp r0, #2
	beq _0801B2FA
	b _0801B2FC
_0801B2F2:
	movs r5, #1
	b _0801B2FC
_0801B2F6:
	movs r5, #2
	b _0801B2FC
_0801B2FA:
	movs r5, #0
_0801B2FC:
	ldr r0, _0801B314 @ =gUnk_03003F80
	adds r0, #0x92
	ldrh r0, [r0]
	ands r5, r0
	cmp r5, #0
	beq _0801B310
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
_0801B310:
	pop {r4, r5, pc}
	.align 2, 0
_0801B314: .4byte gUnk_03003F80

	thumb_func_start sub_0801B318
sub_0801B318: @ 0x0801B318
	push {lr}
	ldr r2, _0801B32C @ =gUnk_080B77D8
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801B32C: .4byte gUnk_080B77D8

	thumb_func_start sub_0801B330
sub_0801B330: @ 0x0801B330
	push {lr}
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	bl sub_08079BD8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B340
sub_0801B340: @ 0x0801B340
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801B354
sub_0801B354: @ 0x0801B354
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

	thumb_func_start sub_0801B368
sub_0801B368: @ 0x0801B368
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	subs r0, #1
	movs r1, #0
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	ldrb r0, [r2, #0xe]
	cmp r0, #0x3c
	bls _0801B380
	movs r0, #0x3c
	strb r0, [r2, #0xe]
_0801B380:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B384
sub_0801B384: @ 0x0801B384
	push {lr}
	bl sub_0805E780
	pop {pc}

	thumb_func_start sub_0801B38C
sub_0801B38C: @ 0x0801B38C
	push {lr}
	ldrb r1, [r0, #0xe]
	subs r1, #1
	strb r1, [r0, #0xe]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xff
	bne _0801B3A0
	bl sub_0805E780
_0801B3A0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B3A4
sub_0801B3A4: @ 0x0801B3A4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	movs r5, #8
	cmp r0, #0x28
	bhi _0801B3F4
	movs r5, #4
	ldr r1, [r4, #0x68]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801B3C4
	adds r0, r1, #0
	subs r0, #0x10
	b _0801B3C8
_0801B3C4:
	adds r0, r1, #0
	adds r0, #0x10
_0801B3C8:
	str r0, [r4, #0x68]
	ldr r1, [r4, #0x68]
	movs r2, #0xf0
	adds r0, r1, #0
	ands r0, r2
	subs r0, #1
	cmp r0, #0x7f
	bls _0801B3E0
	movs r0, #0x80
	lsls r0, r0, #8
	eors r1, r0
	str r1, [r4, #0x68]
_0801B3E0:
	ldr r0, [r4, #0x68]
	ands r0, r2
	movs r2, #0x98
	lsls r2, r2, #1
	subs r2, r2, r0
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
_0801B3F4:
	ldrb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _0801B408
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x1a]
	b _0801B416
_0801B408:
	ldrb r0, [r4, #0x1a]
	lsrs r2, r0, #4
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x1a]
_0801B416:
	pop {r4, r5, pc}

	thumb_func_start sub_0801B418
sub_0801B418: @ 0x0801B418
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r6, #0x10
	movs r0, #0x10
	rsbs r0, r0, #0
	mov sb, r0
	mov r8, sb
_0801B42C:
	movs r4, #0x10
	adds r7, r6, #0
	subs r7, #0x10
_0801B432:
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	adds r2, r2, r4
	movs r0, #0x32
	ldrsh r3, [r5, r0]
	adds r3, r3, r6
	adds r0, r5, #0
	movs r1, #3
	bl sub_08008796
	subs r4, #0x10
	cmp r4, r8
	bge _0801B432
	adds r6, r7, #0
	cmp r6, sb
	bge _0801B42C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0801B45C
sub_0801B45C: @ 0x0801B45C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801B48C @ =gUnk_080B77FC
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _0801B4AC
	ldrb r0, [r4, #0x14]
	cmp r0, #6
	bne _0801B490
	adds r1, r4, #0
	adds r1, #0x86
	movs r2, #0x80
	lsls r2, r2, #6
	b _0801B496
	.align 2, 0
_0801B48C: .4byte gUnk_080B77FC
_0801B490:
	adds r1, r4, #0
	adds r1, #0x86
	ldr r2, _0801B4C4 @ =0xFFFFE000
_0801B496:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	ldrh r3, [r1]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
_0801B4AC:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0801B4C0
	movs r0, #0xfb
	bl sub_08004488
_0801B4C0:
	pop {r4, pc}
	.align 2, 0
_0801B4C4: .4byte 0xFFFFE000

	thumb_func_start sub_0801B4C8
sub_0801B4C8: @ 0x0801B4C8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0801B52C @ =gUnk_03003F80
	str r4, [r3, #0x2c]
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0801B530 @ =gUnk_081271CC
	str r0, [r4, #0x48]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #0xb
	strb r0, [r1]
	ldr r5, _0801B534 @ =gLinkEntity
	str r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x86
	strh r2, [r0]
	ldrb r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B518
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	bics r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_0801B518:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801B538
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x3c
	b _0801B540
	.align 2, 0
_0801B52C: .4byte gUnk_03003F80
_0801B530: .4byte gUnk_081271CC
_0801B534: .4byte gLinkEntity
_0801B538:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x1e
_0801B540:
	strb r0, [r4, #0xe]
	ldrb r1, [r3, #0xd]
	movs r0, #0xd
	ldrsb r0, [r3, r0]
	cmp r0, #0
	blt _0801B550
	strb r1, [r4, #0x15]
	b _0801B556
_0801B550:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
_0801B556:
	ldrb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801B56C
	movs r0, #1
	strb r0, [r4, #0xb]
_0801B56C:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	bl sub_0801B584
	pop {r4, r5, pc}

	thumb_func_start sub_0801B584
sub_0801B584: @ 0x0801B584
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_0801B804
	ldr r1, _0801B5F8 @ =gUnk_03003F80
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0801B5A8
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _0801B5A8
	ldr r0, [r1, #0x2c]
	cmp r0, r6
	bne _0801B5B4
	ldr r0, _0801B5FC @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	beq _0801B5B8
_0801B5A8:
	ldr r1, _0801B5F8 @ =gUnk_03003F80
	ldr r0, [r1, #0x2c]
	cmp r0, r6
	bne _0801B5B4
	movs r0, #0
	str r0, [r1, #0x2c]
_0801B5B4:
	bl sub_0805E780
_0801B5B8:
	ldr r7, _0801B5FC @ =gLinkEntity
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r3, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B600
	adds r0, r6, #0
	adds r0, #0x68
	ldrb r0, [r0]
	movs r2, #0
	cmp r0, #0xc
	bne _0801B5D8
	movs r2, #6
_0801B5D8:
	lsrs r0, r1, #4
	adds r1, r0, r2
	ldrb r0, [r6, #0x1e]
	cmp r0, r1
	beq _0801B5EE
	strb r1, [r6, #0x1e]
	ldrb r1, [r6, #0x1e]
	ldrh r2, [r6, #0x12]
	adds r0, r6, #0
	bl sub_080042D0
_0801B5EE:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08078E84
	b _0801B674
	.align 2, 0
_0801B5F8: .4byte gUnk_03003F80
_0801B5FC: .4byte gLinkEntity
_0801B600:
	movs r5, #0
	movs r0, #2
	strb r0, [r6, #0xc]
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0xd5
	strh r0, [r1]
	ldrb r0, [r6, #0x10]
	movs r4, #0x80
	orrs r0, r4
	strb r0, [r6, #0x10]
	subs r1, #0x24
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r2, r6, #0
	adds r2, #0x3b
	strb r0, [r2]
	movs r0, #0xa6
	strh r0, [r6, #0x12]
	ldrb r1, [r6, #0x18]
	subs r0, #0xe7
	ands r0, r1
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r6, #0x18]
	ldrb r1, [r6, #0x14]
	lsrs r1, r1, #1
	lsls r1, r1, #1
	ldr r2, _0801B678 @ =gUnk_080B7826
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r6, #0x2e]
	adds r0, r0, r3
	strh r0, [r6, #0x2e]
	adds r1, #1
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r6, #0x32]
	adds r0, r0, r1
	strh r0, [r6, #0x32]
	adds r0, r6, #0
	movs r1, #0
	bl sub_08004260
	ldr r0, _0801B67C @ =gUnk_03003F80
	str r5, [r0, #0x2c]
	ldrb r1, [r0, #4]
	orrs r4, r1
	strb r4, [r0, #4]
_0801B674:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801B678: .4byte gUnk_080B7826
_0801B67C: .4byte gUnk_03003F80

	thumb_func_start sub_0801B680
sub_0801B680: @ 0x0801B680
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0801B804
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801B6DC
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801B6DC
	ldr r3, _0801B6C4 @ =gUnk_03003F80
	ldrb r1, [r3, #0xd]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801B6DC
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	ldrb r1, [r3, #0xd]
	subs r0, r0, r1
	movs r3, #0x1f
	ands r0, r3
	cmp r0, #0x10
	ble _0801B6C8
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	adds r0, #0x40
	b _0801B6D0
	.align 2, 0
_0801B6C4: .4byte gUnk_03003F80
_0801B6C8:
	adds r1, r4, #0
	adds r1, #0x82
	ldrh r0, [r1]
	subs r0, #0x40
_0801B6D0:
	strh r0, [r1]
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	strb r0, [r4, #0x15]
_0801B6DC:
	adds r0, r4, #0
	bl sub_0806F69C
	movs r5, #0
	adds r0, r4, #0
	bl sub_0801B864
	cmp r0, #0
	beq _0801B6FE
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	movs r0, #0xc
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
_0801B6FE:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0801B780 @ =gUnk_03000BF0
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _0801B784 @ =gLinkEntity
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x80
	bl sub_080002F0
	cmp r0, #0
	bne _0801B73C
	cmp r5, #0
	bne _0801B790
	ldr r1, _0801B788 @ =gUnk_08003E44
	adds r0, r4, #0
	bl sub_080040E2
	adds r5, r0, #0
_0801B73C:
	cmp r5, #0
	bne _0801B790
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _0801B754
	ldrh r0, [r4, #0x24]
	subs r0, #0x10
	strh r0, [r4, #0x24]
_0801B754:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0801B75C
	movs r5, #1
_0801B75C:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B76C
	movs r5, #1
_0801B76C:
	cmp r5, #0
	beq _0801B7A4
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0801B78C
	movs r0, #0x1e
	b _0801B792
	.align 2, 0
_0801B780: .4byte gUnk_03000BF0
_0801B784: .4byte gLinkEntity
_0801B788: .4byte gUnk_08003E44
_0801B78C:
	movs r0, #0xc
	b _0801B792
_0801B790:
	movs r0, #1
_0801B792:
	strb r0, [r4, #0xe]
	cmp r5, #0
	beq _0801B7A4
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_0801B7A4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801B7A8
sub_0801B7A8: @ 0x0801B7A8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0801B804
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0801B7BC
	subs r0, #1
	strb r0, [r5, #0xe]
	b _0801B7FA
_0801B7BC:
	adds r0, r5, #0
	bl sub_0801B864
	ldrh r2, [r5, #0x24]
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldr r0, _0801B7FC @ =0x0000027F
	cmp r1, r0
	bgt _0801B7D4
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r5, #0x24]
_0801B7D4:
	ldr r4, _0801B800 @ =gLinkEntity
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080045C4
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F69C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #2
	bl sub_0800419C
	cmp r0, #0
	beq _0801B7FA
	bl sub_0805E780
_0801B7FA:
	pop {r4, r5, pc}
	.align 2, 0
_0801B7FC: .4byte 0x0000027F
_0801B800: .4byte gLinkEntity

	thumb_func_start sub_0801B804
sub_0801B804: @ 0x0801B804
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xc
	bl sub_0805436C
	cmp r0, #1
	beq _0801B820
	cmp r0, #1
	blo _0801B81C
	cmp r0, #2
	beq _0801B824
	b _0801B826
_0801B81C:
	movs r4, #1
	b _0801B826
_0801B820:
	movs r4, #2
	b _0801B826
_0801B824:
	movs r4, #0
_0801B826:
	ldr r3, _0801B850 @ =gUnk_03003F80
	adds r0, r3, #0
	adds r0, #0x90
	ldrh r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _0801B854
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	ldrb r2, [r3, #0xa]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	ands r1, r0
	strb r1, [r3, #0xb]
	b _0801B862
	.align 2, 0
_0801B850: .4byte gUnk_03003F80
_0801B854:
	ldrb r1, [r3, #0xa]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r3, #0xa]
	ldrb r1, [r3, #0xb]
	orrs r0, r1
	strb r0, [r3, #0xb]
_0801B862:
	pop {r4, r5, pc}

	thumb_func_start sub_0801B864
sub_0801B864: @ 0x0801B864
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0801B874
	adds r0, r4, #0
	bl sub_0800451C
_0801B874:
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	lsls r0, r0, #1
	ldr r3, _0801B894 @ =gUnk_080B782E
	adds r1, r0, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08008782
	pop {r4, pc}
	.align 2, 0
_0801B894: .4byte gUnk_080B782E

	thumb_func_start sub_0801B898
sub_0801B898: @ 0x0801B898
	push {lr}
	ldr r2, _0801B8AC @ =gUnk_080B7840
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801B8AC: .4byte gUnk_080B7840

	thumb_func_start sub_0801B8B0
sub_0801B8B0: @ 0x0801B8B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0801B8F0 @ =gUnk_03003F80
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _0801B8F4
	str r4, [r1, #0x2c]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3b
	movs r0, #8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_08079BD8
	adds r0, r4, #0
	bl sub_0801766C
	adds r0, r4, #0
	bl sub_0801B8FC
	b _0801B8F8
	.align 2, 0
_0801B8F0: .4byte gUnk_03003F80
_0801B8F4:
	bl sub_0805E780
_0801B8F8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801B8FC
sub_0801B8FC: @ 0x0801B8FC
	push {lr}
	ldr r1, _0801B90C @ =gUnk_03003F80
	ldr r2, [r1, #0x2c]
	cmp r2, r0
	beq _0801B910
	bl sub_0805E780
	b _0801B934
	.align 2, 0
_0801B90C: .4byte gUnk_03003F80
_0801B910:
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _0801B91E
	str r0, [r1, #0x2c]
	bl sub_0805E780
	b _0801B934
_0801B91E:
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x3c
	movs r0, #0x21
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_0801B938
_0801B934:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801B938
sub_0801B938: @ 0x0801B938
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801B960
	ldr r3, _0801B95C @ =gLinkEntity
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	subs r0, #0x42
	b _0801B96E
	.align 2, 0
_0801B95C: .4byte gLinkEntity
_0801B960:
	ldr r3, _0801B998 @ =gLinkEntity
	ldrb r0, [r3, #0x18]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
_0801B96E:
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r0, #0x68
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0801B99C
	ldrb r0, [r3, #0x1e]
	adds r0, #0x2e
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
	b _0801B9A0
	.align 2, 0
_0801B998: .4byte gLinkEntity
_0801B99C:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
_0801B9A0:
	ldrb r3, [r4, #0x14]
	lsrs r3, r3, #1
	lsls r0, r3, #3
	ldr r1, _0801B9E0 @ =gUnk_080B7850
	adds r0, r0, r1
	str r0, [r4, #0x48]
	lsls r3, r3, #1
	ldr r0, _0801B9E4 @ =gUnk_080B7848
	adds r3, r3, r0
	ldr r0, _0801B9E8 @ =gUnk_03003F80
	adds r0, #0xac
	ldrh r0, [r0]
	movs r1, #8
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsrs r1, r1, #0x1f
	movs r2, #0
	ldrsb r2, [r3, r2]
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r0, r4, #0
	bl sub_08008782
	ldr r1, _0801B9EC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_08078E84
	pop {r4, pc}
	.align 2, 0
_0801B9E0: .4byte gUnk_080B7850
_0801B9E4: .4byte gUnk_080B7848
_0801B9E8: .4byte gUnk_03003F80
_0801B9EC: .4byte gLinkEntity

	thumb_func_start sub_0801B9F0
sub_0801B9F0: @ 0x0801B9F0
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	bl sub_08017744
	pop {pc}

	thumb_func_start sub_0801BA00
sub_0801BA00: @ 0x0801BA00
	push {lr}
	ldr r2, _0801BA14 @ =gUnk_080B7870
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801BA14: .4byte gUnk_080B7870

	thumb_func_start sub_0801BA18
sub_0801BA18: @ 0x0801BA18
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x68
	ldrb r0, [r1]
	cmp r0, #0x36
	bne _0801BA2A
	movs r0, #0x36
	b _0801BA34
_0801BA2A:
	ldrb r1, [r1]
	ldr r0, _0801BA4C @ =gUnk_02002A40
	adds r0, r0, r1
	adds r0, #0x9a
	ldrb r0, [r0]
_0801BA34:
	adds r1, r4, #0
	adds r1, #0x6f
	strb r0, [r1]
	subs r0, #0x20
	cmp r0, #0x11
	bhi _0801BB02
	lsls r0, r0, #2
	ldr r1, _0801BA50 @ =_0801BA54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BA4C: .4byte gUnk_02002A40
_0801BA50: .4byte _0801BA54
_0801BA54: @ jump table
	.4byte _0801BA9C @ case 0
	.4byte _0801BAF8 @ case 1
	.4byte _0801BAF8 @ case 2
	.4byte _0801BAF8 @ case 3
	.4byte _0801BAF8 @ case 4
	.4byte _0801BAF8 @ case 5
	.4byte _0801BB02 @ case 6
	.4byte _0801BB02 @ case 7
	.4byte _0801BB02 @ case 8
	.4byte _0801BAF8 @ case 9
	.4byte _0801BAF8 @ case 10
	.4byte _0801BAF8 @ case 11
	.4byte _0801BAF8 @ case 12
	.4byte _0801BAF8 @ case 13
	.4byte _0801BAF8 @ case 14
	.4byte _0801BB02 @ case 15
	.4byte _0801BB02 @ case 16
	.4byte _0801BB02 @ case 17
_0801BA9C:
	adds r0, r4, #0
	bl sub_0806FBD8
	cmp r0, #0
	beq _0801BB26
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r1, _0801BAF4 @ =gLinkEntity
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	movs r2, #0x20
	adds r3, r4, #0
	adds r3, #0x3c
	orrs r0, r2
	strb r0, [r3]
	adds r1, #0x3b
	ldrb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x3b
	strb r0, [r1]
	adds r1, #5
	movs r0, #0x1f
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #0xa]
	movs r0, #0x20
	strb r0, [r4, #0xb]
	movs r0, #0x52
	strb r0, [r4, #0xe]
	movs r0, #0x1b
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0801766C
	movs r0, #0xee
	lsls r0, r0, #1
	bl sub_080A3268
	b _0801BB0A
	.align 2, 0
_0801BAF4: .4byte gLinkEntity
_0801BAF8:
	movs r0, #0xd5
	strb r0, [r4, #0xe]
	movs r0, #0x3c
	strb r0, [r4, #0xf]
	b _0801BB0A
_0801BB02:
	movs r1, #0
	movs r0, #0x37
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
_0801BB0A:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldr r0, _0801BB28 @ =gUnk_03003F80
	str r4, [r0, #0x2c]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	adds r0, r4, #0
	bl sub_0801BB2C
_0801BB26:
	pop {r4, pc}
	.align 2, 0
_0801BB28: .4byte gUnk_03003F80

	thumb_func_start sub_0801BB2C
sub_0801BB2C: @ 0x0801BB2C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0801BB88 @ =gUnk_03003F80
	ldr r0, [r0, #0x2c]
	cmp r0, r5
	beq _0801BB68
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _0801BB64
	ldrb r0, [r5, #0xb]
	cmp r0, #0x20
	beq _0801BB64
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r4, [r0]
	subs r4, #0x1c
	ldrb r0, [r5, #0xb]
	adds r1, r4, #0
	bl sub_08054464
	ldrb r0, [r5, #0xb]
	adds r1, r4, #0
	movs r2, #5
	bl sub_080A7C18
	ldr r0, _0801BB8C @ =0x00000109
	bl sub_080A3268
_0801BB64:
	bl sub_0805E780
_0801BB68:
	ldr r1, _0801BB90 @ =gLinkEntity
	adds r0, r5, #0
	bl sub_0801BDE8
	adds r0, r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	subs r0, #0x20
	cmp r0, #0x11
	bhi _0801BC04
	lsls r0, r0, #2
	ldr r1, _0801BB94 @ =_0801BB98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BB88: .4byte gUnk_03003F80
_0801BB8C: .4byte 0x00000109
_0801BB90: .4byte gLinkEntity
_0801BB94: .4byte _0801BB98
_0801BB98: @ jump table
	.4byte _0801BBE0 @ case 0
	.4byte _0801BBE8 @ case 1
	.4byte _0801BBE8 @ case 2
	.4byte _0801BBE8 @ case 3
	.4byte _0801BBE8 @ case 4
	.4byte _0801BBE8 @ case 5
	.4byte _0801BC04 @ case 6
	.4byte _0801BC04 @ case 7
	.4byte _0801BC04 @ case 8
	.4byte _0801BBE8 @ case 9
	.4byte _0801BBE8 @ case 10
	.4byte _0801BBE8 @ case 11
	.4byte _0801BBE8 @ case 12
	.4byte _0801BBE8 @ case 13
	.4byte _0801BBE8 @ case 14
	.4byte _0801BC04 @ case 15
	.4byte _0801BC04 @ case 16
	.4byte _0801BC04 @ case 17
_0801BBE0:
	adds r0, r5, #0
	bl sub_0801BC0C
	b _0801BC0A
_0801BBE8:
	ldr r0, _0801BC00 @ =gLinkEntity
	adds r1, r0, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #1
	bne _0801BC0A
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0801BC14
	b _0801BC0A
	.align 2, 0
_0801BC00: .4byte gLinkEntity
_0801BC04:
	adds r0, r5, #0
	bl sub_0801BCB4
_0801BC0A:
	pop {r4, r5, pc}

	thumb_func_start sub_0801BC0C
sub_0801BC0C: @ 0x0801BC0C
	push {lr}
	bl sub_0801BE38
	pop {pc}

	thumb_func_start sub_0801BC14
sub_0801BC14: @ 0x0801BC14
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0x20
	movs r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	subs r0, #0x21
	cmp r0, #0xd
	bhi _0801BC98
	lsls r0, r0, #2
	ldr r1, _0801BC30 @ =_0801BC34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BC30: .4byte _0801BC34
_0801BC34: @ jump table
	.4byte _0801BC76 @ case 0
	.4byte _0801BC6C @ case 1
	.4byte _0801BC6E @ case 2
	.4byte _0801BC76 @ case 3
	.4byte _0801BC72 @ case 4
	.4byte _0801BC98 @ case 5
	.4byte _0801BC98 @ case 6
	.4byte _0801BC98 @ case 7
	.4byte _0801BC7A @ case 8
	.4byte _0801BC7A @ case 9
	.4byte _0801BC7A @ case 10
	.4byte _0801BC7A @ case 11
	.4byte _0801BC7A @ case 12
	.4byte _0801BC7A @ case 13
_0801BC6C:
	movs r6, #0x23
_0801BC6E:
	movs r5, #0x28
	b _0801BC98
_0801BC72:
	movs r5, #0x50
	b _0801BC98
_0801BC76:
	movs r5, #0xa0
	b _0801BC98
_0801BC7A:
	ldr r1, _0801BCB0 @ =gUnk_02002A40
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0xb3
	strb r0, [r2]
	adds r1, #0xc6
	movs r0, #0xe1
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #2
	bl sub_080A3268
_0801BC98:
	adds r0, r5, #0
	bl sub_080526A0
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	subs r1, #0x1c
	adds r0, r6, #0
	bl sub_08054464
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801BCB0: .4byte gUnk_02002A40

	thumb_func_start sub_0801BCB4
sub_0801BCB4: @ 0x0801BCB4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0801BCEC @ =gLinkEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801BD6C
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x36
	beq _0801BCDA
	subs r0, #7
	ldrb r1, [r0]
	subs r1, #0x1c
	movs r0, #0x20
	bl sub_08054464
_0801BCDA:
	ldrb r0, [r5]
	subs r0, #0x26
	cmp r0, #0xb
	bhi _0801BD6C
	lsls r0, r0, #2
	ldr r1, _0801BCF0 @ =_0801BCF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BCEC: .4byte gLinkEntity
_0801BCF0: .4byte _0801BCF4
_0801BCF4: @ jump table
	.4byte _0801BD24 @ case 0
	.4byte _0801BD32 @ case 1
	.4byte _0801BD40 @ case 2
	.4byte _0801BD6C @ case 3
	.4byte _0801BD6C @ case 4
	.4byte _0801BD6C @ case 5
	.4byte _0801BD6C @ case 6
	.4byte _0801BD6C @ case 7
	.4byte _0801BD6C @ case 8
	.4byte _0801BD54 @ case 9
	.4byte _0801BD54 @ case 10
	.4byte _0801BD54 @ case 11
_0801BD24:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
	b _0801BD6C
_0801BD32:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #1
	movs r3, #1
	bl sub_080A2988
	b _0801BD6C
_0801BD40:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #2
	movs r3, #2
	bl sub_080A2988
	movs r0, #0x20
	bl sub_080526A0
	b _0801BD6C
_0801BD54:
	ldr r1, _0801BD88 @ =gUnk_02002A40
	ldrb r0, [r5]
	adds r2, r1, #0
	adds r2, #0xb2
	strb r0, [r2]
	adds r1, #0xc4
	movs r0, #0xe1
	lsls r0, r0, #4
	strh r0, [r1]
	ldr r0, _0801BD8C @ =0x000001CF
	bl sub_080A3268
_0801BD6C:
	ldr r0, _0801BD90 @ =gLinkEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801BDAE
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0x26
	beq _0801BD94
	cmp r0, #0x27
	beq _0801BDA2
	b _0801BDAE
	.align 2, 0
_0801BD88: .4byte gUnk_02002A40
_0801BD8C: .4byte 0x000001CF
_0801BD90: .4byte gLinkEntity
_0801BD94:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
	b _0801BDAE
_0801BDA2:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #1
	movs r3, #1
	bl sub_080A2988
_0801BDAE:
	ldr r0, _0801BDC8 @ =gLinkEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #3
	bne _0801BDE6
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0x26
	beq _0801BDCC
	cmp r0, #0x27
	beq _0801BDDA
	b _0801BDE6
	.align 2, 0
_0801BDC8: .4byte gLinkEntity
_0801BDCC:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0
	movs r3, #0
	bl sub_080A2988
	b _0801BDE6
_0801BDDA:
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #1
	movs r3, #0
	bl sub_080A2988
_0801BDE6:
	pop {r4, r5, pc}

	thumb_func_start sub_0801BDE8
sub_0801BDE8: @ 0x0801BDE8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x1e]
	ldrb r1, [r4, #0xe]
	subs r0, r0, r1
	ldrb r1, [r4, #0xf]
	adds r0, r0, r1
	ldrb r1, [r4, #0x1e]
	cmp r0, r1
	beq _0801BE0A
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_0801BE0A:
	ldrb r1, [r5, #0x18]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	movs r2, #1
	ands r0, r2
	eors r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r1, _0801BE34 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_08078E84
	pop {r4, r5, pc}
	.align 2, 0
_0801BE34: .4byte gLinkEntity

	thumb_func_start sub_0801BE38
sub_0801BE38: @ 0x0801BE38
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r0, [r2]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x49
	beq _0801BE54
	cmp r1, #0x4d
	beq _0801BE60
	movs r0, #0
	strb r0, [r2]
	b _0801BE6A
_0801BE54:
	movs r0, #0x28
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0801B9F0
	b _0801BE6A
_0801BE60:
	movs r0, #0x27
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_0801B9F0
_0801BE6A:
	ldrb r0, [r4, #0x1e]
	subs r0, #0x1b
	lsls r0, r0, #2
	ldr r1, _0801BE84 @ =gUnk_080B788A
	adds r2, r0, r1
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0801BE88
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	rsbs r0, r0, #0
	b _0801BE8C
	.align 2, 0
_0801BE84: .4byte gUnk_080B788A
_0801BE88:
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
_0801BE8C:
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #1]
	strb r0, [r1, #1]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #2]
	strb r0, [r1, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #3]
	strb r0, [r1, #7]
	ldr r0, _0801BEF0 @ =gLinkEntity
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _0801BEDE
	ldrb r0, [r4, #0xb]
	cmp r0, #0x20
	bne _0801BEE4
	subs r0, r1, #1
	lsls r0, r0, #1
	ldr r1, _0801BEF4 @ =gUnk_080B7878
	adds r2, r0, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0801BECA
	rsbs r1, r1, #0
_0801BECA:
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_080002B4
	cmp r0, #0x10
	bne _0801BEDE
	movs r0, #0x26
	strb r0, [r4, #0xb]
_0801BEDE:
	ldrb r0, [r4, #0xb]
	cmp r0, #0x20
	beq _0801BEEE
_0801BEE4:
	ldr r2, _0801BEF0 @ =gLinkEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_0801BEEE:
	pop {r4, pc}
	.align 2, 0
_0801BEF0: .4byte gLinkEntity
_0801BEF4: .4byte gUnk_080B7878

	thumb_func_start sub_0801BEF8
sub_0801BEF8: @ 0x0801BEF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r7, _0801BFF0 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	bne _0801BF62
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldr r5, _0801BFF4 @ =gUnk_080B7B6C
	ldrb r1, [r7, #0x14]
	movs r2, #0xe
	ands r2, r1
	adds r1, r2, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r4, _0801BFF8 @ =gUnk_03000BF0
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r7, r6]
	adds r2, #1
	adds r2, r2, r5
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	mov r1, r8
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002B0
	mov r1, r8
	adds r1, #0x6c
	strh r0, [r1]
	mov r1, r8
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
_0801BF62:
	ldr r2, _0801BFFC @ =gUnk_03003F80
	mov sb, r2
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r6, _0801C000 @ =gUnk_03000FF0
	ldrh r1, [r6]
	movs r3, #0x80
	lsls r3, r3, #1
	mov sl, r3
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C074
	ldrh r1, [r6, #2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0801BFDA
	movs r4, #0x2e
	ldrsh r0, [r7, r4]
	ldr r5, _0801BFF4 @ =gUnk_080B7B6C
	mov sb, r5
	ldrb r1, [r7, #0x14]
	movs r2, #0xe
	ands r2, r1
	adds r1, r2, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r4, _0801BFF8 @ =gUnk_03000BF0
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r7, r5]
	adds r2, #1
	add r2, sb
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	mov r1, r8
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002B0
	mov r1, r8
	adds r1, #0x6c
	strh r0, [r1]
_0801BFDA:
	ldrh r3, [r6]
	mov r0, sl
	ands r0, r3
	adds r4, r3, #0
	cmp r0, #0
	beq _0801C004
	adds r1, r7, #0
	adds r1, #0x3d
	movs r0, #2
	strb r0, [r1]
	b _0801C0D4
	.align 2, 0
_0801BFF0: .4byte gLinkEntity
_0801BFF4: .4byte gUnk_080B7B6C
_0801BFF8: .4byte gUnk_03000BF0
_0801BFFC: .4byte gUnk_03003F80
_0801C000: .4byte gUnk_03000FF0
_0801C004:
	ldrh r2, [r6, #2]
	movs r6, #0x10
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	beq _0801C01A
	mov r1, r8
	adds r1, #0x6c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
_0801C01A:
	movs r5, #0x20
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _0801C02E
	mov r1, r8
	adds r1, #0x6c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0801C02E:
	movs r0, #0x30
	ands r0, r4
	cmp r0, #0
	beq _0801C06E
	mov r1, r8
	ldrb r0, [r1, #0xf]
	adds r0, #1
	strb r0, [r1, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0801C0D4
	movs r0, #0x1e
	strb r0, [r1, #0xf]
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _0801C05A
	adds r1, #0x6c
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
_0801C05A:
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _0801C0D4
	mov r1, r8
	adds r1, #0x6c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0801C0D4
_0801C06E:
	mov r2, r8
	strb r0, [r2, #0xf]
	b _0801C0D4
_0801C074:
	mov r0, r8
	adds r0, #0x6c
	ldrh r0, [r0]
	movs r3, #0x2e
	ldrsh r1, [r7, r3]
	ldr r4, _0801C1C8 @ =gUnk_080B7B6C
	mov sl, r4
	ldrb r2, [r7, #0x14]
	movs r3, #0xe
	ands r3, r2
	adds r2, r3, r4
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldr r5, _0801C1CC @ =gUnk_03000BF0
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r7, r6]
	adds r3, #1
	add r3, sl
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r2, r2, r3
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	mov r2, r8
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
	mov r0, sb
	ldrb r1, [r0, #0x1a]
	movs r0, #0x7f
	ands r0, r1
	mov r1, sb
	strb r0, [r1, #0x1a]
	bl sub_0805E780
_0801C0D4:
	ldr r0, _0801C1D0 @ =gUnk_03000FF0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801C1BE
	movs r2, #0x6c
	add r2, r8
	mov sb, r2
	ldrh r0, [r2]
	movs r3, #0x2e
	ldrsh r1, [r7, r3]
	ldr r6, _0801C1C8 @ =gUnk_080B7B6C
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r1, r1, r2
	ldr r5, _0801C1CC @ =gUnk_03000BF0
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	movs r3, #1
	ldrsb r3, [r6, r3]
	adds r2, r2, r3
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	movs r2, #0x38
	add r8, r2
	mov r3, r8
	ldrb r2, [r3]
	bl sub_0807B7D8
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0x2e
	ldrsh r1, [r7, r2]
	movs r2, #2
	ldrsb r2, [r6, r2]
	adds r1, r1, r2
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	movs r3, #3
	ldrsb r3, [r6, r3]
	adds r2, r2, r3
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	mov r3, r8
	ldrb r2, [r3]
	bl sub_0807B7D8
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0x2e
	ldrsh r1, [r7, r2]
	movs r2, #4
	ldrsb r2, [r6, r2]
	adds r1, r1, r2
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	movs r3, #5
	ldrsb r3, [r6, r3]
	adds r2, r2, r3
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	mov r3, r8
	ldrb r2, [r3]
	bl sub_0807B7D8
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0x2e
	ldrsh r1, [r7, r2]
	movs r2, #6
	ldrsb r2, [r6, r2]
	adds r1, r1, r2
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	movs r3, #7
	ldrsb r3, [r6, r3]
	adds r2, r2, r3
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	mov r4, r8
	ldrb r2, [r4]
	bl sub_0807B7D8
_0801C1BE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801C1C8: .4byte gUnk_080B7B6C
_0801C1CC: .4byte gUnk_03000BF0
_0801C1D0: .4byte gUnk_03000FF0

	thumb_func_start sub_0801C1D4
sub_0801C1D4: @ 0x0801C1D4
	push {r4, lr}
	movs r4, #0
_0801C1D8:
	lsls r1, r4, #5
	ldr r0, _0801C200 @ =gUnk_0200AF34
	adds r2, r1, r0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C1F8
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	ldr r1, _0801C204 @ =gUnk_080C8F8C
	adds r0, r0, r1
	ldr r1, [r0, #8]
	adds r0, r2, #0
	bl _call_via_r1
_0801C1F8:
	adds r4, #1
	cmp r4, #0x17
	bls _0801C1D8
	pop {r4, pc}
	.align 2, 0
_0801C200: .4byte gUnk_0200AF34
_0801C204: .4byte gUnk_080C8F8C

	thumb_func_start sub_0801C208
sub_0801C208: @ 0x0801C208
	push {r4, r5, lr}
	movs r5, #0
	ldr r4, _0801C250 @ =gUnk_03001010
_0801C20E:
	lsls r1, r5, #5
	ldr r0, _0801C254 @ =gUnk_0200AF34
	adds r3, r1, r0
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _0801C248
	ldrh r0, [r3, #0xc]
	strh r0, [r4]
	ldrh r0, [r3, #0xe]
	strh r0, [r4, #2]
	ldrb r2, [r3, #1]
	lsls r2, r2, #4
	ldr r0, _0801C258 @ =gUnk_080C8F8C
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r4, #4]
	ldrh r0, [r2, #2]
	strh r0, [r4, #6]
	ldrb r0, [r3, #0x18]
	lsls r0, r0, #0xc
	ldrh r1, [r3, #0x1a]
	orrs r0, r1
	strh r0, [r4, #8]
	ldrh r0, [r2, #6]
	ldrb r1, [r3, #0x10]
	bl sub_080ADA14
_0801C248:
	adds r5, #1
	cmp r5, #0x17
	bls _0801C20E
	pop {r4, r5, pc}
	.align 2, 0
_0801C250: .4byte gUnk_03001010
_0801C254: .4byte gUnk_0200AF34
_0801C258: .4byte gUnk_080C8F8C

	thumb_func_start sub_0801C25C
sub_0801C25C: @ 0x0801C25C
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r5, _0801C2E4 @ =gUnk_0200AF34
	adds r6, r5, #0
	subs r6, #0x34
	movs r7, #0xd
	rsbs r7, r7, #0
	ldr r3, _0801C2E8 @ =0x040000D4
_0801C26C:
	lsls r0, r4, #5
	adds r2, r0, r5
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _0801C2A8
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0801C2A8
	adds r0, r7, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r2, #0x1c]
	str r0, [r3]
	ldrh r0, [r2, #0x1a]
	lsls r0, r0, #5
	ldr r1, _0801C2EC @ =0x06010000
	adds r0, r0, r1
	str r0, [r3, #4]
	ldrb r0, [r2, #0x19]
	lsls r0, r0, #3
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0801C2A8:
	adds r4, #1
	cmp r4, #0x17
	ble _0801C26C
	adds r2, r6, #0
	ldrb r3, [r2, #0x13]
	movs r0, #0x13
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _0801C2C8
	movs r1, #0x7f
	ands r1, r3
	strb r1, [r2, #0x13]
	movs r0, #0x8d
	lsls r0, r0, #1
	bl sub_0801C2F0
_0801C2C8:
	ldrb r2, [r6, #0x14]
	movs r0, #0x14
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _0801C2E0
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r6, #0x14]
	movs r0, #0x93
	lsls r0, r0, #1
	bl sub_0801C2F0
_0801C2E0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801C2E4: .4byte gUnk_0200AF34
_0801C2E8: .4byte 0x040000D4
_0801C2EC: .4byte 0x06010000

	thumb_func_start sub_0801C2F0
sub_0801C2F0: @ 0x0801C2F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	lsls r5, r4, #5
	ldr r1, _0801C330 @ =0x06010000
	adds r4, r5, r1
	movs r1, #0xa
	bl Div
	cmp r0, #9
	bls _0801C308
	movs r0, #9
_0801C308:
	ldr r2, _0801C334 @ =0x040000D4
	lsls r0, r0, #5
	ldr r3, _0801C338 @ =gUnk_085C4620
	adds r0, r0, r3
	str r0, [r2]
	str r4, [r2, #4]
	ldr r4, _0801C33C @ =0x84000008
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	adds r1, #0xa
	lsls r1, r1, #5
	adds r1, r1, r3
	str r1, [r2]
	ldr r1, _0801C340 @ =0x06010020
	adds r0, r5, r1
	str r0, [r2, #4]
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	pop {r4, r5, pc}
	.align 2, 0
_0801C330: .4byte 0x06010000
_0801C334: .4byte 0x040000D4
_0801C338: .4byte gUnk_085C4620
_0801C33C: .4byte 0x84000008
_0801C340: .4byte 0x06010020

	thumb_func_start sub_0801C344
sub_0801C344: @ 0x0801C344
	push {r4, r5, lr}
	ldr r4, _0801C36C @ =gUnk_0200AF00
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	bics r0, r1
	movs r5, #0
	strb r0, [r4]
	bl sub_0801C6B0
	bl sub_0801C85C
	bl sub_0801C4B0
	bl sub_0801C99C
	strb r5, [r4]
	bl sub_0801C1D4
	pop {r4, r5, pc}
	.align 2, 0
_0801C36C: .4byte gUnk_0200AF00

	thumb_func_start sub_0801C370
sub_0801C370: @ 0x0801C370
	push {r4, r5, r6, lr}
	cmp r0, #0
	bne _0801C390
	ldr r0, _0801C388 @ =gUnk_02002A40
	adds r1, r0, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsrs r6, r1, #1
	adds r0, #0xc0
	ldrh r4, [r0]
	ldr r5, _0801C38C @ =gUnk_0200AF00
	b _0801C398
	.align 2, 0
_0801C388: .4byte gUnk_02002A40
_0801C38C: .4byte gUnk_0200AF00
_0801C390:
	ldr r0, _0801C470 @ =gUnk_0200AF00
	ldrb r6, [r0, #3]
	ldrh r4, [r0, #0xe]
	adds r5, r0, #0
_0801C398:
	movs r1, #0xcd
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_0801D630
	strb r6, [r5, #3]
	strh r4, [r5, #0xe]
	ldr r0, _0801C474 @ =gUnk_02002A40
	adds r0, #0xab
	ldrb r0, [r0]
	lsrs r0, r0, #1
	strb r0, [r5, #4]
	movs r0, #0xc
	bl sub_0801D714
	movs r0, #0x10
	bl sub_0801D7EC
	ldr r4, _0801C478 @ =gUnk_02034CB0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r4, #0
	bl sub_0801D630
	ldr r1, _0801C47C @ =gUnk_03000F50
	str r4, [r1, #0x10]
	ldr r0, _0801C480 @ =0x00001F0C
	strh r0, [r1, #8]
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _0801C484 @ =gUnk_03000000
	ldr r2, _0801C488 @ =0x00000427
	adds r0, r1, r2
	movs r2, #1
	strb r2, [r0]
	ldr r3, _0801C48C @ =0x00000426
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _0801C490 @ =0x0000042E
	adds r1, r1, r0
	strb r2, [r1]
	movs r0, #0x7f
	strb r0, [r5, #0x13]
	strb r0, [r5, #0x14]
	strb r0, [r5, #8]
	bl sub_0801C6B0
	bl sub_0801C4B0
	bl sub_0801C85C
	bl sub_0801C99C
	movs r0, #0xd0
	strh r0, [r5, #0x16]
	movs r0, #0xb8
	strh r0, [r5, #0x18]
	movs r0, #0xd8
	strh r0, [r5, #0x1a]
	movs r0, #0x1c
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x1e]
	movs r0, #0xe
	strh r0, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #0xc0
	lsls r1, r1, #2
	bl sub_0801D630
	movs r0, #5
	movs r1, #9
	bl sub_0801CA6C
	movs r0, #3
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #4
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #2
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #1
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #0
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #7
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #6
	movs r1, #0
	bl sub_0801CA6C
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801C470: .4byte gUnk_0200AF00
_0801C474: .4byte gUnk_02002A40
_0801C478: .4byte gUnk_02034CB0
_0801C47C: .4byte gUnk_03000F50
_0801C480: .4byte 0x00001F0C
_0801C484: .4byte gUnk_03000000
_0801C488: .4byte 0x00000427
_0801C48C: .4byte 0x00000426
_0801C490: .4byte 0x0000042E

	thumb_func_start sub_0801C494
sub_0801C494: @ 0x0801C494
	ldr r1, _0801C49C @ =gUnk_03000F50
	movs r0, #1
	strh r0, [r1, #0xe]
	bx lr
	.align 2, 0
_0801C49C: .4byte gUnk_03000F50

	thumb_func_start sub_0801C4A0
sub_0801C4A0: @ 0x0801C4A0
	ldr r1, _0801C4AC @ =gUnk_0200AF00
	movs r0, #0
	strb r0, [r1, #2]
	strb r0, [r1, #0x10]
	strb r0, [r1, #0xa]
	bx lr
	.align 2, 0
_0801C4AC: .4byte gUnk_0200AF00

	thumb_func_start sub_0801C4B0
sub_0801C4B0: @ 0x0801C4B0
	push {r4, r5, r6, lr}
	ldr r2, _0801C4F0 @ =gUnk_0200AF00
	ldrb r1, [r2, #1]
	movs r0, #0x40
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0801C4FC
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _0801C4C8
	b _0801C5D0
_0801C4C8:
	movs r0, #0
	strb r0, [r6, #0xa]
	ldr r3, _0801C4F4 @ =gUnk_02035160
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	strh r0, [r3, #8]
	adds r4, r3, #0
	adds r4, #0x40
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	ldr r1, _0801C4F8 @ =gUnk_03000F50
	movs r0, #1
	strh r0, [r1, #0xe]
	b _0801C5D0
	.align 2, 0
_0801C4F0: .4byte gUnk_0200AF00
_0801C4F4: .4byte gUnk_02035160
_0801C4F8: .4byte gUnk_03000F50
_0801C4FC:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _0801C560
	movs r0, #2
	strb r0, [r6, #0xa]
	ldr r3, _0801C54C @ =gUnk_02035160
	adds r4, r3, #0
	adds r4, #0x40
	ldr r1, _0801C550 @ =gUnk_080FD590
	ldr r2, _0801C554 @ =gUnk_02002A40
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	strh r1, [r3]
	adds r0, r1, #1
	strh r0, [r3, #2]
	adds r0, r1, #2
	strh r0, [r4]
	adds r0, r1, #3
	strh r0, [r4, #2]
	ldr r1, _0801C558 @ =0x0000F070
	strh r1, [r3, #4]
	adds r0, r1, #1
	strh r0, [r4, #4]
	adds r0, r1, #2
	strh r0, [r3, #6]
	adds r0, r1, #3
	strh r0, [r4, #6]
	adds r0, r1, #4
	strh r0, [r3, #8]
	adds r0, r1, #5
	strh r0, [r4, #8]
	ldr r1, _0801C55C @ =gUnk_03000F50
	movs r0, #1
	strh r0, [r1, #0xe]
	movs r4, #1
	b _0801C564
	.align 2, 0
_0801C54C: .4byte gUnk_02035160
_0801C550: .4byte gUnk_080FD590
_0801C554: .4byte gUnk_02002A40
_0801C558: .4byte 0x0000F070
_0801C55C: .4byte gUnk_03000F50
_0801C560:
	movs r4, #0
	ldr r2, _0801C580 @ =gUnk_02002A40
_0801C564:
	adds r5, r6, #0
	adds r0, r2, #0
	adds r0, #0xc0
	ldrh r1, [r5, #0xe]
	adds r3, r1, #0
	ldrh r0, [r0]
	cmp r3, r0
	beq _0801C58A
	cmp r3, r0
	bhs _0801C584
	adds r0, r1, #1
	strh r0, [r5, #0xe]
	b _0801C588
	.align 2, 0
_0801C580: .4byte gUnk_02002A40
_0801C584:
	subs r0, r1, #1
	strh r0, [r6, #0xe]
_0801C588:
	movs r4, #2
_0801C58A:
	cmp r4, #1
	beq _0801C5A4
	cmp r4, #2
	bne _0801C5CC
	ldr r0, _0801C5D4 @ =gUnk_0200AF00
	ldrb r0, [r0, #0xc]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0801C5A4
	movs r0, #0x6f
	bl sub_080A3268
_0801C5A4:
	ldr r4, _0801C5D4 @ =gUnk_0200AF00
	ldrh r3, [r4, #0xe]
	movs r2, #0
	ldr r1, _0801C5D8 @ =gUnk_080FD590
	ldr r0, _0801C5DC @ =gUnk_02002A40
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bhi _0801C5BE
	movs r2, #1
_0801C5BE:
	movs r0, #0x70
	adds r1, r3, #0
	movs r3, #3
	bl sub_0801C5E0
	ldrb r0, [r4, #0xc]
	adds r4, r0, #1
_0801C5CC:
	ldr r0, _0801C5D4 @ =gUnk_0200AF00
	strb r4, [r0, #0xc]
_0801C5D0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801C5D4: .4byte gUnk_0200AF00
_0801C5D8: .4byte gUnk_080FD590
_0801C5DC: .4byte gUnk_02002A40

	thumb_func_start sub_0801C5E0
sub_0801C5E0: @ 0x0801C5E0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r7, _0801C650 @ =gUnk_085C4B20
	cmp r2, #0
	bne _0801C5F0
	ldr r0, _0801C654 @ =0xFFFFFD80
	adds r7, r7, r0
_0801C5F0:
	ldr r0, _0801C658 @ =0x000003FF
	ands r0, r4
	lsls r6, r0, #5
	ldr r0, _0801C65C @ =0x0600C000
	adds r4, r6, r0
	cmp r3, #2
	beq _0801C620
	cmp r3, #3
	bne _0801C63C
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	adds r5, r1, #0
	ldr r1, _0801C660 @ =0x040000D4
	lsls r0, r0, #6
	adds r0, r7, r0
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0801C664 @ =0x84000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801C668 @ =0x0600C040
	adds r4, r6, r0
_0801C620:
	adds r0, r5, #0
	movs r1, #0xa
	bl Div
	adds r5, r1, #0
	ldr r1, _0801C660 @ =0x040000D4
	lsls r0, r0, #6
	adds r0, r7, r0
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0801C664 @ =0x84000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, #0x40
_0801C63C:
	ldr r1, _0801C660 @ =0x040000D4
	lsls r0, r5, #6
	adds r0, r7, r0
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0801C664 @ =0x84000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801C650: .4byte gUnk_085C4B20
_0801C654: .4byte 0xFFFFFD80
_0801C658: .4byte 0x000003FF
_0801C65C: .4byte 0x0600C000
_0801C660: .4byte 0x040000D4
_0801C664: .4byte 0x84000010
_0801C668: .4byte 0x0600C040

	thumb_func_start sub_0801C66C
sub_0801C66C: @ 0x0801C66C
	push {lr}
	ldr r1, _0801C6A4 @ =gUnk_0200AF00
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0801C6A2
	movs r0, #0
	strb r0, [r1, #2]
	ldrb r0, [r1, #4]
	movs r2, #1
	cmp r0, #0x28
	bls _0801C684
	movs r2, #2
_0801C684:
	ldr r0, _0801C6A8 @ =gUnk_02034CF0
	ldr r3, _0801C6AC @ =gUnk_03000F50
	movs r1, #0
_0801C68A:
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	adds r0, #0x40
	subs r2, #1
	cmp r2, #0
	bgt _0801C68A
	movs r0, #1
	strh r0, [r3, #0xe]
_0801C6A2:
	pop {pc}
	.align 2, 0
_0801C6A4: .4byte gUnk_0200AF00
_0801C6A8: .4byte gUnk_02034CF0
_0801C6AC: .4byte gUnk_03000F50

	thumb_func_start sub_0801C6B0
sub_0801C6B0: @ 0x0801C6B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0801C6CC @ =gUnk_0200AF00
	ldrb r1, [r2, #1]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C6D0
	bl sub_0801C824
	bl sub_0801C66C
	b _0801C802
	.align 2, 0
_0801C6CC: .4byte gUnk_0200AF00
_0801C6D0:
	ldr r5, _0801C6F8 @ =gUnk_02002A40
	adds r0, r5, #0
	adds r0, #0xab
	ldrb r0, [r0]
	lsrs r4, r0, #1
	ldrb r0, [r2, #4]
	cmp r4, r0
	beq _0801C6EA
	strb r4, [r2, #4]
	bl sub_0801C824
	bl sub_0801C66C
_0801C6EA:
	adds r1, r5, #0
	adds r1, #0xaa
	ldrb r0, [r1]
	cmp r0, #1
	beq _0801C6FC
	lsrs r1, r0, #1
	b _0801C6FE
	.align 2, 0
_0801C6F8: .4byte gUnk_02002A40
_0801C6FC:
	movs r1, #1
_0801C6FE:
	cmp r1, r4
	ble _0801C704
	adds r1, r4, #0
_0801C704:
	movs r4, #0
	ldr r0, _0801C748 @ =gUnk_0200AF00
	ldrb r2, [r0, #3]
	adds r7, r0, #0
	cmp r1, r2
	beq _0801C718
	movs r4, #1
	cmp r1, r2
	ble _0801C718
	movs r4, #2
_0801C718:
	cmp r4, #1
	beq _0801C750
	cmp r4, #2
	bne _0801C756
	ldrb r0, [r7, #5]
	adds r1, r0, #1
	strb r1, [r7, #5]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801C74C
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0801C740
	movs r0, #0x71
	bl sub_080A3268
_0801C740:
	ldrb r0, [r7, #3]
	adds r0, #1
	strb r0, [r7, #3]
	b _0801C75A
	.align 2, 0
_0801C748: .4byte gUnk_0200AF00
_0801C74C:
	movs r4, #0
	b _0801C75A
_0801C750:
	ldrb r0, [r7, #3]
	subs r0, #1
	strb r0, [r7, #3]
_0801C756:
	movs r0, #0
	strb r0, [r7, #5]
_0801C75A:
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _0801C764
	cmp r4, #0
	beq _0801C802
_0801C764:
	movs r0, #2
	strb r0, [r7, #2]
	ldrb r0, [r7, #3]
	lsrs r3, r0, #2
	cmp r3, #0xa
	ble _0801C77A
	movs r1, #0xa
	mov r8, r1
	adds r6, r3, #0
	subs r6, #0xa
	b _0801C77E
_0801C77A:
	mov r8, r3
	movs r6, #0
_0801C77E:
	ldrb r0, [r7, #4]
	lsrs r4, r0, #2
	adds r1, r4, #0
	cmp r4, #0xa
	ble _0801C78A
	movs r4, #0xa
_0801C78A:
	adds r2, r1, #0
	subs r2, #0xa
	ldr r0, _0801C808 @ =gUnk_080C8F2C
	mov ip, r0
	cmp r2, #0
	ble _0801C7B8
	ldr r5, _0801C80C @ =gUnk_02034D30
	ldr r1, _0801C810 @ =0x0000F010
	adds r0, r1, #0
	strh r0, [r5]
	ldr r1, _0801C814 @ =0x040000D4
	movs r0, #0xa
	subs r0, r0, r6
	lsls r0, r0, #1
	add r0, ip
	str r0, [r1]
	adds r0, r5, #2
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1, #8]
	ldr r0, [r1, #8]
_0801C7B8:
	ldr r5, _0801C818 @ =gUnk_02034CF0
	ldr r2, _0801C810 @ =0x0000F010
	adds r0, r2, #0
	strh r0, [r5]
	ldr r1, _0801C814 @ =0x040000D4
	movs r0, #0xa
	mov r2, r8
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	str r0, [r1]
	adds r0, r5, #2
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r4, r0
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r7, #3]
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0801C7FC
	cmp r3, #9
	ble _0801C7EE
	subs r3, #0xa
	adds r5, #0x40
_0801C7EE:
	lsls r0, r3, #1
	adds r0, r0, r5
	adds r1, #0x11
	ldr r3, _0801C81C @ =0xFFFFF000
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0, #2]
_0801C7FC:
	ldr r1, _0801C820 @ =gUnk_03000F50
	movs r0, #1
	strh r0, [r1, #0xe]
_0801C802:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801C808: .4byte gUnk_080C8F2C
_0801C80C: .4byte gUnk_02034D30
_0801C810: .4byte 0x0000F010
_0801C814: .4byte 0x040000D4
_0801C818: .4byte gUnk_02034CF0
_0801C81C: .4byte 0xFFFFF000
_0801C820: .4byte gUnk_03000F50

	thumb_func_start sub_0801C824
sub_0801C824: @ 0x0801C824
	push {lr}
	ldr r1, _0801C850 @ =gUnk_0200AF00
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0801C84E
	movs r2, #0
	strb r2, [r1, #6]
	ldrb r0, [r1, #4]
	ldr r1, _0801C854 @ =gUnk_02034D30
	cmp r0, #0x28
	bls _0801C83C
	adds r1, #0x40
_0801C83C:
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	ldr r1, _0801C858 @ =gUnk_03000F50
	movs r0, #1
	strh r0, [r1, #0xe]
_0801C84E:
	pop {pc}
	.align 2, 0
_0801C850: .4byte gUnk_0200AF00
_0801C854: .4byte gUnk_02034D30
_0801C858: .4byte gUnk_03000F50

	thumb_func_start sub_0801C85C
sub_0801C85C: @ 0x0801C85C
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r5, _0801C884 @ =gUnk_0200AF00
	ldrb r1, [r5, #1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0801C878
	ldr r0, _0801C888 @ =gUnk_03003F80
	adds r0, #0xa0
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
_0801C878:
	cmp r2, #0
	bne _0801C88C
	bl sub_0801C824
	b _0801C984
	.align 2, 0
_0801C884: .4byte gUnk_0200AF00
_0801C888: .4byte gUnk_03003F80
_0801C88C:
	ldrb r0, [r5, #4]
	ldr r4, _0801C92C @ =gUnk_02034D30
	cmp r0, #0x28
	bls _0801C896
	adds r4, #0x40
_0801C896:
	ldr r0, _0801C930 @ =gUnk_03003F80
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x13
	movs r1, #0x14
	bl Div
	adds r1, r0, #0
	cmp r1, #0x28
	bls _0801C8AE
	movs r1, #0x28
_0801C8AE:
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0801C8BA
	ldrb r0, [r5, #7]
	cmp r0, r1
	beq _0801C910
_0801C8BA:
	movs r6, #1
	strb r6, [r5, #6]
	strb r1, [r5, #7]
	adds r0, r1, #0
	movs r1, #4
	bl Div
	adds r3, r0, #0
	adds r5, r1, #0
	ldr r1, _0801C934 @ =0x0000F016
	adds r0, r1, #0
	strh r0, [r4]
	ldr r1, _0801C938 @ =0x0000F416
	adds r0, r1, #0
	strh r0, [r4, #0x16]
	ldr r2, _0801C93C @ =0x040000D4
	movs r0, #0xa
	subs r0, r0, r3
	lsls r0, r0, #1
	ldr r1, _0801C940 @ =gUnk_080C8F54
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r4, #2
	str r0, [r2, #4]
	ldr r0, _0801C944 @ =0x8000000A
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	cmp r5, #0
	beq _0801C90C
	lsls r2, r3, #1
	adds r2, r2, r4
	adds r0, r5, #0
	adds r0, #0x17
	ldr r3, _0801C948 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #2]
_0801C90C:
	ldr r0, _0801C94C @ =gUnk_03000F50
	strh r6, [r0, #0xe]
_0801C910:
	ldr r0, _0801C930 @ =gUnk_03003F80
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #5
	bgt _0801C962
	cmp r0, #4
	blt _0801C962
	ldr r2, _0801C950 @ =gUnk_0200AF00
	ldrb r1, [r2, #9]
	adds r4, r2, #0
	cmp r0, #4
	bne _0801C954
	adds r0, r1, #2
	b _0801C956
	.align 2, 0
_0801C92C: .4byte gUnk_02034D30
_0801C930: .4byte gUnk_03003F80
_0801C934: .4byte 0x0000F016
_0801C938: .4byte 0x0000F416
_0801C93C: .4byte 0x040000D4
_0801C940: .4byte gUnk_080C8F54
_0801C944: .4byte 0x8000000A
_0801C948: .4byte 0x000003FF
_0801C94C: .4byte gUnk_03000F50
_0801C950: .4byte gUnk_0200AF00
_0801C954:
	adds r0, r1, #1
_0801C956:
	strb r0, [r2, #9]
	ldrb r0, [r4, #9]
	lsrs r3, r0, #4
	movs r0, #3
	ands r3, r0
	b _0801C966
_0801C962:
	movs r3, #0
	ldr r4, _0801C988 @ =gUnk_0200AF00
_0801C966:
	ldrb r0, [r4, #8]
	cmp r3, r0
	beq _0801C984
	strb r3, [r4, #8]
	ldr r4, _0801C98C @ =0x0600C2C0
	ldr r1, _0801C990 @ =0x040000D4
	ldr r2, _0801C994 @ =gUnk_080C8F7C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0801C998 @ =0x84000030
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0801C984:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801C988: .4byte gUnk_0200AF00
_0801C98C: .4byte 0x0600C2C0
_0801C990: .4byte 0x040000D4
_0801C994: .4byte gUnk_080C8F7C
_0801C998: .4byte 0x84000030

	thumb_func_start sub_0801C99C
sub_0801C99C: @ 0x0801C99C
	push {r4, r5, lr}
	ldr r4, _0801C9E0 @ =gUnk_0200AF00
	ldrb r1, [r4, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801C9B2
	bl sub_08052724
	cmp r0, #0
	bne _0801C9EC
_0801C9B2:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0801CA50
	movs r0, #0
	strb r0, [r4, #0x10]
	ldr r2, _0801C9E4 @ =gUnk_020350E2
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r1, _0801C9E8 @ =gUnk_03000F50
	movs r0, #1
	strh r0, [r1, #0xe]
	b _0801CA50
	.align 2, 0
_0801C9E0: .4byte gUnk_0200AF00
_0801C9E4: .4byte gUnk_020350E2
_0801C9E8: .4byte gUnk_03000F50
_0801C9EC:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _0801CA1E
	ldr r2, _0801CA54 @ =gUnk_020350E2
	adds r1, r2, #0
	adds r1, #0x40
	ldr r3, _0801CA58 @ =0x0000F01C
	strh r3, [r2]
	adds r0, r3, #1
	strh r0, [r2, #2]
	adds r0, r3, #2
	strh r0, [r1]
	adds r0, r3, #3
	strh r0, [r1, #2]
	adds r3, #0x5a
	strh r3, [r2, #4]
	adds r0, r3, #1
	strh r0, [r1, #4]
	adds r0, r3, #2
	strh r0, [r2, #6]
	adds r0, r3, #3
	strh r0, [r1, #6]
	ldr r1, _0801CA5C @ =gUnk_03000F50
	movs r0, #1
	strh r0, [r1, #0xe]
_0801CA1E:
	ldr r0, _0801CA60 @ =gUnk_02002A40
	ldr r3, _0801CA64 @ =gUnk_02033A90
	ldrb r1, [r3, #3]
	ldr r5, _0801CA68 @ =0x0000045C
	adds r2, r0, r5
	adds r1, r1, r2
	ldrb r0, [r4, #0x12]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801CA38
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _0801CA50
_0801CA38:
	movs r0, #2
	strb r0, [r4, #0x10]
	ldrb r0, [r3, #3]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x12]
	ldrb r1, [r4, #0x12]
	movs r0, #0x76
	movs r2, #0
	movs r3, #2
	bl sub_0801C5E0
_0801CA50:
	pop {r4, r5, pc}
	.align 2, 0
_0801CA54: .4byte gUnk_020350E2
_0801CA58: .4byte 0x0000F01C
_0801CA5C: .4byte gUnk_03000F50
_0801CA60: .4byte gUnk_02002A40
_0801CA64: .4byte gUnk_02033A90
_0801CA68: .4byte 0x0000045C

	thumb_func_start sub_0801CA6C
sub_0801CA6C: @ 0x0801CA6C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r3, #0
	ldr r7, _0801CAA8 @ =gUnk_0200AF34
	movs r0, #1
	mov ip, r0
	ldr r1, _0801CAAC @ =gUnk_080C8F8C
	lsls r0, r5, #4
	adds r4, r0, r1
_0801CA80:
	lsls r0, r3, #5
	adds r1, r0, r7
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0801CAB0
	strb r5, [r1, #1]
	strb r6, [r1, #2]
	movs r0, #0xff
	strb r0, [r1, #0x10]
	mov r0, ip
	orrs r0, r2
	strb r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #0x1a]
	ldrb r0, [r4, #0xc]
	strb r0, [r1, #3]
	b _0801CAB6
	.align 2, 0
_0801CAA8: .4byte gUnk_0200AF34
_0801CAAC: .4byte gUnk_080C8F8C
_0801CAB0:
	adds r3, #1
	cmp r3, #0x17
	bls _0801CA80
_0801CAB6:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801CAB8
sub_0801CAB8: @ 0x0801CAB8
	push {lr}
	str r1, [r0, #0x14]
	ldrb r2, [r1, #1]
	strb r2, [r0, #0x11]
	ldrb r2, [r1, #2]
	strb r2, [r0, #0x12]
	ldrb r2, [r1, #3]
	strb r2, [r0, #0x13]
	ldrb r1, [r1]
	bl sub_0801CAFC
	pop {pc}

	thumb_func_start sub_0801CAD0
sub_0801CAD0: @ 0x0801CAD0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x11]
	subs r0, #1
	strb r0, [r2, #0x11]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801CAF8
	ldr r1, [r2, #0x14]
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0801CAF0
	ldrb r0, [r1, #4]
	lsls r0, r0, #2
	subs r1, r1, r0
_0801CAF0:
	adds r1, #4
	adds r0, r2, #0
	bl sub_0801CAB8
_0801CAF8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801CAFC
sub_0801CAFC: @ 0x0801CAFC
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	ldr r1, _0801CB1C @ =gUnk_080C8F8C
	adds r1, r0, r1
	ldrb r0, [r2, #0x10]
	cmp r3, r0
	beq _0801CB18
	strb r3, [r2, #0x10]
	adds r0, r2, #0
	bl sub_0801CB20
_0801CB18:
	pop {pc}
	.align 2, 0
_0801CB1C: .4byte gUnk_080C8F8C

	thumb_func_start sub_0801CB20
sub_0801CB20: @ 0x0801CB20
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	bne _0801CB76
	ldrh r1, [r1, #6]
	lsls r1, r1, #4
	ldr r0, _0801CB54 @ =gUnk_080029B4
	adds r1, r1, r0
	ldrb r0, [r3, #0x10]
	lsls r0, r0, #2
	ldr r2, [r1, #4]
	adds r2, r2, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #5
	ldr r1, [r1, #8]
	adds r1, r1, r0
	ldrb r2, [r2]
	cmp r2, #0
	bne _0801CB58
	ldrb r1, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	b _0801CB74
	.align 2, 0
_0801CB54: .4byte gUnk_080029B4
_0801CB58:
	ldrb r0, [r3, #0x19]
	cmp r0, r2
	bne _0801CB64
	ldr r0, [r3, #0x1c]
	cmp r0, r1
	beq _0801CB74
_0801CB64:
	str r1, [r3, #0x1c]
	ldrb r0, [r3]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r3]
_0801CB74:
	strb r2, [r3, #0x19]
_0801CB76:
	pop {pc}

	thumb_func_start sub_0801CB78
sub_0801CB78: @ 0x0801CB78
	push {lr}
	ldr r2, _0801CB8C @ =gUnk_080C903C
	ldrb r1, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801CB8C: .4byte gUnk_080C903C

	thumb_func_start sub_0801CB90
sub_0801CB90: @ 0x0801CB90
	push {lr}
	ldr r3, _0801CBC4 @ =gUnk_0200AF00
	ldrb r1, [r0, #1]
	lsls r1, r1, #1
	adds r2, r3, #0
	adds r2, #0x16
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r0, #1]
	lsls r1, r1, #1
	adds r3, #0x1c
	adds r1, r1, r3
	ldrh r1, [r1]
	subs r1, #0x20
	strh r1, [r0, #0xe]
	movs r1, #1
	strb r1, [r0, #4]
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	ldrb r1, [r0, #1]
	bl sub_0801CAFC
	pop {pc}
	.align 2, 0
_0801CBC4: .4byte gUnk_0200AF00

	thumb_func_start sub_0801CBC8
sub_0801CBC8: @ 0x0801CBC8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	movs r6, #8
	cmp r0, #0
	bne _0801CC10
	movs r6, #4
	cmp r0, #0
	bne _0801CC10
	ldr r3, _0801CC08 @ =gUnk_0200AF00
	ldrb r0, [r3, #1]
	ldrb r2, [r5, #1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801CBF6
	ldr r0, _0801CC0C @ =gUnk_02000050
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0801CC10
_0801CBF6:
	lsls r0, r2, #1
	adds r1, r3, #0
	adds r1, #0x1c
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	subs r1, #0x28
	b _0801CC1E
	.align 2, 0
_0801CC08: .4byte gUnk_0200AF00
_0801CC0C: .4byte gUnk_02000050
_0801CC10:
	ldr r1, _0801CC7C @ =gUnk_0200AF00
	ldrb r0, [r5, #1]
	lsls r0, r0, #1
	adds r1, #0x1c
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
_0801CC1E:
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	subs r4, r1, r0
	adds r1, r4, #0
	cmp r4, #0
	bge _0801CC2C
	rsbs r4, r4, #0
_0801CC2C:
	cmp r6, r4
	bgt _0801CC32
	adds r4, r6, #0
_0801CC32:
	adds r0, r1, #0
	bl sub_08000E44
	muls r4, r0, r4
	cmp r4, #0
	beq _0801CC44
	ldrh r0, [r5, #0xe]
	adds r0, r0, r4
	strh r0, [r5, #0xe]
_0801CC44:
	ldr r0, _0801CC7C @ =gUnk_0200AF00
	ldrb r1, [r5, #1]
	lsls r1, r1, #1
	adds r0, #0x16
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r2, #0xc
	ldrsh r0, [r5, r2]
	subs r4, r1, r0
	adds r1, r4, #0
	cmp r4, #0
	bge _0801CC60
	rsbs r4, r4, #0
_0801CC60:
	cmp r6, r4
	bgt _0801CC66
	adds r4, r6, #0
_0801CC66:
	adds r0, r1, #0
	bl sub_08000E44
	muls r4, r0, r4
	cmp r4, #0
	beq _0801CC78
	ldrh r0, [r5, #0xc]
	adds r0, r0, r4
	strh r0, [r5, #0xc]
_0801CC78:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801CC7C: .4byte gUnk_0200AF00

	thumb_func_start sub_0801CC80
sub_0801CC80: @ 0x0801CC80
	push {r4, r5, lr}
	ldrb r1, [r0, #1]
	movs r0, #3
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ldr r5, _0801CCAC @ =gUnk_02002A40
	adds r1, r5, #0
	adds r1, #0xb4
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_080544C8
	cmp r0, #0
	beq _0801CCA8
	adds r0, r5, r4
	adds r0, #0x9a
	ldrb r4, [r0]
_0801CCA8:
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0
_0801CCAC: .4byte gUnk_02002A40

	thumb_func_start sub_0801CCB0
sub_0801CCB0: @ 0x0801CCB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r0, r4, #0
	bl sub_0801CC80
	adds r1, r0, #0
	cmp r1, #0
	beq _0801CD90
	ldrb r0, [r4, #8]
	cmp r0, r1
	beq _0801CCE0
	strb r1, [r4, #8]
	ldr r0, _0801CD1C @ =gUnk_080FDFD8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl sub_0801CAB8
_0801CCE0:
	ldrb r0, [r4, #1]
	movs r1, #3
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
	ldr r3, _0801CD20 @ =gUnk_0200AF13
	cmp r6, #0
	beq _0801CCF4
	adds r3, #1
_0801CCF4:
	ldrb r0, [r4, #8]
	cmp r0, #7
	blt _0801CD60
	cmp r0, #8
	ble _0801CD28
	cmp r0, #0xa
	bgt _0801CD60
	ldr r1, _0801CD24 @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xad
	ldrb r2, [r0]
	ldrb r0, [r3]
	adds r5, r1, #0
	cmp r0, r2
	beq _0801CD4C
	adds r0, r2, #0
	adds r0, #0x80
	strb r0, [r3]
	b _0801CD4C
	.align 2, 0
_0801CD1C: .4byte gUnk_080FDFD8
_0801CD20: .4byte gUnk_0200AF13
_0801CD24: .4byte gUnk_02002A40
_0801CD28:
	ldr r5, _0801CD44 @ =gUnk_02002A40
	adds r0, r5, #0
	adds r0, #0xac
	ldrb r2, [r0]
	ldrb r0, [r3]
	cmp r0, r2
	beq _0801CD3C
	adds r0, r2, #0
	adds r0, #0x80
	strb r0, [r3]
_0801CD3C:
	ldr r1, _0801CD48 @ =gUnk_080FD5A0
	adds r0, r5, #0
	adds r0, #0xae
	b _0801CD52
	.align 2, 0
_0801CD44: .4byte gUnk_02002A40
_0801CD48: .4byte gUnk_080FD5A0
_0801CD4C:
	ldr r1, _0801CD5C @ =gUnk_080FD5A4
	adds r0, r5, #0
	adds r0, #0xaf
_0801CD52:
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0801CD64
	.align 2, 0
_0801CD5C: .4byte gUnk_080FD5A4
_0801CD60:
	movs r0, #1
	movs r2, #0
_0801CD64:
	movs r1, #3
	cmp r0, r2
	bhi _0801CD6C
	movs r1, #4
_0801CD6C:
	strb r1, [r4, #0x18]
	adds r0, r6, #0
	bl sub_0801CE24
	adds r1, r0, #0
	cmp r1, #0
	beq _0801CD90
	ldrh r0, [r1, #0xc]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #0xe]
	strh r0, [r4, #0xe]
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r4, #0
	bl sub_0801CAD0
_0801CD90:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801CD94
sub_0801CD94: @ 0x0801CD94
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #2]
	ldr r1, _0801CDC0 @ =gUnk_0200AF00
	cmp r0, #9
	bne _0801CDD4
	adds r0, r1, #0
	adds r0, #0x2f
	ldrb r2, [r0]
	cmp r2, #0
	bne _0801CDCE
	ldr r0, _0801CDC4 @ =gUnk_02033A90
	ldrb r0, [r0, #0x18]
	cmp r0, #2
	beq _0801CDC8
	cmp r0, #3
	beq _0801CDCC
	adds r0, r1, #0
	adds r0, #0x2c
	ldrb r2, [r0]
	b _0801CDCE
	.align 2, 0
_0801CDC0: .4byte gUnk_0200AF00
_0801CDC4: .4byte gUnk_02033A90
_0801CDC8:
	movs r2, #0xb
	b _0801CDCE
_0801CDCC:
	movs r2, #0xa
_0801CDCE:
	adds r0, r1, #0
	adds r0, #0x32
	strb r2, [r0]
_0801CDD4:
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	cmp r2, #0
	beq _0801CE1E
	ldr r1, _0801CE20 @ =gUnk_080C9044
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r2, r0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0801CAFC
	ldrb r0, [r4, #3]
	bl sub_0801CE24
	adds r1, r0, #0
	cmp r1, #0
	beq _0801CE1E
	ldrh r0, [r1, #0xc]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #0xe]
	strh r0, [r4, #0xe]
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_0801CE1E:
	pop {r4, pc}
	.align 2, 0
_0801CE20: .4byte gUnk_080C9044

	thumb_func_start sub_0801CE24
sub_0801CE24: @ 0x0801CE24
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r6, #1
	ldr r3, _0801CE44 @ =gUnk_0200AF34
	adds r2, r3, #0
_0801CE30:
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0801CE48
	ldrb r0, [r2, #1]
	cmp r5, r0
	bne _0801CE48
	adds r0, r3, #0
	b _0801CE54
	.align 2, 0
_0801CE44: .4byte gUnk_0200AF34
_0801CE48:
	adds r2, #0x20
	adds r3, #0x20
	adds r4, #1
	cmp r4, #0x17
	bls _0801CE30
	movs r0, #0
_0801CE54:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801CE58
sub_0801CE58: @ 0x0801CE58
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3]
	movs r4, #3
	rsbs r4, r4, #0
	ands r4, r0
	strb r4, [r3]
	ldr r2, _0801CEB8 @ =gUnk_0200AF00
	ldrb r1, [r2, #1]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801CEB4
	ldr r0, _0801CEBC @ =gUnk_02000050
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0801CEB4
	ldrb r2, [r2, #3]
	cmp r2, #0
	beq _0801CEB4
	movs r0, #2
	adds r1, r4, #0
	orrs r1, r0
	strb r1, [r3]
	adds r0, r2, #3
	lsrs r0, r0, #2
	lsls r0, r0, #3
	adds r1, r0, #3
	movs r4, #0xc
	cmp r2, #0x28
	bls _0801CE9E
	movs r4, #0x14
	subs r1, #0x50
_0801CE9E:
	strh r1, [r3, #0xc]
	strh r4, [r3, #0xe]
	movs r1, #3
	ands r1, r2
	cmp r1, #0
	bne _0801CEAC
	movs r1, #4
_0801CEAC:
	adds r1, #0x71
	adds r0, r3, #0
	bl sub_0801CAFC
_0801CEB4:
	pop {r4, pc}
	.align 2, 0
_0801CEB8: .4byte gUnk_0200AF00
_0801CEBC: .4byte gUnk_02000050

	thumb_func_start sub_0801CEC0
sub_0801CEC0: @ 0x0801CEC0
	push {lr}
	ldr r2, _0801CED4 @ =gUnk_080C904C
	ldrb r1, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801CED4: .4byte gUnk_080C904C

	thumb_func_start sub_0801CED8
sub_0801CED8: @ 0x0801CED8
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0801CF10 @ =gUnk_0200AF00
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r4, [r1]
	cmp r4, #1
	bne _0801CF0E
	movs r2, #2
	movs r0, #2
	strb r0, [r1]
	movs r1, #0
	movs r0, #0x10
	strh r0, [r3, #0xc]
	movs r0, #0x90
	strh r0, [r3, #0xe]
	strb r1, [r3, #6]
	movs r0, #7
	strb r0, [r3, #1]
	strb r4, [r3, #4]
	ldrb r0, [r3]
	orrs r0, r2
	strb r0, [r3]
	ldr r1, _0801CF14 @ =gUnk_080C9094
	adds r0, r3, #0
	bl sub_0801CAB8
_0801CF0E:
	pop {r4, pc}
	.align 2, 0
_0801CF10: .4byte gUnk_0200AF00
_0801CF14: .4byte gUnk_080C9094

	thumb_func_start sub_0801CF18
sub_0801CF18: @ 0x0801CF18
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0801CF54 @ =gUnk_080C9058
	ldrb r0, [r5, #6]
	adds r1, r0, #1
	strb r1, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	ldrh r4, [r0]
	movs r0, #0
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0805ECEC
	cmp r4, #0
	bne _0801CF52
	movs r0, #2
	strb r0, [r5, #4]
	movs r0, #8
	strb r0, [r5, #1]
	ldr r0, _0801CF58 @ =gUnk_0200AF00
	adds r0, #0x24
	movs r1, #3
	strb r1, [r0]
	ldr r0, _0801CF5C @ =0x00000173
	bl sub_080A3268
_0801CF52:
	pop {r4, r5, pc}
	.align 2, 0
_0801CF54: .4byte gUnk_080C9058
_0801CF58: .4byte gUnk_0200AF00
_0801CF5C: .4byte 0x00000173

	thumb_func_start sub_0801CF60
sub_0801CF60: @ 0x0801CF60
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0801CF8C @ =gUnk_0200AF00
	adds r5, r0, #0
	adds r5, #0x24
	ldrb r0, [r5]
	cmp r0, #4
	bhi _0801CF7C
	ldr r0, _0801CF90 @ =gUnk_02000050
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0801CF94
_0801CF7C:
	movs r0, #0
	strb r0, [r4, #4]
	ldrb r1, [r4]
	subs r0, #3
	ands r0, r1
	strb r0, [r4]
	b _0801CFA4
	.align 2, 0
_0801CF8C: .4byte gUnk_0200AF00
_0801CF90: .4byte gUnk_02000050
_0801CF94:
	adds r0, r4, #0
	bl sub_0801CAD0
	ldrb r0, [r4, #0x13]
	cmp r0, #1
	bne _0801CFA4
	movs r0, #4
	strb r0, [r5]
_0801CFA4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0801CFA8
sub_0801CFA8: @ 0x0801CFA8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0801CFCC @ =gUnk_02001A00
	movs r1, #0x40
	bl sub_0801D630
	movs r4, #0
_0801CFB6:
	adds r0, r4, #0
	bl sub_0801CFD0
	adds r4, #1
	cmp r4, #5
	bls _0801CFB6
	adds r0, r5, #0
	bl sub_0801D000
	pop {r4, r5, pc}
	.align 2, 0
_0801CFCC: .4byte gUnk_02001A00

	thumb_func_start sub_0801CFD0
sub_0801CFD0: @ 0x0801CFD0
	lsls r0, r0, #2
	ldr r1, _0801CFF8 @ =gUnk_02001A00
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	movs r2, #0xf
	ands r1, r2
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	movs r1, #0x80
	strb r1, [r0, #1]
	ldr r1, _0801CFFC @ =0x0000FFFF
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0801CFF8: .4byte gUnk_02001A00
_0801CFFC: .4byte 0x0000FFFF

	thumb_func_start sub_0801D000
sub_0801D000: @ 0x0801D000
	push {lr}
	adds r2, r0, #0
	ldr r0, _0801D024 @ =gUnk_030010A0
	movs r1, #0
	cmp r2, #0
	beq _0801D00E
	movs r1, #0xf
_0801D00E:
	adds r0, #0x2f
	strb r1, [r0]
	cmp r2, #0
	beq _0801D028
	bl sub_0801D34C
	movs r0, #0xf
	bl sub_0801CFD0
	b _0801D03A
	.align 2, 0
_0801D024: .4byte gUnk_030010A0
_0801D028:
	ldr r3, _0801D03C @ =gUnk_02001A3C
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #4
	bne _0801D03A
	strb r2, [r3]
	strb r2, [r3, #1]
	strh r2, [r3, #2]
_0801D03A:
	pop {pc}
	.align 2, 0
_0801D03C: .4byte gUnk_02001A3C

	thumb_func_start sub_0801D040
sub_0801D040: @ 0x0801D040
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	adds r6, r1, #0
	adds r0, r6, #0
	bl sub_0801D108
	adds r5, r0, #0
	cmp r5, #0
	bge _0801D0E8
	cmp r6, #0x15
	bhi _0801D064
	movs r4, #1
	b _0801D074
_0801D064:
	ldr r0, _0801D100 @ =gUnk_08133368
	adds r1, r6, #0
	subs r1, #0x16
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r4, [r1, #3]
	movs r0, #0xf
	ands r4, r0
_0801D074:
	adds r0, r4, #0
	bl sub_0801D134
	adds r5, r0, #0
	cmp r5, #0
	bge _0801D090
	bl sub_0801D34C
	adds r0, r4, #0
	bl sub_0801D134
	adds r5, r0, #0
	cmp r5, #0
	blt _0801D0E8
_0801D090:
	lsls r1, r5, #2
	ldr r0, _0801D104 @ =gUnk_02001A00
	adds r3, r1, r0
	movs r0, #0
	strh r6, [r3, #2]
	strb r0, [r3, #1]
	movs r2, #0x10
	rsbs r2, r2, #0
	lsls r0, r4, #4
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	subs r4, #1
	cmp r4, #0
	beq _0801D0E0
	movs r0, #0
	mov sl, r0
	movs r1, #0
	mov r8, r1
	movs r0, #0xf
	mov sb, r0
	mov ip, r2
	movs r7, #2
_0801D0BE:
	adds r3, #4
	mov r1, r8
	strh r1, [r3, #2]
	mov r0, sl
	strb r0, [r3, #1]
	lsls r2, r4, #4
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	ands r0, r1
	orrs r0, r7
	strb r0, [r3]
	subs r4, #1
	cmp r4, #0
	bne _0801D0BE
_0801D0E0:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0801D2C8
_0801D0E8:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_0801D19C
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D100: .4byte gUnk_08133368
_0801D104: .4byte gUnk_02001A00

	thumb_func_start sub_0801D108
sub_0801D108: @ 0x0801D108
	push {lr}
	adds r2, r0, #0
	cmp r2, #5
	bhi _0801D116
	b _0801D12E
_0801D112:
	adds r0, r1, #0
	b _0801D12E
_0801D116:
	movs r1, #6
	ldr r0, _0801D130 @ =gUnk_02001A00
	adds r0, #0x18
_0801D11C:
	ldrh r3, [r0, #2]
	cmp r2, r3
	beq _0801D112
	adds r0, #4
	adds r1, #1
	cmp r1, #0xf
	bls _0801D11C
	movs r0, #1
	rsbs r0, r0, #0
_0801D12E:
	pop {pc}
	.align 2, 0
_0801D130: .4byte gUnk_02001A00

	thumb_func_start sub_0801D134
sub_0801D134: @ 0x0801D134
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #6
	ldr r0, _0801D154 @ =gUnk_02001A00
	adds r3, r0, #0
	adds r3, #0x18
_0801D142:
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bne _0801D158
	adds r1, #1
	cmp r4, r1
	bhi _0801D15A
	b _0801D180
	.align 2, 0
_0801D154: .4byte gUnk_02001A00
_0801D158:
	movs r1, #0
_0801D15A:
	adds r3, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D142
	movs r1, #0
	movs r2, #6
	ldr r0, _0801D188 @ =gUnk_02001A00
	adds r3, r0, #0
	adds r3, #0x18
_0801D16C:
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _0801D18C
	cmp r0, #0
	blt _0801D18C
	adds r1, #1
	cmp r4, r1
	bhi _0801D18E
_0801D180:
	subs r0, r1, #1
	subs r0, r2, r0
	b _0801D19A
	.align 2, 0
_0801D188: .4byte gUnk_02001A00
_0801D18C:
	movs r1, #0
_0801D18E:
	adds r3, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D16C
	movs r0, #1
	rsbs r0, r0, #0
_0801D19A:
	pop {r4, pc}

	thumb_func_start sub_0801D19C
sub_0801D19C: @ 0x0801D19C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	cmp r3, #0
	bge _0801D1A8
	movs r3, #0
_0801D1A8:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bls _0801D1BE
	adds r0, r4, #0
	adds r0, #0x27
	strb r3, [r0]
_0801D1BE:
	movs r0, #0xf
	adds r1, r3, #0
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	movs r2, #0xf
	adds r1, r3, #0
	ands r1, r2
	lsls r1, r1, #4
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	lsls r1, r3, #2
	ldr r0, _0801D22C @ =gUnk_02001A00
	adds r4, r1, r0
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	beq _0801D22A
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	ldr r0, [r4]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x1c
	ldrb r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4]
	subs r3, #1
	cmp r3, #0
	beq _0801D22A
	movs r7, #0xf
	adds r6, r5, #0
	movs r5, #2
_0801D212:
	adds r4, #4
	lsls r2, r3, #4
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r2
	ands r0, r6
	orrs r0, r5
	strb r0, [r4]
	subs r3, #1
	cmp r3, #0
	bne _0801D212
_0801D22A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D22C: .4byte gUnk_02001A00

	thumb_func_start sub_0801D230
sub_0801D230: @ 0x0801D230
	push {lr}
	adds r0, #0x27
	ldrb r2, [r0]
	movs r1, #0
	strb r1, [r0]
	adds r0, r2, #0
	bl sub_0801D244
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801D244
sub_0801D244: @ 0x0801D244
	push {r4, r5, r6, lr}
	lsls r0, r0, #2
	ldr r1, _0801D288 @ =gUnk_02001A00
	adds r2, r0, r1
	ldr r0, [r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _0801D284
	ldrb r0, [r2, #1]
	subs r0, #1
	strb r0, [r2, #1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D284
	ldr r0, [r2]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x1c
	movs r5, #0
	movs r6, #0x10
	rsbs r6, r6, #0
	movs r4, #1
_0801D270:
	strb r5, [r2, #1]
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bne _0801D270
_0801D284:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801D288: .4byte gUnk_02001A00

	thumb_func_start sub_0801D28C
sub_0801D28C: @ 0x0801D28C
	push {lr}
	adds r3, r1, #0
	adds r0, #0x27
	ldrb r2, [r0]
	ldr r1, _0801D2B0 @ =gUnk_02001A00
	lsls r0, r2, #2
	adds r1, r0, r1
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _0801D2AE
	strh r3, [r1, #2]
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_0801D2C8
_0801D2AE:
	pop {pc}
	.align 2, 0
_0801D2B0: .4byte gUnk_02001A00

	thumb_func_start sub_0801D2B4
sub_0801D2B4: @ 0x0801D2B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0801D230
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801D040
	pop {r4, r5, pc}

	thumb_func_start sub_0801D2C8
sub_0801D2C8: @ 0x0801D2C8
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _0801D2F8 @ =gUnk_0200B644
	adds r4, r1, #0
	adds r4, #0x10
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	cmp r3, #5
	bls _0801D33C
	cmp r3, #0x15
	bne _0801D300
	ldr r2, _0801D2FC @ =gUnk_020176A0
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	lsls r1, r4, #5
	adds r1, r1, r2
	movs r2, #0x20
	bl sub_0801D5EC
	b _0801D33C
	.align 2, 0
_0801D2F8: .4byte gUnk_0200B644
_0801D2FC: .4byte gUnk_020176A0
_0801D300:
	cmp r3, #0x14
	bhi _0801D31C
	subs r0, r3, #6
	lsls r0, r0, #5
	ldr r1, _0801D318 @ =gUnk_020176A0
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #1
	bl sub_0801D754
	b _0801D33C
	.align 2, 0
_0801D318: .4byte gUnk_020176A0
_0801D31C:
	ldr r1, _0801D340 @ =gUnk_08133368
	adds r0, r3, #0
	subs r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r2, r0, #0x18
	movs r1, #0xf
	ands r2, r1
	ldr r1, _0801D344 @ =0x00FFFFFF
	ands r0, r1
	ldr r1, _0801D348 @ =gUnk_085A2E80
	adds r0, r0, r1
	adds r1, r4, #0
	bl sub_0801D754
_0801D33C:
	pop {r4, pc}
	.align 2, 0
_0801D340: .4byte gUnk_08133368
_0801D344: .4byte 0x00FFFFFF
_0801D348: .4byte gUnk_085A2E80

	thumb_func_start sub_0801D34C
sub_0801D34C: @ 0x0801D34C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r2, #0
	movs r3, #0
	ldr r1, _0801D37C @ =gUnk_02001A00
_0801D356:
	mov r4, sp
	adds r0, r4, r2
	strb r2, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _0801D370
	cmp r0, #0
	blt _0801D370
	strb r3, [r1]
	strb r3, [r1, #1]
	strh r3, [r1, #2]
_0801D370:
	adds r1, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D356
	movs r4, #6
	b _0801D390
	.align 2, 0
_0801D37C: .4byte gUnk_02001A00
_0801D380:
	cmp r4, r1
	ble _0801D390
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_0801D48C
_0801D390:
	adds r0, r4, #1
	bl sub_0801D458
	adds r4, r0, #0
	cmp r4, #0
	beq _0801D3AC
	movs r0, #1
	bl sub_0801D134
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801D380
_0801D3AC:
	movs r1, #0
	ldr r4, _0801D450 @ =gUnk_03003D70
	mov ip, r4
_0801D3B2:
	lsls r0, r1, #3
	mov r2, ip
	adds r3, r0, r2
	adds r0, r3, #0
	ldr r3, [r3, #4]
	adds r5, r1, #1
	cmp r0, r3
	beq _0801D444
	movs r7, #0x10
	rsbs r7, r7, #0
	adds r4, r0, #0
	ldr r6, _0801D454 @ =gUnk_020000C0
_0801D3CA:
	ldrb r0, [r3, #8]
	cmp r0, #9
	beq _0801D43E
	adds r1, r3, #0
	adds r1, #0x28
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bhi _0801D40C
	ldrb r1, [r1]
	lsls r1, r1, #6
	adds r1, r1, r6
	ldrb r0, [r1, #5]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1, #5]
	ldrb r0, [r1, #0x15]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1, #0x15]
	adds r2, r1, #0
	adds r2, #0x25
	ldrb r0, [r2]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r2]
	adds r1, #0x35
	ldrb r0, [r1]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1]
_0801D40C:
	adds r1, r3, #0
	adds r1, #0x27
	ldrb r0, [r1]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r2, [r3, #0x1a]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1a]
	lsrs r1, r0, #4
	add r1, sp
	ldrb r2, [r1]
	lsls r2, r2, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x1a]
_0801D43E:
	ldr r3, [r3, #4]
	cmp r4, r3
	bne _0801D3CA
_0801D444:
	adds r1, r5, #0
	cmp r1, #8
	bls _0801D3B2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D450: .4byte gUnk_03003D70
_0801D454: .4byte gUnk_020000C0

	thumb_func_start sub_0801D458
sub_0801D458: @ 0x0801D458
	push {lr}
	adds r2, r0, #0
	cmp r2, #0xf
	bhi _0801D488
	ldr r1, _0801D47C @ =gUnk_02001A00
	lsls r0, r2, #2
	adds r1, r0, r1
_0801D466:
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0
	blt _0801D478
	cmp r0, #1
	ble _0801D480
	cmp r0, #4
	beq _0801D480
_0801D478:
	adds r0, r2, #0
	b _0801D48A
	.align 2, 0
_0801D47C: .4byte gUnk_02001A00
_0801D480:
	adds r1, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0801D466
_0801D488:
	movs r0, #0
_0801D48A:
	pop {pc}

	thumb_func_start sub_0801D48C
sub_0801D48C: @ 0x0801D48C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r3, r1, #0
	ldr r0, _0801D50C @ =gUnk_02001A00
	mov r8, r0
	lsls r0, r6, #2
	mov r1, r8
	adds r4, r0, r1
	ldrb r0, [r4]
	lsrs r5, r0, #4
	subs r5, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _0801D4F8
	ldr r2, _0801D510 @ =gUnk_020176A0
	lsls r0, r3, #5
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r7, r0, r2
	lsls r0, r3, #2
	add r8, r0
	lsls r0, r6, #5
	adds r0, r0, r1
	adds r6, r0, r2
	movs r3, #0
_0801D4C8:
	ldr r0, [r4]
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	strb r3, [r4]
	strb r3, [r4, #1]
	strh r3, [r4, #2]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0x20
	str r3, [sp]
	bl sub_0801D66C
	adds r6, #0x20
	adds r4, #4
	adds r7, #0x20
	subs r5, #1
	movs r0, #1
	rsbs r0, r0, #0
	ldr r3, [sp]
	cmp r5, r0
	bne _0801D4C8
_0801D4F8:
	ldr r0, _0801D514 @ =gUnk_0200B644
	ldr r1, [r0]
	ldr r2, _0801D518 @ =0xFFFF0000
	orrs r1, r2
	str r1, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D50C: .4byte gUnk_02001A00
_0801D510: .4byte gUnk_020176A0
_0801D514: .4byte gUnk_0200B644
_0801D518: .4byte 0xFFFF0000

	thumb_func_start sub_0801D51C
sub_0801D51C: @ 0x0801D51C
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _0801D58C @ =0x05F5E0FF
	cmp r2, r0
	bhi _0801D5A0
	ldr r1, _0801D590 @ =0x00989680
	adds r0, r2, #0
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x1c
	ldr r2, _0801D594 @ =0x000F4240
	adds r0, r1, #0
	adds r1, r2, #0
	bl Div
	lsls r0, r0, #0x18
	adds r4, r4, r0
	ldr r2, _0801D598 @ =0x000186A0
	adds r0, r1, #0
	adds r1, r2, #0
	bl Div
	lsls r0, r0, #0x14
	adds r4, r4, r0
	ldr r2, _0801D59C @ =0x00002710
	adds r0, r1, #0
	adds r1, r2, #0
	bl Div
	lsls r0, r0, #0x10
	adds r4, r4, r0
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r1, #0
	adds r1, r2, #0
	bl Div
	lsls r0, r0, #0xc
	adds r4, r4, r0
	adds r0, r1, #0
	movs r1, #0x64
	bl Div
	lsls r0, r0, #8
	adds r4, r4, r0
	adds r0, r1, #0
	movs r1, #0xa
	bl Div
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r4, r4, r1
	adds r0, r4, #0
	b _0801D5A2
	.align 2, 0
_0801D58C: .4byte 0x05F5E0FF
_0801D590: .4byte 0x00989680
_0801D594: .4byte 0x000F4240
_0801D598: .4byte 0x000186A0
_0801D59C: .4byte 0x00002710
_0801D5A0:
	ldr r0, _0801D5A4 @ =0x99999999
_0801D5A2:
	pop {r4, pc}
	.align 2, 0
_0801D5A4: .4byte 0x99999999

	thumb_func_start sub_0801D5A8
sub_0801D5A8: @ 0x0801D5A8
	lsrs r2, r1, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r1
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_0801D5BC
sub_0801D5BC: @ 0x0801D5BC
	lsrs r2, r1, #3
	adds r3, r0, r2
	movs r2, #7
	ands r1, r2
	movs r2, #1
	lsls r2, r1
	ldrb r0, [r3]
	adds r1, r0, #0
	orrs r1, r2
	strb r1, [r3]
	ands r0, r2
	bx lr

	thumb_func_start sub_0801D5D4
sub_0801D5D4: @ 0x0801D5D4
	lsrs r2, r1, #3
	adds r3, r0, r2
	movs r2, #7
	ands r1, r2
	movs r2, #1
	lsls r2, r1
	ldrb r0, [r3]
	adds r1, r0, #0
	bics r1, r2
	strb r1, [r3]
	ands r0, r2
	bx lr

	thumb_func_start sub_0801D5EC
sub_0801D5EC: @ 0x0801D5EC
	sub sp, #4
	mov r3, sp
	strh r0, [r3]
	ldr r3, _0801D60C @ =0x040000D4
	mov r0, sp
	str r0, [r3]
	str r1, [r3, #4]
	lsrs r2, r2, #1
	movs r0, #0x81
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0801D60C: .4byte 0x040000D4

	thumb_func_start sub_0801D610
sub_0801D610: @ 0x0801D610
	sub sp, #4
	str r0, [sp]
	ldr r3, _0801D62C @ =0x040000D4
	mov r0, sp
	str r0, [r3]
	str r1, [r3, #4]
	lsrs r2, r2, #2
	movs r0, #0x85
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0801D62C: .4byte 0x040000D4

	thumb_func_start sub_0801D630
sub_0801D630: @ 0x0801D630
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r4, #0
	adds r1, r3, #0
	orrs r1, r2
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0801D64A
	cmp r1, #2
	beq _0801D654
	b _0801D65E
_0801D64A:
	movs r0, #0
	adds r1, r3, #0
	bl sub_0801D610
	b _0801D668
_0801D654:
	movs r0, #0
	adds r1, r3, #0
	bl sub_0801D5EC
	b _0801D668
_0801D65E:
	strb r4, [r3]
	adds r3, #1
	subs r2, #1
	cmp r2, #0
	bne _0801D65E
_0801D668:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0801D66C
sub_0801D66C: @ 0x0801D66C
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	orrs r2, r4
	movs r0, #3
	ands r2, r0
	cmp r2, #0
	beq _0801D686
	cmp r2, #2
	beq _0801D698
	b _0801D6B0
_0801D686:
	ldr r2, _0801D694 @ =0x040000D4
	str r3, [r2]
	str r1, [r2, #4]
	lsrs r0, r4, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	b _0801D6A4
	.align 2, 0
_0801D694: .4byte 0x040000D4
_0801D698:
	ldr r2, _0801D6AC @ =0x040000D4
	str r3, [r2]
	str r1, [r2, #4]
	lsrs r0, r4, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_0801D6A4:
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _0801D6BE
	.align 2, 0
_0801D6AC: .4byte 0x040000D4
_0801D6B0:
	ldrb r0, [r3]
	strb r0, [r1]
	adds r3, #1
	adds r1, #1
	subs r4, #1
	cmp r4, #0
	bne _0801D6B0
_0801D6BE:
	pop {r4, pc}	