	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start LilypadLarge
LilypadLarge: @ 0x080854EC
	push {lr}
	ldr r2, _08085500 @ =gUnk_08120608
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08085500: .4byte gUnk_08120608

	thumb_func_start sub_08085504
sub_08085504: @ 0x08085504
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0xff
	bne _08085520
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	beq _0808551C
	bl DeleteThisEntity
_0808551C:
	movs r0, #0
	strb r0, [r4, #0xa]
_08085520:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08085552
	ldr r0, _08085540 @ =gArea
	ldrb r0, [r0, #1]
	cmp r0, #0x1b
	beq _08085544
	ldrb r0, [r4, #0xb]
	bl CheckLocalFlag
	cmp r0, #0
	bne _08085552
	movs r0, #5
	strb r0, [r4, #0xc]
	b _080855E2
	.align 2, 0
_08085540: .4byte gArea
_08085544:
	ldrb r0, [r4, #0xb]
	bl CheckLocalFlag
	cmp r0, #0
	bne _08085552
	bl DeleteThisEntity
_08085552:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0808556C
	adds r0, r4, #0
	bl sub_080040A2
	cmp r0, #0
	bne _08085566
	bl DeleteThisEntity
_08085566:
	movs r0, #0
	strb r0, [r4, #0xe]
	b _0808557A
_0808556C:
	adds r0, r4, #0
	bl DoesSimilarEntityExist
	cmp r0, #0
	beq _0808557A
	bl DeleteThisEntity
_0808557A:
	movs r2, #1
	strb r2, [r4, #0xc]
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r0, _080855E4 @ =gUnk_08120640
	str r0, [r4, #0x48]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r2, [r0]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x11
	str r0, [r4, #0x78]
	adds r1, #0x43
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	adds r0, r4, #0
	movs r1, #9
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080855E8
_080855E2:
	pop {r4, pc}
	.align 2, 0
_080855E4: .4byte gUnk_08120640

	thumb_func_start sub_080855E8
sub_080855E8: @ 0x080855E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldrb r1, [r7, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r7, #0x10]
	ldr r6, _0808564C @ =gPlayerEntity
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x18
	bl sub_0806FC80
	adds r1, r0, #0
	cmp r1, #0
	beq _080856EE
	ldr r3, _08085650 @ =gPlayerState
	ldr r0, [r3, #0x30]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x30]
	ldr r4, [r6, #0x34]
	cmp r4, #0
	beq _0808561C
	b _080857CE
_0808561C:
	adds r5, r3, #0
	adds r5, #0x26
	ldrb r0, [r5]
	cmp r0, #0
	beq _08085634
	adds r2, r6, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	strb r4, [r5]
_08085634:
	adds r0, r3, #0
	adds r0, #0x84
	str r7, [r0]
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08085654
	adds r0, r6, #0
	bl sub_0800455E
	b _0808565A
	.align 2, 0
_0808564C: .4byte gPlayerEntity
_08085650: .4byte gPlayerState
_08085654:
	adds r0, r6, #0
	bl sub_08004542
_0808565A:
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	bne _0808568C
	movs r0, #4
	strb r0, [r7, #0xf]
_08085664:
	adds r0, r7, #0
	movs r1, #8
	movs r2, #0xa
	bl sub_080A2AF4
	ldrb r0, [r7, #0xf]
	subs r0, #1
	strb r0, [r7, #0xf]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08085664
	movs r0, #1
	strb r0, [r7, #0xf]
	ldrb r1, [r7, #0xe]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0xe]
	str r2, [r7, #0x70]
	str r2, [r7, #0x6c]
_0808568C:
	ldr r2, _080856B8 @ =gPlayerState
	ldrb r0, [r2, #0x1c]
	cmp r0, #3
	beq _08085696
	b _080857CE
_08085696:
	ldr r1, _080856BC @ =gUnk_08120620
	ldrb r0, [r2, #0x1d]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, _080856C0 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	movs r1, #6
	ands r1, r0
	cmp r1, #2
	beq _080856DE
	cmp r1, #2
	bgt _080856C4
	cmp r1, #0
	beq _080856D6
	b _080857CE
	.align 2, 0
_080856B8: .4byte gPlayerState
_080856BC: .4byte gUnk_08120620
_080856C0: .4byte gPlayerEntity
_080856C4:
	cmp r1, #4
	beq _080856CE
	cmp r1, #6
	beq _080856E6
	b _080857CE
_080856CE:
	ldr r0, [r7, #0x70]
	subs r0, r0, r4
	str r0, [r7, #0x70]
	b _080857CE
_080856D6:
	ldr r0, [r7, #0x70]
	adds r0, r0, r4
	str r0, [r7, #0x70]
	b _080857CE
_080856DE:
	ldr r0, [r7, #0x6c]
	subs r0, r0, r4
	str r0, [r7, #0x6c]
	b _080857CE
_080856E6:
	ldr r0, [r7, #0x6c]
	adds r0, r0, r4
	str r0, [r7, #0x6c]
	b _080857CE
_080856EE:
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	beq _080856FC
	strb r1, [r7, #0xf]
	movs r0, #0x83
	bl SoundReq
_080856FC:
	adds r2, r7, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	mov r8, r2
	cmp r0, #0x13
	bne _080857C8
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r3, _08085758 @ =gUnk_08126EE4
	ldrb r2, [r6, #0x14]
	movs r0, #0xe
	ands r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	movs r0, #0x32
	ldrsh r1, [r6, r0]
	movs r0, #1
	orrs r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r1, r0
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r5, #0
	bl sub_080045D4
	strb r0, [r7, #0x15]
	ldr r0, _0808575C @ =gPlayerState
	ldrb r0, [r0, #0x1d]
	cmp r0, #2
	beq _0808576A
	cmp r0, #2
	bgt _08085760
	cmp r0, #1
	beq _08085770
	b _08085774
	.align 2, 0
_08085758: .4byte gUnk_08126EE4
_0808575C: .4byte gPlayerState
_08085760:
	cmp r0, #3
	bne _08085774
	movs r4, #0x80
	lsls r4, r4, #3
	b _08085774
_0808576A:
	movs r4, #0xc0
	lsls r4, r4, #2
	b _08085774
_08085770:
	movs r4, #0x80
	lsls r4, r4, #2
_08085774:
	ldr r6, _080858A8 @ =gSineTable
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x18
	adds r1, r4, #0
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl FixedDiv
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r7, #0x6c]
	adds r1, r1, r0
	str r1, [r7, #0x6c]
	ldrb r0, [r7, #0x15]
	lsls r0, r0, #4
	adds r0, #0x80
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r4, #0
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl FixedDiv
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r7, #0x70]
	subs r1, r1, r0
	str r1, [r7, #0x70]
_080857C8:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_080857CE:
	ldr r0, [r7, #0x2c]
	str r0, [r7, #0x54]
	ldr r0, [r7, #0x30]
	str r0, [r7, #0x50]
	ldr r0, [r7, #0x6c]
	cmp r0, #0
	bne _080857E4
	ldr r0, [r7, #0x70]
	cmp r0, #0
	bne _080857E4
	b _080859F4
_080857E4:
	ldr r0, [r7, #0x70]
	ldr r1, _080858AC @ =0xFFFF0000
	cmp r0, r1
	blt _080857F4
	movs r1, #0x80
	lsls r1, r1, #9
	cmp r0, r1
	ble _080857F6
_080857F4:
	str r1, [r7, #0x70]
_080857F6:
	ldr r0, [r7, #0x6c]
	ldr r1, _080858AC @ =0xFFFF0000
	cmp r0, r1
	blt _08085806
	movs r1, #0x80
	lsls r1, r1, #9
	cmp r0, r1
	ble _08085808
_08085806:
	str r1, [r7, #0x6c]
_08085808:
	ldr r0, _080858B0 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0808581A
	adds r0, r7, #0
	bl sub_080A2AD4
_0808581A:
	ldr r0, [r7, #0x2c]
	ldr r1, [r7, #0x6c]
	adds r5, r0, r1
	ldr r1, [r7, #0x30]
	ldr r2, [r7, #0x70]
	adds r3, r1, r2
	adds r2, r5, #0
	bl sub_080045D4
	strb r0, [r7, #0x15]
	ldr r0, [r7, #0x6c]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r5, _080858A8 @ =gSineTable
	ldrb r1, [r7, #0x15]
	lsls r1, r1, #4
	adds r1, r1, r5
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl FixedDiv
	strh r0, [r7, #0x24]
	ldr r0, [r7, #0x70]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl FixedMul
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r7, #0x15]
	lsls r1, r1, #4
	adds r1, #0x80
	adds r1, r1, r5
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl FixedDiv
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r4, r0, #0
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	cmp r4, r0
	ble _08085884
	strh r4, [r7, #0x24]
_08085884:
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	beq _080858BC
	adds r0, r7, #0
	adds r0, #0x7e
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _080858B4 @ =0x00000FFF
	cmp r1, r0
	bgt _080858B8
	movs r0, #0x24
	ldrsh r1, [r7, r0]
	lsls r1, r1, #0xc
	ldr r0, [r7, #0x7c]
	adds r0, r0, r1
	str r0, [r7, #0x7c]
	b _080858E0
	.align 2, 0
_080858A8: .4byte gSineTable
_080858AC: .4byte 0xFFFF0000
_080858B0: .4byte gScreenTransition
_080858B4: .4byte 0x00000FFF
_080858B8:
	movs r0, #0
	b _080858DE
_080858BC:
	adds r0, r7, #0
	adds r0, #0x7e
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _080858D8 @ =0xFFFFF000
	cmp r1, r0
	ble _080858DC
	movs r0, #0x24
	ldrsh r1, [r7, r0]
	lsls r1, r1, #0xc
	ldr r0, [r7, #0x7c]
	subs r0, r0, r1
	str r0, [r7, #0x7c]
	b _080858E0
	.align 2, 0
_080858D8: .4byte 0xFFFFF000
_080858DC:
	movs r0, #1
_080858DE:
	strb r0, [r7, #0xb]
_080858E0:
	adds r0, r7, #0
	bl sub_08085EFC
	adds r0, r7, #0
	bl sub_080AF134
	ldr r1, [r7, #0x54]
	ldr r0, [r7, #0x2c]
	cmp r1, r0
	bne _0808590C
	adds r0, r7, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #2
	bne _08085906
	movs r0, #0
	str r0, [r7, #0x6c]
	b _08085916
_08085906:
	adds r0, r1, #1
	strb r0, [r2]
	b _08085916
_0808590C:
	adds r1, r7, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r2, r1, #0
_08085916:
	ldr r1, [r7, #0x50]
	ldr r0, [r7, #0x30]
	cmp r1, r0
	bne _0808592E
	ldrb r0, [r2]
	cmp r0, #2
	bne _0808592A
	movs r0, #0
	str r0, [r7, #0x70]
	b _08085932
_0808592A:
	adds r0, #1
	b _08085930
_0808592E:
	movs r0, #0
_08085930:
	strb r0, [r2]
_08085932:
	ldr r0, _0808595C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08085944
	adds r0, r7, #0
	bl sub_08085F1C
_08085944:
	ldr r1, [r7, #0x6c]
	cmp r1, #0
	beq _08085998
	cmp r1, #0
	bge _0808596E
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08085960
	movs r0, #0
	b _08085964
	.align 2, 0
_0808595C: .4byte gPlayerState
_08085960:
	adds r0, r1, #0
	adds r0, #0x80
_08085964:
	str r0, [r7, #0x6c]
	ldrh r2, [r7, #0x2a]
	movs r1, #0xe0
	lsls r1, r1, #4
	b _08085982
_0808596E:
	cmp r1, #0x7f
	bhi _08085976
	movs r0, #0
	b _0808597A
_08085976:
	adds r0, r1, #0
	subs r0, #0x80
_0808597A:
	str r0, [r7, #0x6c]
	ldrh r2, [r7, #0x2a]
	movs r1, #0xe0
	lsls r1, r1, #8
_08085982:
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _08085998
	ldr r0, [r7, #0x6c]
	cmp r0, #0
	bge _08085992
	adds r0, #3
_08085992:
	asrs r0, r0, #2
	rsbs r0, r0, #0
	str r0, [r7, #0x6c]
_08085998:
	ldr r1, [r7, #0x70]
	cmp r1, #0
	beq _080859E6
	cmp r1, #0
	bge _080859C0
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080859AE
	movs r0, #0
	b _080859B2
_080859AE:
	adds r0, r1, #0
	adds r0, #0x80
_080859B2:
	str r0, [r7, #0x70]
	ldrh r1, [r7, #0x2a]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #0xe
	bne _080859E6
	b _080859D8
_080859C0:
	cmp r1, #0x7f
	bhi _080859C8
	movs r0, #0
	b _080859CC
_080859C8:
	adds r0, r1, #0
	subs r0, #0x80
_080859CC:
	str r0, [r7, #0x70]
	ldrh r1, [r7, #0x2a]
	movs r0, #0xe0
	ands r0, r1
	cmp r0, #0xe0
	bne _080859E6
_080859D8:
	ldr r0, [r7, #0x70]
	cmp r0, #0
	bge _080859E0
	adds r0, #3
_080859E0:
	asrs r0, r0, #2
	rsbs r0, r0, #0
	str r0, [r7, #0x70]
_080859E6:
	adds r0, r7, #0
	bl sub_08085D28
	adds r0, r7, #0
	bl sub_08085D60
	b _08085A0A
_080859F4:
	ldr r0, _08085A18 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08085A0A
	adds r0, r7, #0
	movs r1, #8
	movs r2, #0xa
	bl sub_080A2AF4
_08085A0A:
	adds r0, r7, #0
	bl sub_08085F48
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08085A18: .4byte gScreenTransition

	thumb_func_start sub_08085A1C
sub_08085A1C: @ 0x08085A1C
	push {lr}
	ldr r2, _08085A3C @ =gUnk_0812062C
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	ldr r2, _08085A40 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_08078B48
	pop {pc}
	.align 2, 0
_08085A3C: .4byte gUnk_0812062C
_08085A40: .4byte gPlayerState

	thumb_func_start sub_08085A44
sub_08085A44: @ 0x08085A44
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0x18
	bl sub_080002B4
	cmp r0, #0x11
	beq _08085A62
	movs r0, #0x18
	strb r0, [r4, #0x15]
	b _08085A82
_08085A62:
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #0x18
	bl sub_080002B4
	cmp r0, #0x11
	beq _08085A78
	movs r0, #8
	strb r0, [r4, #0x15]
	b _08085A82
_08085A78:
	movs r0, #0x10
	strb r0, [r4, #0x15]
	movs r0, #1
	strb r0, [r4, #0xd]
	b _08085A94
_08085A82:
	adds r0, r4, #0
	bl sub_08085EFC
	adds r0, r4, #0
	bl sub_080AF134
	adds r0, r4, #0
	bl sub_08085F1C
_08085A94:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08085A98
sub_08085A98: @ 0x08085A98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08085EFC
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08085F1C
	ldr r1, [r4, #0x78]
	ldr r0, _08085B00 @ =0x007FFFFF
	cmp r1, r0
	bls _08085ACC
	ldr r2, _08085B04 @ =0xFFFE0000
	adds r0, r1, r2
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	adds r0, #4
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
_08085ACC:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	bl sub_080002B4
	cmp r0, #0x11
	beq _08085B34
	movs r0, #2
	strb r0, [r4, #0xd]
	ldr r0, _08085B08 @ =gArea
	ldrb r0, [r0, #1]
	cmp r0, #0x1b
	bne _08085B10
	ldrh r0, [r4, #0x32]
	adds r0, #0xd0
	strh r0, [r4, #0x32]
	ldr r0, _08085B0C @ =0x0000FF30
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0x46
	strh r0, [r1]
	movs r0, #0x73
	bl SetLocalFlag
	b _08085B22
	.align 2, 0
_08085B00: .4byte 0x007FFFFF
_08085B04: .4byte 0xFFFE0000
_08085B08: .4byte gArea
_08085B0C: .4byte 0x0000FF30
_08085B10:
	ldrh r0, [r4, #0x32]
	adds r0, #0x40
	strh r0, [r4, #0x32]
	ldr r0, _08085B38 @ =0x0000FFC0
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xf
	strh r0, [r1]
_08085B22:
	adds r0, r4, #0
	movs r1, #0x2b
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	ldr r0, _08085B3C @ =0x0000012D
	bl SoundReq
_08085B34:
	pop {r4, pc}
	.align 2, 0
_08085B38: .4byte 0x0000FFC0
_08085B3C: .4byte 0x0000012D

	thumb_func_start sub_08085B40
sub_08085B40: @ 0x08085B40
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _08085BB4
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _08085BE8
	ldr r1, [r5, #0x78]
	ldr r0, _08085B9C @ =0x011FFFFF
	cmp r1, r0
	bhi _08085B7A
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r1, r2
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	adds r0, #4
	ldrh r3, [r0]
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_0805EC9C
_08085B7A:
	ldr r4, _08085BA0 @ =gPlayerEntity
	ldrh r3, [r5, #0x32]
	ldrh r0, [r5, #0x36]
	adds r0, r3, r0
	adds r1, r5, #0
	adds r1, #0x74
	ldrh r1, [r1]
	subs r2, r0, r1
	strh r2, [r4, #0x32]
	ldr r0, _08085BA4 @ =gArea
	ldrb r0, [r0, #1]
	cmp r0, #0x1b
	bne _08085BA8
	subs r0, r3, r1
	adds r1, r2, #0
	adds r1, #0xd0
	b _08085BAE
	.align 2, 0
_08085B9C: .4byte 0x011FFFFF
_08085BA0: .4byte gPlayerEntity
_08085BA4: .4byte gArea
_08085BA8:
	subs r0, r3, r1
	adds r1, r2, #0
	adds r1, #0x40
_08085BAE:
	subs r0, r0, r1
	strh r0, [r4, #0x36]
	b _08085BE8
_08085BB4:
	adds r0, r5, #0
	bl sub_0800455E
	adds r0, r5, #0
	bl sub_080002B8
	cmp r0, #0xd
	bne _08085BE8
	ldr r4, _08085C50 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_0800455E
	adds r0, r5, #0
	bl sub_08085CDC
	adds r0, r4, #0
	adds r1, r5, #0
	bl GetFacingDirection
	strb r0, [r5, #0x15]
	movs r1, #0x80
	lsls r1, r1, #1
	ldrb r2, [r5, #0x15]
	adds r0, r4, #0
	bl sub_0806F5BC
_08085BE8:
	adds r1, r5, #0
	adds r1, #0x82
	ldrh r0, [r1]
	cmp r0, #0
	bne _08085C54
	ldr r4, _08085C50 @ =gPlayerEntity
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08085C58
	adds r0, r4, #0
	bl sub_0800455E
	adds r0, r5, #0
	bl sub_08085F1C
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #4
	strb r0, [r5, #0xf]
_08085C16:
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0xa
	bl sub_080A2AF4
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08085C16
	movs r0, #1
	strb r0, [r5, #0xf]
	ldrb r1, [r5, #0xe]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0xe]
	str r2, [r5, #0x70]
	str r2, [r5, #0x6c]
	adds r0, r5, #0
	bl sub_080002B8
	cmp r0, #0xd
	bne _08085C58
	movs r0, #4
	strb r0, [r5, #0xc]
	b _08085C58
	.align 2, 0
_08085C50: .4byte gPlayerEntity
_08085C54:
	subs r0, #1
	strh r0, [r1]
_08085C58:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08085C5C
sub_08085C5C: @ 0x08085C5C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08085CA0 @ =gPlayerEntity
	adds r1, r5, #0
	movs r2, #0x18
	bl sub_0806FC80
	cmp r0, #0
	beq _08085CAE
	adds r0, r4, #0
	bl sub_0806F69C
	ldrh r0, [r4, #0x24]
	strh r0, [r5, #0x24]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F69C
	ldr r2, _08085CA4 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x30]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08085CA8
	adds r0, r5, #0
	bl sub_0800455E
	b _08085CAE
	.align 2, 0
_08085CA0: .4byte gPlayerEntity
_08085CA4: .4byte gPlayerState
_08085CA8:
	adds r0, r5, #0
	bl sub_08004542
_08085CAE:
	ldr r3, _08085CD4 @ =gRoomControls
	ldrh r0, [r3]
	cmp r0, #0
	bne _08085CD2
	ldrb r1, [r4, #0x10]
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x11]
	lsrs r2, r1, #4
	subs r0, #0x11
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x11]
	ldr r0, _08085CD8 @ =gPlayerEntity
	str r0, [r3, #0x30]
_08085CD2:
	pop {r4, r5, pc}
	.align 2, 0
_08085CD4: .4byte gRoomControls
_08085CD8: .4byte gPlayerEntity

	thumb_func_start sub_08085CDC
sub_08085CDC: @ 0x08085CDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x78]
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r4, #0x78]
	ldr r1, _08085D04 @ =0x03FFFFFF
	cmp r0, r1
	bhi _08085D08
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	adds r0, #4
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
	b _08085D0C
	.align 2, 0
_08085D04: .4byte 0x03FFFFFF
_08085D08:
	bl DeleteThisEntity
_08085D0C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08085D10
sub_08085D10: @ 0x08085D10
	push {r4, lr}
	adds r4, r0, #0
	bl DoesSimilarEntityExist
	cmp r0, #0
	beq _08085D26
	ldrb r0, [r4, #0xb]
	bl SetLocalFlag
	bl DeleteThisEntity
_08085D26:
	pop {r4, pc}

	thumb_func_start sub_08085D28
sub_08085D28: @ 0x08085D28
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08085D5C @ =gPlayerState
	adds r0, r1, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _08085D5A
	ldr r0, [r1, #0x30]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	beq _08085D5A
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	bl sub_080002B4
	cmp r0, #0x11
	bne _08085D5A
	movs r0, #0
	strb r5, [r4, #0xc]
	strb r0, [r4, #0xd]
	bl sub_08078B48
_08085D5A:
	pop {r4, r5, pc}
	.align 2, 0
_08085D5C: .4byte gPlayerState

	thumb_func_start sub_08085D60
sub_08085D60: @ 0x08085D60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r2, _08085D94 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08085E64
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08085E64
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _08085E64
	ldrb r1, [r5, #0x15]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08085D98
	ldrb r6, [r5, #0x15]
	adds r4, r6, #0
	b _08085DB0
	.align 2, 0
_08085D94: .4byte gPlayerState
_08085D98:
	movs r0, #0x10
	ands r0, r1
	movs r4, #8
	cmp r0, #0
	beq _08085DA4
	movs r4, #0x18
_08085DA4:
	ldrb r0, [r5, #0x15]
	subs r0, #8
	movs r6, #0x10
	cmp r0, #0x10
	ble _08085DB0
	movs r6, #0
_08085DB0:
	cmp r4, #0x18
	beq _08085DB8
	cmp r4, #8
	bne _08085E20
_08085DB8:
	lsrs r3, r4, #2
	ldr r1, _08085E10 @ =gUnk_08120638
	adds r0, r3, r1
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r0, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_080002CC
	cmp r0, #0xff
	bne _08085E20
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r2, _08085E14 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	adds r0, r0, r7
	movs r3, #0x32
	ldrsh r1, [r5, r3]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	add r1, r8
	adds r2, r4, #0
	movs r3, #5
	bl sub_080806BC
	cmp r0, #0
	bne _08085E1C
	ldr r0, _08085E18 @ =gPlayerEntity
	lsrs r1, r4, #3
	bl sub_0807BD14
	cmp r0, #0
	beq _08085E20
	strb r4, [r5, #0x15]
	b _08085E52
	.align 2, 0
_08085E10: .4byte gUnk_08120638
_08085E14: .4byte gRoomControls
_08085E18: .4byte gPlayerEntity
_08085E1C:
	strb r4, [r5, #0x15]
	b _08085E6C
_08085E20:
	cmp r6, #0
	beq _08085E28
	cmp r6, #0x10
	bne _08085E6C
_08085E28:
	lsrs r3, r6, #2
	ldr r2, _08085E5C @ =gUnk_08120638
	adds r0, r3, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r3, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	bl sub_080002CC
	cmp r0, #0xff
	bne _08085E6C
	ldr r0, _08085E60 @ =gPlayerEntity
	lsrs r1, r6, #3
	bl sub_0807BD14
	cmp r0, #0
	beq _08085E6C
	strb r6, [r5, #0x15]
_08085E52:
	adds r0, r5, #0
	bl sub_08085E74
	b _08085E6C
	.align 2, 0
_08085E5C: .4byte gUnk_08120638
_08085E60: .4byte gPlayerEntity
_08085E64:
	ldrb r1, [r5, #0x10]
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r5, #0x10]
_08085E6C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08085E74
sub_08085E74: @ 0x08085E74
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #0x11]
	movs r0, #3
	strb r0, [r2, #0xc]
	ldrb r0, [r2, #0x15]
	cmp r0, #8
	beq _08085EB8
	cmp r0, #8
	bgt _08085EA2
	cmp r0, #0
	beq _08085EAC
	b _08085EBE
_08085EA2:
	cmp r0, #0x10
	beq _08085EB2
	cmp r0, #0x18
	beq _08085EB8
	b _08085EBE
_08085EAC:
	movs r0, #0x90
	lsls r0, r0, #1
	b _08085EBC
_08085EB2:
	movs r0, #0x9c
	lsls r0, r0, #1
	b _08085EBC
_08085EB8:
	movs r0, #0x80
	lsls r0, r0, #1
_08085EBC:
	strh r0, [r2, #0x24]
_08085EBE:
	movs r0, #0
	str r0, [r2, #0x70]
	str r0, [r2, #0x6c]
	strh r0, [r2, #0x2c]
	strh r0, [r2, #0x30]
	ldr r1, _08085EF0 @ =gPlayerEntity
	strh r0, [r1, #0x2c]
	strh r0, [r1, #0x30]
	ldrb r0, [r2, #0x15]
	strb r0, [r1, #0x15]
	ldr r1, _08085EF4 @ =gPlayerState
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #8]
	ldr r0, _08085EF8 @ =gRoomControls
	str r2, [r0, #0x30]
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	beq _08085EE8
	bl DeleteEntity
_08085EE8:
	bl ResetPlayer
	pop {pc}
	.align 2, 0
_08085EF0: .4byte gPlayerEntity
_08085EF4: .4byte gPlayerState
_08085EF8: .4byte gRoomControls

	thumb_func_start sub_08085EFC
sub_08085EFC: @ 0x08085EFC
	ldr r3, _08085F18 @ =gPlayerEntity
	ldrh r1, [r0, #0x2e]
	ldrh r2, [r3, #0x2e]
	subs r1, r1, r2
	adds r2, r0, #0
	adds r2, #0x76
	strh r1, [r2]
	ldrh r1, [r0, #0x32]
	ldrh r2, [r3, #0x32]
	subs r1, r1, r2
	adds r0, #0x74
	strh r1, [r0]
	bx lr
	.align 2, 0
_08085F18: .4byte gPlayerEntity

	thumb_func_start sub_08085F1C
sub_08085F1C: @ 0x08085F1C
	push {lr}
	adds r3, r0, #0
	ldr r2, _08085F44 @ =gPlayerEntity
	adds r1, r3, #0
	adds r1, #0x76
	ldrh r0, [r3, #0x2e]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2, #0x2e]
	adds r1, r3, #0
	adds r1, #0x74
	ldrh r0, [r3, #0x32]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2, #0x32]
	ldrb r0, [r3, #0x15]
	bl sub_0807A5B8
	pop {pc}
	.align 2, 0
_08085F44: .4byte gPlayerEntity

	thumb_func_start sub_08085F48
sub_08085F48: @ 0x08085F48
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xe]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08085F8C
	ldr r5, _08085F80 @ =gPlayerState
	ldrb r0, [r5, #0x12]
	cmp r0, #0x17
	bne _08085F6A
	bl sub_08078F60
	movs r0, #0x19
	strb r0, [r5, #0x12]
_08085F6A:
	movs r0, #0x83
	bl SoundReq
	ldr r1, [r4, #0x78]
	ldr r0, _08085F84 @ =0x0127FFFF
	cmp r1, r0
	bhi _08085F88
	movs r2, #0x80
	lsls r2, r2, #0xc
	b _08085FF8
	.align 2, 0
_08085F80: .4byte gPlayerState
_08085F84: .4byte 0x0127FFFF
_08085F88:
	movs r0, #0
	b _08086006
_08085F8C:
	ldr r0, _08085FAC @ =gPlayerState
	ldr r1, [r0, #0x30]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08085FCC
	lsls r0, r2, #0x18
	cmp r0, #0
	beq _08085FB8
	ldr r1, [r4, #0x78]
	ldr r0, _08085FB0 @ =0x011FFFFF
	cmp r1, r0
	bhi _08085FB4
	movs r2, #0x80
	lsls r2, r2, #8
	b _08085FF8
	.align 2, 0
_08085FAC: .4byte gPlayerState
_08085FB0: .4byte 0x011FFFFF
_08085FB4:
	strb r3, [r4, #0xe]
	b _08086008
_08085FB8:
	ldr r1, [r4, #0x78]
	movs r0, #0x88
	lsls r0, r0, #0x11
	cmp r1, r0
	bls _08086004
	ldr r2, _08085FC8 @ =0xFFFF8000
	b _08085FF8
	.align 2, 0
_08085FC8: .4byte 0xFFFF8000
_08085FCC:
	lsls r0, r2, #0x18
	cmp r0, #0
	beq _08085FEC
	ldr r2, [r4, #0x78]
	ldr r0, _08085FE4 @ =0x010FFFFF
	cmp r2, r0
	bhi _08085FE8
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r2, r1
	str r0, [r4, #0x78]
	b _08086008
	.align 2, 0
_08085FE4: .4byte 0x010FFFFF
_08085FE8:
	strb r1, [r4, #0xe]
	b _08086008
_08085FEC:
	ldr r1, [r4, #0x78]
	movs r0, #0x83
	lsls r0, r0, #0x11
	cmp r1, r0
	bls _08086004
	ldr r2, _08086000 @ =0xFFFFC000
_08085FF8:
	adds r0, r1, r2
	str r0, [r4, #0x78]
	b _08086008
	.align 2, 0
_08086000: .4byte 0xFFFFC000
_08086004:
	movs r0, #1
_08086006:
	strb r0, [r4, #0xe]
_08086008:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r2, [r0]
	adds r0, #4
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
	pop {r4, r5, pc}
