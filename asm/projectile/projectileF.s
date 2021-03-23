	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ProjectileF
ProjectileF: @ 0x080A95DC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A95F4 @ =gUnk_08129ABC
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A95F4: .4byte gUnk_08129ABC

	thumb_func_start sub_080A95F8
sub_080A95F8: @ 0x080A95F8
	push {lr}
	ldr r2, _080A960C @ =gUnk_08129AD0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A960C: .4byte gUnk_08129AD0

	thumb_func_start sub_080A9610
sub_080A9610: @ 0x080A9610
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	strb r5, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080A9660
	cmp r0, #1
	bgt _080A9628
	cmp r0, #0
	beq _080A9632
	b _080A9756
_080A9628:
	cmp r0, #2
	beq _080A96D0
	cmp r0, #3
	beq _080A9718
	b _080A9756
_080A9632:
	movs r1, #0x90
	lsls r1, r1, #7
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	strb r1, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	b _080A9756
_080A9660:
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	bl Random
	ldr r2, _080A96C8 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	adds r2, #1
	adds r1, r2, #0
	adds r0, r0, r1
	strh r0, [r4, #0x24]
	bl Random
	ldr r1, _080A96CC @ =0x00001FFF
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #9
	adds r1, r1, r0
	str r1, [r4, #0x20]
	bl Random
	movs r1, #7
	ands r0, r1
	subs r0, #4
	ldrb r1, [r4, #0x15]
	subs r1, r1, r0
	strb r1, [r4, #0x15]
	movs r0, #0x96
	lsls r0, r0, #2
	str r0, [r4, #0x78]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
	b _080A9756
	.align 2, 0
_080A96C8: .4byte 0x000001FF
_080A96CC: .4byte 0x00001FFF
_080A96D0:
	bl Random
	ands r0, r5
	cmp r0, #0
	beq _080A96EA
	bl Random
	movs r1, #7
	ands r0, r1
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	strb r0, [r4, #0x15]
	b _080A96F8
_080A96EA:
	bl Random
	movs r1, #7
	ands r0, r1
	ldrb r1, [r4, #0x15]
	subs r1, r1, r0
	strb r1, [r4, #0x15]
_080A96F8:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	movs r0, #0x30
	strb r0, [r4, #0xe]
	movs r1, #0xa0
	lsls r1, r1, #7
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	adds r0, r4, #0
	movs r1, #5
	bl InitializeAnimation
	b _080A9756
_080A9718:
	ldr r0, _080A9760 @ =gPlayerEntity
	adds r1, r4, #0
	bl CopyPosition
	ldr r0, _080A9764 @ =0xFF600000
	str r0, [r4, #0x34]
	ldrh r0, [r4, #0x2e]
	adds r0, #0x60
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	adds r0, #0x40
	strh r0, [r4, #0x32]
	bl Random
	movs r1, #0xc0
	bl __modsi3
	ldrh r1, [r4, #0x2e]
	subs r1, r1, r0
	strh r1, [r4, #0x2e]
	bl Random
	movs r1, #0x7f
	ands r1, r0
	ldrh r0, [r4, #0x32]
	subs r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_080A9756:
	ldr r0, _080A9768 @ =0x000001B5
	bl SoundReq
	pop {r4, r5, pc}
	.align 2, 0
_080A9760: .4byte gPlayerEntity
_080A9764: .4byte 0xFF600000
_080A9768: .4byte 0x000001B5

	thumb_func_start sub_080A976C
sub_080A976C: @ 0x080A976C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080A9778
	b _080A9908
_080A9778:
	cmp r0, #1
	bgt _080A9782
	cmp r0, #0
	beq _080A9790
	b _080A99EE
_080A9782:
	cmp r0, #2
	bne _080A9788
	b _080A99A0
_080A9788:
	cmp r0, #3
	bne _080A978E
	b _080A99D2
_080A978E:
	b _080A99EE
_080A9790:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _080A979C
	bl DeleteThisEntity
_080A979C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A97E0
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A97E0
	movs r5, #0x7f
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080A97C0
	adds r0, r4, #0
	bl sub_080A99F0
_080A97C0:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	movs r0, #1
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r4, #0x10]
_080A97E0:
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	movs r2, #0x40
	bl sub_0806FC80
	cmp r0, #0
	beq _080A9848
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080A9804
	ldrb r0, [r4, #0x15]
	movs r1, #0x80
	eors r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	b _080A9848
_080A9804:
	ldr r1, [r4, #0x50]
	adds r1, #0x45
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	adds r0, #0x3d
	movs r1, #0x1e
	strb r1, [r0]
	ldr r1, [r4, #0x50]
	adds r0, r1, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A983C
	adds r1, #0x42
	movs r0, #0x18
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	adds r0, #0x46
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	ldr r1, [r4, #0x50]
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	adds r1, #0x3e
	strb r0, [r1]
_080A983C:
	ldr r0, _080A98B8 @ =0x00000127
	bl SoundReq
	adds r0, r4, #0
	bl sub_080A99F0
_080A9848:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r5, r4, #0
	adds r5, #0x78
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE58C
	ldrh r1, [r4, #0x2a]
	movs r0, #0xee
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A9882
	ldrb r0, [r4, #0x15]
	rsbs r0, r0, #0
	strb r0, [r4, #0x15]
_080A9882:
	ldrh r1, [r4, #0x2a]
	movs r0, #0xee
	ands r0, r1
	cmp r0, #0
	beq _080A989A
	ldrb r0, [r4, #0x15]
	rsbs r0, r0, #0
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r1, r2, #0
	eors r0, r1
	strb r0, [r4, #0x15]
_080A989A:
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0xf]
	cmp r0, r1
	bne _080A98A4
	b _080A99EE
_080A98A4:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl SoundReq
	ldrh r0, [r5]
	cmp r0, #0
	bne _080A98BC
	movs r0, #4
	b _080A98C0
	.align 2, 0
_080A98B8: .4byte 0x00000127
_080A98BC:
	ldrb r0, [r4, #0xe]
	adds r0, #1
_080A98C0:
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bhi _080A98CE
	b _080A99EE
_080A98CE:
	movs r5, #0
_080A98D0:
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #1
	bl sub_0804A98C
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _080A98FC
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	ldr r1, [r4, #0x54]
	ldr r0, _080A9904 @ =gUnk_08129ADC
	adds r0, r5, r0
	ldrb r0, [r0]
	ldrb r2, [r4, #0x15]
	adds r0, r0, r2
	strb r0, [r1, #0x15]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl CopyPosition
_080A98FC:
	adds r5, #1
	cmp r5, #2
	bls _080A98D0
	b _080A9998
	.align 2, 0
_080A9904: .4byte gUnk_08129ADC
_080A9908:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _080A9916
	adds r0, r4, #0
	bl sub_080A99F0
_080A9916:
	adds r0, r4, #0
	bl GetNextFrame
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _080A9950
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE58C
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	bne _080A994A
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	b _080A9950
_080A994A:
	adds r0, r4, #0
	bl sub_080A99F0
_080A9950:
	ldr r2, [r4, #0x78]
	cmp r2, #0x1d
	bhi _080A9978
	movs r0, #7
	ands r0, r2
	cmp r0, #0
	beq _080A996E
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _080A9978
_080A996E:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_080A9978:
	subs r1, r2, #1
	str r1, [r4, #0x78]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080A998A
	adds r0, r4, #0
	bl sub_080A99F0
_080A998A:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A99EE
_080A9998:
	adds r0, r4, #0
	bl sub_080A99F0
	b _080A99EE
_080A99A0:
	adds r0, r4, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _080A99C2
	movs r2, #0x24
	ldrsh r1, [r4, r2]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	b _080A99EE
_080A99C2:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080A99CC
	movs r0, #1
	strb r0, [r1, #0xe]
_080A99CC:
	bl DeleteThisEntity
	b _080A99EE
_080A99D2:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A99EE
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A99EE:
	pop {r4, r5, pc}

	thumb_func_start sub_080A99F0
sub_080A99F0: @ 0x080A99F0
	push {lr}
	movs r1, #4
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
	pop {pc}
