	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Stockwell
Stockwell: @ 0x08065054
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806507C @ =gUnk_0810FDA4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r4, #0
	bl ExecuteScriptCommandSet
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_0806507C: .4byte gUnk_0810FDA4

	thumb_func_start sub_08065080
sub_08065080: @ 0x08065080
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08078778
	ldr r3, _080650C4 @ =gUnk_0810FDA0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08078850
	ldr r1, _080650C8 @ =gUnk_080142B0
	adds r0, r4, #0
	bl StartCutscene
	adds r4, #0x84
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_080650C4: .4byte gUnk_0810FDA0
_080650C8: .4byte gUnk_080142B0

	thumb_func_start sub_080650CC
sub_080650CC: @ 0x080650CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r6, _080650F8 @ =gRoomVars
	ldr r0, [r6, #0x68]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08065100
	movs r1, #0
	movs r0, #4
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, _080650FC @ =gUnk_080143C0
	bl sub_0807DB88
	b _080651A6
	.align 2, 0
_080650F8: .4byte gRoomVars
_080650FC: .4byte gUnk_080143C0
_08065100:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0806517C
	adds r3, r5, #0
	adds r3, #0x39
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0806517C
	strb r4, [r3]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	movs r1, #7
	bl InitializeAnimation
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _0806513C
	ldr r7, _08065138 @ =0x00002C01
	b _0806515E
	.align 2, 0
_08065138: .4byte 0x00002C01
_0806513C:
	ldrb r0, [r6, #6]
	bl GetSaleItemConfirmMessageID
	adds r7, r0, #0
	ldrb r0, [r6, #6]
	bl sub_08053FE0
	mov r8, r0
	movs r0, #4
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, _08065174 @ =gUnk_08014384
	bl sub_0807DB88
_0806515E:
	adds r0, r7, #0
	adds r1, r5, #0
	bl TextboxNoOverlap
	ldr r1, _08065178 @ =gTextBox
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1, #0x10]
	b _080651A6
	.align 2, 0
_08065174: .4byte gUnk_08014384
_08065178: .4byte gTextBox
_0806517C:
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080651A0
	ldr r4, _0806519C @ =gUnk_0810FDB8
	bl Random
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r4
	ldrb r1, [r1]
	adds r0, r5, #0
	bl InitializeAnimation
	b _080651A6
	.align 2, 0
_0806519C: .4byte gUnk_0810FDB8
_080651A0:
	adds r0, r5, #0
	bl GetNextFrame
_080651A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080651AC
sub_080651AC: @ 0x080651AC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldr r0, _080651D4 @ =gTextBox
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _080651D2
	adds r0, r4, #0
	adds r0, #0x39
	strb r1, [r0]
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
_080651D2:
	pop {r4, pc}
	.align 2, 0
_080651D4: .4byte gTextBox

	thumb_func_start sub_080651D8
sub_080651D8: @ 0x080651D8
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldr r1, _080651F4 @ =gUnk_0810FDC8
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080651F4: .4byte gUnk_0810FDC8

	thumb_func_start sub_080651F8
sub_080651F8: @ 0x080651F8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0806522A
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	movs r2, #0x18
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #8
	bl sub_080A2CFC
	movs r0, #1
	bl sub_08078A90
_0806522A:
	pop {r4, pc}

	thumb_func_start sub_0806522C
sub_0806522C: @ 0x0806522C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065248
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	ldr r0, _0806524C @ =0x00002C16
	bl TextboxNoOverlap
_08065248:
	pop {pc}
	.align 2, 0
_0806524C: .4byte 0x00002C16

	thumb_func_start sub_08065250
sub_08065250: @ 0x08065250
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08056338
	adds r1, r0, #0
	cmp r1, #0
	beq _08065264
	cmp r1, #1
	beq _0806527E
	b _0806528A
_08065264:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	movs r2, #0x18
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #8
	bl sub_080A2CFC
	b _0806528A
_0806527E:
	movs r0, #0
	movs r1, #7
	strb r1, [r4, #0xd]
	strb r0, [r4, #0xe]
	movs r0, #2
	strb r0, [r4, #0xf]
_0806528A:
	pop {r4, pc}

	thumb_func_start sub_0806528C
sub_0806528C: @ 0x0806528C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080652A8
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	ldr r0, _080652AC @ =0x00002C18
	bl TextboxNoOverlap
_080652A8:
	pop {pc}
	.align 2, 0
_080652AC: .4byte 0x00002C18

	thumb_func_start sub_080652B0
sub_080652B0: @ 0x080652B0
	push {lr}
	adds r2, r0, #0
	ldr r0, _080652DC @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080652DA
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	movs r0, #0xa
	strb r0, [r2, #0xe]
	ldr r1, _080652E0 @ =gRoomVars
	ldrb r0, [r2, #0xf]
	str r0, [r1, #0x68]
	movs r0, #0x36
	movs r1, #0
	movs r2, #0
	bl CreateItemEntity
_080652DA:
	pop {pc}
	.align 2, 0
_080652DC: .4byte gTextBox
_080652E0: .4byte gRoomVars

	thumb_func_start sub_080652E4
sub_080652E4: @ 0x080652E4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080652F4
	subs r0, #1
	strb r0, [r1, #0xe]
	b _08065308
_080652F4:
	ldr r0, _0806530C @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	beq _08065308
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	ldr r0, _08065310 @ =0x00002C19
	bl TextboxNoOverlap
_08065308:
	pop {pc}
	.align 2, 0
_0806530C: .4byte gPlayerEntity
_08065310: .4byte 0x00002C19

	thumb_func_start sub_08065314
sub_08065314: @ 0x08065314
	push {lr}
	adds r2, r0, #0
	ldr r0, _08065334 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08065332
	ldrb r0, [r2, #0xd]
	adds r0, #1
	strb r0, [r2, #0xd]
	movs r0, #3
	movs r1, #3
	bl MenuFadeIn
_08065332:
	pop {pc}
	.align 2, 0
_08065334: .4byte gTextBox

	thumb_func_start sub_08065338
sub_08065338: @ 0x08065338
	push {lr}
	adds r2, r0, #0
	ldr r0, _08065360 @ =gTextBox
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _0806535C
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	ldr r1, _08065364 @ =gRoomVars
	ldrb r0, [r2, #0xf]
	str r0, [r1, #0x68]
	adds r0, r2, #0
	movs r1, #4
	bl InitializeAnimation
_0806535C:
	pop {pc}
	.align 2, 0
_08065360: .4byte gTextBox
_08065364: .4byte gRoomVars

	thumb_func_start sub_08065368
sub_08065368: @ 0x08065368
	push {lr}
	bl GetNextFrame
	pop {pc}

	thumb_func_start sub_08065370
sub_08065370: @ 0x08065370
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov r8, r1
	movs r6, #1
	ldr r0, _0806539C @ =gRoomVars
	ldrb r5, [r0, #6]
	movs r0, #0
	mov sb, r0
	cmp r5, #0x66
	beq _0806541A
	cmp r5, #0x66
	bhi _080653AA
	cmp r5, #0x61
	beq _08065426
	cmp r5, #0x61
	bhi _080653A0
	cmp r5, #0xd
	beq _080653D0
	b _0806543C
	.align 2, 0
_0806539C: .4byte gRoomVars
_080653A0:
	cmp r5, #0x64
	beq _08065414
	cmp r5, #0x65
	beq _08065420
	b _0806543C
_080653AA:
	cmp r5, #0x6c
	blo _0806543C
	cmp r5, #0x6d
	bls _080653EC
	cmp r5, #0x6f
	bhi _0806543C
	ldr r2, _080653C8 @ =gQuiverSizes
	ldr r1, _080653CC @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xaf
	ldrb r0, [r0]
	adds r0, r0, r2
	adds r1, #0xad
	b _080653FA
	.align 2, 0
_080653C8: .4byte gQuiverSizes
_080653CC: .4byte gUnk_02002A40
_080653D0:
	movs r0, #0xd
	bl GetInventoryValue
	cmp r0, #0
	bne _080653E4
	movs r0, #0xe
	bl GetInventoryValue
	cmp r0, #0
	beq _0806543C
_080653E4:
	ldr r0, _080653E8 @ =0x00002C0B
	b _080654C2
	.align 2, 0
_080653E8: .4byte 0x00002C0B
_080653EC:
	ldr r2, _08065408 @ =gBombBagSizes
	ldr r1, _0806540C @ =gUnk_02002A40
	adds r0, r1, #0
	adds r0, #0xae
	ldrb r0, [r0]
	adds r0, r0, r2
	adds r1, #0xac
_080653FA:
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhi _0806543C
	ldr r0, _08065410 @ =0x00002C0E
	b _080654C2
	.align 2, 0
_08065408: .4byte gBombBagSizes
_0806540C: .4byte gUnk_02002A40
_08065410: .4byte 0x00002C0E
_08065414:
	movs r1, #0x55
	mov sb, r1
	b _0806543C
_0806541A:
	movs r0, #0x56
	mov sb, r0
	b _0806543C
_08065420:
	movs r1, #0xcd
	mov sb, r1
	b _0806543C
_08065426:
	ldr r0, _08065494 @ =gUnk_02002A40
	adds r0, #0xc2
	ldrh r1, [r0]
	ldr r0, _08065498 @ =0x000003E6
	cmp r1, r0
	bls _0806543C
	ldr r0, _0806549C @ =0x00002C0E
	adds r1, r4, #0
	bl TextboxNoOverlap
	movs r6, #0
_0806543C:
	cmp r6, #0
	beq _080654C8
	adds r0, r5, #0
	bl sub_08053FE0
	adds r6, r0, #0
	ldr r7, _08065494 @ =gUnk_02002A40
	adds r0, r7, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r6, r0
	bhi _080654C0
	rsbs r0, r6, #0
	bl ModRupees
	ldr r4, _080654A0 @ =gRoomVars
	ldrb r1, [r4, #7]
	adds r0, r5, #0
	movs r2, #2
	bl sub_080A7C18
	movs r0, #0
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	movs r0, #1
	mov r1, r8
	str r0, [r1, #0x14]
	mov r0, sb
	cmp r0, #0
	beq _0806547C
	bl SetLocalFlag
_0806547C:
	ldr r1, [r7, #0x5c]
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bhi _0806548A
	adds r0, r1, #1
	str r0, [r7, #0x5c]
_0806548A:
	ldr r0, [r7, #0x5c]
	cmp r0, #9
	bls _080654A8
	ldr r0, _080654A4 @ =0x00002C11
	b _080654B6
	.align 2, 0
_08065494: .4byte gUnk_02002A40
_08065498: .4byte 0x000003E6
_0806549C: .4byte 0x00002C0E
_080654A0: .4byte gRoomVars
_080654A4: .4byte 0x00002C11
_080654A8:
	cmp r6, #0x63
	bls _080654B4
	ldr r0, _080654B0 @ =0x00002C10
	b _080654B6
	.align 2, 0
_080654B0: .4byte 0x00002C10
_080654B4:
	ldr r0, _080654BC @ =0x00002C0F
_080654B6:
	mov r1, r8
	str r0, [r1, #4]
	b _080654CE
	.align 2, 0
_080654BC: .4byte 0x00002C0F
_080654C0:
	ldr r0, _080654D8 @ =0x00002C0D
_080654C2:
	adds r1, r4, #0
	bl TextboxNoOverlap
_080654C8:
	movs r0, #0
	mov r1, r8
	str r0, [r1, #0x14]
_080654CE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080654D8: .4byte 0x00002C0D

	thumb_func_start sub_080654DC
sub_080654DC: @ 0x080654DC
	push {lr}
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r1, #8
	bl sub_080A2D0C
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080654EC
sub_080654EC: @ 0x080654EC
	push {lr}
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r1, #8
	bl sub_080A2CFC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080654FC
sub_080654FC: @ 0x080654FC
	push {lr}
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08065518
	ldr r1, _08065514 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
	b _08065522
	.align 2, 0
_08065514: .4byte gUnk_02033280
_08065518:
	ldr r2, _08065524 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
_08065522:
	pop {pc}
	.align 2, 0
_08065524: .4byte gUnk_02033280

	thumb_func_start sub_08065528
sub_08065528: @ 0x08065528
	ldr r2, _08065530 @ =gRoomVars
	ldr r0, [r1, #4]
	str r0, [r2, #0x68]
	bx lr
	.align 2, 0
_08065530: .4byte gRoomVars
