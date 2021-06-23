	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ItemSword
ItemSword: @ 0x08075314
	push {lr}
	ldr r2, _08075330 @ =gPlayerState
	adds r2, #0xa8
	movs r3, #2
	strb r3, [r2]
	ldr r3, _08075334 @ =gUnk_0811BD44
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075330: .4byte gPlayerState
_08075334: .4byte gUnk_0811BD44

	thumb_func_start sub_08075338
sub_08075338: @ 0x08075338
.ifdef EU
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r4, _08074DA8 @ =gPlayerState
	ldr r1, [r4, #0x30]
	movs r3, #0x80
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08074DAC
	ldrb r0, [r5, #9]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r5, #9]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r4, #8]
	movs r0, #0x75
	bl SoundReq
	b _08074EE2
	.align 2, 0
_08074DA8: .4byte gPlayerState
_08074DAC:
	ldrb r2, [r4, #2]
	cmp r2, #0
	beq _08074E22
	movs r6, #7
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #3
	beq _08074E18
	movs r0, #0x78
	ands r0, r2
	cmp r0, #0
	bne _08074E18
	ldr r3, _08074E10 @ =gPlayerEntity
	ldr r1, [r3, #0x20]
	ldr r0, _08074E14 @ =0x00017FFF
	cmp r1, r0
	bhi _08074E18
	adds r0, r4, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08074E18
	ldr r0, [r3, #0x34]
	cmp r0, #0
	beq _08074E18
	movs r0, #0x20
	orrs r0, r2
	strb r0, [r4, #2]
	adds r0, r4, #0
	adds r0, #0xab
	strb r6, [r0]
	movs r0, #8
	asrs r0, r7
	lsls r1, r0, #4
	orrs r0, r1
	ldrb r1, [r4, #4]
	orrs r0, r1
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_08077B98
	movs r0, #6
	strb r0, [r5, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08075898
	b _08074EE2
	.align 2, 0
_08074E10: .4byte gPlayerEntity
_08074E14: .4byte 0x00017FFF
_08074E18:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_080759B8
	b _08074EE2
_08074E22:
	movs r6, #0x80
	lsls r6, r6, #0xb
	ands r6, r1
	cmp r6, #0
	beq _08074EAE
	adds r0, r4, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _08074E4C
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _08074EE2
	bl DeleteEntity
	str r6, [r4, #0x2c]
	b _08074EE2
_08074E4C:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	adds r0, r5, #0
	bl sub_08077B98
	movs r3, #8
	adds r1, r3, #0
	asrs r1, r7
	lsls r0, r1, #4
	orrs r0, r1
	ldrb r2, [r4, #4]
	orrs r0, r2
	strb r0, [r4, #4]
	ldrb r2, [r4, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	orrs r1, r0
	strb r1, [r4, #0xb]
	strb r3, [r5, #4]
	movs r0, #0x14
	strb r0, [r5, #7]
	movs r0, #6
	strb r0, [r5, #0xf]
	ldrb r1, [r5, #9]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #9]
	adds r1, r4, #0
	adds r1, #0xab
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #0x30]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_08077DF4
	movs r0, #0x77
	bl SoundReq
	b _08074EE2
_08074EAE:
	ldrb r1, [r4, #0x1b]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08074EC0
	strb r6, [r4, #0x1b]
	ldr r0, _08074EE4 @ =gPlayerEntity
	bl sub_0806F948
_08074EC0:
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _08074ED4
	ldrb r0, [r1, #9]
	cmp r0, #1
	beq _08074ED4
	adds r0, r1, #0
	bl DeleteEntity
	str r6, [r4, #0x2c]
_08074ED4:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	adds r0, r5, #0
	bl sub_08077B98
_08074EE2:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08074EE4: .4byte gPlayerEntity

.else
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r4, _0807536C @ =gPlayerState
	ldr r1, [r4, #0x30]
	movs r3, #0x80
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08075370
	ldrb r0, [r5, #9]
	movs r1, #0x80
	orrs r1, r0
	strb r1, [r5, #9]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r4, #8]
	movs r0, #0x75
	bl SoundReq
	b _080754B4
	.align 2, 0
_0807536C: .4byte gPlayerState
_08075370:
	ldrb r2, [r4, #2]
	cmp r2, #0
	beq _080753DC
	movs r6, #7
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #3
	beq _080753E4
	movs r0, #0x78
	ands r0, r2
	cmp r0, #0
	bne _080753E4
	ldr r3, _080753D4 @ =gPlayerEntity
	ldr r1, [r3, #0x20]
	ldr r0, _080753D8 @ =0x00017FFF
	cmp r1, r0
	bhi _080753E4
	adds r0, r4, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080753E4
	ldr r0, [r3, #0x34]
	cmp r0, #0
	beq _080753E4
	movs r0, #0x20
	orrs r0, r2
	strb r0, [r4, #2]
	adds r0, r4, #0
	adds r0, #0xab
	strb r6, [r0]
	movs r0, #8
	asrs r0, r7
	lsls r1, r0, #4
	orrs r0, r1
	ldrb r1, [r4, #4]
	orrs r0, r1
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl sub_08077B98
	movs r0, #6
	strb r0, [r5, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08075898
	b _080754B4
	.align 2, 0
_080753D4: .4byte gPlayerEntity
_080753D8: .4byte 0x00017FFF
_080753DC:
	ldr r2, _080753F0 @ =gPlayerEntity
	ldr r0, [r2, #0x34]
	cmp r0, #0
	beq _080753F4
_080753E4:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_080759B8
	b _080754B4
	.align 2, 0
_080753F0: .4byte gPlayerEntity
_080753F4:
	movs r6, #0x80
	lsls r6, r6, #0xb
	ands r6, r1
	cmp r6, #0
	beq _08075480
	adds r0, r4, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _0807541E
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _080754B4
	bl DeleteEntity
	str r6, [r4, #0x2c]
	b _080754B4
_0807541E:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	adds r0, r5, #0
	bl sub_08077B98
	movs r3, #8
	adds r1, r3, #0
	asrs r1, r7
	lsls r0, r1, #4
	orrs r0, r1
	ldrb r2, [r4, #4]
	orrs r0, r2
	strb r0, [r4, #4]
	ldrb r2, [r4, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xb]
	orrs r1, r0
	strb r1, [r4, #0xb]
	strb r3, [r5, #4]
	movs r0, #0x14
	strb r0, [r5, #7]
	movs r0, #6
	strb r0, [r5, #0xf]
	ldrb r1, [r5, #9]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #9]
	adds r1, r4, #0
	adds r1, #0xab
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #0x30]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_08077DF4
	movs r0, #0x77
	bl SoundReq
	b _080754B4
_08075480:
	ldrb r1, [r4, #0x1b]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08075492
	strb r6, [r4, #0x1b]
	adds r0, r2, #0
	bl sub_0806F948
_08075492:
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _080754A6
	ldrb r0, [r1, #9]
	cmp r0, #1
	beq _080754A6
	adds r0, r1, #0
	bl DeleteEntity
	str r6, [r4, #0x2c]
_080754A6:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08077D38
	adds r0, r5, #0
	bl sub_08077B98
_080754B4:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
.endif

	thumb_func_start sub_080754B8
sub_080754B8: @ 0x080754B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r7, _080754D4 @ =gPlayerState
	ldrb r1, [r7, #0x1b]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080754D8
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08075694
	b _0807557E
	.align 2, 0
_080754D4: .4byte gPlayerState
_080754D8:
	ldrb r0, [r7, #4]
	cmp r0, #0
	beq _08075576
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080754F2
	ldrb r1, [r4, #9]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #9]
_080754F2:
	ldr r0, _0807552C @ =gPlayerEntity
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075538
	bl sub_0807B014
	adds r5, r0, #0
	cmp r5, #0
	beq _08075538
	movs r0, #8
	movs r1, #0xf
	movs r2, #2
	bl FindEntityByID
	cmp r0, #0
	bne _08075538
	adds r0, r4, #0
	movs r1, #0xf
	bl CreatePlayerBomb
	cmp r5, #0xf
	bne _08075530
	adds r1, r7, #0
	adds r1, #0xab
	movs r0, #5
	b _08075536
	.align 2, 0
_0807552C: .4byte gPlayerEntity
_08075530:
	adds r1, r7, #0
	adds r1, #0xab
	movs r0, #8
_08075536:
	strb r0, [r1]
_08075538:
	ldrb r1, [r4, #0xe]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807557E
	ldr r1, _08075568 @ =gPlayerState
	ldr r0, [r1, #0x30]
	ands r0, r2
	cmp r0, #0
	bne _0807555C
	adds r0, r1, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807556C
_0807555C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _0807557E
	.align 2, 0
_08075568: .4byte gPlayerState
_0807556C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08075580
	b _0807557E
_08075576:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
_0807557E:
	pop {r4, r5, r6, r7, pc}


	thumb_func_start sub_08075580
sub_08075580: @ 0x08075580
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _080755E6
	ldr r2, _080755C8 @ =gPlayerState
	ldrb r3, [r2, #2]
	cmp r3, #0
	bne _080755E6
	movs r1, #8
	asrs r1, r5
	ldrb r0, [r2, #0xa]
	bics r0, r1
	strb r0, [r2, #0xa]
	movs r0, #1
	strb r0, [r2, #0x1b]
	ldr r0, [r2, #0x2c]
	adds r0, #0x40
	movs r1, #0xd
	strb r1, [r0]
	strb r3, [r4, #0xf]
	movs r0, #2
	strb r0, [r4, #4]
	adds r0, r2, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080755CC
	movs r0, #0x28
	b _080755CE
	.align 2, 0
_080755C8: .4byte gPlayerState
_080755CC:
	movs r0, #0x50
_080755CE:
	strb r0, [r4, #7]
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
	movs r0, #0x43
	movs r1, #0
	movs r2, #0
	bl CreateObject
	b _080755EE
_080755E6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080759B8
_080755EE:
	pop {r4, r5, pc}

	thumb_func_start sub_080755F0
sub_080755F0: @ 0x080755F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _08075642
	adds r0, r4, #0
	bl sub_08077EC8
	cmp r0, #0
	bne _0807564A
	ldr r2, _08075634 @ =gPlayerState
	ldrb r3, [r2, #0x1b]
	ldrb r0, [r2, #4]
	orrs r0, r3
	cmp r0, #0
	beq _08075638
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807564A
	movs r0, #3
	strb r0, [r4, #4]
	ldrb r0, [r4, #9]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #9]
	movs r0, #0x20
	orrs r0, r3
	strb r0, [r2, #0x1b]
	b _0807564A
	.align 2, 0
_08075634: .4byte gPlayerState
_08075638:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080759B8
	b _0807564A
_08075642:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080759B8
_0807564A:
	pop {r4, r5, pc}

	thumb_func_start sub_0807564C
sub_0807564C: @ 0x0807564C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075668 @ =gPlayerState
	ldrb r1, [r5, #0x1b]
	ldrb r0, [r5, #4]
	orrs r0, r1
	cmp r0, #0
	bne _0807566C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _08075692
	.align 2, 0
_08075668: .4byte gPlayerState
_0807566C:
	adds r0, r4, #0
	bl sub_08077EC8
	cmp r0, #0
	bne _08075692
	adds r0, r4, #0
	bl sub_08077EFC
	cmp r0, #0
	beq _0807568A
	ldrb r1, [r5, #0x1b]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075692
_0807568A:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08075694
_08075692:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08075694
sub_08075694: @ 0x08075694
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r3, #1
	strb r3, [r4, #7]
	ldr r2, _080756C4 @ =gPlayerState
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080756D0
	ldr r0, _080756C8 @ =0xF7FFFFFF
	ands r1, r0
	ldr r0, _080756CC @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r2, #0x30]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
	b _080756E0
	.align 2, 0
_080756C4: .4byte gPlayerState
_080756C8: .4byte 0xF7FFFFFF
_080756CC: .4byte 0xFFFBFFFF
_080756D0:
	adds r0, r2, #0
	adds r0, #0xab
	strb r3, [r0]
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
_080756E0:
	ldr r2, _08075730 @ =gPlayerState
	movs r0, #8
	asrs r0, r5
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	movs r0, #4
	strb r0, [r4, #4]
	movs r0, #6
	strb r0, [r4, #0xf]
	ldr r0, _08075734 @ =gPlayerEntity
	adds r0, #0x40
	movs r1, #0x1e
	strb r1, [r0]
	ldrb r1, [r2, #0x1b]
	movs r0, #0x40
	orrs r0, r1
	movs r1, #0xdf
	ands r0, r1
	strb r0, [r2, #0x1b]
	adds r3, r2, #0
	adds r3, #0xa0
	ldrb r0, [r3]
	cmp r0, #4
	bne _08075726
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08075726
	movs r0, #1
	strb r0, [r3]
	bl sub_0807A108
_08075726:
	movs r0, #0x76
	bl SoundReq
	pop {r4, r5, pc}
	.align 2, 0
_08075730: .4byte gPlayerState
_08075734: .4byte gPlayerEntity

	thumb_func_start sub_08075738
sub_08075738: @ 0x08075738
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075750 @ =gPlayerState
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _08075754
	adds r0, r4, #0
	bl sub_080759B8
	b _0807588C
	.align 2, 0
_08075750: .4byte gPlayerState
_08075754:
	adds r0, r4, #0
	bl UpdateItemAnim
	adds r0, r4, #0
	bl sub_08077F10
	cmp r0, #0
	beq _08075768
	movs r0, #2
	strb r0, [r4, #7]
_08075768:
	ldrb r2, [r5, #0x1b]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080757D4
	ldrb r1, [r5, #0xd]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08075780
	strb r1, [r4, #0xb]
_08075780:
	ldr r1, _080757D0 @ =gPlayerEntity
	ldrb r0, [r4, #0xb]
	strb r0, [r1, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #0x24]
	ldrb r1, [r4, #0xe]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807588C
	movs r2, #0xa
	adds r0, r5, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080757AA
	movs r2, #0xf
_080757AA:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r2, r0
	bls _080757C6
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	ands r0, r1
	cmp r0, #0
	bne _0807588C
_080757C6:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _0807588C
	.align 2, 0
_080757D0: .4byte gPlayerEntity
_080757D4:
	ldr r7, _08075890 @ =gPlayerEntity
	adds r0, r7, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075816
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08075816
	adds r0, r5, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075816
	adds r0, r4, #0
	movs r1, #0x14
	bl CreatePlayerBomb
	adds r2, r0, #0
	cmp r2, #0
	beq _08075816
	ldrb r0, [r7, #0x14]
	movs r1, #6
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x14]
_08075816:
	ldr r5, _08075890 @ =gPlayerEntity
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807587A
	ldr r2, _08075894 @ =gPlayerState
	ldrb r3, [r2, #0x1b]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _0807587A
	adds r0, r2, #0
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807587A
	ldrb r0, [r4, #7]
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807587A
	movs r0, #0x10
	orrs r0, r3
	strb r0, [r2, #0x1b]
	adds r1, r2, #0
	adds r1, #0xab
	movs r0, #6
	strb r0, [r1]
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0xb]
	movs r0, #1
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	movs r1, #8
	asrs r1, r6
	ldrb r0, [r2, #0xa]
	bics r0, r1
	strb r0, [r2, #0xa]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
_0807587A:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807588C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
_0807588C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08075890: .4byte gPlayerEntity
_08075894: .4byte gPlayerState

	thumb_func_start sub_08075898
sub_08075898: @ 0x08075898
	push {lr}
	adds r2, r0, #0
	ldr r0, _080758AC @ =gPlayerState
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _080758AA
	adds r0, r2, #0
	bl sub_080759B8
_080758AA:
	pop {pc}
	.align 2, 0
_080758AC: .4byte gPlayerState

	thumb_func_start sub_080758B0
sub_080758B0: @ 0x080758B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080758C4 @ =gPlayerState
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _080758C8
	adds r0, r4, #0
	bl sub_080759B8
	b _080758F8
	.align 2, 0
_080758C4: .4byte gPlayerState
_080758C8:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080758F8
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r1, [r5, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080758EA
	movs r0, #3
	b _080758EC
_080758EA:
	movs r0, #5
_080758EC:
	strb r0, [r4, #4]
	ldr r2, _080758FC @ =gPlayerState
	ldrb r1, [r2, #0x1b]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r2, #0x1b]
_080758F8:
	pop {r4, r5, pc}
	.align 2, 0
_080758FC: .4byte gPlayerState

	thumb_func_start sub_08075900
sub_08075900: @ 0x08075900
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08075920 @ =gPlayerState
	ldrb r0, [r5, #0x12]
	cmp r0, #0x11
	bne _08075928
	ldr r0, [r5, #0x30]
	ldr r1, _08075924 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #0x30]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
	b _080759B2
	.align 2, 0
_08075920: .4byte gPlayerState
_08075924: .4byte 0xFFFBFFFF
_08075928:
	adds r0, r4, #0
	bl UpdateItemAnim
	ldrb r1, [r5, #0x1b]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08075948
	movs r0, #0xa0
	strb r0, [r5, #0x1b]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0807564C
	b _080759B2
_08075948:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08075998
	subs r0, #1
	strb r0, [r4, #7]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08075962
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_08077DF4
_08075962:
	ldr r4, _08075990 @ =gPlayerEntity
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	bl sub_08079E08
	ldr r0, _08075994 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080759B2
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	b _080759B2
	.align 2, 0
_08075990: .4byte gPlayerEntity
_08075994: .4byte gScreenTransition
_08075998:
	ldrb r1, [r4, #0xe]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080759B2
	ldr r0, [r5, #0x30]
	ldr r1, _080759B4 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #0x30]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080759B8
_080759B2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080759B4: .4byte 0xFFFBFFFF



	thumb_func_start sub_080759B8
sub_080759B8: @ 0x080759B8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r2, _080759E8 @ =gPlayerState
	ldr r1, [r2, #0x30]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _080759D0
	ldr r0, _080759EC @ =gPlayerEntity
	adds r0, #0x40
	strb r1, [r0]
_080759D0:
	ldr r0, [r2, #0x30]
	ldr r1, _080759F0 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r2, #0x30]
	movs r0, #0
	strb r0, [r2, #0x1b]
	str r0, [r2, #0x2c]
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08077E78
	pop {r4, pc}
	.align 2, 0
_080759E8: .4byte gPlayerState
_080759EC: .4byte gPlayerEntity
_080759F0: .4byte 0xF7FFFFFF
