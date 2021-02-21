	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ObjectB9
ObjectB9: @ 0x080A1204
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r5, r0, #0
	cmp r5, #0
	bne _080A1260
	adds r0, #1
	strb r0, [r4, #0xc]
	bl sub_080A1514
	lsls r0, r0, #2
	ldr r1, _080A126C @ =gUnk_08124C20
	adds r0, r0, r1
	ldrh r2, [r0]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r2, r4, #0
	adds r2, #0x68
	strh r1, [r2]
	adds r1, r4, #0
	adds r1, #0x6a
	strh r5, [r1]
	ldrh r1, [r0, #2]
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x6e
	movs r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x70
	movs r2, #0
	movs r1, #9
_080A124A:
	strb r2, [r0]
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bge _080A124A
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	bl sub_0806EC20
_080A1260:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	pop {r4, r5, pc}
	.align 2, 0
_080A126C: .4byte gUnk_08124C20

	thumb_func_start sub_080A1270
sub_080A1270: @ 0x080A1270
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	movs r6, #0
	ldr r0, [r0, #0x64]
	str r0, [sp, #4]
	mov r4, sb
	adds r4, #0x70
	ldr r0, _080A12F8 @ =gRoomControls
	movs r2, #0xd8
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r3, [r0, #6]
	adds r1, r1, r3
	movs r7, #0xd4
	lsls r7, r7, #2
	adds r2, r7, #0
	ldrh r0, [r0, #8]
	adds r2, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #9
	mov sl, r0
	movs r1, #1
	rsbs r1, r1, #0
	adds r5, r1, #0
_080A12B2:
	ldr r7, [sp, #4]
	ldr r2, [r7]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _080A1300
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _080A132C
	cmp r2, #0
	beq _080A132C
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	cmp r8, r0
	bgt _080A132E
	movs r7, #0x32
	ldrsh r0, [r2, r7]
	cmp r3, r0
	bgt _080A132E
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r4]
	movs r0, #1
	strb r0, [r2, #0xb]
	adds r6, #1
	ldr r1, _080A12FC @ =gUnk_08124EC8
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	str r3, [sp]
	bl PlaySFX
	ldr r3, [sp]
	b _080A132E
	.align 2, 0
_080A12F8: .4byte gRoomControls
_080A12FC: .4byte gUnk_08124EC8
_080A1300:
	cmp r0, #0
	ble _080A132E
	adds r6, #1
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _080A132C
	cmp r2, #0
	beq _080A132C
	mov r1, r8
	adds r1, #4
	movs r7, #0x2e
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble _080A131E
	strh r1, [r2, #0x2e]
_080A131E:
	adds r1, r3, #4
	movs r7, #0x32
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble _080A132E
	strh r1, [r2, #0x32]
	b _080A132E
_080A132C:
	strb r5, [r4]
_080A132E:
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	adds r4, #1
	ldr r1, [sp, #4]
	adds r1, #4
	str r1, [sp, #4]
	mov r2, sl
	cmp r2, #0
	bge _080A12B2
	mov r0, sb
	adds r0, #0x6a
	strh r6, [r0]
	ldr r0, _080A136C @ =gPlayerState
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
	mov r1, sb
	adds r1, #0x68
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080A1370
	movs r0, #0xe2
	bl PlaySFX
	bl sub_08050384
	b _080A1376
	.align 2, 0
_080A136C: .4byte gPlayerState
_080A1370:
	ldr r1, _080A1384 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_080A1376:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A1384: .4byte gUnk_02033280

	thumb_func_start sub_080A1388
sub_080A1388: @ 0x080A1388
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r5, #0x70
	ldr r4, [r0, #0x64]
	movs r6, #9
_080A1392:
	ldr r1, [r4]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _080A13A6
	cmp r1, #0
	beq _080A13A6
	adds r0, r1, #0
	bl DeleteEntityAny
_080A13A6:
	subs r6, #1
	adds r5, #1
	adds r4, #4
	cmp r6, #0
	bge _080A1392
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A13B4
sub_080A13B4: @ 0x080A13B4
	push {r4, lr}
	adds r4, r1, #0
	adds r1, r0, #0
	adds r1, #0x6a
	adds r0, #0x6c
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	blt _080A13D8
	ldr r0, _080A13D4 @ =0x0000300C
	bl TextboxNoOverlapFollow
	movs r0, #1
	b _080A13E0
	.align 2, 0
_080A13D4: .4byte 0x0000300C
_080A13D8:
	ldr r0, _080A13E4 @ =0x00003005
	bl TextboxNoOverlapFollow
	movs r0, #0
_080A13E0:
	str r0, [r4, #0x14]
	pop {r4, pc}
	.align 2, 0
_080A13E4: .4byte 0x00003005

	thumb_func_start sub_080A13E8
sub_080A13E8: @ 0x080A13E8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_080A1514
	lsls r0, r0, #2
	ldr r1, _080A1408 @ =gUnk_08124EA0
	adds r4, r0, r1
	movs r6, #0
	ldrb r0, [r4]
	cmp r0, #0x5c
	beq _080A141C
	cmp r0, #0x5c
	bgt _080A140C
	cmp r0, #0x3f
	beq _080A1412
	b _080A1444
	.align 2, 0
_080A1408: .4byte gUnk_08124EA0
_080A140C:
	cmp r0, #0x63
	beq _080A1430
	b _080A1444
_080A1412:
	ldr r0, _080A1418 @ =gSave
	adds r0, #0xbb
	b _080A1424
	.align 2, 0
_080A1418: .4byte gSave
_080A141C:
	ldr r0, _080A142C @ =gSave
	movs r1, #0x8b
	lsls r1, r1, #1
	adds r0, r0, r1
_080A1424:
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A1444
	b _080A1454
	.align 2, 0
_080A142C: .4byte gSave
_080A1430:
	movs r0, #0x4f
	bl CheckGlobalFlag
	cmp r0, #0
	bne _080A1442
	movs r0, #0x4f
	bl SetGlobalFlag
	b _080A1444
_080A1442:
	movs r6, #1
_080A1444:
	cmp r6, #0
	bne _080A1454
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	movs r2, #0
	bl sub_080A7C18
	b _080A145C
_080A1454:
	adds r1, r5, #0
	adds r1, #0x6e
	movs r0, #2
	strh r0, [r1]
_080A145C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A1460
sub_080A1460: @ 0x080A1460
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080A1514
	adds r1, r5, #0
	adds r1, #0x70
	movs r4, #0
	ldr r3, _080A149C @ =gUnk_08124ECC
	movs r2, #9
_080A1472:
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r4, r4, r0
	adds r1, #1
	subs r2, #1
	cmp r2, #0
	bge _080A1472
	adds r0, r4, #0
	bl ModRupees
	ldr r0, _080A14A0 @ =0x00003007
	adds r1, r5, #0
	bl TextboxNoOverlap
	ldr r1, _080A14A4 @ =gTextBox
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1, #0x10]
	pop {r4, r5, pc}
	.align 2, 0
_080A149C: .4byte gUnk_08124ECC
_080A14A0: .4byte 0x00003007
_080A14A4: .4byte gTextBox

	thumb_func_start sub_080A14A8
sub_080A14A8: @ 0x080A14A8
	push {r4, lr}
	bl sub_080A1514
	adds r4, r0, #0
	adds r4, #1
	cmp r4, #9
	ble _080A14B8
	movs r4, #9
_080A14B8:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080A14C8
	movs r0, #0x4b
	bl SetGlobalFlag
	b _080A14CE
_080A14C8:
	movs r0, #0x4b
	bl ClearGlobalFlag
_080A14CE:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080A14DE
	movs r0, #0x4c
	bl SetGlobalFlag
	b _080A14E4
_080A14DE:
	movs r0, #0x4c
	bl ClearGlobalFlag
_080A14E4:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _080A14F4
	movs r0, #0x4d
	bl SetGlobalFlag
	b _080A14FA
_080A14F4:
	movs r0, #0x4d
	bl ClearGlobalFlag
_080A14FA:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080A150A
	movs r0, #0x4e
	bl SetGlobalFlag
	b _080A1510
_080A150A:
	movs r0, #0x4e
	bl ClearGlobalFlag
_080A1510:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A1514
sub_080A1514: @ 0x080A1514
	push {r4, lr}
	movs r0, #0x4b
	bl CheckGlobalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x4c
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080A1530
	movs r0, #2
	orrs r4, r0
_080A1530:
	movs r0, #0x4d
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080A153E
	movs r0, #4
	orrs r4, r0
_080A153E:
	movs r0, #0x4e
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080A154C
	movs r0, #8
	orrs r4, r0
_080A154C:
	adds r0, r4, #0
	pop {r4, pc}

	thumb_func_start sub_080A1550
sub_080A1550: @ 0x080A1550
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r1
	movs r0, #0
	str r0, [r1, #0x14]
	movs r0, #0xb9
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A15FE
	movs r0, #0x28
	bl sub_0801D8E0
	str r0, [r4, #0x64]
	cmp r0, #0
	bne _080A1582
	adds r0, r4, #0
	bl DeleteEntityAny
	b _080A15FE
_080A1582:
	mov r0, r8
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl StartCutscene
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	bl sub_080A1514
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080A15B4 @ =gUnk_08124C48
	adds r5, r1, r0
	ldr r4, [r4, #0x64]
	mov sb, r4
	ldr r7, _080A15B8 @ =gRoomControls
	movs r6, #9
_080A15A8:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _080A15BC
	movs r4, #0
	b _080A15E6
	.align 2, 0
_080A15B4: .4byte gUnk_08124C48
_080A15B8: .4byte gRoomControls
_080A15BC:
	movs r0, #0
	ldrsh r1, [r5, r0]
	subs r1, #1
	movs r0, #0x41
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _080A15E6
	ldrh r0, [r5, #2]
	ldrh r1, [r7, #6]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #4]
	ldrh r1, [r7, #8]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
_080A15E6:
	mov r0, sb
	adds r0, #4
	mov sb, r0
	subs r0, #4
	stm r0!, {r4}
	subs r6, #1
	adds r5, #6
	cmp r6, #0
	bge _080A15A8
	movs r0, #1
	mov r1, r8
	str r0, [r1, #0x14]
_080A15FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080A1608
sub_080A1608: @ 0x080A1608
	push {r4, lr}
	ldr r4, _080A163C @ =0x00003002
	movs r0, #1
	bl CheckRoomFlag
	cmp r0, #0
	beq _080A1618
	adds r4, #4
_080A1618:
	adds r0, r4, #0
	bl TextboxNoOverlapFollow
	ldr r4, _080A1640 @ =gTextBox
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #6]
	strb r1, [r4, #7]
	bl sub_080A1514
	lsls r0, r0, #2
	ldr r1, _080A1644 @ =gUnk_08124C20
	adds r0, r0, r1
	ldrh r1, [r0]
	str r1, [r4, #0x10]
	ldrh r0, [r0, #2]
	str r0, [r4, #0x14]
	pop {r4, pc}
	.align 2, 0
_080A163C: .4byte 0x00003002
_080A1640: .4byte gTextBox
_080A1644: .4byte gUnk_08124C20

	thumb_func_start sub_080A1648
sub_080A1648: @ 0x080A1648
	push {r4, lr}
	ldr r4, _080A1684 @ =0x0000407F
	ldr r1, _080A1688 @ =0x00000D36
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _080A168C @ =0x00000D37
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _080A1690 @ =0x00000D38
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	subs r4, #1
	ldr r1, _080A1694 @ =0x00000D75
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _080A1698 @ =0x00000E75
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	pop {r4, pc}
	.align 2, 0
_080A1684: .4byte 0x0000407F
_080A1688: .4byte 0x00000D36
_080A168C: .4byte 0x00000D37
_080A1690: .4byte 0x00000D38
_080A1694: .4byte 0x00000D75
_080A1698: .4byte 0x00000E75

	thumb_func_start sub_080A169C
sub_080A169C: @ 0x080A169C
	push {lr}
	ldr r0, _080A16C8 @ =0x00000D36
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080A16CC @ =0x00000D37
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080A16D0 @ =0x00000D38
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080A16D4 @ =0x00000D75
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080A16D8 @ =0x00000E75
	movs r1, #1
	bl sub_0807BA8C
	pop {pc}
	.align 2, 0
_080A16C8: .4byte 0x00000D36
_080A16CC: .4byte 0x00000D37
_080A16D0: .4byte 0x00000D38
_080A16D4: .4byte 0x00000D75
_080A16D8: .4byte 0x00000E75
