	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start MazaalMacro
MazaalMacro: @ 0x08034C60
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08034C78 @ =gUnk_080CEE90
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_08034C78: .4byte gUnk_080CEE90

	thumb_func_start sub_08034C7C
sub_08034C7C: @ 0x08034C7C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #2
	beq _08034C9C
	ldr r0, _08034C98 @ =gUnk_080CEEA4
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _08034CA2
	.align 2, 0
_08034C98: .4byte gUnk_080CEEA4
_08034C9C:
	adds r0, r2, #0
	bl sub_08034E18
_08034CA2:
	pop {pc}

	thumb_func_start sub_08034CA4
sub_08034CA4: @ 0x08034CA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08034FA0
	ldr r1, _08034CB8 @ =gUnk_080CEE90
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_08034CB8: .4byte gUnk_080CEE90

	thumb_func_start sub_08034CBC
sub_08034CBC: @ 0x08034CBC
	push {lr}
	bl sub_0804A7D4
	pop {pc}

	thumb_func_start sub_08034CC4
sub_08034CC4: @ 0x08034CC4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08035084
	cmp r0, #0
	beq _08034D42
	ldrb r0, [r5, #0xa]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xf]
	adds r2, r5, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_08034F70
	ldrb r1, [r5, #0xa]
	adds r0, r5, #0
	bl InitializeAnimation
	ldr r0, _08034D44 @ =0x00004022
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08034D48 @ =gRoomControls
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
	movs r0, #0x37
	movs r1, #2
	bl CreateEnemy
	adds r1, r0, #0
	cmp r1, #0
	beq _08034D42
	str r1, [r5, #0x54]
	str r5, [r1, #0x50]
	adds r0, r5, #0
	bl CopyPosition
_08034D42:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08034D44: .4byte 0x00004022
_08034D48: .4byte gRoomControls

	thumb_func_start sub_08034D4C
sub_08034D4C: @ 0x08034D4C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl GetNextFrame
	adds r6, r5, #0
	adds r6, #0x78
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08034DC4
	ldrb r0, [r5, #0xf]
	cmp r0, #7
	bhi _08034DBC
	movs r0, #0x4b
	movs r1, #0
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _08034DBC
	bl Random
	movs r1, #5
	bl __modsi3
	adds r0, #0xc
	strb r0, [r4, #0x15]
	ldr r1, _08034DB8 @ =gRoomControls
	ldrh r0, [r1, #0x1e]
	lsrs r0, r0, #1
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, #8
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	str r5, [r4, #0x50]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r6]
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	b _08034DC4
	.align 2, 0
_08034DB8: .4byte gRoomControls
_08034DBC:
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0x78
	strh r0, [r1]
_08034DC4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08034DC8
sub_08034DC8: @ 0x08034DC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08034E10 @ =gScreenTransition
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034E0E
	adds r0, r4, #0
	movs r1, #0x51
	movs r2, #0
	bl CreateFx
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08034E14 @ =gRoomControls
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
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	bl DeleteThisEntity
_08034E0E:
	pop {r4, r5, pc}
	.align 2, 0
_08034E10: .4byte gScreenTransition
_08034E14: .4byte gRoomControls

	thumb_func_start sub_08034E18
sub_08034E18: @ 0x08034E18
	push {lr}
	ldr r2, _08034E2C @ =gUnk_080CEEB0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08034E2C: .4byte gUnk_080CEEB0

	thumb_func_start sub_08034E30
sub_08034E30: @ 0x08034E30
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xa]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034E68
sub_08034E68: @ 0x08034E68
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08034EBC
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	cmp r0, #0
	beq _08034E8A
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08035120
_08034E8A:
	ldr r0, _08034EB0 @ =gScreenTransition
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034EB8
	bl sub_08079F8C
	cmp r0, #0
	beq _08034EBC
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r1, _08034EB4 @ =script_08012E20
	adds r0, r4, #0
	bl StartCutscene
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	b _08034EBC
	.align 2, 0
_08034EB0: .4byte gScreenTransition
_08034EB4: .4byte script_08012E20
_08034EB8:
	bl DeleteThisEntity
_08034EBC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08034EC0
sub_08034EC0: @ 0x08034EC0
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08034ED6
	adds r0, r1, #0
	bl sub_08035120
	bl DeleteThisEntity
_08034ED6:
	pop {pc}

	thumb_func_start sub_08034ED8
sub_08034ED8: @ 0x08034ED8
	push {lr}
	movs r1, #0
	bl sub_0807DDAC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08034EE4
sub_08034EE4: @ 0x08034EE4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08034F46
	bl Random
	adds r4, r0, #0
	ldr r0, _08034F50 @ =gUnk_080CEEC8
	movs r1, #3
	ands r1, r4
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r5, #0
	movs r2, #0
	bl CreateFx
	adds r3, r0, #0
	cmp r3, #0
	beq _08034F46
	lsrs r1, r4, #2
	movs r0, #0x77
	ands r1, r0
	lsls r1, r1, #1
	adds r1, #1
	ldr r2, _08034F54 @ =gRoomControls
	ldrh r0, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r3, #0x2e]
	lsrs r1, r4, #9
	movs r0, #0x7e
	ands r1, r0
	adds r1, #1
	ldrh r0, [r2, #0xc]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
	adds r1, r3, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r3, #0
	bl UpdateSpriteForCollisionLayer
_08034F46:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	pop {r4, r5, pc}
	.align 2, 0
_08034F50: .4byte gUnk_080CEEC8
_08034F54: .4byte gRoomControls

	thumb_func_start sub_08034F58
sub_08034F58: @ 0x08034F58
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08034F6C @ =gUnk_0813ABA8
	bl DoExitTransition
	adds r0, r4, #0
	bl DeleteEntity
	pop {r4, pc}
	.align 2, 0
_08034F6C: .4byte gUnk_0813ABA8

	thumb_func_start sub_08034F70
sub_08034F70: @ 0x08034F70
	push {lr}
	adds r2, r0, #0
	ldr r0, _08034F8C @ =gScreenTransition
	adds r0, #0x39
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x45
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _08034F90
	movs r0, #0
	b _08034F9A
	.align 2, 0
_08034F8C: .4byte gScreenTransition
_08034F90:
	cmp r0, #0x1e
	bls _08034F98
	movs r0, #1
	b _08034F9A
_08034F98:
	movs r0, #2
_08034F9A:
	strb r0, [r2, #0xb]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08034FA0
sub_08034FA0: @ 0x08034FA0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08034FC0
	ldr r0, [r4, #0x54]
	adds r0, #0x3d
	strb r1, [r0]
	movs r0, #0xc
	movs r1, #1
	bl sub_08080964
_08034FC0:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08035008
	cmp r0, #1
	beq _08035020
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _08035040
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08035004 @ =gRoomControls
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
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	b _08035040
	.align 2, 0
_08035004: .4byte gRoomControls
_08035008:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x3b
	bhi _08035040
	ldr r0, _0803501C @ =gScreenTransition
	adds r0, #0x39
	movs r1, #0x3c
	b _08035032
	.align 2, 0
_0803501C: .4byte gScreenTransition
_08035020:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x1d
	bhi _08035040
	ldr r0, _0803503C @ =gScreenTransition
	adds r0, #0x39
	movs r1, #0x1e
_08035032:
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08035050
	b _08035048
	.align 2, 0
_0803503C: .4byte gScreenTransition
_08035040:
	ldr r0, _0803504C @ =gScreenTransition
	ldrb r1, [r5]
	adds r0, #0x39
	strb r1, [r0]
_08035048:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803504C: .4byte gScreenTransition

	thumb_func_start sub_08035050
sub_08035050: @ 0x08035050
	push {r4, lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	movs r4, #0
	strb r1, [r0, #0x10]
	adds r0, #0x45
	strb r4, [r0]
	movs r0, #0x4b
	movs r1, #0
	bl CreateEnemy
	adds r2, r0, #0
	cmp r2, #0
	beq _08035082
	movs r0, #1
	strb r0, [r2, #0xb]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	str r4, [r2, #0x50]
	adds r0, r2, #0
	bl UpdateSpriteForCollisionLayer
_08035082:
	pop {r4, pc}

	thumb_func_start sub_08035084
sub_08035084: @ 0x08035084
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _08035118
	ldr r0, _080350A0 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x42
	bls _080350A4
	movs r0, #0
	b _0803511A
	.align 2, 0
_080350A0: .4byte gEntCount
_080350A4:
	ldr r4, _080350D8 @ =gUnk_030010D8
_080350A6:
	bl Random
	movs r1, #6
	bl __modsi3
	adds r6, r0, #0
	ldrb r0, [r4]
	lsrs r0, r0, #4
	cmp r6, r0
	beq _080350A6
	ldr r2, _080350DC @ =gScreenTransition
	adds r2, #0x38
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	lsls r1, r6, #4
	orrs r0, r1
	strb r0, [r2]
	movs r5, #0
	ldr r4, _080350E0 @ =gUnk_080CEECC
	ldr r7, _080350E4 @ =gRoomControls
_080350D0:
	cmp r5, r6
	bne _080350E8
	mov r2, r8
	b _080350F2
	.align 2, 0
_080350D8: .4byte gUnk_030010D8
_080350DC: .4byte gScreenTransition
_080350E0: .4byte gUnk_080CEECC
_080350E4: .4byte gRoomControls
_080350E8:
	movs r0, #0x37
	movs r1, #1
	bl CreateEnemy
	adds r2, r0, #0
_080350F2:
	ldrh r0, [r7, #6]
	ldrb r1, [r4]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	ldrh r0, [r7, #8]
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl UpdateSpriteForCollisionLayer
	adds r5, #1
	adds r4, #2
	cmp r5, #5
	bls _080350D0
_08035118:
	movs r0, #1
_0803511A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08035120
sub_08035120: @ 0x08035120
	push {r4, r5, r6, lr}
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _0803515C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r4, r1, #4
	movs r2, #0x3f
	ands r4, r2
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	movs r6, #0
	ldr r5, _08035160 @ =gUnk_080CEED8
_08035146:
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r0, r4, r0
	bl sub_0807B600
	adds r5, #2
	adds r6, #1
	cmp r6, #0x17
	bls _08035146
	pop {r4, r5, r6, pc}
	.align 2, 0
_0803515C: .4byte gRoomControls
_08035160: .4byte gUnk_080CEED8
