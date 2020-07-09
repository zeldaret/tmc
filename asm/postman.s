	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Postman
Postman: @ 0x080603FC
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08060412
	adds r0, r2, #0
	bl sub_08060528
	b _08060422
_08060412:
	ldr r0, _08060424 @ =gUnk_0810AA24
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_08060422:
	pop {pc}
	.align 2, 0
_08060424: .4byte gUnk_0810AA24

	thumb_func_start sub_08060428
sub_08060428: @ 0x08060428
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08060444
	bl GetCurrentRoomProperty
	adds r1, r0, #0
	b _08060446
_08060444:
	movs r1, #0
_08060446:
	adds r0, r4, #0
	movs r2, #0
	bl sub_0806EE04
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #4
	bl InitAnimationForceUpdate
	pop {r4, pc}

	thumb_func_start sub_0806045C
sub_0806045C: @ 0x0806045C
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_080604DC
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bgt _08060488
	cmp r0, #1
	blt _08060488
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0
	bl TextboxNoOverlapFollow
	b _080604C0
_08060488:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	ldrb r0, [r4, #0x14]
	cmp r1, r0
	beq _0806049E
	strb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_0806049E:
	adds r0, r4, #0
	movs r1, #0x18
	movs r2, #0x18
	bl sub_0806ED9C
	movs r1, #0
	cmp r0, #0
	blt _080604B6
	ldrb r2, [r4, #0x14]
	cmp r0, r2
	bne _080604B6
	movs r1, #1
_080604B6:
	cmp r1, #0
	bne _080604C0
	adds r0, r4, #0
	bl sub_0806EE20
_080604C0:
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}

	thumb_func_start sub_080604C8
sub_080604C8: @ 0x080604C8
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_080604DC
	movs r0, #1
	strb r0, [r4, #0xc]
	pop {r4, pc}

	thumb_func_start sub_080604DC
sub_080604DC: @ 0x080604DC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x18]
	lsls r0, r0, #0x1e
	lsrs r4, r0, #0x1e
	cmp r4, #1
	bne _08060524
	adds r0, r5, #0
	bl sub_080040A8
	cmp r0, #0
	beq _08060524
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	ands r4, r1
	cmp r4, #0
	beq _08060524
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08060524
	ldrh r0, [r1, #0x32]
	adds r0, #1
	strh r0, [r1, #0x32]
	adds r0, r1, #0
	movs r1, #3
	bl sub_0805E3A0
_08060524:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08060528
sub_08060528: @ 0x08060528
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0xc]
	cmp r3, #1
	beq _08060582
	cmp r3, #1
	bgt _0806053C
	cmp r3, #0
	beq _08060546
	b _080605EC
_0806053C:
	cmp r3, #2
	beq _080605F6
	cmp r3, #3
	beq _08060618
	b _080605EC
_08060546:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x68
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r5, r4, #0
	adds r5, #0x6a
	movs r0, #0
	strh r3, [r5]
	adds r6, r4, #0
	adds r6, #0x6d
	strb r0, [r6]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x6c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0807DD50
	b _08060634
_08060582:
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _080605B8
	movs r1, #0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r0, r4, #0
	bl sub_0806F118
	ldr r1, _080605B4 @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _080605EC
	.align 2, 0
_080605B4: .4byte gLinkEntity
_080605B8:
	cmp r0, #0
	beq _080605E4
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r0, r4, #0
	bl sub_080606D8
	ldr r1, _080605E0 @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _080605EC
	.align 2, 0
_080605E0: .4byte gLinkEntity
_080605E4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
_080605EC:
	adds r5, r4, #0
	adds r5, #0x6a
	adds r6, r4, #0
	adds r6, #0x6d
	b _08060634
_080605F6:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldr r0, _08060614 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x6a
	adds r6, r4, #0
	adds r6, #0x6d
	cmp r0, #0
	bne _08060634
	b _08060630
	.align 2, 0
_08060614: .4byte gTextBox
_08060618:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl UpdateFuseInteraction
	adds r5, r4, #0
	adds r5, #0x6a
	adds r6, r4, #0
	adds r6, #0x6d
	cmp r0, #0
	beq _08060634
_08060630:
	movs r0, #1
	strb r0, [r4, #0xc]
_08060634:
	adds r0, r4, #0
	bl sub_080604DC
	adds r1, r5, #0
	ldrh r3, [r1]
	movs r0, #0
	ldrsh r2, [r1, r0]
	cmp r2, #0
	ble _08060670
	ldr r0, _08060668 @ =0x0000012B
	cmp r2, r0
	ble _0806066C
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #1
	strb r0, [r6]
	adds r0, r4, #0
	bl sub_080788E0
	movs r0, #0x7c
	bl sub_08004488
	b _08060670
	.align 2, 0
_08060668: .4byte 0x0000012B
_0806066C:
	subs r0, r3, #1
	strh r0, [r5]
_08060670:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	ldrb r0, [r6]
	cmp r0, #0
	beq _08060694
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _08060694
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _08060694
	strb r0, [r6]
	adds r0, r4, #0
	bl sub_080606C0
_08060694:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	blt _080606B4
	ldr r0, _080606BC @ =gLinkEntity
	adds r0, #0x38
	ldrb r1, [r0]
	cmp r1, #0
	beq _080606AE
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, r1
	bne _080606B4
_080606AE:
	adds r0, r4, #0
	bl sub_0806ED78
_080606B4:
	adds r0, r4, #0
	bl sub_0800451C
	pop {r4, r5, r6, pc}
	.align 2, 0
_080606BC: .4byte gLinkEntity

	thumb_func_start sub_080606C0
sub_080606C0: @ 0x080606C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x6c
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_080606D8
sub_080606D8: @ 0x080606D8
	push {lr}
	adds r2, r0, #0
	ldr r0, _080606F8 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _080606E8
	movs r0, #0
_080606E8:
	lsls r1, r0, #3
	ldr r0, _080606FC @ =gUnk_0810AA30
	adds r1, r1, r0
	adds r0, r2, #0
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_080606F8: .4byte gUnk_02002A40
_080606FC: .4byte gUnk_0810AA30

	thumb_func_start sub_08060700
sub_08060700: @ 0x08060700
	push {r4, r5, lr}
	ldr r3, _0806074C @ =gUnk_0810A918
	adds r2, r0, #0
	adds r2, #0x68
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	adds r3, r0, #0
	adds r3, #0x69
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r2, r2, r3
	movs r3, #0
	ldrsb r3, [r2, r3]
	lsls r3, r3, #2
	ldr r2, _08060750 @ =gUnk_0810A66C
	adds r3, r3, r2
	ldr r4, _08060754 @ =gRoomControls
	movs r5, #0
	ldrsh r2, [r3, r5]
	ldrh r5, [r4, #6]
	adds r2, r2, r5
	movs r5, #2
	ldrsh r3, [r3, r5]
	ldrh r4, [r4, #8]
	adds r3, r3, r4
	bl sub_0807DEDC
	ldr r2, _08060758 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, pc}
	.align 2, 0
_0806074C: .4byte gUnk_0810A918
_08060750: .4byte gUnk_0810A66C
_08060754: .4byte gRoomControls
_08060758: .4byte gUnk_02033280

	thumb_func_start sub_0806075C
sub_0806075C: @ 0x0806075C
	adds r2, r0, #0
	adds r2, #0x68
	movs r1, #0xb
	strb r1, [r2]
	adds r0, #0x69
	movs r1, #0xff
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0806076C
sub_0806076C: @ 0x0806076C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov sb, r1
	ldr r0, [r7, #0x34]
	cmp r0, #0
	bge _08060790
	ldr r1, _0806078C @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
	b _080608D8
	.align 2, 0
_0806078C: .4byte gUnk_02033280
_08060790:
	adds r4, r7, #0
	adds r4, #0x69
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	adds r5, r7, #0
	adds r5, #0x38
	movs r0, #1
	strb r0, [r5]
	adds r0, r7, #0
	bl sub_080606C0
	ldr r1, _080607DC @ =gUnk_0810A918
	adds r2, r7, #0
	adds r2, #0x68
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r6, [r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r6, r6, r0
	mov sl, r4
	mov r8, r2
_080607C2:
	ldrb r0, [r6]
	adds r0, #5
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bls _080607D0
	b _080608D8
_080607D0:
	lsls r0, r0, #2
	ldr r1, _080607E0 @ =_080607E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080607DC: .4byte gUnk_0810A918
_080607E0: .4byte _080607E4
_080607E4: @ jump table
	.4byte _08060846 @ case 0
	.4byte _08060836 @ case 1
	.4byte _08060830 @ case 2
	.4byte _0806082A @ case 3
	.4byte _0806081E @ case 4
	.4byte _080607FC @ case 5
_080607FC:
	adds r6, #1
	movs r5, #0
	ldrsb r5, [r6, r5]
	adds r6, #1
	bl Random
	adds r1, r5, #0
	bl __modsi3
	adds r0, r6, r0
	ldrb r0, [r0]
	movs r1, #0
	mov r2, r8
	strb r0, [r2]
	mov r3, sl
	strb r1, [r3]
	b _080608D8
_0806081E:
	adds r1, r7, #0
	adds r1, #0x6a
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	b _080608CC
_0806082A:
	movs r0, #1
	strb r0, [r5]
	b _080608CC
_08060830:
	movs r0, #2
	strb r0, [r5]
	b _080608CC
_08060836:
	movs r0, #0x1e
	mov r4, sb
	strh r0, [r4, #0x10]
	ldrb r1, [r7, #0x18]
	subs r0, #0x22
	ands r0, r1
	strb r0, [r7, #0x18]
	b _080608CC
_08060846:
	adds r6, #1
	movs r5, #0
	ldrsb r5, [r6, r5]
	adds r6, #1
	bl Random
	adds r1, r5, #0
	bl __modsi3
	str r0, [sp, #4]
	movs r2, #0
	cmp r2, r5
	bhs _080608B8
	ldr r0, _080608C0 @ =gRoomControls
	mov sb, r0
_08060864:
	ldr r1, [sp, #4]
	adds r0, r6, r1
	ldrb r0, [r0]
	mov r3, r8
	strb r0, [r3]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	ldr r4, _080608C4 @ =gUnk_0810A918
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, _080608C8 @ =gUnk_0810A66C
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r3, sb
	ldrh r3, [r3, #6]
	adds r0, r0, r3
	strh r0, [r7, #0x2e]
	ldrh r0, [r1, #2]
	mov r4, sb
	ldrh r4, [r4, #8]
	adds r0, r0, r4
	strh r0, [r7, #0x32]
	adds r0, r7, #0
	str r2, [sp]
	bl sub_080040A8
	cmp r0, #0
	beq _080608B8
	ldr r0, [sp, #4]
	adds r0, #1
	adds r1, r5, #0
	bl __modsi3
	str r0, [sp, #4]
	ldr r2, [sp]
	adds r2, #1
	cmp r2, r5
	blo _08060864
_080608B8:
	movs r0, #0
	mov r1, sl
	strb r0, [r1]
	b _080608D8
	.align 2, 0
_080608C0: .4byte gRoomControls
_080608C4: .4byte gUnk_0810A918
_080608C8: .4byte gUnk_0810A66C
_080608CC:
	mov r2, sl
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r6, #1
	b _080607C2
_080608D8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080608E4
sub_080608E4: @ 0x080608E4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x34]
	cmp r0, #0
	blt _08060970
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	ldr r6, _08060974 @ =gLinkEntity
	cmp r1, #1
	bne _0806090A
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #2
	beq _08060970
_0806090A:
	cmp r1, #2
	bne _08060918
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	beq _08060970
_08060918:
	ldr r2, [r5, #4]
	lsls r2, r2, #4
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	ldr r1, _08060978 @ =gUnk_0810AA70
	adds r0, r0, r1
	adds r2, r2, r0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	movs r7, #0x32
	ldrsh r3, [r4, r7]
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r3, r3, r0
	movs r7, #0x2e
	ldrsh r0, [r6, r7]
	subs r1, r0, r1
	movs r7, #0x32
	ldrsh r0, [r6, r7]
	subs r3, r0, r3
	movs r0, #2
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldrb r2, [r2, #3]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r3, r3, r2
	lsls r0, r0, #1
	cmp r0, r1
	bls _08060970
	lsls r0, r2, #1
	cmp r0, r3
	bls _08060970
	movs r0, #1
	str r0, [r5, #0x14]
	adds r1, r4, #0
	adds r1, #0x6a
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
_08060970:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08060974: .4byte gLinkEntity
_08060978: .4byte gUnk_0810AA70

	thumb_func_start Postman_Fusion
Postman_Fusion: @ 0x0806097C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _080609A2
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #2
	bl InitAnimationForceUpdate
	b _080609A8
_080609A2:
	adds r0, r2, #0
	bl UpdateAnimationSingleFrame
_080609A8:
	pop {pc}
	.align 2, 0

	thumb_func_start CreateZeldaFollower
CreateZeldaFollower: @ 0x080609AC
	push {r4, lr}
	movs r0, #0x1c
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080609E0
	movs r0, #0x2e
	movs r1, #0
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _080609E0
	ldr r0, _080609E4 @ =gLinkEntity
	adds r1, r4, #0
	bl CopyPosition
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_0806EDC4
	strb r0, [r4, #0x14]
_080609E0:
	pop {r4, pc}
	.align 2, 0
_080609E4: .4byte gLinkEntity
