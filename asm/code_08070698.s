	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start PlayerEmptyBottle
PlayerEmptyBottle: @ 0x08071E98
	push {lr}
	ldr r2, _08071EAC @ =gUnk_0811BB48
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08071EAC: .4byte gUnk_0811BB48

	thumb_func_start sub_08071EB0
sub_08071EB0: @ 0x08071EB0
	push {r4, lr}
	adds r4, r0, #0
	bl ResetPlayer
	adds r0, r4, #0
	movs r1, #0xe
	bl CreatePlayerBomb
	cmp r0, #0
	beq _08071F12
	ldr r3, _08071EE4 @ =gPlayerState
	adds r2, r3, #0
	adds r2, #0x38
	ldrb r1, [r2]
	adds r0, #0x68
	strb r1, [r0]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r2]
	cmp r0, #0x20
	bne _08071EEC
	ldr r0, _08071EE8 @ =0x00000614
	strh r0, [r3, #8]
	b _08071F12
	.align 2, 0
_08071EE4: .4byte gPlayerState
_08071EE8: .4byte 0x00000614
_08071EEC:
	cmp r0, #0x20
	blt _08071F00
	cmp r0, #0x25
	bgt _08071F00
	ldr r0, _08071EFC @ =0x000002DF
	strh r0, [r3, #8]
	b _08071F12
	.align 2, 0
_08071EFC: .4byte 0x000002DF
_08071F00:
	movs r0, #0xc2
	lsls r0, r0, #3
	strh r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	movs r1, #2
	bl sub_0807CAA0
_08071F12:
	pop {r4, pc}

	thumb_func_start sub_08071F14
sub_08071F14: @ 0x08071F14
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08071F32
	ldr r1, _08071F34 @ =gPlayerState
	movs r0, #0
	str r0, [r1, #0x2c]
	bl sub_0807921C
_08071F32:
	pop {r4, pc}
	.align 2, 0
_08071F34: .4byte gPlayerState

	thumb_func_start PlayerFrozen
PlayerFrozen: @ 0x08071F38
	push {lr}
	ldr r2, _08071F4C @ =gUnk_0811BB50
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08071F4C: .4byte gUnk_0811BB50

	thumb_func_start sub_08071F50
sub_08071F50: @ 0x08071F50
	push {lr}
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x78
	strb r1, [r0, #0xe]
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	ldr r1, _08071F78 @ =gPlayerState
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r1, #8]
	bl sub_08077B20
	ldr r0, _08071F7C @ =0x00000195
	bl SoundReq
	pop {pc}
	.align 2, 0
_08071F78: .4byte gPlayerState
_08071F7C: .4byte 0x00000195

	thumb_func_start sub_08071F80
sub_08071F80: @ 0x08071F80
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	adds r5, r0, #0
	cmp r5, #0
	bne _08071FB8
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	ldr r0, _08071FB4 @ =gPlayerState
	strb r5, [r0, #2]
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _08071FB8
	bl sub_08079D48
	cmp r0, #0
	bne _08071FB8
	adds r0, r4, #0
	bl sub_08072008
	b _08072004
	.align 2, 0
_08071FB4: .4byte gPlayerState
_08071FB8:
	bl sub_08079B24
	cmp r0, #0
	bne _08071FC8
	adds r0, r4, #0
	bl sub_08079708
	b _08071FFE
_08071FC8:
	ldr r0, _08071FEC @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08071FFE
	bl sub_0807953C
	cmp r0, #0
	beq _08071FF0
	ldrb r0, [r4, #0xe]
	subs r0, #3
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x62
	movs r0, #2
	b _08071FF4
	.align 2, 0
_08071FEC: .4byte gPlayerState
_08071FF0:
	adds r1, r4, #0
	adds r1, #0x62
_08071FF4:
	strb r0, [r1]
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _08072004
_08071FFE:
	adds r0, r4, #0
	bl sub_08072008
_08072004:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08072008
sub_08072008: @ 0x08072008
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x3d
	movs r2, #0
	movs r0, #0xa0
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x42
	strb r2, [r0]
	ldrb r1, [r3, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0x62
	strb r2, [r0]
	ldr r2, _08072044 @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, _08072048 @ =0xFFFFF7FE
	ands r0, r1
	str r0, [r2, #0x30]
	adds r0, r3, #0
	movs r1, #0xd
	movs r2, #0
	bl CreateFx
	bl sub_080791BC
	pop {pc}
	.align 2, 0
_08072044: .4byte gPlayerState
_08072048: .4byte 0xFFFFF7FE

	thumb_func_start sub_0807204C
sub_0807204C: @ 0x0807204C
	push {lr}
	ldr r2, _08072060 @ =gUnk_0811BB58
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08072060: .4byte gUnk_0811BB58

	thumb_func_start sub_08072064
sub_08072064: @ 0x08072064
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	ldr r2, _08072094 @ =gPlayerState
	adds r1, r2, #0
	adds r1, #0x3a
	ldrb r1, [r1]
	strb r1, [r0, #0xe]
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2, #8]
	bl ResetPlayer
	pop {pc}
	.align 2, 0
_08072094: .4byte gPlayerState

	thumb_func_start sub_08072098
sub_08072098: @ 0x08072098
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080720B4
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080720D8
	b _080720C2
_080720B4:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080720D8
_080720C2:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _080720D4
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_080720D4:
	bl sub_080791BC
_080720D8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080720DC
sub_080720DC: @ 0x080720DC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08078EFC
	cmp r0, #0
	bne _080720F8
	ldr r0, _080720FC @ =gUnk_0811BB60
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080720F8:
	pop {r4, pc}
	.align 2, 0
_080720FC: .4byte gUnk_0811BB60

	thumb_func_start sub_08072100
sub_08072100: @ 0x08072100
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	ldr r0, _08072148 @ =gUnk_08114F88
	str r0, [r4, #0x48]
	ldr r2, _0807214C @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r2, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807213A
	movs r0, #0xff
	strb r0, [r4, #0x15]
_0807213A:
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08072154
	ldr r0, _08072150 @ =0x00000404
	b _08072158
	.align 2, 0
_08072148: .4byte gUnk_08114F88
_0807214C: .4byte gPlayerState
_08072150: .4byte 0x00000404
_08072154:
	movs r0, #0x82
	lsls r0, r0, #1
_08072158:
	strh r0, [r2, #8]
	bl ResetPlayer
	adds r0, r4, #0
	bl sub_08072168
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08072168
sub_08072168: @ 0x08072168
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806F854
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, #0
	beq _0807218A
	movs r1, #0x80
	lsls r1, r1, #7
_0807218A:
	adds r0, r4, #0
	bl sub_08003FC4
	ldr r0, _080721A4 @ =gPlayerState
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080721A8
	adds r0, r4, #0
	bl sub_0806F69C
	b _080721AC
	.align 2, 0
_080721A4: .4byte gPlayerState
_080721A8:
	bl sub_08079E08
_080721AC:
	ldr r1, _080721E0 @ =gPlayerState
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0xd]
	bl sub_08019840
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080721DE
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	bl sub_080791BC
_080721DE:
	pop {r4, pc}
	.align 2, 0
_080721E0: .4byte gPlayerState

	thumb_func_start PlayerPull
PlayerPull: @ 0x080721E4
	push {lr}
	ldr r1, _08072208 @ =gPlayerState
	adds r1, #0xa8
	movs r2, #0x1a
	strb r2, [r1]
	ldr r2, _0807220C @ =gUnk_0811BB68
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r0, _08072210 @ =gUnk_0200AF00
	adds r0, #0x2e
	movs r1, #8
	strb r1, [r0]
	pop {pc}
	.align 2, 0
_08072208: .4byte gPlayerState
_0807220C: .4byte gUnk_0811BB68
_08072210: .4byte gUnk_0200AF00

	thumb_func_start sub_08072214
sub_08072214: @ 0x08072214
	push {lr}
	adds r3, r0, #0
	movs r0, #1
	strb r0, [r3, #0xd]
	movs r0, #0x80
	strh r0, [r3, #0x24]
	ldr r2, _08072244 @ =gPlayerState
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r0, [r0]
	strb r0, [r3, #0xe]
	ldrb r0, [r3, #0x14]
	movs r1, #4
	eors r0, r1
	lsls r0, r0, #2
	strb r0, [r3, #0x15]
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08072248
	movs r0, #0xd3
	lsls r0, r0, #2
	b _0807224A
	.align 2, 0
_08072244: .4byte gPlayerState
_08072248:
	ldr r0, _0807225C @ =0x00000944
_0807224A:
	strh r0, [r2, #8]
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	adds r0, r3, #0
	bl sub_08072260
	pop {pc}
	.align 2, 0
_0807225C: .4byte 0x00000944

	thumb_func_start sub_08072260
sub_08072260: @ 0x08072260
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0807229C @ =gPlayerState
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0
	strh r0, [r1]
	bl sub_08079E08
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080722B0
	ldr r0, [r5, #0x30]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080722A0
	movs r0, #0xd3
	lsls r0, r0, #2
	b _080722A2
	.align 2, 0
_0807229C: .4byte gPlayerState
_080722A0:
	ldr r0, _080722B4 @ =0x00000944
_080722A2:
	strh r0, [r5, #8]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	bl sub_080791BC
_080722B0:
	pop {r4, r5, pc}
	.align 2, 0
_080722B4: .4byte 0x00000944

	thumb_func_start PlayerLava
PlayerLava: @ 0x080722B8
	push {lr}
	ldr r1, _080722D4 @ =gPlayerState
	adds r1, #0xa8
	movs r2, #0xa
	strb r2, [r1]
	ldr r2, _080722D8 @ =gUnk_0811BB70
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080722D4: .4byte gPlayerState
_080722D8: .4byte gUnk_0811BB70

	thumb_func_start sub_080722DC
sub_080722DC: @ 0x080722DC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r2, _08072318 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _0807231C
	movs r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	movs r0, #0x42
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _0807230E
	str r4, [r0, #0x54]
_0807230E:
	movs r0, #0x8a
	lsls r0, r0, #1
	strh r0, [r5, #8]
	b _08072332
	.align 2, 0
_08072318: .4byte gPlayerState
_0807231C:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #3
	strb r0, [r4, #0xd]
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0xa
	strb r0, [r1]
_08072332:
	ldr r0, [r5, #0x30]
	ldr r1, _08072350 @ =0x00000401
	orrs r0, r1
	str r0, [r5, #0x30]
	bl ResetPlayer
	movs r0, #0x92
	lsls r0, r0, #1
	bl SoundReq
	movs r0, #0x7a
	bl SoundReq
	pop {r4, r5, pc}
	.align 2, 0
_08072350: .4byte 0x00000401

	thumb_func_start sub_08072354
sub_08072354: @ 0x08072354
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r1, #0
	bl sub_0806F854
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_08079744
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	adds r3, r0, #0
	cmp r3, #0
	bne _080723C0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x42
	strb r3, [r0]
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldr r2, _080723C4 @ =gPlayerState
	ldr r0, _080723C8 @ =0x000002C1
	strh r0, [r2, #8]
	ldr r0, [r2, #0x30]
	ldr r1, _080723CC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x30]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0
	bl CreateFx
	movs r0, #0xd3
	lsls r0, r0, #1
	bl SoundReq
_080723C0:
	pop {r4, pc}
	.align 2, 0
_080723C4: .4byte gPlayerState
_080723C8: .4byte 0x000002C1
_080723CC: .4byte 0xFFFFFBFF

	thumb_func_start sub_080723D0
sub_080723D0: @ 0x080723D0
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0807240A
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0x14
	strb r0, [r1]
	subs r0, #0x16
	bl ModHealth
	bl RespawnPlayer
_0807240A:
	pop {r4, pc}

	thumb_func_start sub_0807240C
sub_0807240C: @ 0x0807240C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x42
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _08072448
	ldrb r0, [r2, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r1, r2, #0
	adds r1, #0x3d
	movs r0, #0x14
	strb r0, [r1]
	ldr r2, _0807244C @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, _08072450 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x30]
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	bl RespawnPlayer
_08072448:
	pop {pc}
	.align 2, 0
_0807244C: .4byte gPlayerState
_08072450: .4byte 0xFFFFFBFF

	thumb_func_start sub_08072454
sub_08072454: @ 0x08072454
	push {lr}
	ldr r2, _08072468 @ =gUnk_0811BB80
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08072468: .4byte gUnk_0811BB80

	thumb_func_start sub_0807246C
sub_0807246C: @ 0x0807246C
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	ldr r2, _0807248C @ =gPlayerState
	adds r1, r2, #0
	adds r1, #0x38
	ldrb r1, [r1]
	strb r1, [r0, #0xe]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r2, #8]
	movs r0, #0x7b
	bl SoundReq
	pop {pc}
	.align 2, 0
_0807248C: .4byte gPlayerState

	thumb_func_start sub_08072490
sub_08072490: @ 0x08072490
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080724AE
	adds r0, r1, #0
	bl UpdateAnimationSingleFrame
	bl sub_08079E08
	b _080724C2
_080724AE:
	adds r0, r1, #0
	adds r0, #0x3d
	movs r1, #0x3c
	strb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	bl ModHealth
	bl sub_080791D0
_080724C2:
	pop {pc}

	thumb_func_start PlayerRoomTransition
PlayerRoomTransition: @ 0x080724C4
	push {lr}
	ldr r2, _080724D8 @ =gUnk_0811BB88
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080724D8: .4byte gUnk_0811BB88

	thumb_func_start sub_080724DC
sub_080724DC: @ 0x080724DC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	bl sub_0807A108
	adds r0, r4, #0
	bl sub_080002B8
	cmp r0, #0x29
	beq _0807254C
	ldr r1, _08072530 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x89
	ldrb r0, [r0]
	cmp r0, #0
	bne _08072512
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08072512
	adds r0, r4, #0
	bl sub_0807AE20
_08072512:
	ldr r0, _08072534 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #0
	bne _08072538
	ldrb r0, [r4, #0x11]
	lsrs r2, r0, #4
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x11]
	adds r0, r4, #0
	bl sub_080728AC
	b _08072588
	.align 2, 0
_08072530: .4byte gPlayerState
_08072534: .4byte gRoomControls
_08072538:
	ldr r0, _08072548 @ =gPlayerState
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	bne _08072588
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _08072588
	.align 2, 0
_08072548: .4byte gPlayerState
_0807254C:
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0xd]
	ldr r0, _08072570 @ =gRoomVars
	ldrb r0, [r0]
	cmp r0, #0
	bne _08072588
	ldr r2, _08072574 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807257C
	ldr r0, _08072578 @ =0x00000C18
	b _08072580
	.align 2, 0
_08072570: .4byte gRoomVars
_08072574: .4byte gPlayerState
_08072578: .4byte 0x00000C18
_0807257C:
	movs r0, #0x82
	lsls r0, r0, #1
_08072580:
	strh r0, [r2, #8]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
_08072588:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807258C
sub_0807258C: @ 0x0807258C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080725D0 @ =gRoomControls
	ldrh r0, [r0]
	cmp r0, #0
	bne _08072604
	adds r0, r4, #0
	bl sub_0807A894
	cmp r0, #0x29
	bne _080725E4
	bl sub_08079E08
	bl sub_080797C4
	cmp r0, #0
	beq _080725DC
	ldr r2, _080725D4 @ =gPlayerState
	ldr r1, _080725D8 @ =gPlayerEntity
	ldrh r0, [r1, #0x2e]
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #0x32]
	strh r0, [r2, #0x18]
	ldrb r1, [r4, #0x11]
	lsrs r2, r1, #4
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x11]
	adds r0, r4, #0
	bl sub_080728AC
	b _08072604
	.align 2, 0
_080725D0: .4byte gRoomControls
_080725D4: .4byte gPlayerState
_080725D8: .4byte gPlayerEntity
_080725DC:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _08072604
_080725E4:
	ldr r2, _08072624 @ =gPlayerState
	ldr r1, _08072628 @ =gPlayerEntity
	ldrh r0, [r1, #0x2e]
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #0x32]
	strh r0, [r2, #0x18]
	ldrb r1, [r4, #0x11]
	lsrs r2, r1, #4
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x11]
	adds r0, r4, #0
	bl sub_080728AC
_08072604:
	ldr r1, _08072624 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x89
	ldrb r0, [r0]
	cmp r0, #0
	bne _08072620
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08072620
	adds r0, r4, #0
	bl sub_0807AE20
_08072620:
	pop {r4, pc}
	.align 2, 0
_08072624: .4byte gPlayerState
_08072628: .4byte gPlayerEntity

	thumb_func_start PlayerRoll
PlayerRoll: @ 0x0807262C
	push {lr}
	ldr r1, _08072648 @ =gPlayerState
	adds r1, #0xa8
	movs r2, #9
	strb r2, [r1]
	ldr r2, _0807264C @ =gUnk_0811BB90
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08072648: .4byte gPlayerState
_0807264C: .4byte gUnk_0811BB90

	thumb_func_start sub_08072650
sub_08072650: @ 0x08072650
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08072698 @ =gPlayerState
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _0807266E
	ldr r0, _0807269C @ =gPlayerEntity
	bl sub_0806F948
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
_0807266E:
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xe]
	bl ResetPlayer
	ldr r3, [r5, #0x30]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080726A4
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080726A0 @ =0x00000C08
	b _080726BE
	.align 2, 0
_08072698: .4byte gPlayerState
_0807269C: .4byte gPlayerEntity
_080726A0: .4byte 0x00000C08
_080726A4:
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #0x1e
	strb r1, [r0]
	movs r0, #8
	ands r3, r0
	cmp r3, #0
	beq _080726BA
	movs r0, #0x87
	lsls r0, r0, #3
	b _080726BE
_080726BA:
	movs r0, #0xab
	lsls r0, r0, #2
_080726BE:
	strh r0, [r5, #8]
	ldr r2, _080726E0 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r2, #0x30]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080726E4
	movs r0, #0x79
	bl SoundReq
	b _080726EA
	.align 2, 0
_080726E0: .4byte gPlayerState
_080726E4:
	movs r0, #0x78
	bl SoundReq
_080726EA:
	movs r0, #0x7e
	bl SoundReq
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080726F4
sub_080726F4: @ 0x080726F4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _08072744 @ =gPlayerState
	ldr r2, [r3, #0x30]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xb
	cmp r0, r1
	bne _08072730
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	bne _0807274C
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807274C
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807274C
_08072730:
	ldr r0, _08072748 @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r3, #0x30]
	bl sub_08078EFC
	cmp r0, #0
	beq _08072740
	b _080728A0
_08072740:
	b _080727E0
	.align 2, 0
_08072744: .4byte gPlayerState
_08072748: .4byte 0xFFFBFFFF
_0807274C:
	ldrb r1, [r4, #0x14]
	movs r0, #6
	ands r0, r1
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldr r0, _080727A0 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807277E
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0807277E
	ldr r0, _080727A4 @ =gPlayerEntity
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	movs r0, #4
	strb r0, [r4, #0xe]
_0807277E:
	ldr r5, _080727A0 @ =gPlayerState
	ldr r0, [r5, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807278E
	bl sub_0807A1B8
_0807278E:
	bl sub_08078EFC
	cmp r0, #0
	beq _080727AC
	ldr r0, [r5, #0x30]
	ldr r1, _080727A8 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #0x30]
	b _080728A0
	.align 2, 0
_080727A0: .4byte gPlayerState
_080727A4: .4byte gPlayerEntity
_080727A8: .4byte 0xFFFBFFFF
_080727AC:
	ldr r1, [r5, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080727C4
	ldr r0, _080727C0 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #0x30]
	b _080728A0
	.align 2, 0
_080727C0: .4byte 0xFFFBFFFF
_080727C4:
	adds r0, r4, #0
	bl sub_0807AC54
	cmp r0, #0
	bne _080728A0
	ldr r1, [r5, #0x30]
	movs r3, #0x94
	lsls r3, r3, #2
	ands r3, r1
	cmp r3, #0
	beq _080727EC
	ldr r0, _080727E8 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #0x30]
_080727E0:
	adds r0, r4, #0
	bl sub_080728AC
	b _080728A0
	.align 2, 0
_080727E8: .4byte 0xFFFBFFFF
_080727EC:
	ldrb r0, [r5, #0x12]
	cmp r0, #0x17
	bne _080727FE
	adds r0, r4, #0
	bl sub_0800892E
	adds r5, r4, #0
	adds r5, #0x5a
	b _08072844
_080727FE:
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	movs r2, #0xf
	ands r2, r0
	adds r5, r1, #0
	cmp r2, #1
	beq _0807282A
	cmp r2, #1
	bgt _08072818
	cmp r2, #0
	beq _08072822
	b _0807283C
_08072818:
	cmp r2, #2
	beq _08072832
	cmp r2, #3
	beq _0807283A
	b _0807283C
_08072822:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	b _0807283C
_0807282A:
	ldrh r0, [r4, #0x24]
	adds r0, #0x20
	strh r0, [r4, #0x24]
	b _0807283C
_08072832:
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	b _0807283C
_0807283A:
	strh r3, [r4, #0x24]
_0807283C:
	bl sub_08078F24
	bl sub_08079E08
_08072844:
	ldrb r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08072860
	ldr r0, _080728A4 @ =gPlayerState
	ldr r1, [r0, #0x30]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08072860
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
_08072860:
	ldrb r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08072870
	adds r0, r4, #0
	bl sub_08077698
_08072870:
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08072882
	ldr r0, _080728A4 @ =gPlayerState
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08072886
_08072882:
	bl sub_080791D0
_08072886:
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807289A
	ldr r0, _080728A4 @ =gPlayerState
	ldr r1, [r0, #0x30]
	ldr r2, _080728A8 @ =0xFFDBFFFF
	ands r1, r2
	str r1, [r0, #0x30]
_0807289A:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_080728A0:
	pop {r4, r5, pc}
	.align 2, 0
_080728A4: .4byte gPlayerState
_080728A8: .4byte 0xFFDBFFFF

	thumb_func_start sub_080728AC
sub_080728AC: @ 0x080728AC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08079938
	ldr r0, _080728C8 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080728CC
	adds r0, r4, #0
	bl sub_0807B068
	b _080728D0
	.align 2, 0
_080728C8: .4byte gPlayerState
_080728CC:
	bl sub_08078F60
_080728D0:
	ldr r1, _08072940 @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _080728E0
	movs r0, #0
	strh r0, [r4, #0x24]
_080728E0:
	ldr r0, [r1, #0x30]
	movs r5, #0x40
	ands r5, r0
	adds r3, r0, #0
	cmp r5, #0
	bne _080728F6
	ldr r0, _08072944 @ =gPlayerEntity
	ldrb r1, [r0, #0x18]
	movs r2, #3
	orrs r1, r2
	strb r1, [r0, #0x18]
_080728F6:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08072910
	ldr r2, _08072944 @ =gPlayerEntity
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_08072910:
	ldr r0, _08072948 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0807292C
	cmp r5, #0
	beq _08072928
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
_08072928:
	bl sub_080791D0
_0807292C:
	ldr r0, _08072940 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807293C
	bl sub_0807A1B8
_0807293C:
	pop {r4, r5, pc}
	.align 2, 0
_08072940: .4byte gPlayerState
_08072944: .4byte gPlayerEntity
_08072948: .4byte gRoomControls

	thumb_func_start PlayerInHole
PlayerInHole: @ 0x0807294C
	push {lr}
	ldr r1, _08072968 @ =gPlayerState
	adds r1, #0xa8
	movs r2, #0x17
	strb r2, [r1]
	ldr r2, _0807296C @ =gUnk_0811BB98
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08072968: .4byte gPlayerState
_0807296C: .4byte gUnk_0811BB98

	thumb_func_start sub_08072970
sub_08072970: @ 0x08072970
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _08072A4C
	movs r7, #1
	strb r7, [r5, #0xd]
	ldrh r2, [r5, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strh r0, [r5, #0x2e]
	ldrh r0, [r5, #0x32]
	ands r1, r0
	movs r0, #0xa
	movs r3, #0
	orrs r1, r0
	strh r1, [r5, #0x32]
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	strb r3, [r5, #0xe]
	ldr r2, _080729D8 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080729DC
	movs r0, #0x95
	lsls r0, r0, #4
	strh r0, [r2, #8]
	adds r6, r5, #0
	adds r6, #0x38
	b _08072A14
	.align 2, 0
_080729D8: .4byte gPlayerState
_080729DC:
	ldr r0, _08072A50 @ =0x0000061C
	strh r0, [r2, #8]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _08072A54 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r4, #0x32
	ldrsh r1, [r5, r4]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r4, r5, #0
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_080001DA
	ldr r1, _08072A58 @ =0x00004020
	adds r6, r4, #0
	cmp r0, r1
	bne _08072A14
	strb r7, [r5, #0xe]
_08072A14:
	ldr r0, _08072A5C @ =0x00004070
	movs r7, #0x2e
	ldrsh r1, [r5, r7]
	ldr r3, _08072A54 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r7, #0x32
	ldrsh r2, [r5, r7]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r6]
	bl SetTile
	bl ResetPlayer
	adds r0, r5, #0
	bl sub_08072A60
	movs r0, #0x81
	bl SoundReq
_08072A4C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08072A50: .4byte 0x0000061C
_08072A54: .4byte gRoomControls
_08072A58: .4byte 0x00004020
_08072A5C: .4byte 0x00004070

	thumb_func_start sub_08072A60
sub_08072A60: @ 0x08072A60
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08072AC4
	ldrb r0, [r2, #0xe]
	cmp r0, #1
	bne _08072A9C
	movs r0, #3
	strb r0, [r2, #0xd]
	movs r0, #0x28
	strb r0, [r2, #0xe]
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x61
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08072A94 @ =gPlayerState
	ldr r0, _08072A98 @ =0x00000624
	strh r0, [r1, #8]
	b _08072ACA
	.align 2, 0
_08072A94: .4byte gPlayerState
_08072A98: .4byte 0x00000624
_08072A9C:
	movs r0, #2
	strb r0, [r2, #0xd]
	ldr r2, _08072AB4 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08072ABC
	ldr r0, _08072AB8 @ =0x00000954
	strh r0, [r2, #8]
	b _08072ACA
	.align 2, 0
_08072AB4: .4byte gPlayerState
_08072AB8: .4byte 0x00000954
_08072ABC:
	movs r0, #0xc4
	lsls r0, r0, #3
	strh r0, [r2, #8]
	b _08072ACA
_08072AC4:
	adds r0, r2, #0
	bl UpdateAnimationSingleFrame
_08072ACA:
	pop {pc}

	thumb_func_start sub_08072ACC
sub_08072ACC: @ 0x08072ACC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08072AE0 @ =gPlayerState
	ldrb r3, [r5, #0xd]
	lsls r2, r3, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0xff
	bne _08072AE4
	movs r0, #0
	b _08072B56
	.align 2, 0
_08072AE0: .4byte gPlayerState
_08072AE4:
	ldrb r1, [r4, #0xf]
	cmp r1, #7
	bls _08072B50
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	strb r3, [r4, #0x15]
	movs r0, #0xd0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r0, #0x78
	strh r0, [r4, #0x24]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x80
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x41
	strb r0, [r5, #2]
	bl sub_0807921C
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08072B4C @ =gRoomControls
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
	b _08072B58
	.align 2, 0
_08072B4C: .4byte gRoomControls
_08072B50:
	lsrs r0, r2, #0x1a
	strb r0, [r4, #0x14]
	adds r0, r1, #1
_08072B56:
	strb r0, [r4, #0xf]
_08072B58:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08072B5C
sub_08072B5C: @ 0x08072B5C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	movs r1, #0x28
	subs r1, r1, r0
	asrs r1, r1, #4
	adds r1, #1
	adds r0, r5, #0
	bl sub_080042BA
	adds r0, r5, #0
	bl sub_0806F948
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _08072B82
	subs r0, #1
	strb r0, [r5, #0xe]
	b _08072C40
_08072B82:
	ldr r0, _08072C04 @ =0x00004021
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08072C08 @ =gRoomControls
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
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	strb r0, [r5, #0x15]
	movs r0, #1
	bl sub_0807A2F8
	adds r4, r0, #0
	cmp r4, #0
	bne _08072C10
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x40
	strh r0, [r5, #0x24]
	movs r0, #0xe4
	lsls r0, r0, #0xa
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x34]
	subs r0, #1
	str r0, [r5, #0x34]
	ldr r1, _08072C0C @ =gPlayerState
	movs r0, #0x41
	strb r0, [r1, #2]
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806F854
	bl sub_0807921C
	b _08072C40
	.align 2, 0
_08072C04: .4byte 0x00004021
_08072C08: .4byte gRoomControls
_08072C0C: .4byte gPlayerState
_08072C10:
	bl sub_08052620
	cmp r0, #0
	bne _08072C1E
	adds r0, r5, #0
	bl sub_08004542
_08072C1E:
	ldrb r0, [r5, #0xd]
	adds r0, #1
	strb r0, [r5, #0xd]
	lsls r4, r4, #4
	subs r4, #4
	lsls r4, r4, #0xc
	str r4, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x24]
	ldr r1, _08072C44 @ =gPlayerState
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r1, #8]
	movs r0, #0x7c
	bl SoundReq
_08072C40:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08072C44: .4byte gPlayerState

	thumb_func_start sub_08072C48
sub_08072C48: @ 0x08072C48
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08072C98
	adds r0, r4, #0
	movs r1, #7
	bl sub_08008790
	ldr r4, _08072C90 @ =gPlayerState
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _08072C94
	bl sub_08008B22
	cmp r0, #0
	beq _08072C98
	movs r0, #7
	strb r0, [r4, #0x11]
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08072C98
	bl sub_080791BC
	b _08072C98
	.align 2, 0
_08072C90: .4byte gPlayerState
_08072C94:
	bl sub_0807921C
_08072C98:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08072C9C
sub_08072C9C: @ 0x08072C9C
	push {lr}
	ldr r1, _08072CB8 @ =gPlayerState
	adds r1, #0xa8
	movs r2, #0x11
	strb r2, [r1]
	ldr r2, _08072CBC @ =gUnk_0811BBAC
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08072CB8: .4byte gPlayerState
_08072CBC: .4byte gUnk_0811BBAC

	thumb_func_start sub_08072CC0
sub_08072CC0: @ 0x08072CC0
	movs r1, #1
	strb r1, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	ldr r3, _08072CF4 @ =gPlayerState
	adds r1, r3, #0
	adds r1, #0x3a
	ldrb r1, [r1]
	lsrs r1, r1, #2
	adds r1, #1
	strb r1, [r0, #0xf]
	adds r1, r3, #0
	adds r1, #0x39
	ldrb r1, [r1]
	strb r1, [r0, #0x15]
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0x24]
	ldr r0, _08072CF8 @ =0x00000524
	strh r0, [r3, #8]
	strb r2, [r3, #5]
	bx lr
	.align 2, 0
_08072CF4: .4byte gPlayerState
_08072CF8: .4byte 0x00000524

	thumb_func_start sub_08072CFC
sub_08072CFC: @ 0x08072CFC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_080042BA
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08072D1C
	adds r0, r4, #0
	bl sub_0806F69C
	b _08072D4E
_08072D1C:
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r2, _08072D50 @ =gPlayerState
	adds r1, r2, #0
	adds r1, #0x38
	ldrb r0, [r1]
	cmp r0, #7
	bhi _08072D30
	movs r0, #8
	strb r0, [r1]
_08072D30:
	ldrb r0, [r1]
	lsls r0, r0, #0xc
	str r0, [r4, #0x20]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r2, #8]
	movs r0, #5
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	bl ResetPlayer
_08072D4E:
	pop {r4, pc}
	.align 2, 0
_08072D50: .4byte gPlayerState

	thumb_func_start sub_08072D54
sub_08072D54: @ 0x08072D54
	push {r4, r5, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	movs r2, #0xc
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806F854
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08072D7A
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	b _08072E80
_08072D7A:
	adds r0, r4, #0
	bl sub_0806F730
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl GetTileType
	adds r2, r0, #0
	ldrb r5, [r4, #0xf]
	cmp r5, #1
	beq _08072DD0
	cmp r5, #1
	bgt _08072D9C
	cmp r5, #0
	beq _08072DA6
	b _08072E6C
_08072D9C:
	cmp r5, #2
	beq _08072DFA
	cmp r5, #3
	beq _08072E30
	b _08072E6C
_08072DA6:
	ldr r1, _08072DC8 @ =gUnk_0811BBD4
	ldr r0, _08072DCC @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08007DD6
	cmp r0, #0
	beq _08072E6C
	movs r0, #1
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xf]
	b _08072E6C
	.align 2, 0
_08072DC8: .4byte gUnk_0811BBD4
_08072DCC: .4byte gPlayerEntity
_08072DD0:
	ldr r1, _08072DEC @ =gUnk_0811BBD4
	ldr r0, _08072DF0 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08007DD6
	cmp r0, #0
	beq _08072DF4
	strb r5, [r4, #0xe]
	b _08072E6C
	.align 2, 0
_08072DEC: .4byte gUnk_0811BBD4
_08072DF0: .4byte gPlayerEntity
_08072DF4:
	movs r0, #2
	strb r0, [r4, #0xf]
	b _08072E6C
_08072DFA:
	ldrb r0, [r4, #0x14]
	movs r5, #4
	eors r0, r5
	strb r0, [r4, #0x14]
	ldr r1, _08072E28 @ =gUnk_0811BBD4
	ldr r0, _08072E2C @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08007DD6
	cmp r0, #0
	beq _08072E22
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xf]
_08072E22:
	ldrb r0, [r4, #0x14]
	eors r0, r5
	b _08072E6A
	.align 2, 0
_08072E28: .4byte gUnk_0811BBD4
_08072E2C: .4byte gPlayerEntity
_08072E30:
	ldrb r0, [r4, #0x14]
	movs r1, #4
	eors r0, r1
	strb r0, [r4, #0x14]
	ldr r1, _08072E58 @ =gUnk_0811BBD4
	ldr r0, _08072E5C @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08007DD6
	cmp r0, #0
	beq _08072E60
	movs r0, #1
	strb r0, [r4, #0xe]
	b _08072E64
	.align 2, 0
_08072E58: .4byte gUnk_0811BBD4
_08072E5C: .4byte gPlayerEntity
_08072E60:
	movs r0, #4
	strb r0, [r4, #0xf]
_08072E64:
	ldrb r0, [r4, #0x14]
	movs r1, #4
	eors r0, r1
_08072E6A:
	strb r0, [r4, #0x14]
_08072E6C:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08072E7A
	adds r0, r4, #0
	bl sub_0806F69C
	b _08072E7E
_08072E7A:
	bl sub_08079E08
_08072E7E:
	movs r0, #0
_08072E80:
	strb r0, [r4, #0xe]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08072F10
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08072EAA
	adds r0, r4, #0
	bl sub_0800455E
	b _08072EB0
_08072EAA:
	adds r0, r4, #0
	bl sub_08004542
_08072EB0:
	adds r0, r4, #0
	movs r1, #7
	bl sub_08008790
	ldr r5, _08072EDC @ =gPlayerState
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _08072EE0
	bl sub_08008B22
	cmp r0, #0
	beq _08072F10
	movs r0, #7
	strb r0, [r5, #0x11]
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08072F10
	bl sub_080791BC
	b _08072F10
	.align 2, 0
_08072EDC: .4byte gPlayerState
_08072EE0:
	ldr r0, [r5, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08072EF4
	ldr r0, _08072EF0 @ =0x00000424
	b _08072EF8
	.align 2, 0
_08072EF0: .4byte 0x00000424
_08072EF4:
	movs r0, #0x82
	lsls r0, r0, #4
_08072EF8:
	strh r0, [r5, #8]
	movs r1, #0
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x42
	strb r1, [r0]
	movs r0, #0x7d
	bl SoundReq
_08072F10:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08072F14
sub_08072F14: @ 0x08072F14
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08072F2C
	bl sub_0807921C
	b _08072F32
_08072F2C:
	adds r0, r1, #0
	bl UpdateAnimationSingleFrame
_08072F32:
	pop {pc}

	thumb_func_start sub_08072F34
sub_08072F34: @ 0x08072F34
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08078EFC
	cmp r0, #0
	bne _08072F86
	ldr r6, _08072F88 @ =gPlayerState
	adds r1, r6, #0
	adds r1, #0xa8
	movs r0, #0x18
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_0807A1E8
	strb r0, [r6, #0x12]
	ldr r1, _08072F8C @ =gUnk_0811BBE4
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r5, r4, #0
	adds r5, #0x42
	ldrb r0, [r5]
	cmp r0, #0
	beq _08072F86
	bl sub_080792D8
	ldrb r1, [r5]
	cmp r1, #0
	bne _08072F86
	movs r0, #0x1d
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	strh r1, [r4, #0x30]
	ldr r0, _08072F90 @ =0x000002CF
	strh r0, [r6, #8]
_08072F86:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08072F88: .4byte gPlayerState
_08072F8C: .4byte gUnk_0811BBE4
_08072F90: .4byte 0x000002CF

	thumb_func_start sub_08072F94
sub_08072F94: @ 0x08072F94
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08072FB4 @ =gPlayerState
	ldrb r1, [r0, #0x12]
	adds r3, r0, #0
	cmp r1, #0x1e
	beq _08072FB8
	cmp r1, #0x1e
	blt _08072FAE
	cmp r1, #0x2c
	bgt _08072FAE
	cmp r1, #0x2a
	bge _08072FB8
_08072FAE:
	bl sub_0807921C
	b _0807308C
	.align 2, 0
_08072FB4: .4byte gPlayerState
_08072FB8:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r2]
	adds r2, r3, #0
	ldrb r1, [r2, #0xd]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08073072
	strb r1, [r4, #0x15]
	ldrb r0, [r2, #0xd]
	cmp r0, #8
	beq _08072FDE
	cmp r0, #0x18
	bne _08073008
_08072FDE:
	ldrb r0, [r2, #0x12]
	cmp r0, #0x1e
	beq _0807308C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08072FF8
	movs r0, #0xb5
	lsls r0, r0, #2
	b _08072FFA
_08072FF8:
	ldr r0, _08073004 @ =0x000002D5
_08072FFA:
	strh r0, [r2, #8]
	adds r0, r4, #0
	bl sub_08073094
	b _0807306A
	.align 2, 0
_08073004: .4byte 0x000002D5
_08073008:
	ldrb r0, [r2, #0x12]
	cmp r0, #0x1e
	bne _08073020
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08073020
	adds r0, r1, #0
	adds r0, #8
	movs r1, #0x10
	ands r0, r1
	strb r0, [r4, #0x15]
_08073020:
	ldrb r1, [r4, #0x15]
	movs r2, #0x10
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807304C
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08073044
	ldr r0, _08073040 @ =0x000002D1
	b _08073068
	.align 2, 0
_08073040: .4byte 0x000002D1
_08073044:
	ldr r0, _08073048 @ =0x000002D2
	b _08073068
	.align 2, 0
_08073048: .4byte 0x000002D2
_0807304C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08073064
	ldr r0, _08073060 @ =0x000002CF
	b _08073068
	.align 2, 0
_08073060: .4byte 0x000002CF
_08073064:
	movs r0, #0xb4
	lsls r0, r0, #2
_08073068:
	strh r0, [r3, #8]
_0807306A:
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _0807308C
_08073072:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08073088
	movs r0, #0xb5
	lsls r0, r0, #2
	strh r0, [r2, #8]
	b _0807308C
_08073088:
	ldr r0, _08073090 @ =0x000002D5
	strh r0, [r3, #8]
_0807308C:
	pop {r4, pc}
	.align 2, 0
_08073090: .4byte 0x000002D5

	thumb_func_start sub_08073094
sub_08073094: @ 0x08073094
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _080730FC @ =gUnk_0811BBEC
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	bl sub_08079E08
	bl sub_08019840
	cmp r0, #0
	bne _080731A4
	ldr r0, _08073100 @ =gPlayerState
	ldrb r1, [r0, #6]
	movs r2, #0x80
	eors r1, r2
	strb r1, [r0, #6]
	ldrb r0, [r0, #0x12]
	cmp r0, #0x2a
	beq _080730DE
	cmp r0, #0x2c
	beq _080730DE
	bl sub_0807A1B8
_080730DE:
	bl sub_08078EFC
	cmp r0, #0
	bne _080731A4
	ldr r1, _08073100 @ =gPlayerState
	ldrb r0, [r1, #0x12]
	subs r0, #0x19
	adds r2, r1, #0
	cmp r0, #0x13
	bhi _08073178
	lsls r0, r0, #2
	ldr r1, _08073104 @ =_08073108
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080730FC: .4byte gUnk_0811BBEC
_08073100: .4byte gPlayerState
_08073104: .4byte _08073108
_08073108: @ jump table
	.4byte _0807316C @ case 0
	.4byte _08073178 @ case 1
	.4byte _08073178 @ case 2
	.4byte _08073178 @ case 3
	.4byte _08073178 @ case 4
	.4byte _0807317E @ case 5
	.4byte _08073178 @ case 6
	.4byte _08073178 @ case 7
	.4byte _08073178 @ case 8
	.4byte _08073178 @ case 9
	.4byte _08073178 @ case 10
	.4byte _08073178 @ case 11
	.4byte _08073178 @ case 12
	.4byte _08073178 @ case 13
	.4byte _08073178 @ case 14
	.4byte _08073178 @ case 15
	.4byte _08073178 @ case 16
	.4byte _08073158 @ case 17
	.4byte _0807317E @ case 18
	.4byte _08073158 @ case 19
_08073158:
	adds r1, r4, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2, #0x30]
	b _0807317E
_0807316C:
	adds r0, r4, #0
	bl sub_08074808
	bl sub_080791D0
	b _080731A4
_08073178:
	bl sub_0807921C
	b _080731A4
_0807317E:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080731A4
	bl sub_0807A1B8
	bl sub_08078EFC
	cmp r0, #0
	bne _080731A4
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
_080731A4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start PlayerUseEntrance
PlayerUseEntrance: @ 0x080731A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080731D0 @ =gPlayerState
	adds r0, #0xa8
	movs r1, #0x1c
	strb r1, [r0]
	movs r0, #0
	movs r1, #8
	bl sub_0805E4E0
	ldr r1, _080731D4 @ =gUnk_0811BBF8
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080731D0: .4byte gPlayerState
_080731D4: .4byte gUnk_0811BBF8
