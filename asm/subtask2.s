	.include "asm/macros.inc"
	
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080A5594
sub_080A5594: @ 0x080A5594
	push {r4, r5, r6, r7, lr}
	ldr r4, _080A5620 @ =gMenu
	ldr r0, _080A5624 @ =gUnk_08128C00
	str r0, [r4, #0xc]
	ldr r0, _080A5628 @ =gUnk_08128C04
	bl sub_080A70AC
	movs r6, #6
	movs r5, #0x34
	adds r7, r4, #0
	adds r7, #0x10
_080A55AA:
	adds r0, r5, #0
	bl GetInventoryValue
	cmp r0, #1
	bne _080A55EA
	ldr r1, _080A562C @ =gUnk_080FD5B4
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #3
	bne _080A55C8
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _080A55C8
	movs r1, #0x63
_080A55C8:
	cmp r1, #0x63
	beq _080A55EA
	cmp r1, #1
	bne _080A55D8
	adds r1, r6, #0
	cmp r1, #7
	bhi _080A55D8
	adds r6, r1, #1
_080A55D8:
	adds r0, r1, r7
	strb r5, [r0]
	lsls r1, r1, #3
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_080A5F48
_080A55EA:
	adds r5, #1
	cmp r5, #0x46
	bls _080A55AA
	movs r0, #0x3d
	bl GetInventoryValue
	cmp r0, #0
	bne _080A564A
	movs r5, #0
	movs r0, #0x67
	bl GetInventoryValue
	cmp r0, #0
	beq _080A5646
	movs r4, #0
	ldr r1, _080A5630 @ =gUnk_02002B6B
_080A560A:
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #0x12
	bls _080A560A
	cmp r5, #0x4f
	ble _080A5634
	movs r5, #4
	b _080A5646
	.align 2, 0
_080A5620: .4byte gMenu
_080A5624: .4byte gUnk_08128C00
_080A5628: .4byte gUnk_08128C04
_080A562C: .4byte gUnk_080FD5B4
_080A5630: .4byte gUnk_02002B6B
_080A5634:
	cmp r5, #0x27
	ble _080A563C
	movs r5, #3
	b _080A5646
_080A563C:
	cmp r5, #9
	ble _080A5644
	movs r5, #2
	b _080A5646
_080A5644:
	movs r5, #1
_080A5646:
	ldr r0, _080A5698 @ =gMenu
	strb r5, [r0, #0x10]
_080A564A:
	ldr r0, _080A5698 @ =gMenu
	ldr r1, _080A569C @ =gSave
	adds r1, #0xa9
	ldrb r1, [r1]
	adds r1, #1
	strb r1, [r0, #0x11]
	movs r5, #0
	movs r4, #0x48
_080A565A:
	adds r0, r4, #0
	bl GetInventoryValue
	cmp r0, #0
	beq _080A5666
	adds r5, #1
_080A5666:
	adds r4, #1
	cmp r4, #0x4f
	bls _080A565A
	ldr r4, _080A5698 @ =gMenu
	strb r5, [r4, #0x12]
	movs r0, #0x3e
	bl GetInventoryValue
	cmp r0, #0
	bne _080A5688
	movs r0, #0x3f
	bl GetInventoryValue
	cmp r0, #0
	beq _080A5688
	movs r0, #0x3f
	strb r0, [r4, #0x13]
_080A5688:
	ldr r1, _080A5698 @ =gMenu
	movs r0, #1
	strb r0, [r1, #0x14]
	strb r0, [r1, #0x15]
	bl sub_080A7114
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5698: .4byte gMenu
_080A569C: .4byte gSave

	thumb_func_start sub_080A56A0
sub_080A56A0: @ 0x080A56A0
	push {r4, lr}
	bl sub_080A51F4
	cmp r0, #0
	bne _080A56AC
	b _080A57F0
_080A56AC:
	ldr r2, _080A56D0 @ =gMenu
	ldr r0, _080A56D4 @ =gUnk_08128C00
	str r0, [r2, #0xc]
	ldrb r0, [r2, #3]
	lsls r0, r0, #3
	ldr r1, _080A56D8 @ =gUnk_08128C14
	adds r4, r0, r1
	movs r3, #0xff
	ldr r0, _080A56DC @ =gInput
	ldrh r1, [r0, #4]
	cmp r1, #0x20
	beq _080A56F2
	cmp r1, #0x20
	bgt _080A56E0
	cmp r1, #0x10
	beq _080A56F6
	b _080A56F8
	.align 2, 0
_080A56D0: .4byte gMenu
_080A56D4: .4byte gUnk_08128C00
_080A56D8: .4byte gUnk_08128C14
_080A56DC: .4byte gInput
_080A56E0:
	cmp r1, #0x40
	beq _080A56EA
	cmp r1, #0x80
	beq _080A56EE
	b _080A56F8
_080A56EA:
	ldrb r3, [r4]
	b _080A56F8
_080A56EE:
	ldrb r3, [r4, #1]
	b _080A56F8
_080A56F2:
	ldrb r3, [r4, #2]
	b _080A56F8
_080A56F6:
	ldrb r3, [r4, #3]
_080A56F8:
	cmp r3, #0xff
	beq _080A570C
	ldr r0, _080A5708 @ =gMenu
	strb r3, [r0, #3]
	movs r0, #0x69
	bl SoundReq
	b _080A575E
	.align 2, 0
_080A5708: .4byte gMenu
_080A570C:
	ldrh r0, [r0, #2]
	cmp r0, #1
	bne _080A575E
	ldrb r3, [r2, #3]
	.ifdef DEMO_USA
	movs r4, #0
	.else
	.ifdef DEMO_JP
	movs r4, #0
	.else
	movs r1, #0
	.endif
	.endif
	cmp r3, #2
	beq _080A572E
	cmp r3, #2
	bhi _080A5724
	cmp r3, #0
	beq _080A572E
	b _080A574E
_080A5724:
	cmp r3, #4
	beq _080A5748
	cmp r3, #5
	beq _080A574C
	b _080A574E
_080A572E:
	ldr r0, _080A5744 @ =gMenu
	adds r0, #0x10
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A574E
	.ifdef DEMO_USA
	movs r4, #8
	.else
	.ifdef DEMO_JP
	movs r4, #8
	.else
	movs r1, #8
	.endif
	.endif
	cmp r3, #0
	bne _080A574E
	.ifdef DEMO_USA
	movs r4, #7
	.else
	.ifdef DEMO_JP
	movs r4, #7
	.else
	movs r1, #7
	.endif
	.endif
	b _080A5752
	.align 2, 0
_080A5744: .4byte gMenu
_080A5748:
.ifdef DEMO_USA
	movs r0, #0x6d
	bl SoundReq
	b _080A574E
_080A574C:
	movs r0, #0x6d
	bl SoundReq
.else
.ifdef DEMO_JP
	movs r0, #0x6d
	bl SoundReq
	b _080A574E
_080A574C:
	movs r0, #0x6d
	bl SoundReq
.else
	movs r1, #9
	b _080A5752
_080A574C:
	movs r1, #0xa
.endif
.endif
_080A574E:
	.ifdef DEMO_USA
	cmp r4, #0
	.else
	.ifdef DEMO_JP
	cmp r4, #0
	.else
	cmp r1, #0
	.endif
	.endif
	beq _080A575E
_080A5752:
	.ifdef DEMO_USA
	adds r0, r4, #0
	.else
	.ifdef DEMO_JP
	adds r0, r4, #0
	.else
	adds r0, r1, #0
	.endif
	.endif
	bl sub_080A4E84
	movs r0, #0x6a
	bl SoundReq
_080A575E:
	ldr r0, _080A5780 @ =gMenu
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #0
	beq _080A576C
	cmp r1, #2
	bne _080A5788
_080A576C:
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A5788
	ldr r1, _080A5784 @ =gUnk_0200AF00
	movs r0, #0x10
	b _080A578C
	.align 2, 0
_080A5780: .4byte gMenu
_080A5784: .4byte gUnk_0200AF00
_080A5788:
	ldr r1, _080A57AC @ =gUnk_0200AF00
	ldr r0, _080A57B0 @ =0x0000FFF0
_080A578C:
	strh r0, [r1, #0x1c]
	ldrb r3, [r2, #3]
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r3, r0
	ldrb r2, [r0]
	cmp r2, #0
	beq _080A57E6
	cmp r3, #5
	bhi _080A57E6
	lsls r0, r3, #2
	ldr r1, _080A57B4 @ =_080A57B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A57AC: .4byte gUnk_0200AF00
_080A57B0: .4byte 0x0000FFF0
_080A57B4: .4byte _080A57B8
_080A57B8: @ jump table
	.4byte _080A57D0 @ case 0
	.4byte _080A57D8 @ case 1
	.4byte _080A57DC @ case 2
	.4byte _080A57E6 @ case 3
	.4byte _080A57E0 @ case 4
	.4byte _080A57E4 @ case 5
_080A57D0:
	cmp r2, #0x3d
	beq _080A57E6
	movs r2, #0x67
	b _080A57E6
_080A57D8:
	movs r2, #0x63
	b _080A57E6
_080A57DC:
	movs r2, #0x70
	b _080A57E6
_080A57E0:
	movs r2, #0x74
	b _080A57E6
_080A57E4:
	movs r2, #0x73
_080A57E6:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r0, r2, r0
	bl sub_080A6F6C
_080A57F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A57F4
sub_080A57F4: @ 0x080A57F4
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080A50A8 @ =gOamCmd
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	ldr r1, _080A50AC @ =gUnk_08128C94
	mov sb, r1
	cmp r0, #0
	bne _080A502E
	ldr r3, _080A50B0 @ =gUnk_08128C14
	mov sb, r3
_080A502E:
	ldr r0, _080A50B4 @ =gChooseFileState
	ldrb r0, [r0, #3]
	lsls r0, r0, #3
	mov r1, sb
	adds r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2, #8]
	ldrb r0, [r3, #6]
	strh r0, [r2]
	ldrb r0, [r3, #7]
	strh r0, [r2, #2]
	ldrb r2, [r3, #4]
	ldr r0, _080A50B8 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x10
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0xa
	cmp r0, #0
	bne _080A505A
	adds r1, #1
_080A505A:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl sub_080ADA14
	movs r3, #0
	mov r8, r3
	mov r7, sb
	adds r7, #5
_080A506A:
	ldr r0, _080A50B4 @ =gChooseFileState
	adds r0, #0x10
	mov r1, r8
	adds r6, r1, r0
	ldrb r1, [r6]
	cmp r1, #0
	beq _080A50FA
	mov r3, r8
	lsls r5, r3, #3
	mov r0, sb
	adds r3, r0, r5
	ldr r4, _080A50A8 @ =gOamCmd
	ldrb r0, [r7, #1]
	strh r0, [r4]
	ldrb r2, [r7, #2]
	strh r2, [r4, #2]
	movs r0, #0xe8
	lsls r0, r0, #8
	strh r0, [r4, #8]
	cmp r1, #0x33
	bhi _080A50CA
	mov r1, r8
	cmp r1, #2
	bne _080A50BC
	ldrb r0, [r7]
	adds r1, r0, #0
	adds r1, #0xa
	movs r0, #0xfd
	lsls r0, r0, #1
	b _080A50F6
	.align 2, 0
_080A50A8: .4byte gOamCmd
_080A50AC: .4byte gUnk_08128C94
_080A50B0: .4byte gUnk_08128C14
_080A50B4: .4byte gChooseFileState
_080A50B8: .4byte gMain
_080A50BC:
	ldrb r0, [r6]
	adds r0, #9
	ldrb r3, [r3, #5]
	adds r1, r0, r3
	movs r0, #0xfd
	lsls r0, r0, #1
	b _080A50F6
_080A50CA:
	ldr r3, _080A50E0 @ =0x0000EB80
	adds r0, r5, r3
	strh r0, [r4, #8]
	cmp r1, #0x3d
	beq _080A50E4
	cmp r1, #0x3e
	bne _080A50EA
	adds r0, r2, #0
	adds r0, #8
	b _080A50E8
	.align 2, 0
_080A50E0: .4byte 0x0000EB80
_080A50E4:
	adds r0, r2, #0
	adds r0, #0xd
_080A50E8:
	strh r0, [r4, #2]
_080A50EA:
	ldr r0, _080A5190 @ =gSpriteAnimations_322
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r1, [r0]
	ldr r0, _080A5194 @ =0x00000141
_080A50F6:
	bl sub_080ADA14
_080A50FA:
	adds r7, #8
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0xf
	bls _080A506A
	ldr r4, _080A5198 @ =gChooseFileState
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _080A5132
	ldr r2, _080A519C @ =gOamCmd
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	adds r0, r0, r1
	strh r0, [r2, #8]
	mov r3, sb
	adds r3, #0x10
	ldrb r0, [r3, #6]
	adds r0, #9
	strh r0, [r2]
	ldrb r0, [r3, #7]
	adds r0, #7
	strh r0, [r2, #2]
	movs r0, #0
	movs r1, #1
	bl sub_080ADA14
_080A5132:
	ldrb r0, [r4, #0x13]
	cmp r0, #0x3f
	bne _080A5188
	mov r3, sb
	adds r3, #0x18
	ldr r1, _080A519C @ =gOamCmd
	ldrb r0, [r3, #6]
	adds r0, #8
	strh r0, [r1]
	ldrb r0, [r3, #7]
	adds r0, #8
	strh r0, [r1, #2]
	ldr r0, _080A51A0 @ =gSave
	adds r0, #0xc2
	ldrh r4, [r0]
	movs r0, #0
	mov r8, r0
	adds r5, r1, #0
_080A5156:
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	strh r0, [r5, #8]
	movs r0, #0
	movs r1, #1
	bl sub_080ADA14
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r5]
	movs r3, #1
	add r8, r3
	mov r0, r8
	cmp r0, #2
	bls _080A5156
_080A5188:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5190: .4byte gSpriteAnimations_322
_080A5194: .4byte 0x00000141
_080A5198: .4byte gChooseFileState
_080A519C: .4byte gOamCmd
_080A51A0: .4byte gSave


.else
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080A5890 @ =gOamCmd
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	ldr r1, _080A5894 @ =gUnk_08128C94
	mov sb, r1
	cmp r0, #0
	bne _080A581A
	ldr r3, _080A5898 @ =gUnk_08128C14
	mov sb, r3
_080A581A:
	ldr r0, _080A589C @ =gMenu
	ldrb r0, [r0, #3]
	lsls r0, r0, #3
	mov r1, sb
	adds r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2, #8]
	ldrb r0, [r3, #6]
	strh r0, [r2]
	ldrb r0, [r3, #7]
	strh r0, [r2, #2]
	ldrb r2, [r3, #4]
	ldr r0, _080A58A0 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x10
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0xa
	cmp r0, #0
	bne _080A5846
	adds r1, #1
_080A5846:
	ldr r0, _080A58A4 @ =0x000001FB
	bl sub_080ADA14
	movs r3, #0
	mov r8, r3
	mov r7, sb
	adds r7, #5
_080A5854:
	ldr r0, _080A589C @ =gMenu
	adds r0, #0x10
	mov r1, r8
	adds r6, r1, r0
	ldrb r1, [r6]
	cmp r1, #0
	beq _080A58E8
	mov r3, r8
	lsls r5, r3, #3
	mov r0, sb
	adds r3, r0, r5
	ldr r4, _080A5890 @ =gOamCmd
	ldrb r0, [r7, #1]
	strh r0, [r4]
	ldrb r2, [r7, #2]
	strh r2, [r4, #2]
	movs r0, #0xe8
	lsls r0, r0, #8
	strh r0, [r4, #8]
	cmp r1, #0x33
	bhi _080A58B8
	mov r1, r8
	cmp r1, #2
	bne _080A58A8
	ldrb r0, [r7]
	adds r1, r0, #0
	adds r1, #0xa
	ldr r0, _080A58A4 @ =0x000001FB
	b _080A58E4
	.align 2, 0
_080A5890: .4byte gOamCmd
_080A5894: .4byte gUnk_08128C94
_080A5898: .4byte gUnk_08128C14
_080A589C: .4byte gMenu
_080A58A0: .4byte gMain
_080A58A4: .4byte 0x000001FB
_080A58A8:
	ldrb r0, [r6]
	adds r0, #9
	ldrb r3, [r3, #5]
	adds r1, r0, r3
	ldr r0, _080A58B4 @ =0x000001FB
	b _080A58E4
	.align 2, 0
_080A58B4: .4byte 0x000001FB
_080A58B8:
	ldr r3, _080A58CC @ =0x0000EB80
	adds r0, r5, r3
	strh r0, [r4, #8]
	cmp r1, #0x3d
	beq _080A58D0
	cmp r1, #0x3e
	bne _080A58D6
	adds r0, r2, #0
	adds r0, #8
	b _080A58D4
	.align 2, 0
_080A58CC: .4byte 0x0000EB80
_080A58D0:
	adds r0, r2, #0
	adds r0, #0xd
_080A58D4:
	strh r0, [r4, #2]
_080A58D6:
	ldr r0, _080A5980 @ =gSpriteAnimations_322
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r1, [r0]
	movs r0, #0xa1
	lsls r0, r0, #1
_080A58E4:
	bl sub_080ADA14
_080A58E8:
	adds r7, #8
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0xf
	bls _080A5854
	ldr r4, _080A5984 @ =gMenu
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _080A5920
	ldr r2, _080A5988 @ =gOamCmd
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	adds r0, r0, r1
	strh r0, [r2, #8]
	mov r3, sb
	adds r3, #0x10
	ldrb r0, [r3, #6]
	adds r0, #9
	strh r0, [r2]
	ldrb r0, [r3, #7]
	adds r0, #7
	strh r0, [r2, #2]
	movs r0, #0
	movs r1, #1
	bl sub_080ADA14
_080A5920:
	ldrb r0, [r4, #0x13]
	cmp r0, #0x3f
	bne _080A5976
	mov r3, sb
	adds r3, #0x18
	ldr r1, _080A5988 @ =gOamCmd
	ldrb r0, [r3, #6]
	adds r0, #8
	strh r0, [r1]
	ldrb r0, [r3, #7]
	adds r0, #8
	strh r0, [r1, #2]
	ldr r0, _080A598C @ =gSave
	adds r0, #0xc2
	ldrh r4, [r0]
	movs r0, #0
	mov r8, r0
	adds r5, r1, #0
_080A5944:
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	strh r0, [r5, #8]
	movs r0, #0
	movs r1, #1
	bl sub_080ADA14
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r5]
	movs r3, #1
	add r8, r3
	mov r0, r8
	cmp r0, #2
	bls _080A5944
_080A5976:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5980: .4byte gSpriteAnimations_322
_080A5984: .4byte gMenu
_080A5988: .4byte gOamCmd
_080A598C: .4byte gSave
.endif

	thumb_func_start sub_080A5990
sub_080A5990: @ 0x080A5990
	push {lr}
	ldr r1, _080A59A4 @ =gUnk_08128D14
	ldr r0, _080A59A8 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A59A4: .4byte gUnk_08128D14
_080A59A8: .4byte gMenu

	thumb_func_start sub_080A59AC
sub_080A59AC: @ 0x080A59AC
	push {lr}
	ldr r1, _080A59C4 @ =gMenu
	movs r0, #0
	strb r0, [r1, #3]
	movs r1, #0
	bl SetPopupState
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_080A59C4: .4byte gMenu

	thumb_func_start sub_080A59C8
sub_080A59C8: @ 0x080A59C8
	push {lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5A52
	ldr r1, _080A59EC @ =gMenu
	ldrb r2, [r1, #3]
	movs r3, #0
	ldr r0, _080A59F0 @ =gInput
	ldrh r0, [r0, #2]
	cmp r0, #2
	beq _080A5A02
	cmp r0, #2
	bgt _080A59F4
	cmp r0, #1
	beq _080A5A0A
	b _080A5A0C
	.align 2, 0
_080A59EC: .4byte gMenu
_080A59F0: .4byte gInput
_080A59F4:
	cmp r0, #0x40
	beq _080A59FE
	cmp r0, #0x80
	beq _080A5A06
	b _080A5A0C
_080A59FE:
	movs r2, #0
	b _080A5A0C
_080A5A02:
	cmp r2, #0
	bne _080A5A10
_080A5A06:
	movs r2, #1
	b _080A5A0C
_080A5A0A:
	movs r3, #1
_080A5A0C:
	cmp r3, #0
	beq _080A5A3C
_080A5A10:
	movs r0, #0xff
	strh r0, [r1, #8]
	cmp r2, #0
	bne _080A5A2E
	movs r0, #8
	movs r1, #0
	bl CreateDialogBox
	movs r0, #2
	bl sub_080A7114
	movs r0, #0x6a
	bl SoundReq
	b _080A5A52
_080A5A2E:
	movs r0, #3
	bl sub_080A7114
	movs r0, #0x6c
	bl SoundReq
	b _080A5A52
_080A5A3C:
	ldrb r0, [r1, #3]
	cmp r0, r2
	beq _080A5A52
	strb r2, [r1, #3]
	movs r0, #0
	adds r1, r2, #0
	bl SetPopupState
	movs r0, #0x69
	bl SoundReq
_080A5A52:
	pop {pc}

	thumb_func_start sub_080A5A54
sub_080A5A54: @ 0x080A5A54
	push {lr}
	movs r0, #0
	bl HandleSave
	adds r1, r0, #0
	cmp r1, #0
	beq _080A5A8A
	cmp r1, #0
	bgt _080A5A70
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080A5A76
	b _080A5A8A
_080A5A70:
	cmp r1, #1
	beq _080A5A84
	b _080A5A8A
_080A5A76:
	movs r0, #9
	movs r1, #0
	bl CreateDialogBox
	ldr r1, _080A5A8C @ =gMenu
	movs r0, #0x3c
	strh r0, [r1, #8]
_080A5A84:
	movs r0, #3
	bl sub_080A7114
_080A5A8A:
	pop {pc}
	.align 2, 0
_080A5A8C: .4byte gMenu

	thumb_func_start sub_080A5A90
sub_080A5A90: @ 0x080A5A90
	push {lr}
	ldr r2, _080A5AA4 @ =gMenu
	ldrh r0, [r2, #8]
	cmp r0, #0
	beq _080A5AA8
	cmp r0, #0xff
	beq _080A5AC0
	subs r0, #1
	strh r0, [r2, #8]
	b _080A5AD2
	.align 2, 0
_080A5AA4: .4byte gMenu
_080A5AA8:
	ldr r0, _080A5ABC @ =gInput
	ldrh r1, [r0, #2]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080A5AD2
	movs r0, #0xff
	strh r0, [r2, #8]
	b _080A5AD2
	.align 2, 0
_080A5ABC: .4byte gInput
_080A5AC0:
	ldr r0, _080A5AD4 @ =gUnk_02034490
	ldrb r0, [r0, #1]
	movs r1, #1
	cmp r0, #0xa
	bne _080A5ACC
	movs r1, #2
_080A5ACC:
	adds r0, r1, #0
	bl sub_080A4E84
_080A5AD2:
	pop {pc}
	.align 2, 0
_080A5AD4: .4byte gUnk_02034490

	thumb_func_start sub_080A5AD8
sub_080A5AD8: @ 0x080A5AD8
	push {lr}
	ldr r1, _080A5AEC @ =gUnk_08128D24
	ldr r0, _080A5AF0 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A5AEC: .4byte gUnk_08128D24
_080A5AF0: .4byte gMenu

	thumb_func_start sub_080A5AF4
sub_080A5AF4: @ 0x080A5AF4
.ifdef EU
	push {lr}
	ldr r1, _080A5B18 @ =gMenu
	movs r0, #0
	strb r0, [r1, #3]
.else
	push {r4, lr}
	ldr r0, _080A5B18 @ =gMenu
	movs r4, #0
	strb r4, [r0, #3]
.endif
	movs r0, #2
	movs r1, #0
	bl SetPopupState
.ifndef EU
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _080A5B24
	ldr r1, _080A5B1C @ =gScreen
	ldr r0, _080A5B20 @ =0x0000FFFC
	strh r0, [r1, #0x18]
	b _080A5B28
	.align 2, 0
_080A5B18: .4byte gMenu
_080A5B1C: .4byte gScreen
_080A5B20: .4byte 0x0000FFFC
_080A5B24:
	ldr r0, _080A5B30 @ =gScreen
	strh r4, [r0, #0x18]
.endif
_080A5B28:
	movs r0, #1
	bl sub_080A7114
.ifdef EU 
	pop {pc}
.else
	pop {r4, pc}
.endif
	.align 2, 0
.ifdef EU
_080A5B18: .4byte gMenu
.else
_080A5B30: .4byte gScreen
.endif

	thumb_func_start sub_080A5B34
sub_080A5B34: @ 0x080A5B34
	push {r4, r5, r6, lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5BB6
	ldr r1, _080A5B58 @ =gMenu
	ldrb r4, [r1, #3]
	movs r5, #0
	ldr r0, _080A5B5C @ =gInput
	ldrh r0, [r0, #2]
	adds r6, r1, #0
	cmp r0, #2
	beq _080A5B6C
	cmp r0, #2
	bgt _080A5B60
	cmp r0, #1
	beq _080A5B74
	b _080A5B76
	.align 2, 0
_080A5B58: .4byte gMenu
_080A5B5C: .4byte gInput
_080A5B60:
	cmp r0, #0x10
	beq _080A5B70
	cmp r0, #0x20
	bne _080A5B76
	movs r4, #0
	b _080A5B76
_080A5B6C:
	cmp r4, #0
	bne _080A5B74
_080A5B70:
	movs r4, #1
	b _080A5B76
_080A5B74:
	movs r5, #1
_080A5B76:
	adds r1, r6, #0
	ldrb r0, [r1, #3]
	cmp r0, r4
	beq _080A5B8E
	strb r4, [r1, #3]
	movs r0, #2
	adds r1, r4, #0
	bl SetPopupState
	movs r0, #0x69
	bl SoundReq
_080A5B8E:
	cmp r5, #0
	beq _080A5BB6
	cmp r4, #0
	bne _080A5BAA
	movs r0, #7
	movs r1, #0x20
	bl DoFade
	movs r0, #0x3c
	strh r0, [r6, #8]
	movs r0, #2
	bl sub_080A7114
	b _080A5BB6
_080A5BAA:
	movs r0, #0x6c
	bl SoundReq
	movs r0, #2
	bl sub_080A4E84
_080A5BB6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080A5BB8
sub_080A5BB8: @ 0x080A5BB8
	push {lr}
	ldr r0, _080A5BE4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A5BE2
	bl sub_08050384
	ldr r1, _080A5BE8 @ =gMain
	ldrb r0, [r1, #1]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #6
	movs r1, #8
	bl DoFade
	movs r0, #2
	bl sub_080A4E84
	ldr r1, _080A5BEC @ =gUnk_02034490
	movs r0, #0x10
	strb r0, [r1, #0x16]
_080A5BE2:
	pop {pc}
	.align 2, 0
_080A5BE4: .4byte gFadeControl
_080A5BE8: .4byte gMain
_080A5BEC: .4byte gUnk_02034490

	thumb_func_start sub_080A5BF0
sub_080A5BF0: @ 0x080A5BF0
	push {r4, r5, lr}
	ldr r1, _080A5C30 @ =gUnk_08128D30
	ldr r0, _080A5C34 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A5D1C
	ldr r0, _080A5C38 @ =gMain
	ldrh r0, [r0, #0xc]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080A5C2E
	ldr r4, _080A5C3C @ =gUnk_02017830
	ldrh r5, [r4]
	adds r0, r4, #2
	adds r1, r4, #0
	movs r2, #0xe
	bl MemCopy
	strh r5, [r4, #0xe]
	ldr r2, _080A5C40 @ =gUsedPalettes
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
_080A5C2E:
	pop {r4, r5, pc}
	.align 2, 0
_080A5C30: .4byte gUnk_08128D30
_080A5C34: .4byte gMenu
_080A5C38: .4byte gMain
_080A5C3C: .4byte gUnk_02017830
_080A5C40: .4byte gUsedPalettes

	thumb_func_start sub_080A5C44
sub_080A5C44: @ 0x080A5C44
	push {r4, lr}
	ldr r1, _080A5C88 @ =gMenu
	ldr r0, _080A5C8C @ =gUnk_08128D38
	str r0, [r1, #0xc]
	ldrb r0, [r1, #3]
	bl sub_080A5CFC
	movs r0, #0x81
	bl LoadGfxGroup
	ldr r4, _080A5C90 @ =gArea
	ldrb r0, [r4, #3]
	movs r1, #1
	bl sub_080A6FB4
	movs r0, #1
	bl sub_080A7114
	ldrb r1, [r4, #3]
	lsls r1, r1, #1
	ldr r0, _080A5C94 @ =gUnk_08128D43
	adds r1, r1, r0
	ldr r2, _080A5C98 @ =gScreen
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r2, #0x16]
	adds r0, r0, r3
	strh r0, [r2, #0x16]
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r2, #0x18]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	pop {r4, pc}
	.align 2, 0
_080A5C88: .4byte gMenu
_080A5C8C: .4byte gUnk_08128D38
_080A5C90: .4byte gArea
_080A5C94: .4byte gUnk_08128D43
_080A5C98: .4byte gScreen

	thumb_func_start sub_080A5C9C
sub_080A5C9C: @ 0x080A5C9C
	push {lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5CFA
	ldr r0, _080A5CC4 @ =gArea
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	ldr r1, _080A5CC8 @ =gUnk_080C9C6C
	adds r3, r0, r1
	ldr r1, _080A5CCC @ =gMenu
	ldrb r2, [r1, #3]
	ldr r0, _080A5CD0 @ =gInput
	ldrh r0, [r0, #2]
	cmp r0, #0x40
	beq _080A5CD4
	cmp r0, #0x80
	beq _080A5CDC
	b _080A5CE6
	.align 2, 0
_080A5CC4: .4byte gArea
_080A5CC8: .4byte gUnk_080C9C6C
_080A5CCC: .4byte gMenu
_080A5CD0: .4byte gInput
_080A5CD4:
	cmp r2, #0
	ble _080A5CE6
	subs r2, #1
	b _080A5CE6
_080A5CDC:
	ldrb r0, [r3]
	subs r0, #1
	cmp r0, r2
	ble _080A5CE6
	adds r2, #1
_080A5CE6:
	ldrb r0, [r1, #3]
	cmp r0, r2
	beq _080A5CFA
	strb r2, [r1, #3]
	adds r0, r2, #0
	bl sub_080A5CFC
	movs r0, #0x69
	bl SoundReq
_080A5CFA:
	pop {pc}

	thumb_func_start sub_080A5CFC
sub_080A5CFC: @ 0x080A5CFC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801DDA0
	bl LoadDungeonMap
	ldr r1, _080A5D18 @ =gUnk_02019EE0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl sub_0801DBA0
	pop {r4, pc}
	.align 2, 0
_080A5D18: .4byte gUnk_02019EE0

	thumb_func_start sub_080A5D1C
sub_080A5D1C: @ 0x080A5D1C
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080A5690 @ =gArea
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	ldr r1, _080A5694 @ =gUnk_080C9C6C
	adds r7, r0, r1
	ldr r1, _080A5698EU @ =gUnk_08128D3C
	ldrb r0, [r7]
	adds r0, r0, r1
	ldrb r6, [r0]
	bl sub_0801DB94
	mov r8, r0
	ldr r5, _080A569CEU @ =gOamCmd
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #4]
	movs r0, #0
	strh r0, [r5, #6]
	strh r0, [r5, #8]
	movs r0, #0x34
	strh r0, [r5]
	ldr r0, _080A56A0 @ =gChooseFileState
	ldrb r1, [r0, #3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	ldr r1, _080A56A4 @ =gMain
	mov sl, r1
	ldrh r1, [r1, #0xc]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x74
	cmp r0, #0
	bne _080A5560
	movs r1, #0x75
_080A5560:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl sub_080ADA14
	movs r0, #0x20
	mov sb, r0
	mov r1, sb
	strh r1, [r5]
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	mov r0, sl
	ldrh r1, [r0, #0xc]
	mov r0, sb
	ands r0, r1
	movs r1, #0x79
	cmp r0, #0
	beq _080A558C
	movs r1, #0x78
_080A558C:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl sub_080ADA14
	movs r0, #0x7e
	strh r0, [r5, #2]
	movs r0, #0x87
	lsls r0, r0, #7
	strh r0, [r5, #8]
	bl HasDungeonSmallKey
	cmp r0, #0
	beq _080A55BE
	movs r0, #0x18
	strh r0, [r5]
	ldr r0, _080A56A8 @ =gSpriteAnimations_322
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0]
	ldr r0, _080A56ACEU @ =0x00000143
	adds r1, r4, #0
	bl sub_080ADA14
_080A55BE:
	bl HasDungeonCompass
	cmp r0, #0
	beq _080A55DE
	movs r0, #0x2e
	strh r0, [r5]
	ldr r0, _080A56A8 @ =gSpriteAnimations_322
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0]
	ldr r0, _080A56ACEU @ =0x00000143
	adds r1, r4, #0
	bl sub_080ADA14
_080A55DE:
	bl HasDungeonBigKey
	cmp r0, #0
	beq _080A563CEU
	movs r0, #0x45
	strh r0, [r5]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r5, #8]
	ldr r0, _080A56A8 @ =gSpriteAnimations_322
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0]
	ldr r0, _080A56ACEU @ =0x00000143
	adds r1, r4, #0
	bl sub_080ADA14
	bl sub_080A5F24
	cmp r0, #0
	beq _080A563CEU
	movs r0, #0
	strh r0, [r5, #8]
	movs r0, #0x46
	strh r0, [r5]
	ldrb r1, [r7, #1]
	ldrb r0, [r7, #2]
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	mov r0, sl
	ldrh r1, [r0, #0xc]
	mov r0, sb
	ands r0, r1
	movs r1, #0x7b
	cmp r0, #0
	beq _080A5634EU
	movs r1, #0x7a
_080A5634EU:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl sub_080ADA14
_080A563CEU:
	ldr r1, _080A569CEU @ =gOamCmd
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #0x34
	strh r0, [r1]
	strh r6, [r1, #2]
	ldrb r0, [r7, #1]
	adds r4, r0, #0
	adds r4, #0x82
	movs r5, #0
	ldrb r0, [r7]
	cmp r5, r0
	bhs _080A5672
	adds r6, r1, #0
_080A5658:
	movs r0, #0xfd
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080ADA14
	subs r4, #1
	ldrh r0, [r6, #2]
	adds r0, #0xc
	strh r0, [r6, #2]
	adds r5, #1
	ldrb r1, [r7]
	cmp r5, r1
	blo _080A5658
_080A5672:
	ldr r5, _080A56B0 @ =gUnk_02019EE0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080A570E
	ldr r7, _080A569CEU @ =gOamCmd
	ldr r6, _080A56B4 @ =gScreen
_080A567E:
	ldrb r0, [r5]
	cmp r0, #2
	beq _080A56D4EU
	cmp r0, #2
	bgt _080A56B8
	cmp r0, #1
	beq _080A56C2
	b _080A56E6
	.align 2, 0
_080A5690: .4byte gArea
_080A5694: .4byte gUnk_080C9C6C
_080A5698EU: .4byte gUnk_08128D3C
_080A569CEU: .4byte gOamCmd
_080A56A0: .4byte gChooseFileState
_080A56A4: .4byte gMain
_080A56A8: .4byte gSpriteAnimations_322
_080A56ACEU: .4byte 0x00000143
_080A56B0: .4byte gUnk_02019EE0
_080A56B4: .4byte gScreen
_080A56B8:
	cmp r0, #3
	beq _080A56D8EU
	cmp r0, #4
	beq _080A56DCEU
	b _080A56E6
_080A56C2:
	movs r4, #0x7d
	ldr r0, _080A56D0EU @ =gChooseFileState
	ldrb r0, [r0, #3]
	cmp r8, r0
	beq _080A56E8
	movs r4, #0x7e
	b _080A56E8
	.align 2, 0
_080A56D0EU: .4byte gChooseFileState
_080A56D4EU:
	movs r4, #0x80
	b _080A56E8
_080A56D8EU:
	movs r4, #0x81
	b _080A56E8
_080A56DCEU:
	bl sub_080A5F24
	movs r4, #0x7f
	cmp r0, #0
	bne _080A56E8
_080A56E6:
	movs r4, #0xff
_080A56E8:
	ldrb r0, [r5, #1]
	adds r0, #0x50
	ldrh r1, [r6, #0x16]
	subs r0, r0, r1
	strh r0, [r7]
	ldrb r0, [r5, #2]
	adds r0, #0x10
	ldrh r1, [r6, #0x18]
	subs r0, r0, r1
	strh r0, [r7, #2]
	movs r0, #0xfd
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080ADA14
	adds r5, #3
	ldrb r0, [r5]
	cmp r0, #0
	bne _080A567E
_080A570E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}


.else
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080A5E98 @ =gArea
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	ldr r1, _080A5E9C @ =gUnk_080C9C6C
	adds r7, r0, r1
	ldr r1, _080A5EA0 @ =gUnk_08128D3C
	ldrb r0, [r7]
	adds r0, r0, r1
	ldrb r6, [r0]
	bl sub_0801DB94
	mov r8, r0
	ldr r5, _080A5EA4 @ =gOamCmd
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #4]
	movs r0, #0
	strh r0, [r5, #6]
	strh r0, [r5, #8]
	movs r0, #0x34
	strh r0, [r5]
	ldr r0, _080A5EA8 @ =gMenu
	ldrb r1, [r0, #3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	ldr r1, _080A5EAC @ =gMain
	mov sl, r1
	ldrh r1, [r1, #0xc]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x74
	cmp r0, #0
	bne _080A5D70
	movs r1, #0x75
_080A5D70:
	ldr r0, _080A5EB0 @ =0x000001FB
	bl sub_080ADA14
	movs r0, #0x20
	mov sb, r0
	mov r1, sb
	strh r1, [r5]
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	mov r0, sl
	ldrh r1, [r0, #0xc]
	mov r0, sb
	ands r0, r1
	movs r1, #0x79
	cmp r0, #0
	beq _080A5D9A
	movs r1, #0x78
_080A5D9A:
	ldr r0, _080A5EB0 @ =0x000001FB
	bl sub_080ADA14
	movs r0, #0x7e
	strh r0, [r5, #2]
	movs r0, #0x87
	lsls r0, r0, #7
	strh r0, [r5, #8]
	bl HasDungeonSmallKey
	cmp r0, #0
	beq _080A5DCC
	movs r0, #0x18
	strh r0, [r5]
	ldr r0, _080A5EB4 @ =gSpriteAnimations_322
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080ADA14
_080A5DCC:
	bl HasDungeonCompass
	cmp r0, #0
	beq _080A5DEE
	movs r0, #0x2e
	strh r0, [r5]
	ldr r0, _080A5EB4 @ =gSpriteAnimations_322
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r4, [r0]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r4, #0
	bl sub_080ADA14
_080A5DEE:
	bl HasDungeonBigKey
	cmp r0, #0
	beq _080A5E48
	movs r0, #0x45
	strh r0, [r5]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r5, #8]
	ldr r1, _080A5EB4 @ =gSpriteAnimations_322
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r4, [r1]
	adds r1, r4, #0
	bl sub_080ADA14
	bl sub_080A5F24
	cmp r0, #0
	beq _080A5E48
	movs r0, #0
	strh r0, [r5, #8]
	movs r0, #0x46
	strh r0, [r5]
	ldrb r1, [r7, #1]
	ldrb r0, [r7, #2]
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	strh r0, [r5, #2]
	mov r0, sl
	ldrh r1, [r0, #0xc]
	mov r0, sb
	ands r0, r1
	movs r1, #0x7b
	cmp r0, #0
	beq _080A5E42
	movs r1, #0x7a
_080A5E42:
	ldr r0, _080A5EB0 @ =0x000001FB
	bl sub_080ADA14
_080A5E48:
	ldr r1, _080A5EA4 @ =gOamCmd
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #0x34
	strh r0, [r1]
	strh r6, [r1, #2]
	ldrb r0, [r7, #1]
	adds r4, r0, #0
	adds r4, #0x82
	movs r5, #0
	ldrb r0, [r7]
	cmp r5, r0
	bhs _080A5E7C
	adds r6, r1, #0
_080A5E64:
	ldr r0, _080A5EB0 @ =0x000001FB
	adds r1, r4, #0
	bl sub_080ADA14
	subs r4, #1
	ldrh r0, [r6, #2]
	adds r0, #0xc
	strh r0, [r6, #2]
	adds r5, #1
	ldrb r1, [r7]
	cmp r5, r1
	blo _080A5E64
_080A5E7C:
	ldr r5, _080A5EB8 @ =gUnk_02019EE0
	ldrb r0, [r5]
	cmp r0, #0
	beq _080A5F14
	ldr r7, _080A5EA4 @ =gOamCmd
	ldr r6, _080A5EBC @ =gScreen
_080A5E88:
	ldrb r0, [r5]
	cmp r0, #2
	beq _080A5EDC
	cmp r0, #2
	bgt _080A5EC0
	cmp r0, #1
	beq _080A5ECA
	b _080A5EEE
	.align 2, 0
_080A5E98: .4byte gArea
_080A5E9C: .4byte gUnk_080C9C6C
_080A5EA0: .4byte gUnk_08128D3C
_080A5EA4: .4byte gOamCmd
_080A5EA8: .4byte gMenu
_080A5EAC: .4byte gMain
_080A5EB0: .4byte 0x000001FB
_080A5EB4: .4byte gSpriteAnimations_322
_080A5EB8: .4byte gUnk_02019EE0
_080A5EBC: .4byte gScreen
_080A5EC0:
	cmp r0, #3
	beq _080A5EE0
	cmp r0, #4
	beq _080A5EE4
	b _080A5EEE
_080A5ECA:
	movs r4, #0x7d
	ldr r0, _080A5ED8 @ =gMenu
	ldrb r0, [r0, #3]
	cmp r8, r0
	beq _080A5EF0
	movs r4, #0x7e
	b _080A5EF0
	.align 2, 0
_080A5ED8: .4byte gMenu
_080A5EDC:
	movs r4, #0x80
	b _080A5EF0
_080A5EE0:
	movs r4, #0x81
	b _080A5EF0
_080A5EE4:
	bl sub_080A5F24
	movs r4, #0x7f
	cmp r0, #0
	bne _080A5EF0
_080A5EEE:
	movs r4, #0xff
_080A5EF0:
	ldrb r0, [r5, #1]
	adds r0, #0x50
	ldrh r1, [r6, #0x16]
	subs r0, r0, r1
	strh r0, [r7]
	ldrb r0, [r5, #2]
	adds r0, #0x10
	ldrh r1, [r6, #0x18]
	subs r0, r0, r1
	strh r0, [r7, #2]
	ldr r0, _080A5F20 @ =0x000001FB
	adds r1, r4, #0
	bl sub_080ADA14
	adds r5, #3
	ldrb r0, [r5]
	cmp r0, #0
	bne _080A5E88
_080A5F14:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5F20: .4byte 0x000001FB
.endif

	thumb_func_start sub_080A5F24
sub_080A5F24: @ 0x080A5F24
	push {r4, lr}
	movs r4, #1
	ldr r0, _080A5F44 @ =gArea
	ldrb r0, [r0, #3]
	cmp r0, #6
	bne _080A5F40
	movs r0, #0x8c
	lsls r0, r0, #4
	movs r1, #0x7b
	bl CheckLocalFlagByBank
	cmp r0, #0
	beq _080A5F40
	movs r4, #0
_080A5F40:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_080A5F44: .4byte gArea

	thumb_func_start sub_080A5F48
sub_080A5F48: @ 0x080A5F48
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r4, #0x1f
	bhi _080A5F5C
	cmp r4, #0x1c
	blo _080A5F5C
	ldr r0, _080A5F9C @ =gSave
	adds r0, r0, r4
	adds r0, #0x9a
	ldrb r4, [r0]
_080A5F5C:
	lsls r0, r1, #5
	ldr r1, _080A5FA0 @ =0x06010000
	adds r5, r0, r1
	ldr r1, _080A5FA4 @ =gSpriteAnimations_322
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r3, _080A5FA8 @ =gMoreSpritePtrs
	lsls r1, r1, #2
	ldr r0, [r3, #4]
	adds r0, r0, r1
	ldr r2, _080A5FAC @ =0x040000D4
	ldrh r1, [r0, #2]
	lsls r1, r1, #5
	ldr r0, [r3, #8]
	adds r0, r0, r1
	str r0, [r2]
	str r5, [r2, #4]
	ldr r0, _080A5FB0 @ =0x84000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #7
	blo _080A5FBE
	cmp r4, #8
	bhi _080A5FB4
	ldr r0, _080A5F9C @ =gSave
	adds r0, #0xac
	b _080A5FBC
	.align 2, 0
_080A5F9C: .4byte gSave
_080A5FA0: .4byte 0x06010000
_080A5FA4: .4byte gSpriteAnimations_322
_080A5FA8: .4byte gMoreSpritePtrs
_080A5FAC: .4byte 0x040000D4
_080A5FB0: .4byte 0x84000040
_080A5FB4:
	cmp r4, #0xa
	bhi _080A5FBE
	ldr r0, _080A5FF8 @ =gSave
	adds r0, #0xad
_080A5FBC:
	ldrb r0, [r0]
_080A5FBE:
	cmp r0, #0
	blt _080A5FF6
	movs r1, #0xa
	bl Div
	adds r4, r1, #0
	cmp r0, #9
	ble _080A5FD0
	movs r0, #9
_080A5FD0:
	ldr r1, _080A5FFC @ =0x040000D4
	lsls r0, r0, #5
	ldr r2, _080A6000 @ =gUnk_085C4620
	adds r0, r0, r2
	str r0, [r1]
	str r5, [r1, #4]
	ldr r3, _080A6004 @ =0x84000008
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0xa
	lsls r0, r0, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
_080A5FF6:
	pop {r4, r5, pc}
	.align 2, 0
_080A5FF8: .4byte gSave
_080A5FFC: .4byte 0x040000D4
_080A6000: .4byte gUnk_085C4620
_080A6004: .4byte 0x84000008

	thumb_func_start sub_080A6008
sub_080A6008: @ 0x080A6008
	push {lr}
	ldr r1, _080A601C @ =gUnk_08128D58
	ldr r0, _080A6020 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A601C: .4byte gUnk_08128D58
_080A6020: .4byte gMenu

	thumb_func_start sub_080A6024
sub_080A6024: @ 0x080A6024
	push {lr}
	ldr r0, _080A6040 @ =gUnk_08128D60
	bl sub_080A70AC
	movs r0, #0
	bl sub_0801E738
	bl sub_080A4398
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_080A6040: .4byte gUnk_08128D60

	thumb_func_start sub_080A6044
sub_080A6044: @ 0x080A6044
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A60C2
	ldr r0, _080A60CC @ =gMenu
	ldr r1, _080A60D0 @ =gUnk_08128D51
	str r1, [r0, #0xc]
	ldr r1, _080A60D4 @ =gOamCmd
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r5, #0
	movs r4, #0
	ldr r0, _080A60D8 @ =gSave
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r3, r0, r2
	ldrb r2, [r3]
	cmp r2, #0
	beq _080A60C2
	adds r6, r1, #0
	movs r1, #0
	mov sb, r1
	adds r7, r0, #0
	mov r8, r3
_080A607E:
	movs r1, #3
	ands r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0x2b
	strh r0, [r6]
	lsrs r1, r5, #2
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x34
	strh r0, [r6, #2]
	ldr r3, _080A60DC @ =0x0000012B
	adds r0, r7, r3
	adds r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _080A60CC @ =gMenu
	mov r3, sb
	strb r3, [r0, #1]
	adds r0, r2, #0
	bl sub_080A42E0
	adds r5, #1
	cmp r5, #0xa
	bhi _080A60C2
	adds r4, #1
	cmp r4, #0x11
	bhi _080A60C2
	mov r1, r8
	adds r0, r4, r1
	ldrb r2, [r0]
	cmp r2, #0
	bne _080A607E
_080A60C2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A60CC: .4byte gMenu
_080A60D0: .4byte gUnk_08128D51
_080A60D4: .4byte gOamCmd
_080A60D8: .4byte gSave
_080A60DC: .4byte 0x0000012B

	thumb_func_start sub_080A60E0
sub_080A60E0: @ 0x080A60E0
	push {r4, lr}
	ldr r1, _080A6100 @ =gUnk_08128DB0
	ldr r4, _080A6104 @ =gMenu
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A617C
	ldrb r0, [r4, #3]
	bl sub_080A7040
	pop {r4, pc}
	.align 2, 0
_080A6100: .4byte gUnk_08128DB0
_080A6104: .4byte gMenu

	thumb_func_start sub_080A6108
sub_080A6108: @ 0x080A6108
	push {lr}
	ldr r0, _080A6120 @ =gMenu
	ldr r1, _080A6124 @ =gUnk_08128DB8
	str r1, [r0, #0xc]
	ldr r0, _080A6128 @ =gUnk_08128DBC
	bl sub_080A70AC
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_080A6120: .4byte gMenu
_080A6124: .4byte gUnk_08128DB8
_080A6128: .4byte gUnk_08128DBC

	thumb_func_start sub_080A612C
sub_080A612C: @ 0x080A612C
	push {lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A6178
	ldr r1, _080A614C @ =gMenu
	ldrb r2, [r1, #3]
	ldr r0, _080A6150 @ =gInput
	ldrh r0, [r0, #2]
	cmp r0, #0x10
	beq _080A6154
	cmp r0, #0x20
	bne _080A6156
	subs r2, #1
	b _080A6156
	.align 2, 0
_080A614C: .4byte gMenu
_080A6150: .4byte gInput
_080A6154:
	adds r2, #1
_080A6156:
	adds r3, r2, #0
	adds r3, #8
	adds r0, r3, #0
	cmp r3, #0
	bge _080A6164
	adds r0, r2, #0
	adds r0, #0xf
_080A6164:
	asrs r2, r0, #3
	lsls r0, r2, #3
	subs r2, r3, r0
	ldrb r0, [r1, #3]
	cmp r0, r2
	beq _080A6178
	strb r2, [r1, #3]
	movs r0, #0x69
	bl SoundReq
_080A6178:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A617C
sub_080A617C: @ 0x080A617C
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _080A5A50 @ =gOamCmd
	movs r0, #0
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	movs r7, #0xc0
	lsls r7, r7, #4
	strh r7, [r6, #8]
	movs r0, #0x2f
	mov r8, r0
	mov r2, r8
	strh r2, [r6, #2]
	ldr r4, _080A5A54 @ =gChooseFileState
	ldrb r1, [r4, #3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r0, #0x1a
	strh r0, [r6]
	ldr r0, _080A5A58 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x20
	ands r0, r1
	movs r1, #9
	cmp r0, #0
	beq _080A59AC
	movs r1, #8
_080A59AC:
	ldr r5, _080A5A5C @ =0x000001FB
	adds r0, r5, #0
	bl sub_080ADA14
	ldrb r0, [r4, #3]
	lsls r0, r0, #3
	ldr r1, _080A5A60 @ =gUnk_08128D70
	adds r4, r0, r1
	ldrb r0, [r4]
	bl GetInventoryValue
	cmp r0, #0
	beq _080A5A0E
	strh r7, [r6, #8]
	movs r0, #0xcc
	strh r0, [r6]
	movs r0, #0x88
	strh r0, [r6, #2]
	adds r0, r5, #0
	movs r1, #0xb
	bl sub_080ADA14
	movs r0, #0x30
	strh r0, [r6]
	movs r0, #0x6c
	strh r0, [r6, #2]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	movs r2, #0xd8
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #8]
	ldrb r1, [r4, #2]
	adds r0, r5, #0
	bl sub_080ADA14
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	orrs r0, r7
	strh r0, [r6, #8]
	movs r0, #0x78
	strh r0, [r6]
	movs r0, #0x68
	strh r0, [r6, #2]
	adds r0, r5, #0
	movs r1, #0xc
	bl sub_080ADA14
_080A5A0E:
	mov r0, r8
	strh r0, [r6, #2]
	movs r5, #0
	adds r7, r6, #0
	movs r6, #0x18
_080A5A18:
	lsls r1, r5, #3
	ldr r0, _080A5A60 @ =gUnk_08128D70
	adds r4, r1, r0
	ldrb r0, [r4]
	bl GetInventoryValue
	cmp r0, #0
	beq _080A5A40
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #8]
	strh r6, [r7]
	ldr r0, _080A5A5C @ =0x000001FB
	movs r1, #0xa
	bl sub_080ADA14
_080A5A40:
	adds r6, #0x1b
	adds r5, #1
	cmp r5, #7
	bls _080A5A18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5A50: .4byte gOamCmd
_080A5A54: .4byte gChooseFileState
_080A5A58: .4byte gMain
_080A5A5C: .4byte 0x000001FB
_080A5A60: .4byte gUnk_08128D70

.else
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _080A6260 @ =gOamCmd
	movs r0, #0
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	movs r7, #0xc0
	lsls r7, r7, #4
	strh r7, [r6, #8]
	movs r0, #0x2f
	mov r8, r0
	mov r2, r8
	strh r2, [r6, #2]
	ldr r4, _080A6264 @ =gMenu
	ldrb r1, [r4, #3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r0, #0x1a
	strh r0, [r6]
	ldr r0, _080A6268 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x20
	ands r0, r1
	movs r1, #9
	cmp r0, #0
	beq _080A61B8
	movs r1, #8
_080A61B8:
	movs r5, #0xfe
	lsls r5, r5, #1
	adds r0, r5, #0
	bl sub_080ADA14
	ldrb r0, [r4, #3]
	lsls r0, r0, #3
	ldr r1, _080A626C @ =gUnk_08128D70
	adds r4, r0, r1
	ldrb r0, [r4]
	bl GetInventoryValue
	cmp r0, #0
	beq _080A621C
	strh r7, [r6, #8]
	movs r0, #0xcc
	strh r0, [r6]
	movs r0, #0x88
	strh r0, [r6, #2]
	adds r0, r5, #0
	movs r1, #0xb
	bl sub_080ADA14
	movs r0, #0x30
	strh r0, [r6]
	movs r0, #0x6c
	strh r0, [r6, #2]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	movs r2, #0xd8
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #8]
	ldrb r1, [r4, #2]
	adds r0, r5, #0
	bl sub_080ADA14
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	orrs r0, r7
	strh r0, [r6, #8]
	movs r0, #0x78
	strh r0, [r6]
	movs r0, #0x68
	strh r0, [r6, #2]
	adds r0, r5, #0
	movs r1, #0xc
	bl sub_080ADA14
_080A621C:
	mov r0, r8
	strh r0, [r6, #2]
	movs r5, #0
	adds r7, r6, #0
	movs r6, #0x18
_080A6226:
	lsls r1, r5, #3
	ldr r0, _080A626C @ =gUnk_08128D70
	adds r4, r1, r0
	ldrb r0, [r4]
	bl GetInventoryValue
	cmp r0, #0
	beq _080A6250
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #8]
	strh r6, [r7]
	movs r0, #0xfe
	lsls r0, r0, #1
	movs r1, #0xa
	bl sub_080ADA14
_080A6250:
	adds r6, #0x1b
	adds r5, #1
	cmp r5, #7
	bls _080A6226
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A6260: .4byte gOamCmd
_080A6264: .4byte gMenu
_080A6268: .4byte gMain
_080A626C: .4byte gUnk_08128D70
.endif

	thumb_func_start sub_080A6270
sub_080A6270: @ 0x080A6270
	push {lr}
	ldr r1, _080A6288 @ =gUnk_08128DCC
	ldr r0, _080A628C @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A6378
	pop {pc}
	.align 2, 0
_080A6288: .4byte gUnk_08128DCC
_080A628C: .4byte gMenu

	thumb_func_start sub_080A6290
sub_080A6290: @ 0x080A6290
	push {r4, lr}
	ldr r0, _080A62C4 @ =gUnk_08128DD8
	bl sub_080A70AC
	ldr r4, _080A62C8 @ =gMenu
	ldr r0, _080A62CC @ =gUnk_08128DD4
	str r0, [r4, #0xc]
	movs r0, #0x81
	bl LoadGfxGroup
	ldr r1, _080A62D0 @ =gScreen
	ldr r0, _080A62D4 @ =0x0000FFFC
	strh r0, [r1, #0x18]
	strh r0, [r1, #0x24]
	ldr r2, _080A62D8 @ =gSave
	ldr r0, [r2, #0x40]
	ldr r1, _080A62DC @ =0x00010780
	orrs r0, r1
	str r0, [r2, #0x40]
	bl sub_080A6F40
	strh r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #5]
	pop {r4, pc}
	.align 2, 0
_080A62C4: .4byte gUnk_08128DD8
_080A62C8: .4byte gMenu
_080A62CC: .4byte gUnk_08128DD4
_080A62D0: .4byte gScreen
_080A62D4: .4byte 0x0000FFFC
_080A62D8: .4byte gSave
_080A62DC: .4byte 0x00010780

	thumb_func_start sub_080A62E0
sub_080A62E0: @ 0x080A62E0
	push {r4, lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A6372
	ldr r0, _080A6310 @ =gMenu
	ldrb r3, [r0, #3]
	lsls r1, r3, #3
	ldr r0, _080A6314 @ =gUnk_08128DE8
	adds r1, r1, r0
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, _080A6318 @ =gInput
	ldrh r2, [r0, #2]
	cmp r2, #0x20
	beq _080A634E
	cmp r2, #0x20
	bgt _080A631C
	cmp r2, #1
	beq _080A6326
	cmp r2, #0x10
	beq _080A6354
	b _080A635A
	.align 2, 0
_080A6310: .4byte gMenu
_080A6314: .4byte gUnk_08128DE8
_080A6318: .4byte gInput
_080A631C:
	cmp r2, #0x40
	beq _080A6344
	cmp r2, #0x80
	beq _080A634A
	b _080A635A
_080A6326:
	ldr r0, _080A6340 @ =gSave
	lsls r2, r3
	ldr r0, [r0, #0x40]
	ands r0, r2
	cmp r0, #0
	beq _080A635A
	movs r0, #0x6a
	bl SoundReq
	movs r0, #6
	bl sub_080A4E84
	b _080A635A
	.align 2, 0
_080A6340: .4byte gSave
_080A6344:
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	b _080A6358
_080A634A:
	ldrh r0, [r1]
	b _080A6356
_080A634E:
	ldrb r0, [r1, #2]
	lsls r0, r0, #0x1b
	b _080A6358
_080A6354:
	ldrh r0, [r1, #2]
_080A6356:
	lsls r0, r0, #0x16
_080A6358:
	lsrs r4, r0, #0x1b
_080A635A:
	cmp r4, #0
	blt _080A6368
	ldr r0, _080A6374 @ =gMenu
	strb r4, [r0, #3]
	movs r0, #0x69
	bl SoundReq
_080A6368:
	ldr r0, _080A6374 @ =gMenu
	ldrb r0, [r0, #3]
	movs r1, #0
	bl sub_080A6FB4
_080A6372:
	pop {r4, pc}
	.align 2, 0
_080A6374: .4byte gMenu

	thumb_func_start sub_080A6378
sub_080A6378: @ 0x080A6378
.ifdef EU
	push {r4, r5, r6, lr}
	ldr r0, _080A5C18 @ =gChooseFileState
	adds r4, r0, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r6, #0x20
	ands r0, r6
	cmp r0, #0
	beq _080A5B86
	bl sub_080A6438
_080A5B86:
	ldr r5, _080A5C1C @ =gOamCmd
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #4]
	movs r0, #0
	strh r0, [r5, #6]
	movs r0, #0xe0
	lsls r0, r0, #7
	strh r0, [r5, #8]
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080A5BE0
	ldr r4, _080A5C20 @ =gScreenTransition
	ldrh r1, [r4, #0x20]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xf9
	lsls r1, r1, #4
	bl __divsi3
	adds r0, #0x28
	strh r0, [r5]
	ldrh r0, [r4, #0x22]
	lsls r0, r0, #7
	movs r1, #0xc6
	lsls r1, r1, #4
	bl __divsi3
	adds r0, #0xc
	strh r0, [r5, #2]
	ldr r0, _080A5C24 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r1, #0x59
	cmp r0, #0
	beq _080A5BD8
	movs r1, #0x5a
_080A5BD8:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl sub_080ADA14
_080A5BE0:
	ldr r3, _080A5C18 @ =gChooseFileState
	ldrb r0, [r3, #3]
	lsls r0, r0, #3
	ldr r1, _080A5C28 @ =gUnk_08128DE8
	adds r0, r0, r1
	ldr r2, _080A5C1C @ =gOamCmd
	ldrb r1, [r0, #6]
	strh r1, [r2]
	ldrb r0, [r0, #7]
	strh r0, [r2, #2]
	ldrb r0, [r3, #3]
	lsls r2, r0, #1
	adds r2, r2, r0
	adds r2, #0x26
	adds r3, #0x2c
	ldrb r1, [r3]
	lsrs r1, r1, #4
	movs r0, #1
	bics r0, r1
	adds r1, r2, r0
	movs r0, #0xfd
	lsls r0, r0, #1
	bl sub_080ADA14
	bl sub_080A6498
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A5C18: .4byte gChooseFileState
_080A5C1C: .4byte gOamCmd
_080A5C20: .4byte gScreenTransition
_080A5C24: .4byte gPlayerState
_080A5C28: .4byte gUnk_08128DE8

.else
	push {r4, r5, r6, lr}
	ldr r0, _080A6420 @ =gMenu
	adds r4, r0, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	movs r6, #0x20
	ands r0, r6
	cmp r0, #0
	beq _080A6392
	bl sub_080A6438
_080A6392:
	ldr r5, _080A6424 @ =gOamCmd
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #4]
	movs r0, #0
	strh r0, [r5, #6]
	movs r0, #0xe0
	lsls r0, r0, #7
	strh r0, [r5, #8]
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080A63EA
	ldr r4, _080A6428 @ =gScreenTransition
	ldrh r1, [r4, #0x20]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xf9
	lsls r1, r1, #4
	bl __divsi3
	adds r0, #0x28
	strh r0, [r5]
	ldrh r0, [r4, #0x22]
	lsls r0, r0, #7
	movs r1, #0xc6
	lsls r1, r1, #4
	bl __divsi3
	adds r0, #0xc
	strh r0, [r5, #2]
	ldr r0, _080A642C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r1, #0x59
	cmp r0, #0
	beq _080A63E4
	movs r1, #0x5a
_080A63E4:
	ldr r0, _080A6430 @ =0x000001FB
	bl sub_080ADA14
_080A63EA:
	ldr r3, _080A6420 @ =gMenu
	ldrb r0, [r3, #3]
	lsls r0, r0, #3
	ldr r1, _080A6434 @ =gUnk_08128DE8
	adds r0, r0, r1
	ldr r2, _080A6424 @ =gOamCmd
	ldrb r1, [r0, #6]
	strh r1, [r2]
	ldrb r0, [r0, #7]
	strh r0, [r2, #2]
	ldrb r0, [r3, #3]
	lsls r2, r0, #1
	adds r2, r2, r0
	adds r2, #0x26
	adds r3, #0x2c
	ldrb r1, [r3]
	lsrs r1, r1, #4
	movs r0, #1
	bics r0, r1
	adds r1, r2, r0
	ldr r0, _080A6430 @ =0x000001FB
	bl sub_080ADA14
	bl sub_080A6498
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A6420: .4byte gMenu
_080A6424: .4byte gOamCmd
_080A6428: .4byte gScreenTransition
_080A642C: .4byte gPlayerState
_080A6430: .4byte 0x000001FB
_080A6434: .4byte gUnk_08128DE8
.endif

	thumb_func_start sub_080A6438
sub_080A6438: @ 0x080A6438
.ifdef EU
	push {r4, r5, r6, r7, lr}
	ldr r2, _080A5C7C @ =gOamCmd
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	strh r1, [r2, #8]
	ldr r0, _080A5C80 @ =gSave
	ldr r1, _080A5C84 @ =gChooseFileState
	ldrh r0, [r0, #0x20]
	ldrh r5, [r1, #0x10]
	ands r5, r0
	ldr r4, _080A5C88EU @ =gUnk_08128F58
	movs r6, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A5C78
	adds r7, r2, #0
_080A5C52:
	movs r0, #1
	lsls r0, r6
	ands r0, r5
	cmp r0, #0
	beq _080A5C6E
	ldrb r0, [r4, #1]
	strh r0, [r7]
	ldrb r0, [r4, #2]
	strh r0, [r7, #2]
	ldrb r1, [r4]
	movs r0, #0xfd
	lsls r0, r0, #1
	bl sub_080ADA14
_080A5C6E:
	adds r6, #1
	adds r4, #8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A5C52
_080A5C78:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5C7C: .4byte gOamCmd
_080A5C80: .4byte gSave
_080A5C84: .4byte gChooseFileState
_080A5C88EU: .4byte gUnk_08128F58

.else
	push {r4, r5, r6, r7, lr}
	ldr r2, _080A6484 @ =gOamCmd
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	strh r1, [r2, #8]
	ldr r0, _080A6488 @ =gSave
	ldr r1, _080A648C @ =gMenu
	ldrh r0, [r0, #0x20]
	ldrh r5, [r1, #0x10]
	ands r5, r0
	ldr r4, _080A6490 @ =gUnk_08128F58
	movs r6, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A6482
	adds r7, r2, #0
_080A645E:
	movs r0, #1
	lsls r0, r6
	ands r0, r5
	cmp r0, #0
	beq _080A6478
	ldrb r0, [r4, #1]
	strh r0, [r7]
	ldrb r0, [r4, #2]
	strh r0, [r7, #2]
	ldrb r1, [r4]
	ldr r0, _080A6494 @ =0x000001FB
	bl sub_080ADA14
_080A6478:
	adds r6, #1
	adds r4, #8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A645E
_080A6482:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A6484: .4byte gOamCmd
_080A6488: .4byte gSave
_080A648C: .4byte gMenu
_080A6490: .4byte gUnk_08128F58
_080A6494: .4byte 0x000001FB
.endif

	thumb_func_start sub_080A6498
sub_080A6498: @ 0x080A6498
.ifdef EU
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A5CDCEU @ =gOamCmd
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	movs r4, #0
	ldr r7, _080A5CE0 @ =gSave
	adds r6, r0, #0
	movs r5, #0x28
_080A5CA4:
	movs r1, #1
	lsls r1, r4
	ldr r0, [r7, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _080A5CC8EU
	lsls r1, r4, #3
	ldr r0, _080A5CE4 @ =gUnk_08128DE8
	adds r1, r1, r0
	ldrb r0, [r1, #6]
	strh r0, [r6]
	ldrb r0, [r1, #7]
	strh r0, [r6, #2]
	movs r0, #0xfd
	lsls r0, r0, #1
	adds r1, r5, #0
	bl sub_080ADA14
_080A5CC8EU:
	adds r5, #3
	adds r4, #1
	cmp r4, #0x10
	bls _080A5CA4
	ldr r0, _080A5CE8 @ =gScreen
	adds r0, #0x62
	ldr r1, _080A5CEC @ =0x00003D3F
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5CDCEU: .4byte gOamCmd
_080A5CE0: .4byte gSave
_080A5CE4: .4byte gUnk_08128DE8
_080A5CE8: .4byte gScreen
_080A5CEC: .4byte 0x00003D3F

.else
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A64E4 @ =gOamCmd
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	movs r4, #0
	ldr r7, _080A64E8 @ =gSave
	adds r6, r0, #0
	movs r5, #0x28
_080A64B0:
	movs r1, #1
	lsls r1, r4
	ldr r0, [r7, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _080A64D2
	lsls r1, r4, #3
	ldr r0, _080A64EC @ =gUnk_08128DE8
	adds r1, r1, r0
	ldrb r0, [r1, #6]
	strh r0, [r6]
	ldrb r0, [r1, #7]
	strh r0, [r6, #2]
	ldr r0, _080A64F0 @ =0x000001FB
	adds r1, r5, #0
	bl sub_080ADA14
_080A64D2:
	adds r5, #3
	adds r4, #1
	cmp r4, #0x10
	bls _080A64B0
	ldr r0, _080A64F4 @ =gScreen
	adds r0, #0x62
	ldr r1, _080A64F8 @ =0x00003D3F
	strh r1, [r0]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A64E4: .4byte gOamCmd
_080A64E8: .4byte gSave
_080A64EC: .4byte gUnk_08128DE8
_080A64F0: .4byte 0x000001FB
_080A64F4: .4byte gScreen
_080A64F8: .4byte 0x00003D3F
.endif

	thumb_func_start sub_080A64FC
sub_080A64FC: @ 0x080A64FC
	push {r4, lr}
	bl FlushSprites
	ldr r1, _080A652C @ =gUnk_08128E70
	ldr r4, _080A6530 @ =gMenu
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	adds r4, #0x2c
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A6522
	bl sub_080A6438
_080A6522:
	bl sub_080A6498
	bl sub_080AD918
	pop {r4, pc}
	.align 2, 0
_080A652C: .4byte gUnk_08128E70
_080A6530: .4byte gMenu

	thumb_func_start sub_080A6534
sub_080A6534: @ 0x080A6534
	push {r4, lr}
	bl sub_080A4D34
	movs r0, #4
	bl sub_080A4DB8
	bl sub_080A6290
	ldr r2, _080A6590 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _080A6594 @ =0x0000F7FF
	ands r0, r1
	movs r4, #0
	strh r0, [r2]
	ldr r0, _080A6598 @ =gPaletteBuffer
	adds r0, #0xa2
	ldrh r1, [r0]
	movs r0, #0
	bl SetColor
	ldr r1, _080A659C @ =gUnk_08128F4C
	ldr r0, _080A65A0 @ =gUnk_02032EC0
	ldrb r0, [r0, #3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r3, _080A65A4 @ =gSave
	ldrh r1, [r3, #0x20]
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x20]
	ldr r1, _080A65A8 @ =gMenu
	ldrh r0, [r1, #0x10]
	ands r2, r0
	strh r2, [r1, #0x12]
	strh r4, [r1, #0x10]
	movs r0, #0x3c
	strh r0, [r1, #8]
	movs r0, #1
	bl sub_080A7114
	movs r0, #4
	movs r1, #8
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_080A6590: .4byte gScreen
_080A6594: .4byte 0x0000F7FF
_080A6598: .4byte gPaletteBuffer
_080A659C: .4byte gUnk_08128F4C
_080A65A0: .4byte gUnk_02032EC0
_080A65A4: .4byte gSave
_080A65A8: .4byte gMenu

	thumb_func_start sub_080A65AC
sub_080A65AC: @ 0x080A65AC
	push {r4, lr}
	ldr r0, _080A65E4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A6600
	ldr r4, _080A65E8 @ =gMenu
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _080A65EC
	cmp r0, #0x1e
	bne _080A65DA
	ldrh r0, [r4, #0x12]
	strh r0, [r4, #0x10]
	movs r0, #0x20
	strb r0, [r1]
	adds r0, #0xe3
	bl SoundReq
_080A65DA:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	b _080A6600
	.align 2, 0
_080A65E4: .4byte gFadeControl
_080A65E8: .4byte gMenu
_080A65EC:
	ldr r0, _080A6604 @ =gInput
	ldrh r0, [r0, #2]
	cmp r0, #1
	blt _080A6600
	cmp r0, #2
	ble _080A65FC
	cmp r0, #8
	bne _080A6600
_080A65FC:
	bl sub_080A71DC
_080A6600:
	pop {r4, pc}
	.align 2, 0
_080A6604: .4byte gInput

	thumb_func_start sub_080A6608
sub_080A6608: @ 0x080A6608
	push {r4, lr}
	ldr r1, _080A6640 @ =gUnk_08128E78
	ldr r4, _080A6644 @ =gMenu
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r1, [r4, #3]
	lsls r1, r1, #3
	ldr r0, _080A6648 @ =gUnk_08128E94
	adds r1, r1, r0
	ldr r2, _080A664C @ =gScreen
	movs r0, #5
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
	strh r0, [r2, #0x18]
	ldrb r1, [r1, #6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r0, [r4, #0xa]
	subs r0, r0, r1
	strh r0, [r2, #0x24]
	bl sub_080A66D0
	pop {r4, pc}
	.align 2, 0
_080A6640: .4byte gUnk_08128E78
_080A6644: .4byte gMenu
_080A6648: .4byte gUnk_08128E94
_080A664C: .4byte gScreen

	thumb_func_start sub_080A6650
sub_080A6650: @ 0x080A6650
	push {lr}
	ldr r0, _080A6670 @ =gUnk_08128E84
	bl sub_080A70AC
	ldr r0, _080A6674 @ =gUnk_02034490
	ldrb r0, [r0, #6]
	ldr r1, _080A6678 @ =gMenu
	strb r0, [r1, #3]
	bl sub_080A67C4
	bl sub_080A68D4
	movs r0, #1
	bl sub_080A7114
	pop {pc}
	.align 2, 0
_080A6670: .4byte gUnk_08128E84
_080A6674: .4byte gUnk_02034490
_080A6678: .4byte gMenu

	thumb_func_start sub_080A667C
sub_080A667C: @ 0x080A667C
	push {lr}
	ldr r2, _080A669C @ =gMenu
	ldr r0, _080A66A0 @ =gUnk_08128E80
	str r0, [r2, #0xc]
	ldrb r0, [r2, #3]
	lsls r0, r0, #3
	ldr r1, _080A66A4 @ =gUnk_08128E94
	adds r3, r0, r1
	ldrh r1, [r2, #0xa]
	ldr r0, _080A66A8 @ =gInput
	ldrh r0, [r0]
	cmp r0, #0x40
	beq _080A66AC
	cmp r0, #0x80
	beq _080A66B4
	b _080A66C2
	.align 2, 0
_080A669C: .4byte gMenu
_080A66A0: .4byte gUnk_08128E80
_080A66A4: .4byte gUnk_08128E94
_080A66A8: .4byte gInput
_080A66AC:
	cmp r1, #0
	beq _080A66C2
	subs r1, #2
	b _080A66C2
_080A66B4:
	ldrb r0, [r3, #2]
	cmp r0, r1
	bls _080A66BC
	adds r1, #2
_080A66BC:
	cmp r0, r1
	bhs _080A66C2
	adds r1, r0, #0
_080A66C2:
	strh r1, [r2, #0xa]
	ldrb r0, [r2, #3]
	movs r1, #0
	bl sub_080A6FB4
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A66D0
sub_080A66D0: @ 0x080A66D0
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _080A5F74 @ =gOamCmd
	movs r0, #0
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	movs r0, #0x78
	strh r0, [r6]
	ldr r4, _080A5F78 @ =gChooseFileState
	ldrb r0, [r4, #3]
	lsls r0, r0, #3
	ldr r1, _080A5F7C @ =gUnk_08128E94
	adds r5, r0, r1
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A5F30
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _080A5F30
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r6, #8]
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _080A5F1A
	movs r0, #0xc
	strh r0, [r6, #2]
	movs r0, #0xfd
	lsls r0, r0, #1
	movs r1, #0x71
	bl sub_080ADA14
_080A5F1A:
	ldrb r0, [r5, #2]
	ldrh r4, [r4, #0xa]
	cmp r0, r4
	bls _080A5F30
	movs r0, #0x84
	strh r0, [r6, #2]
	movs r0, #0xfd
	lsls r0, r0, #1
	movs r1, #0x72
	bl sub_080ADA14
_080A5F30:
	ldrb r0, [r5, #7]
	mov sl, r0
	ldrb r5, [r5, #3]
	mov sb, r5
	ldr r1, _080A5F78 @ =gChooseFileState
	ldrh r0, [r1, #0xa]
	mov r8, r0
	ldr r2, _080A5F74 @ =gOamCmd
	movs r0, #0
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r2, #8]
	adds r1, #0x2c
	ldrb r1, [r1]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r4, _080A5F80 @ =gUnk_02019EE0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _080A5FAE
	rsbs r5, r6, #0
	orrs r5, r6
	adds r7, r2, #0
_080A5F66:
	movs r1, #0
	ldrb r0, [r4]
	cmp r0, #1
	bne _080A5F84
	lsrs r1, r5, #0x1f
	b _080A5F8A
	.align 2, 0
_080A5F74: .4byte gOamCmd
_080A5F78: .4byte gChooseFileState
_080A5F7C: .4byte gUnk_08128E94
_080A5F80: .4byte gUnk_02019EE0
_080A5F84:
	cmp r6, #0
	bne _080A5F8A
	movs r1, #1
_080A5F8A:
	cmp r1, #0
	beq _080A5FA6
	ldrh r0, [r4, #4]
	add r0, sl
	strh r0, [r7]
	ldrh r0, [r4, #6]
	add r0, sb
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r7, #2]
	ldrh r0, [r4, #2]
	ldrb r1, [r4, #1]
	bl sub_080ADA14
_080A5FA6:
	adds r4, #8
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _080A5F66
_080A5FAE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

.else
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _080A677C @ =gOamCmd
	movs r0, #0
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	movs r0, #0x78
	strh r0, [r6]
	ldr r4, _080A6780 @ =gMenu
	ldrb r0, [r4, #3]
	lsls r0, r0, #3
	ldr r1, _080A6784 @ =gUnk_08128E94
	adds r5, r0, r1
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A6738
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _080A6738
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r6, #8]
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _080A6724
	movs r0, #0xc
	strh r0, [r6, #2]
	ldr r0, _080A6788 @ =0x000001FB
	movs r1, #0x71
	bl sub_080ADA14
_080A6724:
	ldrb r0, [r5, #2]
	ldrh r4, [r4, #0xa]
	cmp r0, r4
	bls _080A6738
	movs r0, #0x84
	strh r0, [r6, #2]
	ldr r0, _080A6788 @ =0x000001FB
	movs r1, #0x72
	bl sub_080ADA14
_080A6738:
	ldrb r0, [r5, #7]
	mov sl, r0
	ldrb r5, [r5, #3]
	mov sb, r5
	ldr r1, _080A6780 @ =gMenu
	ldrh r0, [r1, #0xa]
	mov r8, r0
	ldr r2, _080A677C @ =gOamCmd
	movs r0, #0
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r2, #8]
	adds r1, #0x2c
	ldrb r1, [r1]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r4, _080A678C @ =gUnk_02019EE0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _080A67BA
	rsbs r5, r6, #0
	orrs r5, r6
	adds r7, r2, #0
_080A676E:
	movs r1, #0
	ldrb r0, [r4]
	cmp r0, #1
	bne _080A6790
	lsrs r1, r5, #0x1f
	b _080A6796
	.align 2, 0
_080A677C: .4byte gOamCmd
_080A6780: .4byte gMenu
_080A6784: .4byte gUnk_08128E94
_080A6788: .4byte 0x000001FB
_080A678C: .4byte gUnk_02019EE0
_080A6790:
	cmp r6, #0
	bne _080A6796
	movs r1, #1
_080A6796:
	cmp r1, #0
	beq _080A67B2
	ldrh r0, [r4, #4]
	add r0, sl
	strh r0, [r7]
	ldrh r0, [r4, #6]
	add r0, sb
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r7, #2]
	ldrh r0, [r4, #2]
	ldrb r1, [r4, #1]
	bl sub_080ADA14
_080A67B2:
	adds r4, #8
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _080A676E
_080A67BA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
.endif

	thumb_func_start sub_080A67C4
sub_080A67C4: @ 0x080A67C4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xba
	bl LoadPaletteGroup
	adds r5, r4, #0
	adds r5, #0x5f
	cmp r4, #0xb
	beq _080A67F4
	cmp r4, #0xb
	bhi _080A67E0
	cmp r4, #9
	beq _080A67E6
	b _080A6822
_080A67E0:
	cmp r4, #0xe
	beq _080A6802
	b _080A6822
_080A67E6:
	movs r0, #0x18
	bl CheckGlobalFlag
	cmp r0, #0
	beq _080A6822
	movs r5, #0x70
	b _080A6822
_080A67F4:
	movs r0, #0xe
	bl CheckKinstoneFused
	cmp r0, #0
	beq _080A6822
	movs r5, #0x71
	b _080A6822
_080A6802:
	ldr r1, _080A68AC @ =gUnk_02032EC0
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #8
	bne _080A6822
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	adds r5, #0x72
_080A6822:
	adds r0, r5, #0
	bl LoadGfxGroup
	lsls r1, r4, #3
	ldr r0, _080A68B0 @ =gUnk_08128E94
	adds r4, r1, r0
	ldr r0, _080A68B4 @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _080A68B8 @ =gUnk_02017AA0
	adds r1, r0, r1
	ldr r2, _080A68BC @ =0x00001E0A
	adds r0, r2, #0
	movs r2, #7
_080A6842:
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _080A6842
	movs r2, #8
	movs r0, #5
	ldrsb r0, [r4, r0]
	ldrb r3, [r4, #4]
	adds r0, r0, r3
	ldr r5, _080A68B4 @ =gUnk_03003DE4
	ldr r6, _080A68B8 @ =gUnk_02017AA0
	cmp r2, r0
	bge _080A6874
	ldr r7, _080A68C0 @ =0x00001E0B
	adds r3, r7, #0
_080A6862:
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	movs r0, #5
	ldrsb r0, [r4, r0]
	ldrb r7, [r4, #4]
	adds r0, r0, r7
	cmp r2, r0
	blt _080A6862
_080A6874:
	cmp r2, #0x9f
	bgt _080A6886
	ldr r3, _080A68BC @ =0x00001E0A
	adds r0, r3, #0
_080A687C:
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x9f
	ble _080A687C
_080A6886:
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r0, r0, r6
	ldr r1, _080A68C4 @ =0x0400000E
	ldr r2, _080A68C8 @ =0xA2600001
	bl sub_0805622C
	ldr r1, _080A68CC @ =gMenu
	ldrb r0, [r4, #2]
	lsrs r0, r0, #1
	strh r0, [r1, #0xa]
	ldr r0, _080A68D0 @ =gUnk_02019EE0
	movs r1, #0x80
	lsls r1, r1, #3
	bl MemClear
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A68AC: .4byte gUnk_02032EC0
_080A68B0: .4byte gUnk_08128E94
_080A68B4: .4byte gUnk_03003DE4
_080A68B8: .4byte gUnk_02017AA0
_080A68BC: .4byte 0x00001E0A
_080A68C0: .4byte 0x00001E0B
_080A68C4: .4byte 0x0400000E
_080A68C8: .4byte 0xA2600001
_080A68CC: .4byte gMenu
_080A68D0: .4byte gUnk_02019EE0

	thumb_func_start sub_080A68D4
sub_080A68D4: @ 0x080A68D4
.ifdef EU
	push {r4, r5, r6, lr}
	ldr r0, _080A6100EU @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r4, #0x64
	cmp r0, #0
	beq _080A60DA
	movs r4, #0x65
_080A60DA:
	ldr r1, _080A6104EU @ =gScreenTransition
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	movs r2, #0xfd
	lsls r2, r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r4, r3
	bl sub_080A698C
	bl sub_080A6F40
	adds r6, r0, #0
	ldr r0, _080A6108 @ =gSave
	ldrh r0, [r0, #0x20]
	ands r6, r0
	ldr r4, _080A610C @ =gUnk_08128F58
	movs r5, #0
	b _080A612C
	.align 2, 0
_080A6100EU: .4byte gPlayerState
_080A6104EU: .4byte gScreenTransition
_080A6108: .4byte gSave
_080A610C: .4byte gUnk_08128F58
_080A6110:
	movs r0, #1
	lsls r0, r5
	ands r0, r6
	cmp r0, #0
	beq _080A6128EU
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldrb r3, [r4, #3]
	movs r2, #0xfd
	lsls r2, r2, #1
	bl sub_080A698C
_080A6128EU:
	adds r5, #1
	adds r4, #8
_080A612C:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A6110
	movs r5, #0xa
_080A6134:
	adds r0, r5, #0
	bl CheckKinstoneFused
	cmp r0, #0
	beq _080A616A
	adds r0, r5, #0
	bl sub_0801E810
	cmp r0, #0
	bne _080A616A
	ldr r1, _080A6174 @ =gUnk_080C9CBC
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r3, [r0, #7]
	ldrb r0, [r0, #4]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080A6178EU @ =gUnk_080FE320
	adds r1, r1, r0
	ldrh r0, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	adds r3, #0x64
	movs r2, #0xfd
	lsls r2, r2, #1
	bl sub_080A698C
_080A616A:
	adds r5, #1
	cmp r5, #0x64
	bls _080A6134
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A6174: .4byte gUnk_080C9CBC
_080A6178EU: .4byte gUnk_080FE320


.else
	push {r4, r5, r6, lr}
	ldr r0, _080A690C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r4, #0x64
	cmp r0, #0
	beq _080A68E6
	movs r4, #0x65
_080A68E6:
	ldr r1, _080A6910 @ =gScreenTransition
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	ldr r2, _080A6914 @ =0x000001FB
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r4, r3
	bl sub_080A698C
	bl sub_080A6F40
	adds r6, r0, #0
	ldr r0, _080A6918 @ =gSave
	ldrh r0, [r0, #0x20]
	ands r6, r0
	ldr r4, _080A691C @ =gUnk_08128F58
	movs r5, #0
	b _080A693A
	.align 2, 0
_080A690C: .4byte gPlayerState
_080A6910: .4byte gScreenTransition
_080A6914: .4byte 0x000001FB
_080A6918: .4byte gSave
_080A691C: .4byte gUnk_08128F58
_080A6920:
	movs r0, #1
	lsls r0, r5
	ands r0, r6
	cmp r0, #0
	beq _080A6936
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldrb r3, [r4, #3]
	ldr r2, _080A6980 @ =0x000001FB
	bl sub_080A698C
_080A6936:
	adds r5, #1
	adds r4, #8
_080A693A:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A6920
	movs r5, #0xa
_080A6942:
	adds r0, r5, #0
	bl CheckKinstoneFused
	cmp r0, #0
	beq _080A6976
	adds r0, r5, #0
	bl sub_0801E810
	cmp r0, #0
	bne _080A6976
	ldr r1, _080A6984 @ =gUnk_080C9CBC
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrb r3, [r0, #7]
	ldrb r0, [r0, #4]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080A6988 @ =gUnk_080FE320
	adds r1, r1, r0
	ldrh r0, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	adds r3, #0x64
	ldr r2, _080A6980 @ =0x000001FB
	bl sub_080A698C
_080A6976:
	adds r5, #1
	cmp r5, #0x64
	bls _080A6942
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A6980: .4byte 0x000001FB
_080A6984: .4byte gUnk_080C9CBC
_080A6988: .4byte gUnk_080FE320
.endif

	thumb_func_start sub_080A698C
sub_080A698C: @ 0x080A698C
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r5, r3, #0
	bl sub_080A69E0
	adds r4, r0, #0
	cmp r4, #0
	ble _080A69D4
	ldr r2, _080A69D8 @ =gMenu
	adds r2, #0x2d
	ldrb r0, [r2]
	lsls r0, r0, #3
	ldr r3, _080A69DC @ =gUnk_02019EE0
	adds r0, r0, r3
	lsrs r1, r5, #8
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	strb r5, [r0, #1]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	strh r6, [r0, #2]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	strh r4, [r0, #4]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	asrs r1, r4, #0x10
	strh r1, [r0, #6]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080A69D4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A69D8: .4byte gMenu
_080A69DC: .4byte gUnk_02019EE0

	thumb_func_start sub_080A69E0
sub_080A69E0: @ 0x080A69E0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r6, r1, #0
	orrs r0, r6
	cmp r0, #0
	beq _080A6A06
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080A6A80
	adds r3, r0, #0
	cmp r3, #0
	beq _080A6A06
	ldr r0, _080A6A0C @ =gMenu
	ldrb r1, [r0, #3]
	ldrb r2, [r3, #4]
	cmp r1, r2
	beq _080A6A10
_080A6A06:
	movs r0, #1
	rsbs r0, r0, #0
	b _080A6A74
	.align 2, 0
_080A6A0C: .4byte gMenu
_080A6A10:
	ldrb r1, [r0, #3]
	cmp r1, #7
	beq _080A6A26
	cmp r1, #7
	bgt _080A6A20
	cmp r1, #4
	beq _080A6A26
	b _080A6A48
_080A6A20:
	cmp r1, #0xf
	beq _080A6A44
	b _080A6A48
_080A6A26:
	ldrb r0, [r0, #3]
	movs r2, #7
	cmp r0, #4
	bne _080A6A30
	movs r2, #9
_080A6A30:
	ldr r1, _080A6A40 @ =gAreaRoomHeaders
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	subs r6, r6, r0
	b _080A6A48
	.align 2, 0
_080A6A40: .4byte gAreaRoomHeaders
_080A6A44:
	ldr r0, _080A6A78 @ =0xFFFFFEF8
	adds r7, r7, r0
_080A6A48:
	ldrb r0, [r3]
	lsls r0, r0, #4
	subs r0, r7, r0
	movs r4, #0x64
	muls r0, r4, r0
	ldr r5, _080A6A7C @ =0x0000023A
	adds r1, r5, #0
	str r3, [sp]
	bl __divsi3
	adds r7, r0, #0
	ldr r3, [sp]
	ldrb r0, [r3, #1]
	lsls r0, r0, #4
	subs r0, r6, r0
	muls r0, r4, r0
	adds r1, r5, #0
	bl __divsi3
	adds r6, r0, #0
	lsls r0, r6, #0x10
	orrs r0, r7
_080A6A74:
	add sp, #4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A6A78: .4byte 0xFFFFFEF8
_080A6A7C: .4byte 0x0000023A

	thumb_func_start sub_080A6A80
sub_080A6A80: @ 0x080A6A80
	push {lr}
	adds r3, r0, #0
	lsrs r3, r3, #4
	lsrs r1, r1, #4
	ldr r2, _080A6A8C @ =gUnk_08127F94
	b _080A6AAE
	.align 2, 0
_080A6A8C: .4byte gUnk_08127F94
_080A6A90:
	ldrb r0, [r2]
	cmp r0, r3
	bhi _080A6AAC
	ldrb r0, [r2, #2]
	cmp r0, r3
	blo _080A6AAC
	ldrb r0, [r2, #1]
	cmp r0, r1
	bhi _080A6AAC
	ldrb r0, [r2, #3]
	cmp r0, r1
	blo _080A6AAC
	adds r0, r2, #0
	b _080A6AB6
_080A6AAC:
	adds r2, #8
_080A6AAE:
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _080A6A90
	movs r0, #0
_080A6AB6:
	pop {pc}

	thumb_func_start sub_080A6AB8
sub_080A6AB8: @ 0x080A6AB8
	push {r4, lr}
	bl FlushSprites
	ldr r1, _080A6AF4 @ =gUnk_08128F1C
	ldr r4, _080A6AF8 @ =gMenu
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r1, [r4, #3]
	lsls r1, r1, #3
	ldr r0, _080A6AFC @ =gUnk_08128E94
	adds r1, r1, r0
	ldr r2, _080A6B00 @ =gScreen
	movs r0, #5
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
	strh r0, [r2, #0x18]
	ldrb r1, [r1, #6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r0, [r4, #0xa]
	subs r0, r0, r1
	strh r0, [r2, #0x24]
	bl sub_080AD918
	pop {r4, pc}
	.align 2, 0
_080A6AF4: .4byte gUnk_08128F1C
_080A6AF8: .4byte gMenu
_080A6AFC: .4byte gUnk_08128E94
_080A6B00: .4byte gScreen

	thumb_func_start sub_080A6B04
sub_080A6B04: @ 0x080A6B04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_080A4D34
	movs r0, #6
	bl sub_080A4DB8
	ldr r0, _080A6BF0 @ =gUnk_02022740
	ldrb r2, [r0, #3]
	lsls r2, r2, #3
	ldr r0, _080A6BF4 @ =gUnk_080C9CBC
	adds r2, r2, r0
	ldrb r1, [r2, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080A6BF8 @ =gUnk_080FE320
	adds r0, r0, r1
	ldrb r2, [r2, #7]
	mov r8, r2
	ldrh r6, [r0, #0xc]
	ldrh r5, [r0, #0xe]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080A6A80
	ldrb r4, [r0, #4]
	ldr r7, _080A6BFC @ =gMenu
	strb r4, [r7, #3]
	adds r1, r7, #0
	adds r1, #0x2b
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080A67C4
	adds r0, r4, #0
	movs r1, #2
	bl sub_080A6FB4
	ldr r4, _080A6C00 @ =0x0000475F
	movs r0, #0
	adds r1, r4, #0
	bl SetColor
	movs r0, #0x5f
	adds r1, r4, #0
	bl SetColor
	ldr r0, _080A6C04 @ =0x00005001
	ldr r1, _080A6C08 @ =gBG3Buffer
	movs r2, #0x80
	lsls r2, r2, #5
	bl MemFill16
	ldr r0, _080A6C0C @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r2, #0x64
	cmp r0, #0
	beq _080A6B84
	movs r2, #0x65
_080A6B84:
	ldr r1, _080A6C10 @ =gScreenTransition
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
.ifdef EU
	movs r4, #0xfd
	lsls r4, r4, #0x1
.else
	ldr r4, _080A6C14 @ =0x000001FB
.endif
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r2, r3
	adds r2, r4, #0
	bl sub_080A698C
	mov r3, r8
	adds r3, #0x64
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080A698C
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080A69E0
	asrs r5, r0, #0x10
	ldrb r0, [r7, #3]
	lsls r0, r0, #3
	ldr r1, _080A6C18 @ =gUnk_08128E94
	adds r1, r0, r1
	movs r0, #0
	strh r0, [r7, #0xa]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _080A6BD4
	adds r0, r5, #0
	subs r0, #0x3c
	cmp r0, #0
	ble _080A6BD4
	ldrb r1, [r1, #2]
	cmp r1, r0
	bge _080A6BD2
	adds r0, r1, #0
_080A6BD2:
	strh r0, [r7, #0xa]
_080A6BD4:
	ldr r1, _080A6BFC @ =gMenu
	movs r0, #0x1e
	strh r0, [r1, #8]
	movs r0, #1
	bl sub_080A7114
	movs r0, #4
	movs r1, #8
	bl DoFade
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A6BF0: .4byte gUnk_02022740
_080A6BF4: .4byte gUnk_080C9CBC
_080A6BF8: .4byte gUnk_080FE320
_080A6BFC: .4byte gMenu
_080A6C00: .4byte 0x0000475F
_080A6C04: .4byte 0x00005001
_080A6C08: .4byte gBG3Buffer
_080A6C0C: .4byte gPlayerState
_080A6C10: .4byte gScreenTransition
.ifndef EU
_080A6C14: .4byte 0x000001FB
.endif
_080A6C18: .4byte gUnk_08128E94

	thumb_func_start sub_080A6C1C
sub_080A6C1C: @ 0x080A6C1C
	push {lr}
	ldr r0, _080A6C34 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A6C6A
	ldr r0, _080A6C38 @ =gMenu
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _080A6C3C
	cmp r0, #1
	beq _080A6C5C
	b _080A6C62
	.align 2, 0
_080A6C34: .4byte gFadeControl
_080A6C38: .4byte gMenu
_080A6C3C:
	bl sub_080A66D0
	ldr r0, _080A6C58 @ =gInput
	ldrh r0, [r0, #2]
	cmp r0, #1
	blt _080A6C6A
	cmp r0, #2
	ble _080A6C50
	cmp r0, #8
	bne _080A6C6A
_080A6C50:
	bl sub_080A71DC
	b _080A6C6A
	.align 2, 0
_080A6C58: .4byte gInput
_080A6C5C:
	ldr r0, _080A6C6C @ =0x00000103
	bl SoundReq
_080A6C62:
	ldr r1, _080A6C70 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
_080A6C6A:
	pop {pc}
	.align 2, 0
_080A6C6C: .4byte 0x00000103
_080A6C70: .4byte gMenu

	thumb_func_start sub_080A6C74
sub_080A6C74: @ 0x080A6C74
	push {r4, lr}
	bl FlushSprites
	ldr r1, _080A6CA0 @ =gUnk_08128F24
	ldr r4, _080A6CA4 @ =gMenu
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A6C94
	bl sub_080A6E70
_080A6C94:
	bl sub_080A6498
	bl sub_080AD918
	pop {r4, pc}
	.align 2, 0
_080A6CA0: .4byte gUnk_08128F24
_080A6CA4: .4byte gMenu

	thumb_func_start sub_080A6CA8
sub_080A6CA8: @ 0x080A6CA8
	push {lr}
	bl sub_080A4D34
	movs r0, #0xd
	bl sub_080A4DB8
	bl sub_080A6290
	movs r0, #0
	bl sub_080A6D74
	ldr r1, _080A6CD4 @ =gMenu
	strb r0, [r1, #3]
	movs r0, #1
	bl sub_080A7114
	movs r0, #4
	movs r1, #8
	bl DoFade
	pop {pc}
	.align 2, 0
_080A6CD4: .4byte gMenu

	thumb_func_start sub_080A6CD8
sub_080A6CD8: @ 0x080A6CD8
	push {r4, lr}
	ldr r0, _080A6D08 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A6D6E
	ldr r1, _080A6D0C @ =gMenu
	movs r0, #1
	strb r0, [r1]
	movs r4, #0
	ldr r0, _080A6D10 @ =gInput
	ldrh r0, [r0, #2]
	adds r2, r1, #0
	cmp r0, #0x10
	beq _080A6D34
	cmp r0, #0x10
	bgt _080A6D1A
	cmp r0, #2
	beq _080A6D4C
	cmp r0, #2
	bgt _080A6D14
	cmp r0, #1
	beq _080A6D38
	b _080A6D54
	.align 2, 0
_080A6D08: .4byte gFadeControl
_080A6D0C: .4byte gMenu
_080A6D10: .4byte gInput
_080A6D14:
	cmp r0, #8
	beq _080A6D38
	b _080A6D54
_080A6D1A:
	cmp r0, #0x40
	beq _080A6D2E
	cmp r0, #0x40
	bgt _080A6D28
	cmp r0, #0x20
	beq _080A6D2E
	b _080A6D54
_080A6D28:
	cmp r0, #0x80
	beq _080A6D34
	b _080A6D54
_080A6D2E:
	movs r4, #1
	rsbs r4, r4, #0
	b _080A6D58
_080A6D34:
	movs r4, #1
	b _080A6D58
_080A6D38:
	movs r0, #2
	strb r0, [r2]
	bl sub_080A7114
	ldr r0, _080A6D48 @ =0x00000704
	bl MessageFromTarget
	b _080A6D54
	.align 2, 0
_080A6D48: .4byte 0x00000704
_080A6D4C:
	movs r0, #3
	strb r0, [r1]
	bl sub_080A7114
_080A6D54:
	cmp r4, #0
	beq _080A6D6E
_080A6D58:
	adds r0, r4, #0
	bl sub_080A6D74
	ldr r1, _080A6D70 @ =gMenu
	ldrb r2, [r1, #3]
	cmp r0, r2
	beq _080A6D6E
	strb r0, [r1, #3]
	movs r0, #0x69
	bl SoundReq
_080A6D6E:
	pop {r4, pc}
	.align 2, 0
_080A6D70: .4byte gMenu

	thumb_func_start sub_080A6D74
sub_080A6D74: @ 0x080A6D74
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080A6DA4 @ =gSave
	ldr r0, [r0, #0x40]
	lsrs r2, r0, #0x18
	ldr r0, _080A6DA8 @ =gMenu
	ldrb r1, [r0, #3]
	cmp r3, #0
	bne _080A6DAC
	movs r1, #0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080A6DC6
	movs r3, #1
_080A6D92:
	adds r1, #1
	cmp r1, #7
	bhi _080A6DC6
	adds r0, r3, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _080A6D92
	b _080A6DC6
	.align 2, 0
_080A6DA4: .4byte gSave
_080A6DA8: .4byte gMenu
_080A6DAC:
	cmp r2, #0
	beq _080A6DC6
	movs r4, #7
	movs r5, #1
_080A6DB4:
	adds r0, r1, r3
	adds r1, r0, #0
	adds r1, #8
	ands r1, r4
	adds r0, r5, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _080A6DB4
_080A6DC6:
	movs r0, #7
	ands r1, r0
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A6DD0
sub_080A6DD0: @ 0x080A6DD0
.ifdef EU
	push {lr}
	bl sub_08056338
	cmp r0, #0
	beq _080A65CC
	cmp r0, #1
	beq _080A65D8
	b _080A65EA
_080A65CC:
	ldr r1, _080A65D4 @ =gChooseFileState
	movs r0, #2
	b _080A65DC
	.align 2, 0
_080A65D4: .4byte gChooseFileState
_080A65D8:
	ldr r1, _080A65ECEU @ =gChooseFileState
	movs r0, #3
_080A65DC:
	strb r0, [r1]
	movs r0, #1
	cmp r0, #0
	beq _080A65EA
	movs r0, #3
	bl sub_080A7114
_080A65EA:
	pop {pc}
	.align 2, 0
_080A65ECEU: .4byte gChooseFileState

.else
	push {lr}
	bl sub_08056338
	cmp r0, #0
	beq _080A6DE0
	cmp r0, #1
	beq _080A6DF0
	b _080A6DF6
_080A6DE0:
	ldr r1, _080A6DEC @ =gMenu
	movs r0, #2
	strb r0, [r1]
	movs r0, #3
	b _080A6DF2
	.align 2, 0
_080A6DEC: .4byte gMenu
_080A6DF0:
	movs r0, #1
_080A6DF2:
	bl sub_080A7114
_080A6DF6:
	pop {pc}
.endif

	thumb_func_start sub_080A6DF8
sub_080A6DF8: @ 0x080A6DF8
	push {lr}
	ldr r0, _080A6E14 @ =gMenu
	ldrb r0, [r0]
	cmp r0, #2
	bne _080A6E18
	movs r0, #4
	bl sub_080A7114
	movs r0, #5
	movs r1, #8
	bl DoFade
	b _080A6E3A
	.align 2, 0
_080A6E14: .4byte gMenu
_080A6E18:
	bl ResetPlayerAnimationAndAction
	ldr r0, _080A6E3C @ =gPlayerEntity
	adds r1, r0, #0
	adds r1, #0x58
	ldrb r1, [r1]
	ldrh r2, [r0, #0x12]
	bl sub_080042D0
	bl sub_080A71DC
	ldr r1, _080A6E40 @ =gUnk_02034490
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x6c
	bl SoundReq
_080A6E3A:
	pop {pc}
	.align 2, 0
_080A6E3C: .4byte gPlayerEntity
_080A6E40: .4byte gUnk_02034490

	thumb_func_start sub_080A6E44
sub_080A6E44: @ 0x080A6E44
	push {lr}
	ldr r0, _080A6E64 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A6E60
	ldr r0, _080A6E68 @ =gMenu
	ldrb r1, [r0, #3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080A6E6C @ =gUnk_08128024
	adds r0, r0, r1
	bl sub_080A71F4
_080A6E60:
	pop {pc}
	.align 2, 0
_080A6E64: .4byte gFadeControl
_080A6E68: .4byte gMenu
_080A6E6C: .4byte gUnk_08128024

	thumb_func_start sub_080A6E70
sub_080A6E70: @ 0x080A6E70
.ifdef EU
	push {r4, r5, lr}
	ldr r1, _080A66CC @ =gOamCmd
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #8]
	ldr r1, _080A66D0 @ =gChooseFileState
	adds r4, r1, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r0, [r1, #3]
	bl sub_080A6EE0
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x5e
	cmp r0, #0
	beq _080A6698
	movs r1, #0x5d
_080A6698:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl sub_080ADA14
	movs r4, #0
	ldr r5, _080A66D4 @ =gSave
_080A66A4EU:
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #1
	lsls r1, r0
	ldr r0, [r5, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080A66C4
	adds r0, r4, #0
	bl sub_080A6EE0
	movs r0, #0xfd
	lsls r0, r0, #1
	movs r1, #0x5c
	bl sub_080ADA14
_080A66C4:
	adds r4, #1
	cmp r4, #7
	bls _080A66A4EU
	pop {r4, r5, pc}
	.align 2, 0
_080A66CC: .4byte gOamCmd
_080A66D0: .4byte gChooseFileState
_080A66D4: .4byte gSave

.else
	push {r4, r5, lr}
	ldr r1, _080A6ED0 @ =gOamCmd
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #8]
	ldr r1, _080A6ED4 @ =gMenu
	adds r4, r1, #0
	adds r4, #0x2c
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r0, [r1, #3]
	bl sub_080A6EE0
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x5e
	cmp r0, #0
	beq _080A6EA0
	movs r1, #0x5d
_080A6EA0:
	ldr r0, _080A6ED8 @ =0x000001FB
	bl sub_080ADA14
	movs r4, #0
	ldr r5, _080A6EDC @ =gSave
_080A6EAA:
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #1
	lsls r1, r0
	ldr r0, [r5, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080A6EC8
	adds r0, r4, #0
	bl sub_080A6EE0
	ldr r0, _080A6ED8 @ =0x000001FB
	movs r1, #0x5c
	bl sub_080ADA14
_080A6EC8:
	adds r4, #1
	cmp r4, #7
	bls _080A6EAA
	pop {r4, r5, pc}
	.align 2, 0
_080A6ED0: .4byte gOamCmd
_080A6ED4: .4byte gMenu
_080A6ED8: .4byte 0x000001FB
_080A6EDC: .4byte gSave
.endif

	thumb_func_start sub_080A6EE0
sub_080A6EE0: @ 0x080A6EE0
	push {r4, r5, r6, lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080A6F34 @ =gUnk_08128024
	adds r1, r1, r0
	ldrh r3, [r1, #6]
	ldrh r4, [r1, #8]
	ldr r0, _080A6F38 @ =gAreaRoomHeaders
	ldrb r2, [r1, #0xb]
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r1, [r1, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r2]
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r3, r3, r0
	ldrh r0, [r1, #2]
	adds r4, r4, r0
	ldr r6, _080A6F3C @ =gOamCmd
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #5
	movs r5, #0xf9
	lsls r5, r5, #4
	adds r1, r5, #0
	bl __divsi3
	adds r0, #0x28
	strh r0, [r6]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #5
	adds r1, r5, #0
	bl __divsi3
	adds r0, #0xc
	strh r0, [r6, #2]
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A6F34: .4byte gUnk_08128024
_080A6F38: .4byte gAreaRoomHeaders
_080A6F3C: .4byte gOamCmd

	thumb_func_start sub_080A6F40
sub_080A6F40: @ 0x080A6F40
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r4, _080A6F4C @ =gUnk_08128F38
	movs r6, #0
	b _080A6F60
	.align 2, 0
_080A6F4C: .4byte gUnk_08128F38
_080A6F50:
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl sub_0807CB24
	lsls r0, r5
	orrs r6, r0
	adds r5, #1
	adds r4, #2
_080A6F60:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A6F50
	mvns r0, r6
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A6F6C
sub_080A6F6C: @ 0x080A6F6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A6FA4 @ =gMenu
	ldrh r0, [r1, #0x2e]
	cmp r0, r4
	beq _080A6F9A
	strh r4, [r1, #0x2e]
	ldr r0, _080A6FA8 @ =gUnk_020350F0
	movs r1, #0x80
	lsls r1, r1, #1
	bl MemClear
	movs r0, #0xff
	ands r0, r4
	cmp r0, #0
	beq _080A6F94
	ldr r1, _080A6FAC @ =gUnk_08128FA8
	adds r0, r4, #0
	bl sub_0805F46C
_080A6F94:
	ldr r1, _080A6FB0 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_080A6F9A:
	ldr r1, _080A6FB0 @ =gScreen
	movs r0, #2
	strh r0, [r1, #0xc]
	pop {r4, pc}
	.align 2, 0
_080A6FA4: .4byte gMenu
_080A6FA8: .4byte gUnk_020350F0
_080A6FAC: .4byte gUnk_08128FA8
_080A6FB0: .4byte gScreen

	thumb_func_start sub_080A6FB4
sub_080A6FB4: @ 0x080A6FB4
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0
	cmp r1, #1
	beq _080A6FF0
	cmp r1, #1
	blo _080A6FC8
	cmp r1, #2
	beq _080A6FD6
	b _080A6FFA
_080A6FC8:
	ldr r0, _080A6FE4 @ =gSave
	movs r1, #1
	lsls r1, r2
	ldr r0, [r0, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080A6FFA
_080A6FD6:
	ldr r1, _080A6FE8 @ =gUnk_08127F94
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r4, [r0, #6]
	ldr r5, _080A6FEC @ =gUnk_08128FC0
	b _080A6FFA
	.align 2, 0
_080A6FE4: .4byte gSave
_080A6FE8: .4byte gUnk_08127F94
_080A6FEC: .4byte gUnk_08128FC0
_080A6FF0:
	ldr r1, _080A702C @ =gUnk_08128FF0
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r5, _080A7030 @ =gUnk_08128FD8
_080A6FFA:
	ldr r1, _080A7034 @ =gMenu
	ldrh r0, [r1, #0x2e]
	cmp r0, r4
	beq _080A7024
	strh r4, [r1, #0x2e]
	ldr r0, _080A7038 @ =gUnk_020350F0
	movs r1, #0x80
	lsls r1, r1, #1
	bl MemClear
	movs r0, #0xff
	ands r0, r4
	cmp r0, #0
	beq _080A701E
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805F46C
_080A701E:
	ldr r1, _080A703C @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_080A7024:
	ldr r1, _080A703C @ =gScreen
	movs r0, #2
	strh r0, [r1, #0xc]
	pop {r4, r5, pc}
	.align 2, 0
_080A702C: .4byte gUnk_08128FF0
_080A7030: .4byte gUnk_08128FD8
_080A7034: .4byte gMenu
_080A7038: .4byte gUnk_020350F0
_080A703C: .4byte gScreen

	thumb_func_start sub_080A7040
sub_080A7040: @ 0x080A7040
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _080A7090 @ =gMenu
	ldrh r0, [r1, #0x2e]
	cmp r0, r5
	beq _080A708C
	strh r5, [r1, #0x2e]
	ldr r4, _080A7094 @ =gUnk_02022130
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r4, #0
	bl MemClear
	ldr r0, _080A7098 @ =0xFFFFFE00
	adds r4, r4, r0
	ldr r1, _080A709C @ =0x0600E000
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r4, #0
	bl MemCopy
	ldr r1, _080A70A0 @ =gUnk_08128D70
	lsls r0, r5, #3
	adds r4, r0, r1
	ldrb r0, [r4]
	bl GetInventoryValue
	cmp r0, #0
	beq _080A7082
	ldrh r0, [r4, #6]
	ldr r1, _080A70A4 @ =gUnk_08129004
	bl sub_0805F46C
_080A7082:
	ldr r0, _080A70A8 @ =gScreen
	movs r1, #3
	strh r1, [r0, #0x18]
	movs r1, #1
	strh r1, [r0, #0x1a]
_080A708C:
	pop {r4, r5, pc}
	.align 2, 0
_080A7090: .4byte gMenu
_080A7094: .4byte gUnk_02022130
_080A7098: .4byte 0xFFFFFE00
_080A709C: .4byte 0x0600E000
_080A70A0: .4byte gUnk_08128D70
_080A70A4: .4byte gUnk_08129004
_080A70A8: .4byte gScreen

	thumb_func_start sub_080A70AC
sub_080A70AC: @ 0x080A70AC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A7110 @ =gUnk_0200AF34
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r4, #0
	bl MemClear
	adds r2, r4, #0
	subs r2, #0x34
	movs r0, #0x7f
	strb r0, [r2, #0x13]
	strb r0, [r2, #0x14]
	ldrb r0, [r5]
	strh r0, [r2, #0x16]
	movs r0, #1
	ldrsb r0, [r5, r0]
	strh r0, [r2, #0x1c]
	ldrb r1, [r5, #2]
	subs r0, r4, #4
	strb r1, [r0]
	ldrb r0, [r5, #3]
	strh r0, [r2, #0x18]
	movs r0, #4
	ldrsb r0, [r5, r0]
	strh r0, [r2, #0x1e]
	ldrb r1, [r5, #5]
	subs r0, r4, #3
	strb r1, [r0]
	ldrb r0, [r5, #6]
	strh r0, [r2, #0x1a]
	movs r0, #7
	ldrsb r0, [r5, r0]
	strh r0, [r2, #0x20]
	ldrb r0, [r5, #8]
	subs r4, #2
	strb r0, [r4]
	adds r5, #9
	movs r4, #1
	rsbs r4, r4, #0
_080A70FC:
	ldrb r0, [r5]
	ldrb r1, [r5, #1]
	bl sub_0801CA6C
	adds r5, #2
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, r4
	bne _080A70FC
	pop {r4, r5, pc}
	.align 2, 0
_080A7110: .4byte gUnk_0200AF34

	thumb_func_start sub_080A7114
sub_080A7114: @ 0x080A7114
	ldr r1, _080A7120 @ =gMenu
	movs r2, #0
	strb r0, [r1, #5]
	strb r2, [r1, #6]
	strb r2, [r1, #7]
	bx lr
	.align 2, 0
_080A7120: .4byte gMenu

	thumb_func_start sub_080A7124
sub_080A7124: @ 0x080A7124
	push {lr}
	ldr r0, _080A7134 @ =gUnk_02032EC0
	movs r1, #0xed
	lsls r1, r1, #2
	bl MemClear
	pop {pc}
	.align 2, 0
_080A7134: .4byte gUnk_02032EC0

	thumb_func_start MenuFadeIn
MenuFadeIn: @ 0x080A7138
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _080A715C @ =gUnk_02032EC0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A7164
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r4, #0
	bl MemClear
	strb r5, [r4, #2]
	strb r6, [r4, #3]
	ldr r0, _080A7160 @ =gMain
	ldrb r0, [r0, #4]
	strb r0, [r4, #7]
	b _080A716C
	.align 2, 0
_080A715C: .4byte gUnk_02032EC0
_080A7160: .4byte gMain
_080A7164:
	strb r5, [r4, #4]
	strb r6, [r4, #5]
	movs r0, #1
	strb r0, [r4]
_080A716C:
	ldr r1, _080A7194 @ =gUnk_02032EC0
	movs r0, #0
	strb r0, [r1, #6]
	ldr r0, _080A7198 @ =0x0000FFFF
	strh r0, [r1, #8]
	movs r4, #0
	movs r0, #0x20
	strh r0, [r1, #0xa]
	ldr r1, _080A719C @ =gMain
	movs r0, #7
	strb r0, [r1, #4]
	movs r0, #5
	movs r1, #0x20
	bl DoFade
	ldr r0, _080A71A0 @ =gUnk_02018EB0
	strb r4, [r0]
	strb r4, [r0, #1]
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A7194: .4byte gUnk_02032EC0
_080A7198: .4byte 0x0000FFFF
_080A719C: .4byte gMain
_080A71A0: .4byte gUnk_02018EB0

	thumb_func_start sub_080A71A4
sub_080A71A4: @ 0x080A71A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _080A71B4 @ =gUnk_02032EC0
	ldrb r0, [r3]
	cmp r0, #0
	bne _080A71B8
	strb r2, [r3, #0xe]
	b _080A71BA
	.align 2, 0
_080A71B4: .4byte gUnk_02032EC0
_080A71B8:
	strb r2, [r3, #0xf]
_080A71BA:
	adds r0, r4, #0
	bl MenuFadeIn
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A71C4
sub_080A71C4: @ 0x080A71C4
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	bl MenuFadeIn
	ldr r0, _080A71D8 @ =gUnk_02032EC0
	strh r4, [r0, #8]
	strh r5, [r0, #0xa]
	pop {r4, r5, pc}
	.align 2, 0
_080A71D8: .4byte gUnk_02032EC0

	thumb_func_start sub_080A71DC
sub_080A71DC: @ 0x080A71DC
	push {lr}
	ldr r1, _080A71F0 @ =gUnk_02032EC0
	movs r0, #3
	strb r0, [r1]
	movs r0, #5
	movs r1, #0x20
	bl DoFade
	pop {pc}
	.align 2, 0
_080A71F0: .4byte gUnk_02032EC0

	thumb_func_start sub_080A71F4
sub_080A71F4: @ 0x080A71F4
	push {lr}
	cmp r0, #0
	beq _080A71FE
	bl DoExitTransition
_080A71FE:
	bl DeleteAllEntities
	bl sub_0805E974
	bl DeleteAllEntities
	ldr r0, _080A7218 @ =gMain
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #3]
	strb r2, [r0, #4]
	pop {pc}
	.align 2, 0
_080A7218: .4byte gMain

	thumb_func_start sub_080A721C
sub_080A721C: @ 0x080A721C
	push {lr}
	ldr r0, _080A7248 @ =gUnk_02032EC0
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #2
	bhi _080A7238
	ldrb r3, [r2, #4]
	cmp r3, #0
	beq _080A7238
	ldrb r0, [r2, #5]
	movs r1, #0
	strb r0, [r2, #3]
	strb r3, [r2, #2]
	strb r1, [r2, #4]
_080A7238:
	ldr r0, _080A724C @ =gUnk_0812901C
	ldrb r1, [r2]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A7248: .4byte gUnk_02032EC0
_080A724C: .4byte gUnk_0812901C

	thumb_func_start sub_080A7250
sub_080A7250: @ 0x080A7250
	push {r4, lr}
	ldr r0, _080A72E8 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A72E4
	ldr r0, _080A72EC @ =gScreen
	ldr r1, _080A72F0 @ =gUnk_03001020
	movs r2, #0x7c
	bl MemCopy
	ldr r0, _080A72F4 @ =gPaletteBuffer
	ldr r1, _080A72F8 @ =gUnk_02024090
	movs r2, #0x80
	lsls r2, r2, #3
	bl MemCopy
	ldr r0, _080A72FC @ =gGFXSlots
	ldr r4, _080A7300 @ =gUnk_02032F14
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r4, #0
	bl MemCopy
	ldr r0, _080A7304 @ =gPaletteList
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0x40
	bl MemCopy
	ldr r0, _080A7308 @ =gRoomControls
	adds r1, r4, #0
	subs r1, #0x38
	movs r2, #0x38
	bl MemCopy
	ldr r0, _080A730C @ =gUnk_03000420
	movs r2, #0x95
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0x80
	lsls r2, r2, #1
	bl MemCopy
	ldr r0, _080A7310 @ =gActiveScriptInfo
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0xc
	bl MemCopy
	bl sub_0805E958
	adds r1, r4, #0
	subs r1, #0x54
	ldr r0, _080A7314 @ =gScreenTransition
	adds r0, #0x2f
	ldrb r0, [r0]
	strb r0, [r1, #0xd]
	ldr r0, _080A7318 @ =gPlayerState
	adds r0, #0x8b
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	ldr r0, _080A731C @ =gCurrentRoomProperties
	ldr r0, [r0]
	str r0, [r1, #0x10]
	ldr r0, _080A7320 @ =gUnk_02025EB0
	ldr r0, [r0]
	str r0, [r1, #0x14]
	ldr r0, _080A7324 @ =gUnk_0200B650
	ldr r0, [r0]
	str r0, [r1, #0x18]
	movs r0, #1
	strb r0, [r1]
_080A72E4:
	pop {r4, pc}
	.align 2, 0
_080A72E8: .4byte gFadeControl
_080A72EC: .4byte gScreen
_080A72F0: .4byte gUnk_03001020
_080A72F4: .4byte gPaletteBuffer
_080A72F8: .4byte gUnk_02024090
_080A72FC: .4byte gGFXSlots
_080A7300: .4byte gUnk_02032F14
_080A7304: .4byte gPaletteList
_080A7308: .4byte gRoomControls
_080A730C: .4byte gUnk_03000420
_080A7310: .4byte gActiveScriptInfo
_080A7314: .4byte gScreenTransition
_080A7318: .4byte gPlayerState
_080A731C: .4byte gCurrentRoomProperties
_080A7320: .4byte gUnk_02025EB0
_080A7324: .4byte gUnk_0200B650

	thumb_func_start sub_080A7328
sub_080A7328: @ 0x080A7328
	push {r4, lr}
	ldr r0, _080A7388 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A7384
	bl DeleteAllEntities
	ldr r0, _080A738C @ =gMenu
	movs r1, #0x30
	bl MemClear
	ldr r0, _080A7390 @ =gRoomControls
	movs r1, #0x38
	bl MemClear
	ldr r0, _080A7394 @ =gUnk_03000420
	movs r1, #0x80
	lsls r1, r1, #1
	bl MemClear
	ldr r4, _080A7398 @ =gActiveScriptInfo
	adds r0, r4, #0
	movs r1, #0xc
	bl MemClear
	movs r0, #8
	strb r0, [r4, #8]
	movs r0, #1
	bl DispReset
	bl MessageInitialize
	bl ResetPalettes
	movs r0, #0
	bl sub_0801CFA8
	ldr r0, _080A739C @ =gGFXSlots
	movs r2, #1
	strb r2, [r0]
	ldr r1, _080A73A0 @ =gUnk_02032EC0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080A73A4 @ =gScreenTransition
	adds r0, #0x30
	strb r2, [r0]
_080A7384:
	pop {r4, pc}
	.align 2, 0
_080A7388: .4byte gFadeControl
_080A738C: .4byte gMenu
_080A7390: .4byte gRoomControls
_080A7394: .4byte gUnk_03000420
_080A7398: .4byte gActiveScriptInfo
_080A739C: .4byte gGFXSlots
_080A73A0: .4byte gUnk_02032EC0
_080A73A4: .4byte gScreenTransition

	thumb_func_start sub_080A73A8
sub_080A73A8: @ 0x080A73A8
	push {r4, r5, lr}
	ldr r0, _080A7468 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A73B4
	b _080A74BC
_080A73B4:
	bl DeleteAllEntities
	bl sub_0805E974
	ldr r1, _080A746C @ =gCurrentRoomProperties
	ldr r5, _080A7470 @ =gUnk_02032EC0
	ldr r0, [r5, #0x10]
	str r0, [r1]
	ldr r0, _080A7474 @ =gPlayerState
	ldrb r1, [r5, #0xc]
	adds r0, #0x8b
	strb r1, [r0]
	ldr r1, _080A7478 @ =gUnk_02025EB0
	ldr r0, [r5, #0x14]
	str r0, [r1]
	ldr r1, _080A747C @ =gUnk_0200B650
	ldr r0, [r5, #0x18]
	str r0, [r1]
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _080A7480 @ =gActiveScriptInfo
	movs r2, #0xc
	bl MemCopy
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _080A7484 @ =gUnk_03000420
	movs r2, #0x80
	lsls r2, r2, #1
	bl MemCopy
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _080A7488 @ =gPaletteList
	movs r2, #0x40
	bl MemCopy
	adds r0, r5, #0
	adds r0, #0x54
	ldr r1, _080A748C @ =gGFXSlots
	movs r2, #0x85
	lsls r2, r2, #2
	bl MemCopy
	adds r0, r5, #0
	adds r0, #0x1c
	ldr r4, _080A7490 @ =gRoomControls
	adds r1, r4, #0
	movs r2, #0x38
	bl MemCopy
	ldr r0, _080A7494 @ =gUnk_03001020
	ldr r1, _080A7498 @ =gScreen
	movs r2, #0x7c
	bl MemCopy
	ldrb r0, [r4, #4]
	bl GetFlagBankOffset
	ldr r4, _080A749C @ =gArea
	strh r0, [r4, #4]
	bl GetCurrentRoomInfo
	ldr r1, _080A74A0 @ =0x0000085C
	adds r4, r4, r1
	str r0, [r4]
	ldrb r0, [r5, #6]
	bl sub_080527FC
	ldrb r1, [r5, #0xd]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bl sub_0801D000
	bl sub_080A74F4
	ldrh r1, [r5, #8]
	ldr r0, _080A74A4 @ =0x0000FFFF
	cmp r1, r0
	beq _080A74A8
	adds r0, r1, #0
	ldrh r1, [r5, #0xa]
	bl DoFade
	b _080A74AE
	.align 2, 0
_080A7468: .4byte gFadeControl
_080A746C: .4byte gCurrentRoomProperties
_080A7470: .4byte gUnk_02032EC0
_080A7474: .4byte gPlayerState
_080A7478: .4byte gUnk_02025EB0
_080A747C: .4byte gUnk_0200B650
_080A7480: .4byte gActiveScriptInfo
_080A7484: .4byte gUnk_03000420
_080A7488: .4byte gPaletteList
_080A748C: .4byte gGFXSlots
_080A7490: .4byte gRoomControls
_080A7494: .4byte gUnk_03001020
_080A7498: .4byte gScreen
_080A749C: .4byte gArea
_080A74A0: .4byte 0x0000085C
_080A74A4: .4byte 0x0000FFFF
_080A74A8:
	ldrh r0, [r5, #0xa]
	bl sub_080500F4
_080A74AE:
	ldr r1, _080A74C0 @ =gUnk_02032EC0
	movs r2, #0
	movs r0, #4
	strb r0, [r1]
	ldr r0, _080A74C4 @ =gScreenTransition
	adds r0, #0x30
	strb r2, [r0]
_080A74BC:
	pop {r4, r5, pc}
	.align 2, 0
_080A74C0: .4byte gUnk_02032EC0
_080A74C4: .4byte gScreenTransition

	thumb_func_start sub_080A74C8
sub_080A74C8: @ 0x080A74C8
	push {lr}
	bl sub_080A74F4
	ldr r0, _080A74E8 @ =gFadeControl
	ldrb r3, [r0]
	cmp r3, #0
	bne _080A74E6
	ldr r0, _080A74EC @ =gMain
	ldr r1, _080A74F0 @ =gUnk_02032EC0
	ldrb r2, [r1, #7]
	strb r2, [r0, #4]
	strb r3, [r1]
	strb r3, [r1, #2]
	bl ResetSystemPriority
_080A74E6:
	pop {pc}
	.align 2, 0
_080A74E8: .4byte gFadeControl
_080A74EC: .4byte gMain
_080A74F0: .4byte gUnk_02032EC0

	thumb_func_start sub_080A74F4
sub_080A74F4: @ 0x080A74F4
	push {lr}
	bl SetInitializationPriority
	ldr r1, _080A7524 @ =gMain
	movs r0, #0
	strb r0, [r1, #0xb]
	bl FlushSprites
	bl UpdateEntities
	bl UpdateManagers
	bl sub_0801C344
	bl sub_0801C208
	bl sub_08078CB4
	bl sub_080AD9B0
	bl sub_080AD918
	pop {pc}
	.align 2, 0
_080A7524: .4byte gMain

	thumb_func_start sub_080A7528
sub_080A7528: @ 0x080A7528
	push {lr}
	ldr r1, _080A753C @ =gUnk_08129030
	ldr r0, _080A7540 @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A753C: .4byte gUnk_08129030
_080A7540: .4byte gUnk_02032EC0
