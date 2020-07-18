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
	ldr r1, _080A569C @ =gUnk_02002A40
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
_080A569C: .4byte gUnk_02002A40

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
	ldr r0, _080A56DC @ =gUnk_03000FF0
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
_080A56DC: .4byte gUnk_03000FF0
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
	bl PlaySFX
	b _080A575E
	.align 2, 0
_080A5708: .4byte gMenu
_080A570C:
	ldrh r0, [r0, #2]
	cmp r0, #1
	bne _080A575E
	ldrb r3, [r2, #3]
	movs r1, #0
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
	movs r1, #8
	cmp r3, #0
	bne _080A574E
	movs r1, #7
	b _080A5752
	.align 2, 0
_080A5744: .4byte gMenu
_080A5748:
	movs r1, #9
	b _080A5752
_080A574C:
	movs r1, #0xa
_080A574E:
	cmp r1, #0
	beq _080A575E
_080A5752:
	adds r0, r1, #0
	bl sub_080A4E84
	movs r0, #0x6a
	bl PlaySFX
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
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080A5890 @ =gUnk_03001010
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
	ldr r0, _080A58A0 @ =gUnk_03001000
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
	ldr r4, _080A5890 @ =gUnk_03001010
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
_080A5890: .4byte gUnk_03001010
_080A5894: .4byte gUnk_08128C94
_080A5898: .4byte gUnk_08128C14
_080A589C: .4byte gMenu
_080A58A0: .4byte gUnk_03001000
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
	ldr r0, _080A5980 @ =gUnk_080FDFD8
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
	ldr r2, _080A5988 @ =gUnk_03001010
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
	ldr r1, _080A5988 @ =gUnk_03001010
	ldrb r0, [r3, #6]
	adds r0, #8
	strh r0, [r1]
	ldrb r0, [r3, #7]
	adds r0, #8
	strh r0, [r1, #2]
	ldr r0, _080A598C @ =gUnk_02002A40
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
_080A5980: .4byte gUnk_080FDFD8
_080A5984: .4byte gMenu
_080A5988: .4byte gUnk_03001010
_080A598C: .4byte gUnk_02002A40

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
	bl sub_08052418
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
	ldr r0, _080A59F0 @ =gUnk_03000FF0
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
_080A59F0: .4byte gUnk_03000FF0
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
	bl sub_08050318
	movs r0, #2
	bl sub_080A7114
	movs r0, #0x6a
	bl PlaySFX
	b _080A5A52
_080A5A2E:
	movs r0, #3
	bl sub_080A7114
	movs r0, #0x6c
	bl PlaySFX
	b _080A5A52
_080A5A3C:
	ldrb r0, [r1, #3]
	cmp r0, r2
	beq _080A5A52
	strb r2, [r1, #3]
	movs r0, #0
	adds r1, r2, #0
	bl sub_08052418
	movs r0, #0x69
	bl PlaySFX
_080A5A52:
	pop {pc}

	thumb_func_start sub_080A5A54
sub_080A5A54: @ 0x080A5A54
	push {lr}
	movs r0, #0
	bl sub_0807CDA4
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
	bl sub_08050318
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
	ldr r0, _080A5ABC @ =gUnk_03000FF0
	ldrh r1, [r0, #2]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080A5AD2
	movs r0, #0xff
	strh r0, [r2, #8]
	b _080A5AD2
	.align 2, 0
_080A5ABC: .4byte gUnk_03000FF0
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
	push {r4, lr}
	ldr r0, _080A5B18 @ =gMenu
	movs r4, #0
	strb r4, [r0, #3]
	movs r0, #2
	movs r1, #0
	bl sub_08052418
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
_080A5B28:
	movs r0, #1
	bl sub_080A7114
	pop {r4, pc}
	.align 2, 0
_080A5B30: .4byte gScreen

	thumb_func_start sub_080A5B34
sub_080A5B34: @ 0x080A5B34
	push {r4, r5, r6, lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5BB6
	ldr r1, _080A5B58 @ =gMenu
	ldrb r4, [r1, #3]
	movs r5, #0
	ldr r0, _080A5B5C @ =gUnk_03000FF0
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
_080A5B5C: .4byte gUnk_03000FF0
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
	bl sub_08052418
	movs r0, #0x69
	bl PlaySFX
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
	bl PlaySFX
	movs r0, #2
	bl sub_080A4E84
_080A5BB6:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080A5BB8
sub_080A5BB8: @ 0x080A5BB8
	push {lr}
	ldr r0, _080A5BE4 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A5BE2
	bl sub_08050384
	ldr r1, _080A5BE8 @ =gUnk_03001000
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
_080A5BE4: .4byte gUnk_03000FD0
_080A5BE8: .4byte gUnk_03001000
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
	ldr r0, _080A5C38 @ =gUnk_03001000
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
	bl sub_0801D66C
	strh r5, [r4, #0xe]
	ldr r2, _080A5C40 @ =gUnk_0200B644
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
_080A5C38: .4byte gUnk_03001000
_080A5C3C: .4byte gUnk_02017830
_080A5C40: .4byte gUnk_0200B644

	thumb_func_start sub_080A5C44
sub_080A5C44: @ 0x080A5C44
	push {r4, lr}
	ldr r1, _080A5C88 @ =gMenu
	ldr r0, _080A5C8C @ =gUnk_08128D38
	str r0, [r1, #0xc]
	ldrb r0, [r1, #3]
	bl sub_080A5CFC
	movs r0, #0x81
	bl sub_0801D7EC
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
	ldr r0, _080A5CD0 @ =gUnk_03000FF0
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
_080A5CD0: .4byte gUnk_03000FF0
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
	bl PlaySFX
_080A5CFA:
	pop {pc}

	thumb_func_start sub_080A5CFC
sub_080A5CFC: @ 0x080A5CFC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801DDA0
	bl sub_0801DD88
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
	ldr r5, _080A5EA4 @ =gUnk_03001010
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
	ldr r1, _080A5EAC @ =gUnk_03001000
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
	bl sub_080527CC
	cmp r0, #0
	beq _080A5DCC
	movs r0, #0x18
	strh r0, [r5]
	ldr r0, _080A5EB4 @ =gUnk_080FDFD8
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
	bl sub_08052764
	cmp r0, #0
	beq _080A5DEE
	movs r0, #0x2e
	strh r0, [r5]
	ldr r0, _080A5EB4 @ =gUnk_080FDFD8
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
	bl sub_0805279C
	cmp r0, #0
	beq _080A5E48
	movs r0, #0x45
	strh r0, [r5]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r5, #8]
	ldr r1, _080A5EB4 @ =gUnk_080FDFD8
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
	ldr r1, _080A5EA4 @ =gUnk_03001010
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
	ldr r7, _080A5EA4 @ =gUnk_03001010
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
_080A5EA4: .4byte gUnk_03001010
_080A5EA8: .4byte gMenu
_080A5EAC: .4byte gUnk_03001000
_080A5EB0: .4byte 0x000001FB
_080A5EB4: .4byte gUnk_080FDFD8
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
	bl CheckLocalFlagByOffset
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
	ldr r0, _080A5F9C @ =gUnk_02002A40
	adds r0, r0, r4
	adds r0, #0x9a
	ldrb r4, [r0]
_080A5F5C:
	lsls r0, r1, #5
	ldr r1, _080A5FA0 @ =0x06010000
	adds r5, r0, r1
	ldr r1, _080A5FA4 @ =gUnk_080FDFD8
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r0]
	ldr r3, _080A5FA8 @ =gUnk_08003DD4
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
	ldr r0, _080A5F9C @ =gUnk_02002A40
	adds r0, #0xac
	b _080A5FBC
	.align 2, 0
_080A5F9C: .4byte gUnk_02002A40
_080A5FA0: .4byte 0x06010000
_080A5FA4: .4byte gUnk_080FDFD8
_080A5FA8: .4byte gUnk_08003DD4
_080A5FAC: .4byte 0x040000D4
_080A5FB0: .4byte 0x84000040
_080A5FB4:
	cmp r4, #0xa
	bhi _080A5FBE
	ldr r0, _080A5FF8 @ =gUnk_02002A40
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
_080A5FF8: .4byte gUnk_02002A40
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
	ldr r1, _080A60D4 @ =gUnk_03001010
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r5, #0
	movs r4, #0
	ldr r0, _080A60D8 @ =gUnk_02002A40
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
_080A60D4: .4byte gUnk_03001010
_080A60D8: .4byte gUnk_02002A40
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
	ldr r0, _080A6150 @ =gUnk_03000FF0
	ldrh r0, [r0, #2]
	cmp r0, #0x10
	beq _080A6154
	cmp r0, #0x20
	bne _080A6156
	subs r2, #1
	b _080A6156
	.align 2, 0
_080A614C: .4byte gMenu
_080A6150: .4byte gUnk_03000FF0
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
	bl PlaySFX
_080A6178:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A617C
sub_080A617C: @ 0x080A617C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _080A6260 @ =gUnk_03001010
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
	ldr r0, _080A6268 @ =gUnk_03001000
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
_080A6260: .4byte gUnk_03001010
_080A6264: .4byte gMenu
_080A6268: .4byte gUnk_03001000
_080A626C: .4byte gUnk_08128D70

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
	bl sub_0801D7EC
	ldr r1, _080A62D0 @ =gScreen
	ldr r0, _080A62D4 @ =0x0000FFFC
	strh r0, [r1, #0x18]
	strh r0, [r1, #0x24]
	ldr r2, _080A62D8 @ =gUnk_02002A40
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
_080A62D8: .4byte gUnk_02002A40
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
	ldr r0, _080A6318 @ =gUnk_03000FF0
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
_080A6318: .4byte gUnk_03000FF0
_080A631C:
	cmp r2, #0x40
	beq _080A6344
	cmp r2, #0x80
	beq _080A634A
	b _080A635A
_080A6326:
	ldr r0, _080A6340 @ =gUnk_02002A40
	lsls r2, r3
	ldr r0, [r0, #0x40]
	ands r0, r2
	cmp r0, #0
	beq _080A635A
	movs r0, #0x6a
	bl PlaySFX
	movs r0, #6
	bl sub_080A4E84
	b _080A635A
	.align 2, 0
_080A6340: .4byte gUnk_02002A40
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
	bl PlaySFX
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
	ldr r5, _080A6424 @ =gUnk_03001010
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
	ldr r4, _080A6428 @ =gUnk_030010A0
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
	ldr r0, _080A642C @ =gLinkState
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
	ldr r2, _080A6424 @ =gUnk_03001010
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
_080A6424: .4byte gUnk_03001010
_080A6428: .4byte gUnk_030010A0
_080A642C: .4byte gLinkState
_080A6430: .4byte 0x000001FB
_080A6434: .4byte gUnk_08128DE8

	thumb_func_start sub_080A6438
sub_080A6438: @ 0x080A6438
	push {r4, r5, r6, r7, lr}
	ldr r2, _080A6484 @ =gUnk_03001010
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	strh r1, [r2, #8]
	ldr r0, _080A6488 @ =gUnk_02002A40
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
_080A6484: .4byte gUnk_03001010
_080A6488: .4byte gUnk_02002A40
_080A648C: .4byte gMenu
_080A6490: .4byte gUnk_08128F58
_080A6494: .4byte 0x000001FB

	thumb_func_start sub_080A6498
sub_080A6498: @ 0x080A6498
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A64E4 @ =gUnk_03001010
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	movs r4, #0
	ldr r7, _080A64E8 @ =gUnk_02002A40
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
_080A64E4: .4byte gUnk_03001010
_080A64E8: .4byte gUnk_02002A40
_080A64EC: .4byte gUnk_08128DE8
_080A64F0: .4byte 0x000001FB
_080A64F4: .4byte gScreen
_080A64F8: .4byte 0x00003D3F

	thumb_func_start sub_080A64FC
sub_080A64FC: @ 0x080A64FC
	push {r4, lr}
	bl sub_080AD90C
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
	ldr r0, _080A6598 @ =gUnk_020176A0
	adds r0, #0xa2
	ldrh r1, [r0]
	movs r0, #0
	bl sub_0801D79C
	ldr r1, _080A659C @ =gUnk_08128F4C
	ldr r0, _080A65A0 @ =gUnk_02032EC0
	ldrb r0, [r0, #3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r3, _080A65A4 @ =gUnk_02002A40
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
_080A6598: .4byte gUnk_020176A0
_080A659C: .4byte gUnk_08128F4C
_080A65A0: .4byte gUnk_02032EC0
_080A65A4: .4byte gUnk_02002A40
_080A65A8: .4byte gMenu

	thumb_func_start sub_080A65AC
sub_080A65AC: @ 0x080A65AC
	push {r4, lr}
	ldr r0, _080A65E4 @ =gUnk_03000FD0
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
	bl PlaySFX
_080A65DA:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	b _080A6600
	.align 2, 0
_080A65E4: .4byte gUnk_03000FD0
_080A65E8: .4byte gMenu
_080A65EC:
	ldr r0, _080A6604 @ =gUnk_03000FF0
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
_080A6604: .4byte gUnk_03000FF0

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
	ldr r0, _080A66A8 @ =gUnk_03000FF0
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
_080A66A8: .4byte gUnk_03000FF0
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
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _080A677C @ =gUnk_03001010
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
	ldr r2, _080A677C @ =gUnk_03001010
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
_080A677C: .4byte gUnk_03001010
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

	thumb_func_start sub_080A67C4
sub_080A67C4: @ 0x080A67C4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xba
	bl LoadPalettesByPaletteGroupIndex
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
	bl sub_0801D7EC
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
	bl _DmaZero
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
	push {r4, r5, r6, lr}
	ldr r0, _080A690C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r4, #0x64
	cmp r0, #0
	beq _080A68E6
	movs r4, #0x65
_080A68E6:
	ldr r1, _080A6910 @ =gUnk_030010A0
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	ldr r2, _080A6914 @ =0x000001FB
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r4, r3
	bl sub_080A698C
	bl sub_080A6F40
	adds r6, r0, #0
	ldr r0, _080A6918 @ =gUnk_02002A40
	ldrh r0, [r0, #0x20]
	ands r6, r0
	ldr r4, _080A691C @ =gUnk_08128F58
	movs r5, #0
	b _080A693A
	.align 2, 0
_080A690C: .4byte gLinkState
_080A6910: .4byte gUnk_030010A0
_080A6914: .4byte 0x000001FB
_080A6918: .4byte gUnk_02002A40
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
	ldr r1, _080A6A40 @ =gUnk_0811E214
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	subs r6, r6, r0
	b _080A6A48
	.align 2, 0
_080A6A40: .4byte gUnk_0811E214
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
	bl sub_080AD90C
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
	bl sub_0801D79C
	movs r0, #0x5f
	adds r1, r4, #0
	bl sub_0801D79C
	ldr r0, _080A6C04 @ =0x00005001
	ldr r1, _080A6C08 @ =gUnk_02001A40
	movs r2, #0x80
	lsls r2, r2, #5
	bl _DmaFill16
	ldr r0, _080A6C0C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	movs r2, #0x64
	cmp r0, #0
	beq _080A6B84
	movs r2, #0x65
_080A6B84:
	ldr r1, _080A6C10 @ =gUnk_030010A0
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	ldr r4, _080A6C14 @ =0x000001FB
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
_080A6C08: .4byte gUnk_02001A40
_080A6C0C: .4byte gLinkState
_080A6C10: .4byte gUnk_030010A0
_080A6C14: .4byte 0x000001FB
_080A6C18: .4byte gUnk_08128E94

	thumb_func_start sub_080A6C1C
sub_080A6C1C: @ 0x080A6C1C
	push {lr}
	ldr r0, _080A6C34 @ =gUnk_03000FD0
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
_080A6C34: .4byte gUnk_03000FD0
_080A6C38: .4byte gMenu
_080A6C3C:
	bl sub_080A66D0
	ldr r0, _080A6C58 @ =gUnk_03000FF0
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
_080A6C58: .4byte gUnk_03000FF0
_080A6C5C:
	ldr r0, _080A6C6C @ =0x00000103
	bl PlaySFX
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
	bl sub_080AD90C
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
	ldr r0, _080A6D08 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A6D6E
	ldr r1, _080A6D0C @ =gMenu
	movs r0, #1
	strb r0, [r1]
	movs r4, #0
	ldr r0, _080A6D10 @ =gUnk_03000FF0
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
_080A6D08: .4byte gUnk_03000FD0
_080A6D0C: .4byte gMenu
_080A6D10: .4byte gUnk_03000FF0
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
	bl TextboxNoOverlapFollow
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
	bl PlaySFX
_080A6D6E:
	pop {r4, pc}
	.align 2, 0
_080A6D70: .4byte gMenu

	thumb_func_start sub_080A6D74
sub_080A6D74: @ 0x080A6D74
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080A6DA4 @ =gUnk_02002A40
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
_080A6DA4: .4byte gUnk_02002A40
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
	bl sub_080791D0
	ldr r0, _080A6E3C @ =gLinkEntity
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
	bl PlaySFX
_080A6E3A:
	pop {pc}
	.align 2, 0
_080A6E3C: .4byte gLinkEntity
_080A6E40: .4byte gUnk_02034490

	thumb_func_start sub_080A6E44
sub_080A6E44: @ 0x080A6E44
	push {lr}
	ldr r0, _080A6E64 @ =gUnk_03000FD0
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
_080A6E64: .4byte gUnk_03000FD0
_080A6E68: .4byte gMenu
_080A6E6C: .4byte gUnk_08128024

	thumb_func_start sub_080A6E70
sub_080A6E70: @ 0x080A6E70
	push {r4, r5, lr}
	ldr r1, _080A6ED0 @ =gUnk_03001010
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
	ldr r5, _080A6EDC @ =gUnk_02002A40
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
_080A6ED0: .4byte gUnk_03001010
_080A6ED4: .4byte gMenu
_080A6ED8: .4byte 0x000001FB
_080A6EDC: .4byte gUnk_02002A40

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
	ldr r0, _080A6F38 @ =gUnk_0811E214
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
	ldr r6, _080A6F3C @ =gUnk_03001010
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
_080A6F38: .4byte gUnk_0811E214
_080A6F3C: .4byte gUnk_03001010

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
	bl _DmaZero
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
	ldr r0, _080A6FE4 @ =gUnk_02002A40
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
_080A6FE4: .4byte gUnk_02002A40
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
	bl _DmaZero
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
	bl _DmaZero
	ldr r0, _080A7098 @ =0xFFFFFE00
	adds r4, r4, r0
	ldr r1, _080A709C @ =0x0600E000
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r4, #0
	bl sub_0801D66C
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
	bl _DmaZero
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
	bl _DmaZero
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
	bl _DmaZero
	strb r5, [r4, #2]
	strb r6, [r4, #3]
	ldr r0, _080A7160 @ =gUnk_03001000
	ldrb r0, [r0, #4]
	strb r0, [r4, #7]
	b _080A716C
	.align 2, 0
_080A715C: .4byte gUnk_02032EC0
_080A7160: .4byte gUnk_03001000
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
	ldr r1, _080A719C @ =gUnk_03001000
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
_080A719C: .4byte gUnk_03001000
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
	bl sub_0805E89C
	bl sub_0805E974
	bl sub_0805E89C
	ldr r0, _080A7218 @ =gUnk_03001000
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #3]
	strb r2, [r0, #4]
	pop {pc}
	.align 2, 0
_080A7218: .4byte gUnk_03001000

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
	ldr r0, _080A72E8 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A72E4
	ldr r0, _080A72EC @ =gScreen
	ldr r1, _080A72F0 @ =gUnk_03001020
	movs r2, #0x7c
	bl sub_0801D66C
	ldr r0, _080A72F4 @ =gUnk_020176A0
	ldr r1, _080A72F8 @ =gUnk_02024090
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_0801D66C
	ldr r0, _080A72FC @ =gUnk_02024490
	ldr r4, _080A7300 @ =gUnk_02032F14
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r4, #0
	bl sub_0801D66C
	ldr r0, _080A7304 @ =gUnk_02001A00
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0x40
	bl sub_0801D66C
	ldr r0, _080A7308 @ =gRoomControls
	adds r1, r4, #0
	subs r1, #0x38
	movs r2, #0x38
	bl sub_0801D66C
	ldr r0, _080A730C @ =gUnk_03000420
	movs r2, #0x95
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_0801D66C
	ldr r0, _080A7310 @ =gUnk_02033280
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0xc
	bl sub_0801D66C
	bl sub_0805E958
	adds r1, r4, #0
	subs r1, #0x54
	ldr r0, _080A7314 @ =gUnk_030010A0
	adds r0, #0x2f
	ldrb r0, [r0]
	strb r0, [r1, #0xd]
	ldr r0, _080A7318 @ =gLinkState
	adds r0, #0x8b
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	ldr r0, _080A731C @ =gUnk_02017654
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
_080A72E8: .4byte gUnk_03000FD0
_080A72EC: .4byte gScreen
_080A72F0: .4byte gUnk_03001020
_080A72F4: .4byte gUnk_020176A0
_080A72F8: .4byte gUnk_02024090
_080A72FC: .4byte gUnk_02024490
_080A7300: .4byte gUnk_02032F14
_080A7304: .4byte gUnk_02001A00
_080A7308: .4byte gRoomControls
_080A730C: .4byte gUnk_03000420
_080A7310: .4byte gUnk_02033280
_080A7314: .4byte gUnk_030010A0
_080A7318: .4byte gLinkState
_080A731C: .4byte gUnk_02017654
_080A7320: .4byte gUnk_02025EB0
_080A7324: .4byte gUnk_0200B650

	thumb_func_start sub_080A7328
sub_080A7328: @ 0x080A7328
	push {r4, lr}
	ldr r0, _080A7388 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A7384
	bl sub_0805E89C
	ldr r0, _080A738C @ =gMenu
	movs r1, #0x30
	bl _DmaZero
	ldr r0, _080A7390 @ =gRoomControls
	movs r1, #0x38
	bl _DmaZero
	ldr r0, _080A7394 @ =gUnk_03000420
	movs r1, #0x80
	lsls r1, r1, #1
	bl _DmaZero
	ldr r4, _080A7398 @ =gUnk_02033280
	adds r0, r4, #0
	movs r1, #0xc
	bl _DmaZero
	movs r0, #8
	strb r0, [r4, #8]
	movs r0, #1
	bl sub_0801DA90
	bl sub_08056418
	bl sub_080ADD30
	movs r0, #0
	bl sub_0801CFA8
	ldr r0, _080A739C @ =gUnk_02024490
	movs r2, #1
	strb r2, [r0]
	ldr r1, _080A73A0 @ =gUnk_02032EC0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080A73A4 @ =gUnk_030010A0
	adds r0, #0x30
	strb r2, [r0]
_080A7384:
	pop {r4, pc}
	.align 2, 0
_080A7388: .4byte gUnk_03000FD0
_080A738C: .4byte gMenu
_080A7390: .4byte gRoomControls
_080A7394: .4byte gUnk_03000420
_080A7398: .4byte gUnk_02033280
_080A739C: .4byte gUnk_02024490
_080A73A0: .4byte gUnk_02032EC0
_080A73A4: .4byte gUnk_030010A0

	thumb_func_start sub_080A73A8
sub_080A73A8: @ 0x080A73A8
	push {r4, r5, lr}
	ldr r0, _080A7468 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A73B4
	b _080A74BC
_080A73B4:
	bl sub_0805E89C
	bl sub_0805E974
	ldr r1, _080A746C @ =gUnk_02017654
	ldr r5, _080A7470 @ =gUnk_02032EC0
	ldr r0, [r5, #0x10]
	str r0, [r1]
	ldr r0, _080A7474 @ =gLinkState
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
	ldr r1, _080A7480 @ =gUnk_02033280
	movs r2, #0xc
	bl sub_0801D66C
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _080A7484 @ =gUnk_03000420
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_0801D66C
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _080A7488 @ =gUnk_02001A00
	movs r2, #0x40
	bl sub_0801D66C
	adds r0, r5, #0
	adds r0, #0x54
	ldr r1, _080A748C @ =gUnk_02024490
	movs r2, #0x85
	lsls r2, r2, #2
	bl sub_0801D66C
	adds r0, r5, #0
	adds r0, #0x1c
	ldr r4, _080A7490 @ =gRoomControls
	adds r1, r4, #0
	movs r2, #0x38
	bl sub_0801D66C
	ldr r0, _080A7494 @ =gUnk_03001020
	ldr r1, _080A7498 @ =gScreen
	movs r2, #0x7c
	bl sub_0801D66C
	ldrb r0, [r4, #4]
	bl sub_08052D58
	ldr r4, _080A749C @ =gArea
	strh r0, [r4, #4]
	bl sub_08052E8C
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
_080A7468: .4byte gUnk_03000FD0
_080A746C: .4byte gUnk_02017654
_080A7470: .4byte gUnk_02032EC0
_080A7474: .4byte gLinkState
_080A7478: .4byte gUnk_02025EB0
_080A747C: .4byte gUnk_0200B650
_080A7480: .4byte gUnk_02033280
_080A7484: .4byte gUnk_03000420
_080A7488: .4byte gUnk_02001A00
_080A748C: .4byte gUnk_02024490
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
	ldr r0, _080A74C4 @ =gUnk_030010A0
	adds r0, #0x30
	strb r2, [r0]
_080A74BC:
	pop {r4, r5, pc}
	.align 2, 0
_080A74C0: .4byte gUnk_02032EC0
_080A74C4: .4byte gUnk_030010A0

	thumb_func_start sub_080A74C8
sub_080A74C8: @ 0x080A74C8
	push {lr}
	bl sub_080A74F4
	ldr r0, _080A74E8 @ =gUnk_03000FD0
	ldrb r3, [r0]
	cmp r3, #0
	bne _080A74E6
	ldr r0, _080A74EC @ =gUnk_03001000
	ldr r1, _080A74F0 @ =gUnk_02032EC0
	ldrb r2, [r1, #7]
	strb r2, [r0, #4]
	strb r3, [r1]
	strb r3, [r1, #2]
	bl sub_0805E5B4
_080A74E6:
	pop {pc}
	.align 2, 0
_080A74E8: .4byte gUnk_03000FD0
_080A74EC: .4byte gUnk_03001000
_080A74F0: .4byte gUnk_02032EC0

	thumb_func_start sub_080A74F4
sub_080A74F4: @ 0x080A74F4
	push {lr}
	bl sub_0805E5A8
	ldr r1, _080A7524 @ =gUnk_03001000
	movs r0, #0
	strb r0, [r1, #0xb]
	bl sub_080AD90C
	bl sub_0805E5C0
	bl sub_0805E5F8
	bl sub_0801C344
	bl sub_0801C208
	bl sub_08078CB4
	bl sub_080AD9B0
	bl sub_080AD918
	pop {pc}
	.align 2, 0
_080A7524: .4byte gUnk_03001000

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

	thumb_func_start sub_080A7544
sub_080A7544: @ 0x080A7544
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080A7584 @ =gUnk_0812905C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A7582
	ldr r1, _080A7588 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_08078E84
	ldr r1, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	ldr r1, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x63
	ldrb r0, [r0]
	ldrb r2, [r1, #1]
	adds r0, r0, r2
	strb r0, [r1, #1]
_080A7582:
	pop {r4, pc}
	.align 2, 0
_080A7584: .4byte gUnk_0812905C
_080A7588: .4byte gLinkEntity

	thumb_func_start sub_080A758C
sub_080A758C: @ 0x080A758C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _080A75AC
	ldr r1, _080A7654 @ =gLinkState
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne _080A75AC
	ldrb r1, [r1, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080A75AC
	bl DeleteThisEntity
_080A75AC:
	adds r0, r5, #0
	bl sub_0806FBD8
	cmp r0, #0
	bne _080A75BA
	bl DeleteThisEntity
_080A75BA:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
	ldr r1, _080A7658 @ =gLinkEntity
	adds r0, r1, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r0, #1
	movs r2, #0x20
	adds r3, r5, #0
	adds r3, #0x3c
	movs r4, #0
	orrs r0, r2
	strb r0, [r3]
	adds r1, #0x3b
	ldrb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x3b
	strb r0, [r1]
	ldrb r1, [r5, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r5, #0x11]
	adds r0, r5, #0
	adds r0, #0x41
	strb r4, [r0]
	subs r0, #4
	strb r4, [r0]
	adds r0, #5
	strb r4, [r0]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0xff
	strb r0, [r5, #0x1e]
	adds r0, r5, #0
	bl sub_0801766C
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _080A76BC
	ldr r2, _080A7654 @ =gLinkState
	ldrb r1, [r2, #2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A767A
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	movs r0, #2
	strb r0, [r5, #0xb]
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, #8
	adds r1, r5, #0
	adds r1, #0x44
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A765C
	cmp r0, #6
	bne _080A7664
	subs r1, #4
	movs r0, #0x1a
	b _080A766A
	.align 2, 0
_080A7654: .4byte gLinkState
_080A7658: .4byte gLinkEntity
_080A765C:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x18
	b _080A766A
_080A7664:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x19
_080A766A:
	strb r0, [r1]
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080A7824
	b _080A7692
_080A767A:
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, #4
	adds r1, r5, #0
	adds r1, #0x44
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080A76CC
_080A7692:
	ldr r0, _080A76B0 @ =gLinkState
	str r5, [r0, #0x2c]
	adds r0, r5, #0
	bl sub_08079BD8
	ldr r4, _080A76B4 @ =gUnk_0812906C
	ldr r0, _080A76B8 @ =gUnk_08129068
	bl sub_080028F4
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl PlaySFX
	b _080A76C2
	.align 2, 0
_080A76B0: .4byte gLinkState
_080A76B4: .4byte gUnk_0812906C
_080A76B8: .4byte gUnk_08129068
_080A76BC:
	adds r0, r5, #0
	bl sub_080A76CC
_080A76C2:
	movs r0, #0x87
	lsls r0, r0, #1
	bl PlaySFX
	pop {r4, r5, pc}

	thumb_func_start sub_080A76CC
sub_080A76CC: @ 0x080A76CC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A76D8
	b _080A77DC
_080A76D8:
	ldr r5, _080A771C @ =gLinkState
	ldr r0, [r5, #0x2c]
	cmp r0, r4
	beq _080A76E4
	bl DeleteThisEntity
_080A76E4:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _080A76F2
	str r0, [r5, #0x2c]
	strb r0, [r5, #0x1b]
	bl DeleteThisEntity
_080A76F2:
	ldrb r2, [r5, #0x1b]
	cmp r2, #0
	beq _080A7744
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xd
	strb r0, [r1]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080A7728
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A7720
	cmp r0, #6
	bne _080A7724
	movs r0, #0xa
	b _080A7726
	.align 2, 0
_080A771C: .4byte gLinkState
_080A7720:
	movs r0, #8
	b _080A7726
_080A7724:
	movs r0, #9
_080A7726:
	strb r0, [r1]
_080A7728:
	ldr r0, _080A7740 @ =gLinkEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A77C4
	movs r0, #0x8b
	lsls r0, r0, #1
	bl PlaySFX
	b _080A77C4
	.align 2, 0
_080A7740: .4byte gLinkEntity
_080A7744:
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080A776A
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #6
	bne _080A7762
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xc
	b _080A7768
_080A7762:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xb
_080A7768:
	strb r0, [r1]
_080A776A:
	ldr r0, _080A77D0 @ =gLinkState
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r2, #3
	ands r2, r0
	cmp r2, #0
	beq _080A77C4
	ldr r0, _080A77D4 @ =gLinkEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A77C4
	movs r1, #0x12
	cmp r2, #1
	bne _080A778E
	movs r1, #0x14
_080A778E:
	adds r0, r4, #0
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _080A77C4
	ldrb r1, [r4, #0x1e]
	lsls r1, r1, #1
	ldr r0, _080A77D8 @ =gUnk_081292E2
	adds r1, r1, r0
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r3, [r4, #0x32]
	adds r0, r0, r3
	strh r0, [r2, #0x32]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080A77BE
	rsbs r1, r1, #0
_080A77BE:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
_080A77C4:
	ldr r1, _080A77D4 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080A78B8
	b _080A7806
	.align 2, 0
_080A77D0: .4byte gLinkState
_080A77D4: .4byte gLinkEntity
_080A77D8: .4byte gUnk_081292E2
_080A77DC:
	ldr r1, _080A7810 @ =gLinkState
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _080A7814
	ldr r0, [r1, #0x2c]
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A7814
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r2]
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_080A7A54
_080A7806:
	adds r0, r4, #0
	bl sub_080A7A84
	b _080A7820
	.align 2, 0
_080A7810: .4byte gLinkState
_080A7814:
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
_080A7820:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A7824
sub_080A7824: @ 0x080A7824
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _080A7860 @ =gLinkState
	ldr r0, [r5, #0x2c]
	cmp r0, r4
	beq _080A7834
	bl DeleteThisEntity
_080A7834:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _080A78AE
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _080A7846
	str r0, [r5, #0x2c]
	bl DeleteThisEntity
_080A7846:
	ldr r2, _080A7864 @ =gLinkEntity
	adds r6, r2, #0
	adds r6, #0x5a
	ldrb r1, [r6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A7868
	movs r0, #0
	str r0, [r5, #0x2c]
	bl DeleteThisEntity
	b _080A78B4
	.align 2, 0
_080A7860: .4byte gLinkState
_080A7864: .4byte gLinkEntity
_080A7868:
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_080A78B8
	ldrb r1, [r6]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A7880
	movs r0, #0x77
	bl PlaySFX
_080A7880:
	ldrb r0, [r4, #0x1e]
	cmp r0, #0x8a
	bls _080A788A
	movs r0, #0xff
	strb r0, [r4, #0x1e]
_080A788A:
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A78A4
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_080A7B98
	b _080A78B4
_080A78A4:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _080A78B4
_080A78AE:
	str r0, [r5, #0x2c]
	bl DeleteThisEntity
_080A78B4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A78B8
sub_080A78B8: @ 0x080A78B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _080A78E8 @ =gLinkState
	ldrb r1, [r0, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080A78FC
	ldrb r0, [r6, #0x1e]
	subs r0, #0x6a
	strb r0, [r4, #0x1e]
	ldr r0, _080A78EC @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080A78F0
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r1, #0xb1
	b _080A78F2
	.align 2, 0
_080A78E8: .4byte gLinkState
_080A78EC: .4byte gUnk_030010A0
_080A78F0:
	ldrb r1, [r4, #0x1e]
_080A78F2:
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
	b _080A7912
_080A78FC:
	ldrb r0, [r6, #0x1e]
	subs r0, #0x6a
	ldrb r1, [r4, #0x1e]
	cmp r0, r1
	beq _080A7912
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_080A7912:
	ldr r2, _080A792C @ =gLinkState
	ldrb r1, [r2, #0x1b]
	movs r0, #0x40
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _080A7930
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _080A7958
	.align 2, 0
_080A792C: .4byte gLinkState
_080A7930:
	ldrb r1, [r6, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A7946
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1f
	movs r0, #1
	eors r2, r0
	b _080A794C
_080A7946:
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x1f
_080A794C:
	lsls r2, r2, #6
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
_080A7958:
	strb r0, [r4, #0x18]
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	mov r8, r2
	adds r5, r4, #0
	adds r5, #0x3d
	cmp r0, #0
	beq _080A7A1C
	adds r3, r6, #0
	adds r3, #0x3d
	ldrb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A7980
	lsrs r0, r0, #0x18
	cmp r0, #0x81
	bne _080A79AE
_080A7980:
	adds r2, r4, #0
	adds r2, #0x3d
	ldrb r0, [r2]
	movs r1, #0
	strb r0, [r3]
	adds r5, r4, #0
	adds r5, #0x3e
	ldrb r0, [r5]
	adds r3, r6, #0
	adds r3, #0x3e
	strb r0, [r3]
	movs r3, #0x42
	adds r3, r3, r4
	mov ip, r3
	ldrb r0, [r3]
	adds r3, r6, #0
	adds r3, #0x42
	strb r0, [r3]
	mov r0, ip
	strb r1, [r0]
	strb r1, [r5]
	strb r1, [r2]
	adds r5, r2, #0
_080A79AE:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080A79C4
	ldrb r1, [r7, #0x1b]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0x1b]
	b _080A7A1C
_080A79C4:
	ldrb r0, [r7, #0x1b]
	cmp r0, #0
	beq _080A7A1C
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0x43
	beq _080A79E6
	cmp r1, #0x43
	bgt _080A79E0
	cmp r1, #0xd
	beq _080A79E6
	b _080A7A08
_080A79E0:
	cmp r1, #0x44
	bne _080A7A08
	b _080A7A1C
_080A79E6:
	ldrb r1, [r7, #0x1b]
	movs r0, #8
	orrs r0, r1
	strb r0, [r7, #0x1b]
	adds r1, r6, #0
	adds r1, #0x42
	movs r0, #2
	strb r0, [r1]
	ldrb r1, [r7, #0x1b]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080A7A1C
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r7, #0x1b]
	b _080A7A1C
_080A7A08:
	ldrb r0, [r7, #0x1b]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0
	bne _080A7A1C
	strb r1, [r7, #0x1b]
	strb r1, [r7, #4]
	str r1, [r7, #0x2c]
	bl DeleteThisEntity
_080A7A1C:
	adds r1, r5, #0
	ldrb r0, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _080A7A36
	cmp r2, #0
	ble _080A7A32
	subs r0, #1
	strb r0, [r1]
	b _080A7A36
_080A7A32:
	adds r0, #1
	strb r0, [r5]
_080A7A36:
	adds r0, r4, #0
	bl sub_080A7A54
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080A7A4C
	ldr r1, [r4, #0x48]
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r1]
_080A7A4C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080A7A54
sub_080A7A54: @ 0x080A7A54
	ldr r1, _080A7A7C @ =gLinkEntity
	ldrb r1, [r1, #0x1e]
	subs r1, #0x6a
	lsls r1, r1, #2
	ldr r2, _080A7A80 @ =gUnk_08129096
	adds r1, r1, r2
	ldr r3, [r0, #0x48]
	ldrb r2, [r1]
	strb r2, [r3]
	ldr r3, [r0, #0x48]
	ldrb r2, [r1, #1]
	strb r2, [r3, #1]
	ldr r3, [r0, #0x48]
	ldrb r2, [r1, #2]
	strb r2, [r3, #6]
	ldr r2, [r0, #0x48]
	ldrb r0, [r1, #3]
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_080A7A7C: .4byte gLinkEntity
_080A7A80: .4byte gUnk_08129096

	thumb_func_start sub_080A7A84
sub_080A7A84: @ 0x080A7A84
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _080A7AE0 @ =gLinkEntity
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	beq _080A7B8C
	ldr r2, _080A7AE4 @ =gUnk_08129072
	subs r0, r1, #1
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsb r5, [r0, r5]
	ldr r2, _080A7AE8 @ =gLinkState
	ldrb r1, [r2, #0x1b]
	movs r0, #0xc0
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _080A7AC4
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _080A7AC4
	rsbs r3, r3, #0
_080A7AC4:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080A7AEC
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	adds r2, r2, r3
	movs r1, #0x32
	ldrsh r3, [r4, r1]
	adds r3, r3, r5
	adds r0, r4, #0
	movs r1, #0
	bl sub_08008796
	b _080A7B8C
	.align 2, 0
_080A7AE0: .4byte gLinkEntity
_080A7AE4: .4byte gUnk_08129072
_080A7AE8: .4byte gLinkState
_080A7AEC:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _080A7B8C
	adds r0, r7, #0
	adds r0, #0xac
	ldrh r0, [r0]
	movs r1, #8
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsrs r1, r1, #0x1f
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	adds r6, r3, #0
	adds r2, r2, r6
	movs r0, #0x32
	ldrsh r3, [r4, r0]
	adds r3, r3, r5
	adds r0, r4, #0
	bl sub_08008796
	cmp r0, #0
	bne _080A7B8C
	ldrb r2, [r7, #0x1b]
	cmp r2, #0
	beq _080A7B8C
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	bne _080A7B8C
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_080002B4
	cmp r0, #0x2e
	bne _080A7B4C
	ldr r0, _080A7B44 @ =gLinkEntity
	ldr r1, _080A7B48 @ =0x00000119
	bl sub_0800449C
	b _080A7B54
	.align 2, 0
_080A7B44: .4byte gLinkEntity
_080A7B48: .4byte 0x00000119
_080A7B4C:
	ldr r0, _080A7B90 @ =gLinkEntity
	movs r1, #0x74
	bl sub_0800449C
_080A7B54:
	movs r0, #0xf
	movs r1, #0x1a
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _080A7B8C
	ldr r1, _080A7B94 @ =gUnk_0812908E
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r0, [r4, #0x34]
	str r0, [r2, #0x34]
_080A7B8C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A7B90: .4byte gLinkEntity
_080A7B94: .4byte gUnk_0812908E

	thumb_func_start sub_080A7B98
sub_080A7B98: @ 0x080A7B98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, _080A7BFC @ =gLinkState
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	mov sl, r0
	movs r7, #0x10
	rsbs r7, r7, #0
	movs r0, #0
_080A7BBE:
	movs r5, #0x10
	rsbs r5, r5, #0
	movs r4, #0
	movs r1, #0x10
	adds r1, r1, r7
	mov sb, r1
	adds r0, #1
	mov r8, r0
_080A7BCE:
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	adds r2, r2, r5
	movs r1, #0x32
	ldrsh r3, [r6, r1]
	adds r3, r3, r7
	adds r0, r6, #0
	mov r1, sl
	bl sub_08008796
	adds r5, #0x10
	adds r4, #1
	cmp r4, #2
	bls _080A7BCE
	mov r7, sb
	mov r0, r8
	cmp r0, #2
	bls _080A7BBE
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A7BFC: .4byte gLinkState

	thumb_func_start CreateItemEntity
CreateItemEntity: @ 0x080A7C00
	push {r4, lr}
	bl GiveItemWithCutscene
	adds r4, r0, #0
	cmp r4, #0
	beq _080A7C16
	ldrb r1, [r4, #0xa]
	movs r2, #0
	bl sub_080A276C
	str r0, [r4, #0x50]
_080A7C16:
	pop {r4, pc}

	thumb_func_start sub_080A7C18
sub_080A7C18: @ 0x080A7C18
	push {lr}
	bl GiveItemWithCutscene
	adds r2, r0, #0
	cmp r2, #0
	beq _080A7C32
	ldr r0, _080A7C34 @ =gLinkEntity
	str r0, [r2, #0x50]
	ldrb r1, [r2, #0xa]
	adds r0, r2, #0
	movs r2, #0
	bl sub_08078AF0
_080A7C32:
	pop {pc}
	.align 2, 0
_080A7C34: .4byte gLinkEntity

	thumb_func_start GiveItemWithCutscene
GiveItemWithCutscene: @ 0x080A7C38
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r5, #0x3f
	bne _080A7C52
	ldr r0, _080A7C78 @ =gUnk_02002A40
	adds r0, #0xbb
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A7C52
	movs r5, #0x57
	movs r6, #0
_080A7C52:
	bl sub_0805E744
	adds r4, r0, #0
	cmp r4, #0
	beq _080A7C72
	strb r5, [r4, #0xa]
	strb r6, [r4, #0xb]
	strb r7, [r4, #0xe]
	movs r0, #0xb
	strb r0, [r4, #9]
	movs r0, #6
	strb r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805EA2C
_080A7C72:
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A7C78: .4byte gUnk_02002A40

	thumb_func_start sub_080A7C7C
sub_080A7C7C: @ 0x080A7C7C
	push {lr}
	ldr r0, _080A7C88 @ =gUnk_02017660
	movs r1, #0x40
	bl _DmaZero
	pop {pc}
	.align 2, 0
_080A7C88: .4byte gUnk_02017660

	thumb_func_start sub_080A7C8C
sub_080A7C8C: @ 0x080A7C8C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _080A7C9C @ =gUnk_02017660
	movs r2, #0
	movs r1, #0
	b _080A7CA8
	.align 2, 0
_080A7C9C: .4byte gUnk_02017660
_080A7CA0:
	adds r1, #1
	adds r4, #8
	cmp r1, #7
	bhi _080A7CB0
_080A7CA8:
	ldrh r0, [r4, #4]
	cmp r0, r5
	bne _080A7CA0
	movs r2, #1
_080A7CB0:
	lsrs r1, r6, #1
	ldrb r0, [r4, #6]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r1, r0
	bne _080A7CF4
	cmp r2, #0
	beq _080A7CD2
	ldrb r0, [r4, #1]
	bl SetLocalFlag
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	movs r2, #0
	bl CreateItemEntity
	b _080A7CDC
_080A7CD2:
	movs r0, #0x60
	movs r1, #0
	movs r2, #0
	bl CreateItemEntity
_080A7CDC:
	movs r0, #0x74
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0807B7D8
	movs r0, #0
	movs r1, #0x78
	bl sub_0805E4E0
	ldr r0, _080A7CF8 @ =0x0000011B
	bl PlaySFX
_080A7CF4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A7CF8: .4byte 0x0000011B

	thumb_func_start sub_080A7CFC
sub_080A7CFC: @ 0x080A7CFC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0xc0
	lsls r4, r4, #3
	movs r6, #0
	movs r0, #3
	bl GetCurrentRoomProperty
	adds r1, r0, #0
	cmp r1, #0
	beq _080A7D38
_080A7D12:
	ldrh r0, [r1, #4]
	cmp r0, r5
	bne _080A7D30
	ldrb r0, [r1]
	cmp r0, #5
	beq _080A7D24
	cmp r0, #6
	beq _080A7D2A
	b _080A7D38
_080A7D24:
	movs r6, #0
	ldrh r4, [r1, #6]
	b _080A7D38
_080A7D2A:
	movs r6, #1
	ldrh r4, [r1, #6]
	b _080A7D38
_080A7D30:
	adds r1, #8
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _080A7D12
_080A7D38:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080A7D44
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080A7D44
sub_080A7D44: @ 0x080A7D44
	push {lr}
	cmp r1, #0
	beq _080A7D52
	movs r1, #0
	bl sub_08078AA8
	b _080A7D56
_080A7D52:
	bl TextboxNoOverlapFollow
_080A7D56:
	pop {pc}

	thumb_func_start sub_080A7D58
sub_080A7D58: @ 0x080A7D58
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #9]
	lsls r0, r0, #4
	ldr r1, _080A7D78 @ =gUnk_0813210C
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r0, _080A7D7C @ =0x0000FFFF
	cmp r1, r0
	bne _080A7D74
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #4
	ldr r1, [r2, #4]
	adds r2, r1, r0
_080A7D74:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_080A7D78: .4byte gUnk_0813210C
_080A7D7C: .4byte 0x0000FFFF

	thumb_func_start sub_080A7D80
sub_080A7D80: @ 0x080A7D80
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080A7E4A
	adds r0, r4, #0
	bl sub_080A7D58
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080A7E50
	cmp r0, #0
	bne _080A7DA6
	movs r0, #0
	b _080A7E4C
_080A7DA6:
	ldrb r1, [r4, #0x10]
	movs r0, #1
	adds r2, r1, #0
	orrs r2, r0
	strb r2, [r4, #0x10]
	ldrb r1, [r5, #0xa]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A7DC0
	movs r0, #0x80
	orrs r2, r0
	strb r2, [r4, #0x10]
_080A7DC0:
	ldrh r0, [r5, #8]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	strh r0, [r4, #0x12]
	ldrb r2, [r4, #0x18]
	lsls r0, r2, #0x1e
	cmp r0, #0
	bne _080A7DE0
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080A7DE0:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #0x1d
	adds r3, r4, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1a
	ldrb r2, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r5, #0xa]
	lsrs r1, r1, #6
	lsls r1, r1, #4
	ldrb r2, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080A7E14
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0x24]
_080A7E14:
	ldrb r0, [r5, #9]
	lsrs r0, r0, #4
	lsls r0, r0, #4
	movs r1, #7
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldrb r0, [r5, #0xf]
	subs r1, #1
	strb r0, [r1]
	ldrb r0, [r5, #0xe]
	adds r1, #4
	strb r0, [r1]
	ldrb r1, [r5, #0xb]
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r5, #4]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
_080A7E4A:
	movs r0, #1
_080A7E4C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A7E50
sub_080A7E50: @ 0x080A7E50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrh r2, [r5]
	lsls r1, r2, #0x10
	cmp r1, #0
	beq _080A7EA2
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080A7E78
	ldr r0, _080A7E74 @ =0x000003FF
	ands r0, r2
	adds r1, r4, #0
	adds r1, #0x60
	strh r0, [r1]
	b _080A7EA2
	.align 2, 0
_080A7E74: .4byte 0x000003FF
_080A7E78:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _080A7E92
	lsrs r1, r1, #0x14
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE008
	b _080A7E9A
_080A7E92:
	ldrh r1, [r5]
	adds r0, r4, #0
	bl LoadFixedGFX
_080A7E9A:
	cmp r0, #0
	bne _080A7EA2
	movs r0, #0
	b _080A7EAC
_080A7EA2:
	ldrh r1, [r5, #2]
	adds r0, r4, #0
	bl sub_0801D040
	movs r0, #1
_080A7EAC:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A7EB0
sub_080A7EB0: @ 0x080A7EB0
	push {lr}
	adds r3, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	ldr r2, _080A7ED8 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	ldrh r1, [r2, #0x1e]
	cmp r0, r1
	bhi _080A7ED2
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	ldrh r2, [r2, #0x20]
	cmp r0, r2
	bls _080A7EDC
_080A7ED2:
	movs r0, #1
	b _080A7EDE
	.align 2, 0
_080A7ED8: .4byte gRoomControls
_080A7EDC:
	movs r0, #0
_080A7EDE:
	pop {pc}

	thumb_func_start sub_080A7EE0
sub_080A7EE0: @ 0x080A7EE0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl GetEmptyEntity
	adds r4, r0, #0
	cmp r4, #0
	beq _080A7EFC
	movs r0, #4
	strb r0, [r4, #8]
	strb r5, [r4, #9]
	adds r0, r4, #0
	movs r1, #5
	bl sub_0805EA2C
_080A7EFC:
	adds r0, r4, #0
	pop {r4, r5, pc}

	thumb_func_start sub_080A7F00
sub_080A7F00: @ 0x080A7F00
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A7F26
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080A7F80
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080A7F26
	ldr r0, [r4, #0x50]
	ldrb r1, [r0, #0x14]
	adds r1, #0x18
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_080A7F26:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _080A7F34
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A7F38
_080A7F34:
	bl DeleteThisEntity
_080A7F38:
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A7F56
	ldr r1, [r4, #0x4c]
	ldr r0, _080A7F7C @ =gLinkEntity
	cmp r1, r0
	bne _080A7F56
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xd3
	strb r0, [r1]
_080A7F56:
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPositionAndSpriteOffset
	adds r0, r4, #0
	bl sub_080A7F9C
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080A7F7A
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_080A7F7A:
	pop {r4, pc}
	.align 2, 0
_080A7F7C: .4byte gLinkEntity

	thumb_func_start sub_080A7F80
sub_080A7F80: @ 0x080A7F80
	ldr r3, _080A7F98 @ =gUnk_081293B8
	ldr r2, [r0, #0x50]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	ldrb r2, [r2, #0xa]
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r0, #0x3f
	strb r1, [r0]
	bx lr
	.align 2, 0
_080A7F98: .4byte gUnk_081293B8

	thumb_func_start sub_080A7F9C
sub_080A7F9C: @ 0x080A7F9C
	push {lr}
	ldr r2, _080A7FB0 @ =gUnk_081293CC
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A7FB0: .4byte gUnk_081293CC

	thumb_func_start sub_080A7FB4
sub_080A7FB4: @ 0x080A7FB4
	ldr r1, [r0, #0x50]
	ldr r3, _080A7FD4 @ =gUnk_081293E0
	ldrb r2, [r1, #0x14]
	lsls r2, r2, #2
	adds r2, r2, r3
	adds r1, #0x5a
	ldrb r3, [r1]
	movs r1, #0xf
	ands r1, r3
	ldr r2, [r2]
	lsls r1, r1, #2
	adds r1, r1, r2
	subs r1, #4
	ldr r1, [r1]
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0
_080A7FD4: .4byte gUnk_081293E0

	thumb_func_start sub_080A7FD8
sub_080A7FD8: @ 0x080A7FD8
	ldr r1, [r0, #0x50]
	ldr r2, _080A7FE8 @ =gUnk_081293F0
	ldrb r1, [r1, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0
_080A7FE8: .4byte gUnk_081293F0

	thumb_func_start sub_080A7FEC
sub_080A7FEC: @ 0x080A7FEC
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x50]
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A8008
	ldr r0, _080A8004 @ =gUnk_08129410
	b _080A800A
	.align 2, 0
_080A8004: .4byte gUnk_08129410
_080A8008:
	ldr r0, _080A8018 @ =gUnk_08129400
_080A800A:
	ldrb r1, [r2, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r3, #0x48]
	pop {pc}
	.align 2, 0
_080A8018: .4byte gUnk_08129400

	thumb_func_start sub_080A801C
sub_080A801C: @ 0x080A801C
	ldr r1, [r0, #0x50]
	ldr r2, _080A802C @ =gUnk_08129420
	ldrb r1, [r1, #0x14]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0
_080A802C: .4byte gUnk_08129420

	thumb_func_start sub_080A8030
sub_080A8030: @ 0x080A8030
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A8048 @ =gUnk_081295D0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A8048: .4byte gUnk_081295D0

	thumb_func_start sub_080A804C
sub_080A804C: @ 0x080A804C
	push {lr}
	ldr r2, _080A8060 @ =gUnk_081295E4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A8060: .4byte gUnk_081295E4

	thumb_func_start sub_080A8064
sub_080A8064: @ 0x080A8064
	push {lr}
	adds r1, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A8078
	adds r0, r1, #0
	bl DeleteEntity
	b _080A8086
_080A8078:
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r1, #0x15]
	adds r0, r1, #0
	bl sub_080A8178
_080A8086:
	pop {pc}

	thumb_func_start sub_080A8088
sub_080A8088: @ 0x080A8088
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x30
	strb r1, [r0, #0xe]
	movs r1, #0xa0
	lsls r1, r1, #8
	str r1, [r0, #0x20]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}

	thumb_func_start sub_080A80A0
sub_080A80A0: @ 0x080A80A0
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	beq _080A80DC
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A80C4
	adds r0, r4, #0
	bl DeleteEntity
	b _080A80F0
_080A80C4:
	adds r0, r4, #0
	bl sub_08016AD2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A80F0
	movs r0, #3
	strb r0, [r4, #0xc]
	b _080A80F0
_080A80DC:
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	adds r0, r4, #0
	bl sub_080A8178
	adds r0, r4, #0
	bl sub_08016AD2
_080A80F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A80F4
sub_080A80F4: @ 0x080A80F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl GetNextFrame
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A8116
	adds r0, r4, #0
	bl DeleteEntity
_080A8116:
	pop {r4, pc}

	thumb_func_start sub_080A8118
sub_080A8118: @ 0x080A8118
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	beq _080A813A
	cmp r0, #1
	beq _080A8142
	b _080A815A
_080A813A:
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8176
_080A8142:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0800442E
	cmp r0, #0
	bne _080A8176
_080A815A:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A8176
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080A8176:
	pop {r4, pc}

	thumb_func_start sub_080A8178
sub_080A8178: @ 0x080A8178
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x40
	strh r1, [r0, #0x24]
	movs r1, #0xa0
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	bx lr

	thumb_func_start sub_080A8190
sub_080A8190: @ 0x080A8190
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A81A8 @ =gUnk_0812960C
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A81A8: .4byte gUnk_0812960C

	thumb_func_start sub_080A81AC
sub_080A81AC: @ 0x080A81AC
	push {lr}
	ldr r2, _080A81C0 @ =gUnk_08129620
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A81C0: .4byte gUnk_08129620

	thumb_func_start sub_080A81C4
sub_080A81C4: @ 0x080A81C4
	push {lr}
	adds r1, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A81D8
	adds r0, r1, #0
	bl DeleteEntity
	b _080A81DE
_080A81D8:
	adds r0, r1, #0
	bl sub_080A82D8
_080A81DE:
	pop {pc}

	thumb_func_start sub_080A81E0
sub_080A81E0: @ 0x080A81E0
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x3c
	strb r1, [r0, #0xe]
	ldr r1, _080A81F8 @ =0x0000FFFE
	strh r1, [r0, #0x36]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
_080A81F8: .4byte 0x0000FFFE

	thumb_func_start sub_080A81FC
sub_080A81FC: @ 0x080A81FC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	bne _080A8240
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8222
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8246
_080A8222:
	adds r0, r4, #0
	bl sub_08016AD2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A8246
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	b _080A8246
_080A8240:
	adds r0, r4, #0
	bl sub_080A82D8
_080A8246:
	pop {r4, pc}

	thumb_func_start sub_080A8248
sub_080A8248: @ 0x080A8248
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A827A
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xe0
	strh r0, [r4, #0x24]
	movs r0, #0xe0
	lsls r0, r0, #8
	str r0, [r4, #0x20]
_080A827A:
	pop {r4, pc}

	thumb_func_start sub_080A827C
sub_080A827C: @ 0x080A827C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl GetNextFrame
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	bne _080A82B2
	adds r0, r4, #0
	bl DeleteEntity
_080A82B2:
	pop {r4, pc}

	thumb_func_start sub_080A82B4
sub_080A82B4: @ 0x080A82B4
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A82D6
	adds r0, r4, #0
	bl DeleteEntity
_080A82D6:
	pop {r4, pc}

	thumb_func_start sub_080A82D8
sub_080A82D8: @ 0x080A82D8
	movs r1, #4
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0, #0x20]
	ldrb r1, [r0, #0x15]
	movs r2, #0x10
	eors r1, r2
	strb r1, [r0, #0x15]
	movs r1, #0x80
	strh r1, [r0, #0x24]
	bx lr

	thumb_func_start sub_080A82F8
sub_080A82F8: @ 0x080A82F8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A8310 @ =gUnk_08129650
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A8310: .4byte gUnk_08129650

	thumb_func_start sub_080A8314
sub_080A8314: @ 0x080A8314
	push {lr}
	ldr r2, _080A8328 @ =gUnk_08129664
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A8328: .4byte gUnk_08129664

	thumb_func_start sub_080A832C
sub_080A832C: @ 0x080A832C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x41
	ldrb r0, [r2]
	cmp r0, #0x80
	bne _080A8358
	adds r1, r3, #0
	adds r1, #0x3d
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #5
	movs r0, #0xc
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r3, #0x50]
	ldrb r1, [r2]
	adds r0, #0x41
	strb r1, [r0]
_080A8358:
	adds r0, r3, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A836A
	ldr r0, [r3, #0x50]
	b _080A836E
_080A836A:
	ldr r0, [r3, #0x50]
	rsbs r1, r1, #0
_080A836E:
	adds r0, #0x3d
	strb r1, [r0]
	ldr r0, [r3, #0x50]
	movs r1, #0x42
	adds r1, r1, r3
	mov ip, r1
	ldrb r1, [r1]
	adds r0, #0x42
	strb r1, [r0]
	ldr r0, [r3, #0x50]
	adds r1, r3, #0
	adds r1, #0x46
	ldrh r1, [r1]
	adds r0, #0x46
	movs r2, #0
	strh r1, [r0]
	ldr r0, [r3, #0x50]
	adds r1, r3, #0
	adds r1, #0x3e
	ldrb r1, [r1]
	adds r0, #0x3e
	strb r1, [r0]
	mov r0, ip
	strb r2, [r0]
	pop {pc}

	thumb_func_start sub_080A83A0
sub_080A83A0: @ 0x080A83A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806FBD8
	cmp r0, #0
	beq _080A83B0
	movs r0, #1
	strb r0, [r4, #0xc]
_080A83B0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A83B4
sub_080A83B4: @ 0x080A83B4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080A83C2
	bl DeleteThisEntity
_080A83C2:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A83CC
	bl DeleteThisEntity
_080A83CC:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x18
	ldr r1, _080A8424 @ =gUnk_0812966C
	adds r2, r0, r1
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r0, r5, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0x40
	bne _080A83F4
	ldr r1, [r4, #0x48]
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r1]
_080A83F4:
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1, #1]
	adds r2, #1
	ldr r1, [r4, #0x48]
	ldrb r0, [r2]
	strb r0, [r1, #6]
	ldr r1, [r4, #0x48]
	ldrb r0, [r2, #1]
	strb r0, [r1, #7]
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A8428
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8438
	movs r0, #0x7f
	ands r0, r1
	b _080A8436
	.align 2, 0
_080A8424: .4byte gUnk_0812966C
_080A8428:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A8438
	movs r0, #0x80
	orrs r0, r1
_080A8436:
	strb r0, [r4, #0x10]
_080A8438:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A843C
sub_080A843C: @ 0x080A843C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A8454 @ =gUnk_081296F0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A8454: .4byte gUnk_081296F0

	thumb_func_start sub_080A8458
sub_080A8458: @ 0x080A8458
	push {lr}
	ldr r2, _080A846C @ =gUnk_08129704
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A846C: .4byte gUnk_08129704

	thumb_func_start sub_080A8470
sub_080A8470: @ 0x080A8470
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x41
	ldrb r0, [r2]
	cmp r0, #0x80
	bne _080A8496
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x68
	bne _080A848E
	movs r0, #0x86
	bl sub_08004488
_080A848E:
	adds r0, r4, #0
	bl DeleteEntity
	b _080A84C6
_080A8496:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r2]
	adds r0, #0x7e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A84B8
	adds r0, r4, #0
	bl sub_080A8680
	b _080A84C6
_080A84B8:
	adds r0, r4, #0
	movs r1, #0x19
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080A86A0
_080A84C6:
	pop {r4, pc}

	thumb_func_start sub_080A84C8
sub_080A84C8: @ 0x080A84C8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldrh r0, [r4, #0x36]
	subs r0, #4
	strh r0, [r4, #0x36]
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	bne _080A84F0
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x68
	strb r0, [r1]
_080A84F0:
	ldr r0, _080A8500 @ =0x0000018D
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #0x18
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0
_080A8500: .4byte 0x0000018D

	thumb_func_start sub_080A8504
sub_080A8504: @ 0x080A8504
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	beq _080A853C
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8524
	bl DeleteThisEntity
_080A8524:
	adds r0, r4, #0
	bl sub_08016AD2
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A8558
	movs r0, #4
	strb r0, [r4, #0xc]
	b _080A8558
_080A853C:
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	adds r0, r4, #0
	bl sub_08016AD2
	adds r0, r4, #0
	movs r1, #0x19
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080A86A0
_080A8558:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080A85B6
	ldr r5, [r4, #0x50]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _080A85B6
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080177A0
	cmp r0, #0
	beq _080A85B6
	adds r0, r4, #0
	adds r0, #0x3d
	movs r3, #0
	movs r2, #0x10
	strb r2, [r0]
	ldrb r0, [r4, #0x15]
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r1, #3
	movs r0, #0x80
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0xc
	strb r1, [r0]
	adds r0, #4
	strh r3, [r0]
	adds r0, r5, #0
	adds r0, #0x3d
	strb r2, [r0]
	ldrb r0, [r4, #0x15]
	adds r2, r5, #0
	adds r2, #0x3e
	strb r0, [r2]
	adds r2, #3
	movs r0, #0xc2
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x42
	strb r1, [r0]
	adds r0, #4
	strh r3, [r0]
_080A85B6:
	pop {r4, r5, pc}

	thumb_func_start sub_080A85B8
sub_080A85B8: @ 0x080A85B8
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	beq _080A85F2
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A85D8
	bl DeleteThisEntity
_080A85D8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A860E
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _080A860E
_080A85F2:
	ldrh r1, [r4, #0x2a]
	adds r0, r4, #0
	bl sub_0800417E
	adds r0, r4, #0
	bl sub_08016AD2
	adds r0, r4, #0
	movs r1, #0x19
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080A86A0
_080A860E:
	pop {r4, pc}

	thumb_func_start sub_080A8610
sub_080A8610: @ 0x080A8610
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8628
	bl DeleteThisEntity
_080A8628:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A862C
sub_080A862C: @ 0x080A862C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_080044EC
	cmp r0, #0
	beq _080A864E
	cmp r0, #1
	beq _080A8654
	b _080A8662
_080A864E:
	bl DeleteThisEntity
	b _080A867E
_080A8654:
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
_080A8662:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A867E
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
_080A867E:
	pop {r4, pc}

	thumb_func_start sub_080A8680
sub_080A8680: @ 0x080A8680
	push {lr}
	movs r1, #2
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #3
	strb r1, [r0, #0xe]
	movs r1, #1
	strb r1, [r0, #0xf]
	movs r0, #0x8c
	lsls r0, r0, #1
	bl sub_08004488
	pop {pc}

	thumb_func_start sub_080A86A0
sub_080A86A0: @ 0x080A86A0
	push {lr}
	movs r3, #0
	movs r1, #3
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	strh r3, [r0, #0x24]
	movs r0, #0xc7
	lsls r0, r0, #1
	bl sub_08004488
	pop {pc}

	thumb_func_start sub_080A86BC
sub_080A86BC: @ 0x080A86BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A86D4 @ =gUnk_08129718
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A86D4: .4byte gUnk_08129718

	thumb_func_start sub_080A86D8
sub_080A86D8: @ 0x080A86D8
	push {lr}
	ldr r2, _080A86EC @ =gUnk_0812972C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A86EC: .4byte gUnk_0812972C

	thumb_func_start sub_080A86F0
sub_080A86F0: @ 0x080A86F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x50]
	cmp r1, #0
	bne _080A8700
	bl DeleteThisEntity
	b _080A876E
_080A8700:
	adds r5, r1, #0
	adds r5, #0x83
	ldrb r1, [r5]
	movs r3, #0x3f
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #3
	bne _080A8768
	ldr r0, _080A875C @ =gLinkState
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _080A876E
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _080A8760 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	ldr r1, _080A8764 @ =gLinkEntity
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	cmp r0, #0
	bne _080A876E
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A876E
	ldrb r1, [r5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5]
	bl DeleteThisEntity
	b _080A876E
	.align 2, 0
_080A875C: .4byte gLinkState
_080A8760: .4byte gRoomControls
_080A8764: .4byte gLinkEntity
_080A8768:
	adds r0, r4, #0
	bl DeleteEntity
_080A876E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080A8770
sub_080A8770: @ 0x080A8770
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r3, r0, #0
	adds r3, #0x3c
	ldrb r2, [r3]
	movs r1, #0x10
	orrs r1, r2
	strb r1, [r3]
	ldr r1, _080A8788 @ =gUnk_08129734
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0
_080A8788: .4byte gUnk_08129734

	thumb_func_start sub_080A878C
sub_080A878C: @ 0x080A878C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	cmp r4, #0
	bne _080A879A
	bl DeleteThisEntity
_080A879A:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080A87A4
	bl DeleteThisEntity
_080A87A4:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #3
	beq _080A87B6
	bl DeleteThisEntity
_080A87B6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldrh r0, [r5, #0x36]
	adds r0, #2
	strh r0, [r5, #0x36]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A87C8
sub_080A87C8: @ 0x080A87C8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A87E0 @ =gUnk_08129740
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A87E0: .4byte gUnk_08129740

	thumb_func_start sub_080A87E4
sub_080A87E4: @ 0x080A87E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _080A8804
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080A87F8
	bl DeleteThisEntity
_080A87F8:
	ldr r0, [r4, #0x54]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A8804
	bl DeleteThisEntity
_080A8804:
	ldr r0, _080A8818 @ =gUnk_08129754
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8818: .4byte gUnk_08129754

	thumb_func_start sub_080A881C
sub_080A881C: @ 0x080A881C
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x46
	movs r0, #0
	strh r0, [r2]
	ldrb r2, [r1, #0xa]
	cmp r2, #0
	bne _080A8854
	ldr r0, [r1, #0x50]
	str r2, [r0, #0x54]
	adds r0, r1, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A884A
	ldr r0, _080A8850 @ =gLinkState
	movs r1, #0xf0
	strb r1, [r0, #0xf]
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
_080A884A:
	bl DeleteThisEntity
	b _080A8866
	.align 2, 0
_080A8850: .4byte gLinkState
_080A8854:
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bhi _080A8866
	movs r0, #2
	strb r0, [r1, #0xc]
	ldr r0, [r1, #0x50]
	adds r0, #0x83
	movs r1, #0xc0
	strb r1, [r0]
_080A8866:
	pop {pc}

	thumb_func_start sub_080A8868
sub_080A8868: @ 0x080A8868
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	movs r0, #1
	strb r0, [r3, #0xc]
	strb r4, [r3, #0xd]
	ldrb r1, [r3, #0x18]
	subs r0, #0x32
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #0x18]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r3, #0x20]
	ldr r0, _080A88A4 @ =gUnk_08129764
	str r0, [r3, #0x48]
	adds r2, r3, #0
	adds r2, #0x3c
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	ldrb r0, [r3, #0xa]
	cmp r0, #1
	beq _080A88B8
	cmp r0, #1
	bgt _080A88A8
	cmp r0, #0
	beq _080A88AE
	b _080A88C6
	.align 2, 0
_080A88A4: .4byte gUnk_08129764
_080A88A8:
	cmp r0, #2
	beq _080A88BE
	b _080A88C6
_080A88AE:
	adds r0, r3, #0
	movs r1, #0
	bl InitializeAnimation
	b _080A88C6
_080A88B8:
	strb r4, [r3, #0xe]
	strb r4, [r3, #0xf]
	b _080A88C6
_080A88BE:
	adds r0, r3, #0
	movs r1, #5
	bl InitializeAnimation
_080A88C6:
	pop {r4, pc}

	thumb_func_start sub_080A88C8
sub_080A88C8: @ 0x080A88C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x50]
	cmp r6, #0
	bne _080A88D6
	movs r0, #2
	strb r0, [r4, #0xc]
_080A88D6:
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _080A88E0
	movs r0, #2
	strb r0, [r4, #0xc]
_080A88E0:
	ldr r3, _080A88FC @ =0xFFFF0000
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	beq _080A890E
	cmp r5, #1
	bgt _080A8900
	cmp r5, #0
	beq _080A8906
	b _080A8982
	.align 2, 0
_080A88FC: .4byte 0xFFFF0000
_080A8900:
	cmp r5, #2
	beq _080A8962
	b _080A8982
_080A8906:
	ldrh r0, [r4, #0x36]
	adds r0, #0x10
	strh r0, [r4, #0x36]
	b _080A8982
_080A890E:
	ldrh r0, [r4, #0x36]
	adds r0, #0xe
	strh r0, [r4, #0x36]
	ldr r0, [r4, #0x54]
	bl sub_08078954
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl CopyPosition
	ldrb r0, [r4, #0xe]
	adds r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _080A8982
	ldr r2, [r4, #0x54]
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	bne _080A8982
	movs r3, #2
	ands r1, r3
	cmp r1, #0
	beq _080A8946
	ldrb r0, [r2, #0xf]
	adds r0, #1
	strb r0, [r2, #0xf]
_080A8946:
	ldr r0, [r4, #0x54]
	ldrb r1, [r0, #0xf]
	cmp r1, #0x1f
	bhi _080A8982
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _080A8982
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #0xc0
	strb r0, [r1]
	strb r3, [r4, #0xc]
	b _080A8982
_080A8962:
	ldrh r0, [r4, #0x36]
	adds r0, #0xe
	strh r0, [r4, #0x36]
	ldr r1, _080A8984 @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #0xe
	movs r3, #0xe
	bl sub_080041A0
	cmp r0, #0
	beq _080A8982
	strb r5, [r4, #0xc]
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #0xc0
	strb r0, [r1]
_080A8982:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A8984: .4byte gLinkEntity

	thumb_func_start sub_080A8988
sub_080A8988: @ 0x080A8988
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _080A89B4
	ldr r4, [r5, #0x54]
	cmp r4, #0
	bne _080A899C
	bl DeleteThisEntity
_080A899C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080A89A6
	bl DeleteThisEntity
_080A89A6:
	adds r0, r4, #0
	bl sub_08078954
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
_080A89B4:
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_080044EC
	cmp r0, #1
	bne _080A8A44
	adds r0, r5, #0
	bl sub_080043E8
	cmp r0, #0
	beq _080A8A00
	cmp r0, #2
	beq _080A89E0
	cmp r0, #2
	bhi _080A89DA
	cmp r0, #1
	beq _080A89E6
	b _080A89FC
_080A89DA:
	cmp r0, #3
	beq _080A89F2
	b _080A89FC
_080A89E0:
	adds r0, r5, #0
	movs r1, #0xb
	b _080A89EA
_080A89E6:
	adds r0, r5, #0
	movs r1, #0
_080A89EA:
	movs r2, #0
	bl CreateFx
	b _080A89FC
_080A89F2:
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #0
	bl CreateFx
_080A89FC:
	bl DeleteThisEntity
_080A8A00:
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080A8A3E
	cmp r0, #1
	bgt _080A8A10
	cmp r0, #0
	beq _080A8A16
	b _080A8A44
_080A8A10:
	cmp r0, #2
	beq _080A8A2A
	b _080A8A44
_080A8A16:
	adds r0, r5, #0
	movs r1, #1
	bl InitializeAnimation
	movs r0, #0x84
	bl sub_08004488
	movs r0, #3
	strb r0, [r5, #0xc]
	b _080A8A44
_080A8A2A:
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0x80
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _080A8A3E
	movs r0, #0
	str r0, [r4, #0x50]
_080A8A3E:
	adds r0, r5, #0
	bl DeleteEntity
_080A8A44:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A8A48
sub_080A8A48: @ 0x080A8A48
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8A64
	adds r0, r4, #0
	bl DeleteEntity
_080A8A64:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8A68
sub_080A8A68: @ 0x080A8A68
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFunction
	cmp r0, #0
	beq _080A8A78
	bl DeleteThisEntity
_080A8A78:
	ldr r0, _080A8A8C @ =gUnk_0812979C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8A8C: .4byte gUnk_0812979C

	thumb_func_start sub_080A8A90
sub_080A8A90: @ 0x080A8A90
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080A8AAA
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	adds r0, r2, #0
	bl InitializeAnimation
	b _080A8AC2
_080A8AAA:
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	movs r0, #4
	orrs r1, r0
	adds r0, r2, #0
	bl InitializeAnimation
	ldr r0, _080A8AC4 @ =0x0000015F
	bl sub_08004488
_080A8AC2:
	pop {pc}
	.align 2, 0
_080A8AC4: .4byte 0x0000015F

	thumb_func_start sub_080A8AC8
sub_080A8AC8: @ 0x080A8AC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080A8AD8
	bl DeleteEntity
	b _080A8B34
_080A8AD8:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A8AE6
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8B34
_080A8AE6:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080A8B2E
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r0, [r5, #0x15]
	adds r2, r0, #4
	movs r0, #0x18
	ands r2, r0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080A8B1A
	movs r0, #0
	strb r2, [r4, #0x15]
	lsrs r1, r2, #2
	strb r1, [r4, #0x14]
	strb r0, [r4, #0xe]
	lsrs r1, r2, #3
	adds r0, r4, #0
	bl InitializeAnimation
	b _080A8B2E
_080A8B1A:
	lsrs r0, r2, #2
	ldrb r1, [r4, #0x14]
	cmp r0, r1
	beq _080A8B2E
	strb r2, [r4, #0x15]
	strb r0, [r4, #0x14]
	lsrs r1, r2, #3
	adds r0, r4, #0
	bl InitializeAnimation
_080A8B2E:
	adds r0, r4, #0
	bl GetNextFrame
_080A8B34:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A8B38
sub_080A8B38: @ 0x080A8B38
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	adds r2, r0, #0
	cmp r2, #0
	beq _080A8B66
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8B5E
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8B74
_080A8B5E:
	adds r0, r4, #0
	bl sub_08016AD2
	b _080A8B74
_080A8B66:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	strh r2, [r4, #0x24]
_080A8B74:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8B78
sub_080A8B78: @ 0x080A8B78
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8B94
	adds r0, r4, #0
	bl DeleteEntity
_080A8B94:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8B98
sub_080A8B98: @ 0x080A8B98
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFunction
	cmp r0, #0
	beq _080A8BA8
	bl DeleteThisEntity
_080A8BA8:
	ldr r0, _080A8BBC @ =gUnk_0812982C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8BBC: .4byte gUnk_0812982C

	thumb_func_start sub_080A8BC0
sub_080A8BC0: @ 0x080A8BC0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080A8BDA
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	adds r0, r2, #0
	bl InitializeAnimation
	b _080A8BF4
_080A8BDA:
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	movs r0, #4
	orrs r1, r0
	adds r0, r2, #0
	bl InitializeAnimation
	movs r0, #0xaf
	lsls r0, r0, #1
	bl sub_08004488
_080A8BF4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A8BF8
sub_080A8BF8: @ 0x080A8BF8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080A8C08
	bl DeleteEntity
	b _080A8C48
_080A8C08:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A8C16
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8C48
_080A8C16:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080A8C42
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080A8C42
	ldrb r0, [r5, #0x15]
	movs r1, #0x18
	ands r1, r0
	movs r0, #0
	strb r1, [r4, #0x15]
	strb r0, [r4, #0xe]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl InitializeAnimation
_080A8C42:
	adds r0, r4, #0
	bl GetNextFrame
_080A8C48:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A8C4C
sub_080A8C4C: @ 0x080A8C4C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	adds r2, r0, #0
	cmp r2, #0
	beq _080A8C7A
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8C72
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8C88
_080A8C72:
	adds r0, r4, #0
	bl sub_08016AD2
	b _080A8C88
_080A8C7A:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	strh r2, [r4, #0x24]
_080A8C88:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8C8C
sub_080A8C8C: @ 0x080A8C8C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8CA8
	adds r0, r4, #0
	bl DeleteEntity
_080A8CA8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8CAC
sub_080A8CAC: @ 0x080A8CAC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFunction
	cmp r0, #0
	beq _080A8CBC
	bl DeleteThisEntity
_080A8CBC:
	ldr r0, _080A8CD0 @ =gUnk_081298B8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8CD0: .4byte gUnk_081298B8

	thumb_func_start sub_080A8CD4
sub_080A8CD4: @ 0x080A8CD4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080A8CEE
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	adds r0, r2, #0
	bl InitializeAnimation
	b _080A8D08
_080A8CEE:
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x15]
	lsrs r1, r1, #3
	movs r0, #4
	orrs r1, r0
	adds r0, r2, #0
	bl InitializeAnimation
	movs r0, #0xb0
	lsls r0, r0, #1
	bl sub_08004488
_080A8D08:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A8D0C
sub_080A8D0C: @ 0x080A8D0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	bne _080A8D1C
	bl DeleteEntity
	b _080A8D5C
_080A8D1C:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A8D2A
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8D5C
_080A8D2A:
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _080A8D56
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080A8D56
	ldrb r0, [r5, #0x15]
	movs r1, #0x18
	ands r1, r0
	movs r0, #0
	strb r1, [r4, #0x15]
	strb r0, [r4, #0xe]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl InitializeAnimation
_080A8D56:
	adds r0, r4, #0
	bl GetNextFrame
_080A8D5C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080A8D60
sub_080A8D60: @ 0x080A8D60
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	adds r2, r0, #0
	cmp r2, #0
	beq _080A8D8E
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A8D86
	adds r0, r4, #0
	bl DeleteEntity
	b _080A8D9C
_080A8D86:
	adds r0, r4, #0
	bl sub_08016AD2
	b _080A8D9C
_080A8D8E:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	strh r2, [r4, #0x24]
_080A8D9C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8DA0
sub_080A8DA0: @ 0x080A8DA0
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8DBC
	adds r0, r4, #0
	bl DeleteEntity
_080A8DBC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A8DC0
sub_080A8DC0: @ 0x080A8DC0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A8DD8 @ =gUnk_08129954
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A8DD8: .4byte gUnk_08129954

	thumb_func_start sub_080A8DDC
sub_080A8DDC: @ 0x080A8DDC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	beq _080A8E12
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A8E12
	movs r2, #0x7f
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0x1e
	beq _080A8E12
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0x53
	bl InitializeAnimation
_080A8E12:
	ldr r0, _080A8E24 @ =gUnk_08129968
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A8E24: .4byte gUnk_08129968

	thumb_func_start sub_080A8E28
sub_080A8E28: @ 0x080A8E28
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _080A8E80 @ =0xFFFF0000
	str r0, [r5, #0x20]
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	beq _080A8E6E
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl CopyPosition
	movs r1, #0x80
	lsls r1, r1, #5
	ldrb r2, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F5BC
	ldr r0, [r5, #0x50]
	ldr r2, [r5, #0x54]
	ldr r1, [r0, #0x30]
	ldr r0, [r2, #0x30]
	subs r1, r1, r0
	str r1, [r5, #0x34]
	ldr r0, [r5, #0x30]
	subs r0, r0, r1
	str r0, [r5, #0x30]
	adds r0, r5, #0
	movs r1, #0x51
	bl InitializeAnimation
	ldr r0, _080A8E84 @ =0x000001B5
	bl PlaySFX
_080A8E6E:
	ldrb r4, [r5, #0xa]
	cmp r4, #2
	beq _080A8EF2
	cmp r4, #2
	ble _080A8E88
	cmp r4, #3
	beq _080A8F02
	b _080A8FAE
	.align 2, 0
_080A8E80: .4byte 0xFFFF0000
_080A8E84: .4byte 0x000001B5
_080A8E88:
	cmp r4, #0
	bge _080A8E8E
	b _080A8FAE
_080A8E8E:
	ldr r0, _080A8EC0 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r5, #0
	bl sub_080041DC
	adds r4, r0, #0
	ldrb r6, [r5, #0xa]
	cmp r6, #1
	bne _080A8ECE
	bl Random
	adds r2, r0, #0
	ldr r0, _080A8EC4 @ =0x000001FF
	ands r2, r0
	ldr r0, _080A8EC8 @ =gUnk_030010A0
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	bne _080A8ECC
	adds r4, r4, r2
	b _080A8ECE
	.align 2, 0
_080A8EC0: .4byte gLinkEntity
_080A8EC4: .4byte 0x000001FF
_080A8EC8: .4byte gUnk_030010A0
_080A8ECC:
	subs r4, r4, r2
_080A8ECE:
	cmp r4, #0x1f
	bgt _080A8ED6
	movs r4, #0x20
	b _080A8EE0
_080A8ED6:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080A8EE0
	adds r4, r0, #0
_080A8EE0:
	lsls r1, r4, #8
	ldr r0, [r5, #0x34]
	bl __divsi3
	lsls r0, r0, #0xd
	str r0, [r5, #0x20]
	movs r0, #0x1e
	strb r0, [r5, #0xf]
	b _080A8FAE
_080A8EF2:
	ldr r0, [r5, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #9
	bl __divsi3
	lsls r0, r0, #0xc
	str r0, [r5, #0x20]
	b _080A8FAE
_080A8F02:
	ldr r0, _080A8F64 @ =0xFF600000
	str r0, [r5, #0x34]
	bl Random
	ands r4, r0
	lsls r2, r4, #1
	ldr r1, _080A8F68 @ =gUnk_08129978
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r5, #0x2e]
	adds r0, r0, r3
	strh r0, [r5, #0x2e]
	adds r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #0x32]
	adds r0, r0, r1
	strh r0, [r5, #0x32]
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _080A8F74
	bl Random
	ldr r2, _080A8F6C @ =gUnk_08129988
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r5, #0x2e]
	adds r0, r0, r2
	strh r0, [r5, #0x2e]
	bl Random
	ldr r2, _080A8F70 @ =gUnk_08129980
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r3, [r5, #0x32]
	adds r0, r0, r3
	b _080A8F9E
	.align 2, 0
_080A8F64: .4byte 0xFF600000
_080A8F68: .4byte gUnk_08129978
_080A8F6C: .4byte gUnk_08129988
_080A8F70: .4byte gUnk_08129980
_080A8F74:
	bl Random
	ldr r2, _080A8FB0 @ =gUnk_08129980
	movs r1, #7
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	bl Random
	ldr r2, _080A8FB4 @ =gUnk_08129988
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r5, #0x32]
	adds r0, r0, r2
_080A8F9E:
	strh r0, [r5, #0x32]
	adds r0, r5, #0
	bl sub_08004168
	adds r0, r5, #0
	movs r1, #0
	bl InitializeAnimation
_080A8FAE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A8FB0: .4byte gUnk_08129980
_080A8FB4: .4byte gUnk_08129988

	thumb_func_start sub_080A8FB8
sub_080A8FB8: @ 0x080A8FB8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080A8FE8
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A9054
	adds r0, r4, #0
	movs r1, #7
	bl sub_08008790
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
	b _080A9054
_080A8FE8:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _080A901C
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A901C
	movs r0, #0x1e
	strb r0, [r4, #0xf]
	ldr r1, _080A9048 @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_080A901C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A9054
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080A90D8
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080A904C
	movs r0, #0xf
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x54
	bl InitializeAnimation
	b _080A9054
	.align 2, 0
_080A9048: .4byte gLinkEntity
_080A904C:
	adds r0, r4, #0
	movs r1, #0x52
	bl InitializeAnimation
_080A9054:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9058
sub_080A9058: @ 0x080A9058
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _080A9098
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A908A
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x55
	bl InitializeAnimation
	b _080A90BA
_080A908A:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080A90D8
	b _080A90BA
_080A9098:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A90BA
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0x53
	bl InitializeAnimation
_080A90BA:
	pop {r4, pc}

	thumb_func_start sub_080A90BC
sub_080A90BC: @ 0x080A90BC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A90D4
	bl DeleteThisEntity
_080A90D4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A90D8
sub_080A90D8: @ 0x080A90D8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x74
	adds r0, r0, r5
	mov ip, r0
	ldrh r3, [r0]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r7, _080A9154 @ =gRoomControls
	ldrh r1, [r7, #6]
	subs r0, r0, r1
	asrs r4, r0, #4
	movs r6, #0x3f
	adds r2, r4, #0
	ands r2, r6
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r7, #8]
	subs r0, r0, r1
	asrs r1, r0, #4
	adds r0, r1, #0
	ands r0, r6
	lsls r0, r0, #6
	orrs r2, r0
	cmp r3, r2
	beq _080A9152
	movs r0, #0x3f
	ands r4, r0
	ands r1, r0
	lsls r0, r1, #6
	orrs r4, r0
	mov r2, ip
	strh r4, [r2]
	adds r0, r5, #0
	bl GetTileTypeByEntity
	cmp r0, #0x13
	beq _080A9128
	cmp r0, #0x34
	bne _080A9152
_080A9128:
	movs r0, #0xd3
	lsls r0, r0, #2
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	ldrh r2, [r7, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	ldrh r3, [r7, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r6
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
_080A9152:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A9154: .4byte gRoomControls

	thumb_func_start sub_080A9158
sub_080A9158: @ 0x080A9158
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080A9166
	movs r0, #1
	strb r0, [r5, #0xc]
_080A9166:
	ldr r4, [r5, #0x50]
	cmp r4, #0
	beq _080A917C
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A917C
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080A91A4
_080A917C:
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A9198
	ldr r1, [r5, #0x4c]
	ldr r0, _080A91A0 @ =gLinkEntity
	cmp r1, r0
	bne _080A9198
	adds r0, r5, #0
	bl sub_0803C0AC
_080A9198:
	adds r0, r5, #0
	bl DeleteEntity
	b _080A91D8
	.align 2, 0
_080A91A0: .4byte gLinkEntity
_080A91A4:
	ldr r1, _080A91DC @ =gUnk_08129998
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #0x48]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080A91D8
	adds r1, r5, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080A91D8
	movs r0, #0xff
	strb r0, [r1]
_080A91D8:
	pop {r4, r5, pc}
	.align 2, 0
_080A91DC: .4byte gUnk_08129998

	thumb_func_start sub_080A91E0
sub_080A91E0: @ 0x080A91E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080A9288
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A9204
	movs r0, #1
	strb r0, [r4, #0xc]
	bl Random
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_080A9204:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A921C
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080A9218
	movs r0, #0xff
	strb r0, [r1, #0xa]
_080A9218:
	bl DeleteThisEntity
_080A921C:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080A9230
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080A92F6
_080A9230:
	adds r0, r4, #0
	bl sub_080644C8
	cmp r0, #0
	beq _080A92F6
	ldrb r1, [r4, #0xe]
	adds r0, r1, #1
	strb r0, [r4, #0xe]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080A92F6
	movs r0, #0xc
	bl sub_080A7EE0
	adds r5, r0, #0
	cmp r5, #0
	beq _080A92F6
	movs r0, #1
	strb r0, [r5, #0xa]
	ldr r0, [r4, #0x50]
	adds r0, #0x3e
	ldrb r1, [r0]
	ldr r3, _080A9284 @ =gUnk_081299C8
	ldrb r0, [r4, #0xe]
	lsrs r0, r0, #2
	movs r2, #7
	ands r0, r2
	adds r0, r0, r3
	lsls r1, r1, #3
	ldrb r0, [r0]
	adds r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #0x15]
	ldr r0, [r4, #0x50]
	str r0, [r5, #0x50]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	b _080A92F6
	.align 2, 0
_080A9284: .4byte gUnk_081299C8
_080A9288:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A92B0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x12
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x16
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #0x24]
	ldr r0, _080A92F8 @ =gUnk_080FD1E4
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_080A92B0:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A92C8
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _080A92C4
	movs r0, #0xff
	strb r0, [r1, #0xa]
_080A92C4:
	bl DeleteThisEntity
_080A92C8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A92D8
	bl DeleteThisEntity
_080A92D8:
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, _080A92FC @ =gUnk_02027EB4
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	movs r3, #2
	bl sub_080AE4CC
	cmp r0, #0
	beq _080A92F6
	bl DeleteThisEntity
_080A92F6:
	pop {r4, r5, pc}
	.align 2, 0
_080A92F8: .4byte gUnk_080FD1E4
_080A92FC: .4byte gUnk_02027EB4

	thumb_func_start sub_080A9300
sub_080A9300: @ 0x080A9300
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A9318 @ =gUnk_081299D0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9318: .4byte gUnk_081299D0

	thumb_func_start sub_080A931C
sub_080A931C: @ 0x080A931C
	push {lr}
	ldr r2, _080A9330 @ =gUnk_081299E4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9330: .4byte gUnk_081299E4

	thumb_func_start sub_080A9334
sub_080A9334: @ 0x080A9334
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A936C
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	beq _080A9368
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	adds r0, r4, #0
	bl sub_080A9488
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	b _080A936C
_080A9368:
	bl DeleteThisEntity
_080A936C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9370
sub_080A9370: @ 0x080A9370
	push {r4, lr}
	movs r4, #0
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0x6a
	strb r1, [r0, #0xe]
	strb r4, [r0, #0xf]
	movs r1, #0xa0
	lsls r1, r1, #4
	str r1, [r0, #0x20]
	ldrb r1, [r0, #0xa]
	bl sub_080A94C0
	pop {r4, pc}

	thumb_func_start sub_080A93A0
sub_080A93A0: @ 0x080A93A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	cmp r5, #0
	beq _080A93B0
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080A93B4
_080A93B0:
	bl DeleteThisEntity
_080A93B4:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080A93BE
	bl DeleteThisEntity
_080A93BE:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _080A93DA
	movs r2, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	str r2, [r5, #0x54]
	movs r0, #0xfc
	bl PlaySFX
_080A93DA:
	pop {r4, r5, pc}

	thumb_func_start sub_080A93DC
sub_080A93DC: @ 0x080A93DC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080A9414
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0x20
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r1, #2
	adds r0, r4, #0
	bl InitializeAnimation
	movs r0, #0xc5
	lsls r0, r0, #1
	bl sub_08004488
	adds r0, r4, #0
	bl sub_0806F69C
	b _080A9424
_080A9414:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9424
	bl DeleteThisEntity
_080A9424:
	adds r0, r4, #0
	bl sub_080AF090
	pop {r4, pc}

	thumb_func_start sub_080A942C
sub_080A942C: @ 0x080A942C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9440
	bl DeleteThisEntity
_080A9440:
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}

	thumb_func_start sub_080A9448
sub_080A9448: @ 0x080A9448
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _080A9464
	adds r0, r4, #0
	bl sub_080A29BC
	bl DeleteThisEntity
	b _080A9486
_080A9464:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9486
	movs r0, #2
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080A94C0
_080A9486:
	pop {r4, pc}

	thumb_func_start sub_080A9488
sub_080A9488: @ 0x080A9488
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #2
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	movs r0, #0x18
	ands r0, r1
	lsrs r0, r0, #3
	strb r0, [r4, #0x14]
	movs r0, #0x74
	bl sub_08004488
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080A94C0
	pop {r4, pc}

	thumb_func_start sub_080A94C0
sub_080A94C0: @ 0x080A94C0
	push {r4, lr}
	lsls r1, r1, #3
	ldr r2, _080A94FC @ =gUnk_081299F8
	adds r1, r1, r2
	ldrb r3, [r1]
	movs r2, #1
	ands r3, r2
	lsls r3, r3, #6
	ldrb r4, [r0, #0x18]
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r2, r4
	orrs r2, r3
	strb r2, [r0, #0x18]
	ldrb r3, [r1, #1]
	lsls r3, r3, #7
	movs r4, #0x7f
	ands r2, r4
	orrs r2, r3
	strb r2, [r0, #0x18]
	ldrb r2, [r1, #2]
	adds r3, r0, #0
	adds r3, #0x58
	strb r2, [r3]
	ldr r1, [r1, #4]
	str r1, [r0, #0x48]
	ldrb r1, [r3]
	bl InitializeAnimation
	pop {r4, pc}
	.align 2, 0
_080A94FC: .4byte gUnk_081299F8

	thumb_func_start sub_080A9500
sub_080A9500: @ 0x080A9500
	push {lr}
	ldr r2, _080A9514 @ =gUnk_08129A64
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9514: .4byte gUnk_08129A64

	thumb_func_start sub_080A9518
sub_080A9518: @ 0x080A9518
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0xa
	strb r1, [r0, #0xe]
	ldrh r1, [r0, #0x36]
	subs r1, #2
	strh r1, [r0, #0x36]
	ldrh r1, [r0, #0x32]
	adds r1, #2
	strh r1, [r0, #0x32]
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _080A953C @ =0x00000149
	bl PlaySFX
	pop {pc}
	.align 2, 0
_080A953C: .4byte 0x00000149

	thumb_func_start sub_080A9540
sub_080A9540: @ 0x080A9540
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9578
	movs r0, #2
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r3, #0x32]
	adds r0, #6
	strh r0, [r3, #0x32]
	adds r0, r3, #0
	movs r1, #1
	bl InitializeAnimation
	b _080A95B6
_080A9578:
	ldrh r1, [r3, #0x36]
	movs r2, #0x36
	ldrsh r0, [r3, r2]
	cmp r0, #0
	beq _080A9586
	adds r0, r1, #1
	strh r0, [r3, #0x36]
_080A9586:
	ldrb r1, [r3, #0x15]
	lsls r1, r1, #1
	ldr r0, _080A95B8 @ =gSineTable
	adds r1, r1, r0
	movs r4, #0
	ldrsh r2, [r1, r4]
	movs r4, #0x24
	ldrsh r0, [r3, r4]
	muls r2, r0, r2
	ldr r0, [r3, #0x2c]
	adds r0, r0, r2
	str r0, [r3, #0x2c]
	adds r1, #0x80
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r2, #0x24
	ldrsh r0, [r3, r2]
	muls r1, r0, r1
	ldr r0, [r3, #0x30]
	subs r0, r0, r1
	str r0, [r3, #0x30]
	adds r0, r3, #0
	bl GetNextFrame
_080A95B6:
	pop {r4, pc}
	.align 2, 0
_080A95B8: .4byte gSineTable

	thumb_func_start sub_080A95BC
sub_080A95BC: @ 0x080A95BC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A95D8
	adds r0, r4, #0
	bl DeleteEntity
_080A95D8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A95DC
sub_080A95DC: @ 0x080A95DC
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
	ldr r0, _080A9760 @ =gLinkEntity
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
	bl PlaySFX
	pop {r4, r5, pc}
	.align 2, 0
_080A9760: .4byte gLinkEntity
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
	bl PlaySFX
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
	bl PlaySFX
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

	thumb_func_start sub_080A9A00
sub_080A9A00: @ 0x080A9A00
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A9A18 @ =gUnk_08129AE0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9A18: .4byte gUnk_08129AE0

	thumb_func_start sub_080A9A1C
sub_080A9A1C: @ 0x080A9A1C
	push {lr}
	ldr r2, _080A9A30 @ =gUnk_08129AF8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9A30: .4byte gUnk_08129AF8

	thumb_func_start sub_080A9A34
sub_080A9A34: @ 0x080A9A34
	push {lr}
	adds r2, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9d
	bne _080A9A62
	movs r0, #3
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
_080A9A62:
	pop {pc}

	thumb_func_start sub_080A9A64
sub_080A9A64: @ 0x080A9A64
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bhi _080A9A7E
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080A9A7E
	adds r0, r4, #0
	bl sub_080A9BA8
_080A9A7E:
	ldr r0, _080A9A90 @ =gUnk_08129B08
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A9A90: .4byte gUnk_08129B08

	thumb_func_start sub_080A9A94
sub_080A9A94: @ 0x080A9A94
	movs r1, #2
	strb r1, [r0, #0xd]
	ldr r1, _080A9AA0 @ =0x0000FFFE
	strh r1, [r0, #0x36]
	bx lr
	.align 2, 0
_080A9AA0: .4byte 0x0000FFFE

	thumb_func_start sub_080A9AA4
sub_080A9AA4: @ 0x080A9AA4
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_080A9AAC
sub_080A9AAC: @ 0x080A9AAC
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_080A9AB4
sub_080A9AB4: @ 0x080A9AB4
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_128
nullsub_128: @ 0x080A9AC0
	bx lr
	.align 2, 0

	thumb_func_start sub_080A9AC4
sub_080A9AC4: @ 0x080A9AC4
	push {lr}
	bl sub_080A9BA8
	pop {pc}

	thumb_func_start sub_080A9ACC
sub_080A9ACC: @ 0x080A9ACC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xb]
	cmp r0, #1
	beq _080A9AE0
	cmp r0, #2
	beq _080A9AEE
	movs r0, #1
	strb r0, [r2, #0xc]
	b _080A9B0A
_080A9AE0:
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	b _080A9B0A
_080A9AEE:
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #0xa8
	lsls r0, r0, #0xa
	str r0, [r2, #0x20]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
_080A9B0A:
	movs r0, #2
	strb r0, [r2, #0x1c]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080A9B1E
	adds r0, r2, #0
	movs r1, #5
	bl InitializeAnimation
	b _080A9B22
_080A9B1E:
	movs r0, #0
	strb r0, [r2, #0x1e]
_080A9B22:
	pop {pc}

	thumb_func_start sub_080A9B24
sub_080A9B24: @ 0x080A9B24
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A9B36
	adds r0, r4, #0
	bl sub_080A9BA8
_080A9B36:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #0xb
	bne _080A9B46
	adds r0, r4, #0
	bl sub_080A9BD0
	b _080A9B50
_080A9B46:
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080A9C34
_080A9B50:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9B54
sub_080A9B54: @ 0x080A9B54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A9B66
	adds r0, r4, #0
	bl sub_080A9BA8
_080A9B66:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #9
	bne _080A9B76
	adds r0, r4, #0
	bl sub_080A9C34
	b _080A9B7C
_080A9B76:
	adds r0, r4, #0
	bl sub_080A9C50
_080A9B7C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9B80
sub_080A9B80: @ 0x080A9B80
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _080A9B92
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_080A9B92:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080A9BA6
	adds r0, r4, #0
	bl sub_080A9BA8
_080A9BA6:
	pop {r4, pc}

	thumb_func_start sub_080A9BA8
sub_080A9BA8: @ 0x080A9BA8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _080A9BBE
	adds r0, r1, #0
	movs r1, #5
	movs r2, #0
	bl CreateFx
	b _080A9BC8
_080A9BBE:
	adds r0, r1, #0
	movs r1, #0x3c
	movs r2, #0
	bl CreateFx
_080A9BC8:
	bl DeleteThisEntity
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A9BD0
sub_080A9BD0: @ 0x080A9BD0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x50]
	ldrb r0, [r1, #0x14]
	cmp r0, #1
	beq _080A9BF8
	cmp r0, #1
	bgt _080A9BE6
	cmp r0, #0
	beq _080A9BF0
	b _080A9C06
_080A9BE6:
	cmp r0, #2
	beq _080A9C00
	cmp r0, #3
	beq _080A9BF8
	b _080A9C06
_080A9BF0:
	ldrb r0, [r1, #0x1e]
	adds r2, r0, #0
	subs r2, #0x39
	b _080A9C06
_080A9BF8:
	ldrb r0, [r1, #0x1e]
	adds r2, r0, #0
	subs r2, #0x3d
	b _080A9C06
_080A9C00:
	ldrb r0, [r1, #0x1e]
	adds r2, r0, #0
	subs r2, #0x41
_080A9C06:
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	adds r0, r2, r0
	lsls r4, r0, #1
	adds r4, r4, r0
	ldr r0, _080A9C30 @ =gUnk_08129B20
	adds r4, r4, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_0806FA90
	movs r0, #2
	ldrsb r0, [r4, r0]
	ldrh r1, [r5, #0x36]
	adds r0, r0, r1
	strh r0, [r5, #0x36]
	pop {r4, r5, pc}
	.align 2, 0
_080A9C30: .4byte gUnk_08129B20

	thumb_func_start sub_080A9C34
sub_080A9C34: @ 0x080A9C34
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806FA90
	adds r4, #0x63
	ldrb r0, [r4]
	subs r0, #0xe
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9C50
sub_080A9C50: @ 0x080A9C50
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x50]
	ldrb r0, [r1, #0x14]
	cmp r0, #1
	beq _080A9C78
	cmp r0, #1
	bgt _080A9C66
	cmp r0, #0
	beq _080A9C70
	b _080A9C86
_080A9C66:
	cmp r0, #2
	beq _080A9C80
	cmp r0, #3
	beq _080A9C78
	b _080A9C86
_080A9C70:
	ldrb r0, [r1, #0x1e]
	adds r4, r0, #0
	subs r4, #0x27
	b _080A9C86
_080A9C78:
	ldrb r0, [r1, #0x1e]
	adds r4, r0, #0
	subs r4, #0x2d
	b _080A9C86
_080A9C80:
	ldrb r0, [r1, #0x1e]
	adds r4, r0, #0
	subs r4, #0x33
_080A9C86:
	adds r0, r1, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_0806FA90
	adds r0, r5, #0
	adds r0, #0x63
	ldr r1, _080A9CA4 @ =gUnk_08129B50
	adds r1, r4, r1
	ldrb r1, [r1]
	ldrb r2, [r0]
	adds r1, r1, r2
	strb r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_080A9CA4: .4byte gUnk_08129B50

	thumb_func_start sub_080A9CA8
sub_080A9CA8: @ 0x080A9CA8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080A9CB8
	bl DeleteThisEntity
_080A9CB8:
	ldr r4, _080A9CD0 @ =gUnk_08129B58
	adds r0, r5, #0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9CD0: .4byte gUnk_08129B58

	thumb_func_start sub_080A9CD4
sub_080A9CD4: @ 0x080A9CD4
	push {lr}
	ldr r2, _080A9CE8 @ =gUnk_08129B70
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9CE8: .4byte gUnk_08129B70

	thumb_func_start nullsub_539
nullsub_539: @ 0x080A9CEC
	bx lr
	.align 2, 0

	thumb_func_start sub_080A9CF0
sub_080A9CF0: @ 0x080A9CF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080A9D0A
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A9D0A:
	ldr r0, _080A9D1C @ =gUnk_08129B78
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A9D1C: .4byte gUnk_08129B78

	thumb_func_start sub_080A9D20
sub_080A9D20: @ 0x080A9D20
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_540
nullsub_540: @ 0x080A9D28
	bx lr
	.align 2, 0

	thumb_func_start sub_080A9D2C
sub_080A9D2C: @ 0x080A9D2C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _080A9D64
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0xa6
	bne _080A9D56
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	ldr r0, _080A9D68 @ =gLinkEntity
	movs r1, #0x7a
	bl sub_0800449C
	bl sub_08079D84
_080A9D56:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A9D64:
	pop {r4, pc}
	.align 2, 0
_080A9D68: .4byte gLinkEntity

	thumb_func_start sub_080A9D6C
sub_080A9D6C: @ 0x080A9D6C
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldr r1, [r0, #0x50]
	ldrb r1, [r1, #0x14]
	strb r1, [r0, #0x14]
	ldrb r1, [r0, #0x14]
	bl InitAnimationForceUpdate
	pop {pc}

	thumb_func_start sub_080A9D80
sub_080A9D80: @ 0x080A9D80
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r3, _080A9D9C @ =0xFFFF0000
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	ldr r0, _080A9DA0 @ =0x0000FFFE
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0
_080A9D9C: .4byte 0xFFFF0000
_080A9DA0: .4byte 0x0000FFFE

	thumb_func_start sub_080A9DA4
sub_080A9DA4: @ 0x080A9DA4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A9DBC @ =gUnk_08129BEC
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9DBC: .4byte gUnk_08129BEC

	thumb_func_start sub_080A9DC0
sub_080A9DC0: @ 0x080A9DC0
	push {lr}
	ldr r2, _080A9DD4 @ =gUnk_08129C00
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A9DD4: .4byte gUnk_08129C00

	thumb_func_start sub_080A9DD8
sub_080A9DD8: @ 0x080A9DD8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A9DEE
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _080A9DF2
_080A9DEE:
	bl DeleteThisEntity
_080A9DF2:
	adds r0, r4, #0
	bl sub_080A9DC0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9DFC
sub_080A9DFC: @ 0x080A9DFC
	push {lr}
	movs r2, #1
	strb r2, [r0, #0xc]
	movs r1, #0xb4
	strb r1, [r0, #0xe]
	adds r1, r0, #0
	adds r1, #0x45
	strb r2, [r1]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}

	thumb_func_start sub_080A9E14
sub_080A9E14: @ 0x080A9E14
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	bne _080A9E34
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9E42
_080A9E34:
	adds r0, r4, #0
	movs r1, #0x4f
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080A9E42:
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080A9E50
	bl DeleteThisEntity
_080A9E50:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9E54
sub_080A9E54: @ 0x080A9E54
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bne _080A9E60
	ldr r0, [r5, #0x50]
_080A9E60:
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A9E78
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080A9E78
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
_080A9E78:
	ldr r4, _080A9E90 @ =gUnk_08129C7C
	adds r0, r5, #0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080A9E90: .4byte gUnk_08129C7C

	thumb_func_start sub_080A9E94
sub_080A9E94: @ 0x080A9E94
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bhi _080A9EA4
	adds r0, r4, #0
	bl sub_080AA1D8
_080A9EA4:
	ldr r0, _080A9EB8 @ =gUnk_08129C90
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080A9EB8: .4byte gUnk_08129C90

	thumb_func_start sub_080A9EBC
sub_080A9EBC: @ 0x080A9EBC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A9F4E
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _080A9EF2
	cmp r0, #4
	bne _080A9F18
	movs r0, #0
	strb r0, [r4, #0xf]
	subs r0, #2
	bl ModHealth
	adds r0, r4, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r5, r4, #0
	adds r5, #0x42
	b _080A9F4A
_080A9EF2:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x42
	cmp r0, #0
	beq _080A9F4A
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080AA270
	movs r0, #0x20
	strb r0, [r4, #0xf]
	b _080A9F4A
_080A9F18:
	ldr r3, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x42
	ldrb r1, [r2]
	adds r0, r3, #0
	adds r0, #0x42
	strb r1, [r0]
	ldrb r0, [r4, #0xc]
	adds r5, r2, #0
	cmp r0, #1
	bne _080A9F4A
	adds r0, r4, #0
	bl sub_080AA320
_080A9F4A:
	movs r0, #0
	strb r0, [r5]
_080A9F4E:
	pop {r4, r5, pc}

	thumb_func_start sub_080A9F50
sub_080A9F50: @ 0x080A9F50
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	strh r1, [r0]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x82
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl sub_0806FAD8
	adds r0, r4, #0
	bl sub_080AA270
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A9F90
sub_080A9F90: @ 0x080A9F90
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x80
	ldrh r0, [r1]
	cmp r0, #0
	beq _080A9FA4
	subs r0, #1
	strh r0, [r1]
	b _080A9FC8
_080A9FA4:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9FB8
	adds r0, r4, #0
	bl sub_080AA270
	b _080A9FC8
_080A9FB8:
	adds r0, r4, #0
	bl sub_080AA2E0
	cmp r0, #0
	beq _080A9FC8
	adds r0, r4, #0
	bl sub_080AA320
_080A9FC8:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}

	thumb_func_start sub_080A9FD0
sub_080A9FD0: @ 0x080A9FD0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl UpdateAnimationSingleFrame
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A9FF2
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080AA038 @ =0x0000015D
	bl sub_08004488
_080A9FF2:
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _080AA03C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r5, #0
	adds r4, #0x78
	strh r1, [r4]
	ldrh r0, [r4]
	adds r5, #0x38
	ldrb r1, [r5]
	bl GetTileType
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	bne _080AA034
	ldr r0, _080AA040 @ =0x00004005
	ldrh r1, [r4]
	ldrb r2, [r5]
	bl SetTile
_080AA034:
	pop {r4, r5, pc}
	.align 2, 0
_080AA038: .4byte 0x0000015D
_080AA03C: .4byte gRoomControls
_080AA040: .4byte 0x00004005

	thumb_func_start sub_080AA044
sub_080AA044: @ 0x080AA044
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	cmp r5, #0
	bne _080AA052
	bl DeleteThisEntity
_080AA052:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080AA05E
	bl DeleteThisEntity
	b _080AA0A2
_080AA05E:
	ldrh r0, [r5, #0x12]
	ldrb r1, [r5, #0x1e]
	bl sub_080700C8
	adds r3, r0, #0
	ldrb r1, [r5, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AA08C
	movs r2, #0
	ldrsb r2, [r3, r2]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
	b _080AA0A2
_080AA08C:
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl PositionRelative
_080AA0A2:
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AA108
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _080AA0B8
	subs r0, #1
	strb r0, [r4, #0xf]
	b _080AA108
_080AA0B8:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AA108
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x40
	strb r0, [r4, #0xf]
	ldrb r0, [r5, #0x14]
	lsls r1, r0, #2
	strb r1, [r4, #0x15]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	strb r0, [r4, #0x14]
	ldr r0, _080AA10C @ =gUnk_080FD150
	str r0, [r4, #0x48]
	bl CheckIsDungeon
	cmp r0, #0
	beq _080AA100
	ldrb r0, [r4, #0x1b]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0x1b]
_080AA100:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080AA3E0
_080AA108:
	pop {r4, r5, pc}
	.align 2, 0
_080AA10C: .4byte gUnk_080FD150

	thumb_func_start sub_080AA110
sub_080AA110: @ 0x080AA110
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r7, [r6, #0x54]
	cmp r7, #0
	beq _080AA1B6
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _080AA128
	str r0, [r6, #0x54]
_080AA128:
	ldrb r0, [r6, #0xf]
	adds r5, r0, #0
	cmp r5, #0
	beq _080AA136
	subs r0, #1
	strb r0, [r6, #0xf]
	b _080AA1C4
_080AA136:
	adds r0, r6, #0
	bl sub_080AA374
	cmp r0, #0
	beq _080AA1C4
	adds r0, r7, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AA14E
	bl DeleteThisEntity
_080AA14E:
	movs r0, #0xf2
	bl sub_08004488
	movs r4, #1
	strb r4, [r6, #0xc]
	movs r0, #0xff
	strb r0, [r6, #0x14]
	adds r0, r6, #0
	adds r0, #0x82
	strb r5, [r0]
	strb r5, [r6, #0xe]
	subs r0, #2
	movs r1, #0
	mov sb, r1
	movs r1, #0x20
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	ldrb r1, [r6, #0x1b]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r6, #0x1b]
	ldr r0, [r6, #0x54]
	str r0, [r6, #0x50]
	str r5, [r6, #0x54]
	adds r0, r6, #0
	bl sub_080AA270
	ldr r7, [r6, #0x50]
	strb r4, [r7, #0xc]
	ldrb r0, [r7, #0x14]
	lsls r0, r0, #2
	strb r0, [r7, #0x15]
	strh r5, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x82
	strb r4, [r0]
	mov r0, sb
	strb r0, [r7, #0xe]
	movs r0, #0x78
	strb r0, [r7, #0xf]
	adds r0, r7, #0
	adds r0, #0x80
	mov r1, r8
	strh r1, [r0]
	adds r0, r7, #0
	movs r1, #1
	bl sub_080AA3E0
	b _080AA1C4
_080AA1B6:
	adds r0, r6, #0
	bl sub_080040A8
	cmp r0, #0
	bne _080AA1C4
	bl DeleteThisEntity
_080AA1C4:
	adds r0, r6, #0
	bl sub_0806F69C
	adds r0, r6, #0
	bl UpdateAnimationSingleFrame
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AA1D8
sub_080AA1D8: @ 0x080AA1D8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	cmp r4, #0
	beq _080AA268
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _080AA1EC
	bl DeleteThisEntity
_080AA1EC:
	ldrb r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080AA26C
	ldrh r0, [r4, #0x12]
	ldrb r1, [r4, #0x1e]
	bl sub_080700C8
	adds r3, r0, #0
	ldrb r1, [r4, #0x14]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080AA224
	movs r2, #0
	ldrsb r2, [r3, r2]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
	b _080AA23A
_080AA224:
	movs r2, #0
	ldrsb r2, [r3, r2]
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl PositionRelative
_080AA23A:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AA256
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AA26C
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	b _080AA26C
_080AA256:
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AA26C
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	b _080AA26C
_080AA268:
	bl DeleteThisEntity
_080AA26C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AA270
sub_080AA270: @ 0x080AA270
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	bl Random
	ldr r1, _080AA2A4 @ =gUnk_08129CA4
	movs r6, #7
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0xf]
	ldrb r4, [r4, #0x14]
	ldrb r0, [r5, #0x14]
	cmp r0, #0xff
	bne _080AA2AC
	strb r4, [r5, #0x14]
	ldr r0, _080AA2A8 @ =gUnk_08129CF4
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r5, #0x48]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080AA3E0
	b _080AA2D6
	.align 2, 0
_080AA2A4: .4byte gUnk_08129CA4
_080AA2A8: .4byte gUnk_08129CF4
_080AA2AC:
	bl Random
	ldr r1, _080AA2D8 @ =gUnk_08129CAC
	ands r0, r6
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r4, r0, r4
	ands r4, r6
	ldrb r0, [r5, #0x14]
	cmp r4, r0
	beq _080AA2D6
	strb r4, [r5, #0x14]
	ldr r0, _080AA2DC @ =gUnk_08129CF4
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r5, #0x48]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080AA3E0
_080AA2D6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AA2D8: .4byte gUnk_08129CAC
_080AA2DC: .4byte gUnk_08129CF4

	thumb_func_start sub_080AA2E0
sub_080AA2E0: @ 0x080AA2E0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	bl sub_08049DF4
	adds r4, r0, #0
	cmp r4, #0
	beq _080AA31C
	adds r0, r5, #0
	adds r1, r4, #0
	bl GetFacingDirection
	ldrb r1, [r5, #0x14]
	lsls r1, r1, #2
	adds r0, #4
	movs r2, #0x1c
	ands r0, r2
	adds r1, #4
	ands r1, r2
	cmp r0, r1
	bne _080AA31C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_08049F1C
	cmp r0, #0
	beq _080AA31C
	movs r0, #1
	b _080AA31E
_080AA31C:
	movs r0, #0
_080AA31E:
	pop {r4, r5, pc}

	thumb_func_start sub_080AA320
sub_080AA320: @ 0x080AA320
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	movs r2, #0
	movs r1, #2
	strb r1, [r5, #0xc]
	adds r3, r5, #0
	adds r3, #0x82
	movs r0, #1
	strb r0, [r3]
	strb r2, [r5, #0xf]
	strb r1, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0x50
	strh r0, [r1]
	strh r2, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08049F84
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x1c
	ands r0, r1
	lsrs r1, r0, #2
	strb r1, [r5, #0x14]
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080AA3E0
	adds r0, r5, #0
	bl sub_080AA1D8
	pop {r4, r5, pc}

	thumb_func_start sub_080AA374
sub_080AA374: @ 0x080AA374
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r5, [r6, #0x54]
	cmp r5, #0
	beq _080AA3D8
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _080AA3D8
	ldrb r4, [r5, #0x14]
	ldr r0, _080AA3CC @ =gUnk_08129D14
	adds r4, r4, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806F824
	adds r7, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	adds r0, r6, #0
	movs r3, #8
	bl sub_0806FCB8
	cmp r0, #0
	beq _080AA3D0
	movs r0, #1
	mov r8, r0
	b _080AA3D8
	.align 2, 0
_080AA3CC: .4byte gUnk_08129D14
_080AA3D0:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08004596
_080AA3D8:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AA3E0
sub_080AA3E0: @ 0x080AA3E0
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3, #0x14]
	adds r0, #0x82
	ldrb r0, [r0]
	lsls r0, r0, #3
	orrs r2, r0
	cmp r1, #0
	beq _080AA3F4
	lsrs r2, r2, #1
_080AA3F4:
	adds r0, r3, #0
	adds r1, r2, #0
	bl InitAnimationForceUpdate
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AA400
sub_080AA400: @ 0x080AA400
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AA418 @ =gUnk_08129FB8
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AA418: .4byte gUnk_08129FB8

	thumb_func_start sub_080AA41C
sub_080AA41C: @ 0x080AA41C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _080AA44C
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0xa]
	strb r1, [r2, #0x1e]
	strb r0, [r2, #0x1c]
	adds r0, r2, #0
	adds r0, #0x86
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _080AA446
	adds r0, r2, #0
	bl sub_080AA494
	b _080AA44C
_080AA446:
	adds r0, r2, #0
	bl sub_080AA534
_080AA44C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AA450
sub_080AA450: @ 0x080AA450
	push {lr}
	adds r1, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _080AA462
	adds r0, r1, #0
	bl sub_080AA464
_080AA462:
	pop {pc}

	thumb_func_start sub_080AA464
sub_080AA464: @ 0x080AA464
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AA474
	adds r0, r4, #0
	bl sub_080AA544
_080AA474:
	movs r0, #0x21
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _080AA48A
	adds r0, r4, #0
	bl CopyPosition
_080AA48A:
	adds r0, r4, #0
	bl DeleteEntity
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AA494
sub_080AA494: @ 0x080AA494
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	bl GetTileTypeByEntity
	adds r2, r0, #0
	ldr r1, _080AA4A4 @ =gUnk_08129FD0
	b _080AA4AA
	.align 2, 0
_080AA4A4: .4byte gUnk_08129FD0
_080AA4A8:
	adds r4, #1
_080AA4AA:
	ldrh r0, [r1]
	cmp r0, #0
	beq _080AA4B6
	adds r1, #2
	cmp r0, r2
	bne _080AA4A8
_080AA4B6:
	ldrh r0, [r5, #0x24]
	bl CheckFlags
	cmp r0, #0
	beq _080AA4EE
	cmp r4, #4
	bne _080AA4EA
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _080AA52C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r6, #0x32
	ldrsh r0, [r5, r6]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	bl sub_080AA654
_080AA4EA:
	bl DeleteThisEntity
_080AA4EE:
	strb r4, [r5, #0xb]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080AA530 @ =0x00004068
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080AA52C @ =gRoomControls
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
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AA52C: .4byte gRoomControls
_080AA530: .4byte 0x00004068

	thumb_func_start sub_080AA534
sub_080AA534: @ 0x080AA534
	push {lr}
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #3
	strb r1, [r2]
	bl UpdateSpriteForCollisionLayer
	pop {pc}

	thumb_func_start sub_080AA544
sub_080AA544: @ 0x080AA544
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xb]
	cmp r0, #8
	bhi _080AA618
	ldr r0, _080AA5E8 @ =gUnk_08129FF8
	mov sb, r0
	movs r1, #0x2e
	ldrsh r2, [r6, r1]
	ldr r1, _080AA5EC @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r3, #0x3f
	ands r2, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r2, r0
	ldrb r0, [r6, #0xb]
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r2, r0
	movs r4, #0
	movs r5, #0
	movs r0, #0x38
	adds r0, r0, r6
	mov r8, r0
_080AA58E:
	mov r1, sb
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, r8
	ldrb r1, [r2]
	bl sub_080002C8
	cmp r0, #0x3e
	bne _080AA5AC
	adds r5, #1
_080AA5AC:
	adds r4, #1
	cmp r4, #8
	bls _080AA58E
	cmp r5, #8
	bne _080AA5F4
	movs r4, #0
	ldr r5, _080AA5F0 @ =gUnk_08129FD0
_080AA5BA:
	ldrh r0, [r5]
	mov r3, sb
	adds r1, r3, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r1, r7, r1
	mov r3, r8
	ldrb r2, [r3]
	bl sub_0807B7D8
	adds r5, #2
	adds r4, #1
	cmp r4, #8
	bls _080AA5BA
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080AA654
	ldrh r0, [r6, #0x24]
	bl SetFlag
	b _080AA648
	.align 2, 0
_080AA5E8: .4byte gUnk_08129FF8
_080AA5EC: .4byte gRoomControls
_080AA5F0: .4byte gUnk_08129FD0
_080AA5F4:
	ldr r2, _080AA614 @ =gUnk_08129FE4
	ldrb r1, [r6, #0xb]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	add r1, sb
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r1, r7, r1
	mov r4, r8
	ldrb r2, [r4]
	bl sub_0807B7D8
	b _080AA648
	.align 2, 0
_080AA614: .4byte gUnk_08129FE4
_080AA618:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r2, _080AA650 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r4, #0x32
	ldrsh r1, [r6, r4]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r6, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	ldrh r0, [r6, #0x24]
	bl SetFlag
_080AA648:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AA650: .4byte gRoomControls

	thumb_func_start sub_080AA654
sub_080AA654: @ 0x080AA654
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r4, #0x68
	ldr r0, _080AA688 @ =gUnk_0812A004
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_0801D66C
	movs r1, #0x3f
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r4, #8]
	movs r0, #0xfc
	lsls r0, r0, #4
	ands r0, r5
	lsrs r0, r0, #2
	adds r0, #8
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	bl CreateEntity
	pop {r4, r5, pc}
	.align 2, 0
_080AA688: .4byte gUnk_0812A004

	thumb_func_start sub_080AA68C
sub_080AA68C: @ 0x080AA68C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AA6A4 @ =gUnk_0812A014
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AA6A4: .4byte gUnk_0812A014

	thumb_func_start sub_080AA6A8
sub_080AA6A8: @ 0x080AA6A8
	push {lr}
	ldr r2, _080AA6BC @ =gUnk_0812A02C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AA6BC: .4byte gUnk_0812A02C

	thumb_func_start sub_080AA6C0
sub_080AA6C0: @ 0x080AA6C0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x87
	bne _080AA774
	movs r6, #3
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r5, #0x5a
	strb r5, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0xa]
	adds r1, #0x10
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _080AA72A
	strb r5, [r3, #0xb]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldr r1, _080AA770 @ =gUnk_0812A03C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, #0x39
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x63
	strb r0, [r1]
	str r4, [r3, #0x50]
_080AA72A:
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r3, r0, #0
	cmp r3, #0
	beq _080AA784
	strb r5, [r3, #0xb]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldr r1, _080AA770 @ =gUnk_0812A03C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, #0x39
	strb r0, [r2]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x63
	strb r0, [r1]
	str r4, [r3, #0x50]
	b _080AA784
	.align 2, 0
_080AA770: .4byte gUnk_0812A03C
_080AA774:
	ldrb r1, [r4, #0xa]
	adds r1, #0x10
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	ldr r0, _080AA788 @ =0x00000101
	bl sub_08004488
_080AA784:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AA788: .4byte 0x00000101

	thumb_func_start sub_080AA78C
sub_080AA78C: @ 0x080AA78C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080AA7DA
	ldr r0, _080AA7C8 @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	lsrs r2, r0, #1
	ldrb r0, [r4, #0xa]
	cmp r2, r0
	beq _080AA7CC
	adds r3, r4, #0
	adds r3, #0x3a
	ldrb r0, [r3]
	movs r1, #0xfb
	ands r1, r0
	strb r1, [r3]
	movs r0, #2
	eors r2, r0
	ldrb r0, [r4, #0xa]
	cmp r2, r0
	bne _080AA832
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0xe2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080AA6C0
	b _080AA832
	.align 2, 0
_080AA7C8: .4byte gLinkEntity
_080AA7CC:
	movs r0, #1
	strb r0, [r4, #0xd]
	adds r1, r2, #0
	adds r1, #8
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_080AA7DA:
	adds r0, r4, #0
	bl sub_0806F520
	cmp r0, #0
	beq _080AA812
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080AA806
	movs r0, #0xef
	ands r0, r1
	strb r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_08004488
_080AA806:
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AA832
	b _080AA820
_080AA812:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AA828
_080AA820:
	adds r0, r4, #0
	bl sub_080AAAA8
	b _080AA832
_080AA828:
	ldrb r1, [r4, #0xa]
	adds r1, #0x10
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_080AA832:
	pop {r4, r5, pc}

	thumb_func_start sub_080AA834
sub_080AA834: @ 0x080AA834
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _080AA848
	bl DeleteThisEntity
_080AA848:
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r0, [r4, #0x1c]
	strb r0, [r4, #0x16]
	ldr r1, _080AA874 @ =gUnk_0812A04C
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x84
	strb r2, [r0]
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_080AAA68
	pop {r4, pc}
	.align 2, 0
_080AA874: .4byte gUnk_0812A04C

	thumb_func_start sub_080AA878
sub_080AA878: @ 0x080AA878
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AA88E
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_080AA88E:
	adds r0, r4, #0
	bl sub_080AA9E0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AA898
sub_080AA898: @ 0x080AA898
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806FBB4
	ldr r1, _080AA8B4 @ =gUnk_0812A05C
	ldrb r0, [r4, #0xd]
	subs r0, #5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080AA8B4: .4byte gUnk_0812A05C

	thumb_func_start sub_080AA8B8
sub_080AA8B8: @ 0x080AA8B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r7, _080AA99C @ =gLinkEntity
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AA920
	ldrb r0, [r4, #0xa]
	lsls r2, r0, #1
	ldrb r0, [r7, #0x14]
	cmp r2, r0
	bne _080AA90A
	ldr r1, _080AA9A0 @ =gUnk_0812A064
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r4, #0x2e]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080002D4
	cmp r0, #0
	bne _080AA90A
	strh r6, [r7, #0x2e]
	strh r5, [r7, #0x32]
_080AA90A:
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #1
	strb r0, [r1]
	movs r0, #2
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0xa]
	adds r1, #4
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_080AA920:
	ldrb r0, [r7, #0x14]
	lsrs r0, r0, #1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	bne _080AA99A
	ldr r1, _080AA9A4 @ =gLinkState
	adds r0, r1, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _080AA99A
	ldrb r1, [r1, #5]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080AA99A
	ldr r0, _080AA99C @ =gLinkEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080AA99A
	adds r5, r4, #0
	adds r5, #0x5a
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AA99A
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AA99A
	ldr r1, _080AA9A8 @ =gUnk_0812A06C
	ldrb r0, [r7, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r7, #0x2e]
	adds r0, r0, r3
	strh r0, [r7, #0x2e]
	ldrb r0, [r7, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r7, #0x32]
	adds r0, r0, r1
	strh r0, [r7, #0x32]
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_08004488
_080AA99A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AA99C: .4byte gLinkEntity
_080AA9A0: .4byte gUnk_0812A064
_080AA9A4: .4byte gLinkState
_080AA9A8: .4byte gUnk_0812A06C

	thumb_func_start sub_080AA9AC
sub_080AA9AC: @ 0x080AA9AC
	push {lr}
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	adds r1, r0, #0
	adds r1, #0x84
	strb r2, [r1]
	ldrb r1, [r0, #0xa]
	adds r1, #0xc
	bl InitAnimationForceUpdate
	pop {pc}

	thumb_func_start sub_080AA9C4
sub_080AA9C4: @ 0x080AA9C4
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AA9DE
	adds r0, r4, #0
	bl sub_080AAAA8
_080AA9DE:
	pop {r4, pc}

	thumb_func_start sub_080AA9E0
sub_080AA9E0: @ 0x080AA9E0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AAA00
	ldr r0, _080AA9FC @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	b _080AAA0A
	.align 2, 0
_080AA9FC: .4byte gLinkEntity
_080AAA00:
	ldr r0, _080AAA24 @ =gLinkEntity
	movs r2, #0x32
	ldrsh r1, [r0, r2]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
_080AAA0A:
	subs r4, r1, r0
	ldrb r2, [r5, #0xa]
	lsls r1, r2, #2
	ldr r0, _080AAA28 @ =gUnk_0812A074
	adds r3, r1, r0
	cmp r2, #2
	bgt _080AAA2C
	cmp r2, #1
	bge _080AAA36
	cmp r2, #0
	beq _080AAA30
	b _080AAA40
	.align 2, 0
_080AAA24: .4byte gLinkEntity
_080AAA28: .4byte gUnk_0812A074
_080AAA2C:
	cmp r2, #3
	bne _080AAA40
_080AAA30:
	cmp r4, #4
	ble _080AAA40
	b _080AAA3E
_080AAA36:
	movs r0, #4
	rsbs r0, r0, #0
	cmp r4, r0
	bge _080AAA40
_080AAA3E:
	adds r3, #2
_080AAA40:
	ldrb r0, [r3]
	adds r4, r5, #0
	adds r4, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r3, #1]
	strb r0, [r5, #0x15]
	ldrb r0, [r3]
	cmp r0, #5
	bne _080AAA66
	adds r0, r5, #0
	bl sub_08078930
_080AAA66:
	pop {r4, r5, pc}

	thumb_func_start sub_080AAA68
sub_080AAA68: @ 0x080AAA68
	push {r4, r5, r6, lr}
	ldr r2, _080AAAA0 @ =gUnk_0812A084
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r5, [r1]
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r3, _080AAAA4 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r0, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AAAA0: .4byte gUnk_0812A084
_080AAAA4: .4byte gRoomControls

	thumb_func_start sub_080AAAA8
sub_080AAAA8: @ 0x080AAAA8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _080AAAE4 @ =gRoomControls
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
	adds r4, #0x38
	ldrb r1, [r4]
	bl sub_0807BA8C
	bl DeleteThisEntity
	pop {r4, r5, pc}
	.align 2, 0
_080AAAE4: .4byte gRoomControls

	thumb_func_start sub_080AAAE8
sub_080AAAE8: @ 0x080AAAE8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AAB00 @ =gUnk_0812A3C0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AAB00: .4byte gUnk_0812A3C0

	thumb_func_start sub_080AAB04
sub_080AAB04: @ 0x080AAB04
	push {lr}
	ldr r2, _080AAB18 @ =gUnk_0812A3D4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AAB18: .4byte gUnk_0812A3D4

	thumb_func_start sub_080AAB1C
sub_080AAB1C: @ 0x080AAB1C
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_080AAB24
sub_080AAB24: @ 0x080AAB24
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AAB38
sub_080AAB38: @ 0x080AAB38
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080AAB4C
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080AAB62
_080AAB4C:
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	bne _080AAB5E
	adds r0, r4, #0
	bl sub_0806F69C
	b _080AAB62
_080AAB5E:
	movs r0, #2
	strb r0, [r4, #0xc]
_080AAB62:
	pop {r4, pc}

	thumb_func_start sub_080AAB64
sub_080AAB64: @ 0x080AAB64
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080AAB7C
	bl DeleteThisEntity
_080AAB7C:
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080AAB8A
	bl DeleteThisEntity
_080AAB8A:
	pop {r4, pc}

	thumb_func_start sub_080AAB8C
sub_080AAB8C: @ 0x080AAB8C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080AABA2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_080AABA2:
	adds r0, r4, #0
	bl sub_080AABB0
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}

	thumb_func_start sub_080AABB0
sub_080AABB0: @ 0x080AABB0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r1, [r5, #0x14]
	lsls r1, r1, #1
	ldr r0, _080AABEC @ =gSineTable
	adds r1, r1, r0
	ldrb r2, [r4, #0xe]
	lsls r2, r2, #8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r3, r0, #0
	muls r3, r2, r3
	ldr r0, [r4, #0x2c]
	adds r0, r0, r3
	str r0, [r4, #0x2c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	str r0, [r4, #0x30]
	pop {r4, r5, pc}
	.align 2, 0
_080AABEC: .4byte gSineTable

	thumb_func_start sub_080AABF0
sub_080AABF0: @ 0x080AABF0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AAC08 @ =gUnk_0812A418
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AAC08: .4byte gUnk_0812A418

	thumb_func_start sub_080AAC0C
sub_080AAC0C: @ 0x080AAC0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080AAC40 @ =gUnk_0812A430
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080AAC3C
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080AAC3C
	subs r1, #0x3f
	movs r0, #0
	strb r0, [r1]
_080AAC3C:
	pop {r4, pc}
	.align 2, 0
_080AAC40: .4byte gUnk_0812A430

	thumb_func_start sub_080AAC44
sub_080AAC44: @ 0x080AAC44
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AACCA
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080AACBC
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080AACA0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AAC84
	ldr r0, _080AAC80 @ =gLinkEntity
	adds r1, r4, #0
	bl ResolveEntityOnTop
	b _080AAC8C
	.align 2, 0
_080AAC80: .4byte gLinkEntity
_080AAC84:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl ResolveEntityOnTop
_080AAC8C:
	bl sub_08077B2C
	ldr r2, _080AACB4 @ =gLinkState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
_080AACA0:
	ldr r0, _080AACB8 @ =gLinkEntity
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	bne _080AACCA
	adds r0, r4, #0
	adds r0, #0x45
	strb r1, [r0]
	b _080AACCA
	.align 2, 0
_080AACB4: .4byte gLinkState
_080AACB8: .4byte gLinkEntity
_080AACBC:
	ldr r0, _080AACDC @ =0x00000119
	bl PlaySFX
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
_080AACCA:
	adds r1, r4, #0
	adds r1, #0x42
	ldrb r0, [r1]
	cmp r0, #0
	beq _080AACD8
	movs r0, #0
	strb r0, [r1]
_080AACD8:
	pop {r4, pc}
	.align 2, 0
_080AACDC: .4byte 0x00000119

	thumb_func_start sub_080AACE0
sub_080AACE0: @ 0x080AACE0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080AACF4
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _080AACF4
	bl DeleteThisEntity
_080AACF4:
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x1e
	lsrs r2, r0, #0x1e
	adds r5, r4, #0
	adds r5, #0x86
	cmp r2, #1
	bne _080AAD16
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r5]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
_080AAD16:
	ldr r2, [r4, #0x50]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080AAD4A
	adds r1, r2, #0
	adds r1, #0x74
	movs r0, #3
	strb r0, [r1]
	adds r1, #0xc
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsrs r0, r0, #1
	ldrb r2, [r1]
	adds r0, r0, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _080AAD42
	movs r0, #8
	b _080AAD56
_080AAD42:
	cmp r0, #0
	bne _080AAD58
	movs r0, #1
	b _080AAD56
_080AAD4A:
	adds r1, r2, #0
	adds r1, #0x84
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x45
	movs r0, #0x2b
_080AAD56:
	strb r0, [r1]
_080AAD58:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080AAD68
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
_080AAD68:
	bl DeleteThisEntity
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AAD70
sub_080AAD70: @ 0x080AAD70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080AAD82
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_080AAD82:
	ldr r0, _080AAD94 @ =gUnk_0812A440
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080AAD94: .4byte gUnk_0812A440

	thumb_func_start sub_080AAD98
sub_080AAD98: @ 0x080AAD98
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_541
nullsub_541: @ 0x080AADA0
	bx lr
	.align 2, 0

	thumb_func_start sub_080AADA4
sub_080AADA4: @ 0x080AADA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _080AADB8
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0
	strb r0, [r1]
_080AADB8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AADBC
sub_080AADBC: @ 0x080AADBC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _080AADCC
	movs r0, #1
	strb r0, [r5, #0xc]
	b _080AADE0
_080AADCC:
	movs r0, #3
	strb r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x3f
	movs r0, #0x2c
	strb r0, [r1]
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl ResolveEntityOnTop
_080AADE0:
	ldrb r1, [r5, #0xa]
	cmp r1, #0
	bne _080AAE64
	strb r1, [r5, #0xe]
	movs r3, #4
	movs r0, #4
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x80
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x45
	movs r0, #0x10
	strb r0, [r1]
	ldrh r0, [r5, #0x36]
	adds r0, #4
	movs r4, #0
	strh r0, [r5, #0x36]
	ldrb r2, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r5, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #0x19]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	ldr r1, _080AAE60 @ =gLinkEntity
	adds r0, r5, #0
	bl GetFacingDirection
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	adds r0, #0x86
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	movs r0, #0x18
	bl sub_080A7EE0
	adds r1, r0, #0
	cmp r1, #0
	beq _080AAE7C
	movs r0, #1
	strb r0, [r1, #0xa]
	ldrb r0, [r5, #0xb]
	strb r0, [r1, #0xb]
	str r5, [r1, #0x50]
	b _080AAE7C
	.align 2, 0
_080AAE60: .4byte gLinkEntity
_080AAE64:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl ResolveEntityOnTop
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5, #0x10]
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl CopyPosition
_080AAE7C:
	ldrb r1, [r5, #0xa]
	adds r0, r5, #0
	bl InitializeAnimation
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AAE88
sub_080AAE88: @ 0x080AAE88
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080AAED0
	cmp r0, #1
	bgt _080AAE9C
	cmp r0, #0
	beq _080AAEA2
	b _080AAEF6
_080AAE9C:
	cmp r0, #2
	beq _080AAEE0
	b _080AAEF6
_080AAEA2:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AAEC2
	movs r0, #4
	strb r0, [r4, #0xf]
	ldr r1, _080AAECC @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_080AAEC2:
	adds r0, r4, #0
	bl sub_0806F69C
	b _080AAEF6
	.align 2, 0
_080AAECC: .4byte gLinkEntity
_080AAED0:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _080AAEDC
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AAEE0
_080AAEDC:
	bl DeleteThisEntity
_080AAEE0:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _080AAEEE
	bl DeleteThisEntity
_080AAEEE:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
_080AAEF6:
	adds r0, r4, #0
	bl sub_080AB034
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AAF00
sub_080AAF00: @ 0x080AAF00
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AAF74
	adds r0, r4, #0
	bl sub_080AB034
	pop {r4, pc}

	thumb_func_start sub_080AAF10
sub_080AAF10: @ 0x080AAF10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	bl sub_080AB034
	ldr r3, [r4, #0x50]
	ldrb r1, [r3, #0x18]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _080AAF48
	adds r0, r3, #0
	adds r0, #0x45
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x45
	strb r0, [r1]
_080AAF48:
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _080AAF60
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AAF70
	movs r0, #0x7f
	ands r0, r1
	b _080AAF6E
_080AAF60:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080AAF70
	movs r0, #0x80
	orrs r0, r1
_080AAF6E:
	strb r0, [r4, #0x10]
_080AAF70:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AAF74
sub_080AAF74: @ 0x080AAF74
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0807953C
	cmp r0, #0
	beq _080AAF94
	bl Random
	adds r3, r5, #0
	adds r3, #0x80
	ldrb r1, [r3]
	adds r1, #1
	movs r2, #1
	ands r0, r2
	adds r1, r1, r0
	strb r1, [r3]
_080AAF94:
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne _080AAFCC
	movs r0, #0x1e
	strb r0, [r5, #0xe]
	ldr r4, _080AAFFC @ =gLinkEntity
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #8
	strb r0, [r1]
	subs r0, #0xc
	bl ModHealth
	adds r0, r4, #0
	movs r1, #0x7a
	bl sub_0800449C
	adds r4, #0x45
	ldrb r1, [r4]
	cmp r1, #0
	bne _080AAFCC
	adds r0, r5, #0
	adds r0, #0x45
	strb r1, [r0]
_080AAFCC:
	adds r1, r5, #0
	adds r1, #0x80
	ldrb r0, [r1]
	cmp r0, #0x30
	bhi _080AAFE0
	adds r0, r5, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080AB004
_080AAFE0:
	movs r2, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r2, [r1]
	ldr r0, _080AAFFC @ =gLinkEntity
	adds r0, #0x3d
	movs r1, #0xf0
	strb r1, [r0]
	ldr r0, _080AB000 @ =gLinkState
	strb r2, [r0, #0x1a]
	adds r0, r5, #0
	adds r0, #0x45
	strb r2, [r0]
	b _080AB028
	.align 2, 0
_080AAFFC: .4byte gLinkEntity
_080AB000: .4byte gLinkState
_080AB004:
	bl sub_08077B2C
	ldr r2, _080AB02C @ =gLinkState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0x1a]
	ldrb r1, [r2, #0xa]
	orrs r0, r1
	strb r0, [r2, #0xa]
	ldr r4, _080AB030 @ =gLinkEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldrh r0, [r4, #0x36]
	subs r0, #4
	strh r0, [r5, #0x36]
_080AB028:
	pop {r4, r5, pc}
	.align 2, 0
_080AB02C: .4byte gLinkState
_080AB030: .4byte gLinkEntity

	thumb_func_start sub_080AB034
sub_080AB034: @ 0x080AB034
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r1, _080AB058 @ =0x00000139
	cmp r0, #0
	beq _080AB04E
	movs r1, #0
_080AB04E:
	adds r0, r4, #0
	bl sub_0801D2B4
	pop {r4, pc}
	.align 2, 0
_080AB058: .4byte 0x00000139

	thumb_func_start sub_080AB05C
sub_080AB05C: @ 0x080AB05C
	push {lr}
	ldr r2, _080AB070 @ =gUnk_0812A494
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AB070: .4byte gUnk_0812A494

	thumb_func_start sub_080AB074
sub_080AB074: @ 0x080AB074
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x50]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080AB084
	bl DeleteThisEntity
_080AB084:
	ldrb r6, [r4, #0xc]
	cmp r6, #0
	bne _080AB0AA
	adds r0, r4, #0
	bl sub_080AB12C
	cmp r0, #0
	beq _080AB124
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r6, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_080AB0AA:
	ldr r0, [r4, #0x50]
	adds r7, r5, #0
	adds r7, #0x7f
	movs r3, #0
	ldrsb r3, [r7, r3]
	rsbs r3, r3, #0
	subs r3, #0xa
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA90
	ldr r3, _080AB128 @ =gSineTable
	adds r2, r5, #0
	adds r2, #0x7c
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r6, r5, #0
	adds r6, #0x7e
	ldrb r0, [r6]
	lsls r0, r0, #8
	muls r1, r0, r1
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldrb r0, [r2]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrb r0, [r6]
	lsls r0, r0, #8
	muls r1, r0, r1
	ldr r0, [r4, #0x30]
	subs r0, r0, r1
	str r0, [r4, #0x30]
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldrh r6, [r4, #0x36]
	adds r0, r0, r6
	strh r0, [r4, #0x36]
	adds r0, r5, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	cmp r0, #0
	beq _080AB124
	movs r0, #0x19
	bl sub_080A7EE0
	adds r5, r0, #0
	cmp r5, #0
	beq _080AB124
	movs r0, #4
	strb r0, [r5, #0xa]
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPositionAndSpriteOffset
_080AB124:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AB128: .4byte gSineTable

	thumb_func_start sub_080AB12C
sub_080AB12C: @ 0x080AB12C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080AB168 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x44
	bhi _080AB16C
	movs r0, #0x19
	bl sub_080A7EE0
	adds r1, r0, #0
	movs r0, #1
	strb r0, [r1, #0xa]
	str r4, [r1, #0x50]
	movs r0, #0x19
	bl sub_080A7EE0
	adds r1, r0, #0
	movs r0, #2
	strb r0, [r1, #0xa]
	str r4, [r1, #0x50]
	movs r0, #0x19
	bl sub_080A7EE0
	adds r1, r0, #0
	movs r0, #3
	strb r0, [r1, #0xa]
	str r4, [r1, #0x50]
	movs r0, #1
	b _080AB16E
	.align 2, 0
_080AB168: .4byte gUnk_03003DBC
_080AB16C:
	movs r0, #0
_080AB16E:
	pop {r4, pc}

	thumb_func_start sub_080AB170
sub_080AB170: @ 0x080AB170
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x50]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _080AB180
	bl DeleteThisEntity
_080AB180:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080AB1AA
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #0x3a
	ands r0, r1
	strb r0, [r2]
	movs r0, #5
	strb r0, [r4, #0x1e]
	ldrb r1, [r2]
	subs r0, #0xd
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080AB1C8 @ =gUnk_080FD460
	str r0, [r4, #0x48]
_080AB1AA:
	ldr r5, [r6, #0x50]
	adds r0, r4, #0
	adds r0, #0x7c
	adds r2, r5, #0
	adds r2, #0x7c
	ldrb r1, [r0]
	adds r3, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	beq _080AB1CC
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	b _080AB1D2
	.align 2, 0
_080AB1C8: .4byte gUnk_080FD460
_080AB1CC:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
_080AB1D2:
	strb r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080AB208
	movs r0, #0x1f
	ands r0, r1
	ldr r1, _080AB204 @ =gUnk_0812A4A8
	adds r0, r0, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA90
	b _080AB216
	.align 2, 0
_080AB204: .4byte gUnk_0812A4A8
_080AB208:
	movs r3, #0xa
	rsbs r3, r3, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0806FA90
_080AB216:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	ldrb r2, [r4, #0xa]
	muls r0, r2, r0
	adds r3, r2, #0
	cmp r0, #0
	bge _080AB22C
	adds r0, #3
_080AB22C:
	asrs r0, r0, #2
	ldrh r5, [r4, #0x2e]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	subs r0, r0, r1
	muls r0, r3, r0
	cmp r0, #0
	bge _080AB246
	adds r0, #3
_080AB246:
	asrs r0, r0, #2
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	movs r3, #0x36
	ldrsh r0, [r6, r3]
	movs r5, #0x36
	ldrsh r1, [r4, r5]
	subs r0, r0, r1
	muls r0, r2, r0
	cmp r0, #0
	bge _080AB260
	adds r0, #3
_080AB260:
	asrs r0, r0, #2
	ldrh r1, [r4, #0x36]
	adds r0, r0, r1
	strh r0, [r4, #0x36]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080AB26C
sub_080AB26C: @ 0x080AB26C
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0xc]
	cmp r1, #0
	bne _080AB28C
	movs r0, #1
	strb r0, [r2, #0xc]
	movs r0, #5
	strb r0, [r2, #0xe]
	strb r1, [r2, #0x1e]
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x3e
	ands r0, r1
	strb r0, [r3]
_080AB28C:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AB29E
	bl DeleteThisEntity
	b _080AB2A4
_080AB29E:
	ldrb r0, [r2, #0x1e]
	adds r0, #1
	strb r0, [r2, #0x1e]
_080AB2A4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AB2A8
sub_080AB2A8: @ 0x080AB2A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AB2C0 @ =gUnk_0812A4C8
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AB2C0: .4byte gUnk_0812A4C8

	thumb_func_start sub_080AB2C4
sub_080AB2C4: @ 0x080AB2C4
	push {lr}
	ldr r2, _080AB2D8 @ =gUnk_0812A4DC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AB2D8: .4byte gUnk_0812A4DC

	thumb_func_start sub_080AB2DC
sub_080AB2DC: @ 0x080AB2DC
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r2, #0
	adds r5, #0x41
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AB314
	movs r0, #3
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r4, #0x7f
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	movs r1, #0x53
	bl InitializeAnimation
	ldrb r0, [r5]
	ands r4, r0
	cmp r4, #0
	bne _080AB314
	movs r0, #4
	rsbs r0, r0, #0
	bl ModHealth
_080AB314:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AB318
sub_080AB318: @ 0x080AB318
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r4, #1
	movs r0, #1
	mov r8, r0
	mov r1, r8
	strb r1, [r6, #0xc]
	ldr r0, _080AB3D8 @ =0xFFFF0000
	str r0, [r6, #0x20]
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	ldr r2, _080AB3DC @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r6, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r6, #0
	adds r0, #0x76
	strh r1, [r0]
	ldr r0, [r6, #0x50]
	adds r1, r6, #0
	bl CopyPosition
	movs r1, #0x80
	lsls r1, r1, #5
	ldrb r2, [r6, #0x15]
	adds r0, r6, #0
	bl sub_0806F5BC
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	ldr r0, [r6, #0x50]
	ldr r0, [r0, #0x34]
	str r0, [r6, #0x34]
	adds r0, r6, #0
	movs r1, #0x51
	bl InitializeAnimation
	ldr r0, _080AB3E0 @ =0x000001B5
	bl PlaySFX
	adds r0, r6, #0
	bl sub_080AB4F8
	movs r1, #0x2e
	ldrsh r2, [r6, r1]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r2, r1
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080041DC
	adds r4, r0, #0
	bl Random
	adds r1, r0, #0
	ldr r0, _080AB3E4 @ =0x000001FF
	ands r1, r0
	ldr r0, _080AB3E8 @ =gUnk_030010A0
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _080AB3EC
	adds r4, r4, r1
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080AB3F4
	adds r4, r0, #0
	b _080AB3F4
	.align 2, 0
_080AB3D8: .4byte 0xFFFF0000
_080AB3DC: .4byte gRoomControls
_080AB3E0: .4byte 0x000001B5
_080AB3E4: .4byte 0x000001FF
_080AB3E8: .4byte gUnk_030010A0
_080AB3EC:
	subs r4, r4, r1
	cmp r4, #0x1f
	bgt _080AB3F4
	movs r4, #0x20
_080AB3F4:
	lsls r1, r4, #8
	ldr r0, [r6, #0x34]
	bl __divsi3
	lsls r0, r0, #0xd
	str r0, [r6, #0x20]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080045B4
	strb r0, [r6, #0x15]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AB414
sub_080AB414: @ 0x080AB414
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _080AB446
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x54
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080AB4A4
	b _080AB458
_080AB446:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe0
	bls _080AB458
	bl DeleteThisEntity
_080AB458:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB45C
sub_080AB45C: @ 0x080AB45C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AB486
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0x53
	bl InitializeAnimation
_080AB486:
	pop {r4, pc}

	thumb_func_start sub_080AB488
sub_080AB488: @ 0x080AB488
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AB4A0
	bl DeleteThisEntity
_080AB4A0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB4A4
sub_080AB4A4: @ 0x080AB4A4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r6, #0
	adds r7, #0x76
	ldrh r4, [r7]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldr r3, _080AB4F4 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	cmp r4, r5
	beq _080AB4F2
	strh r5, [r7]
	adds r0, r6, #0
	bl GetTileTypeByEntity
	cmp r0, #0x13
	beq _080AB4E2
	cmp r0, #0x34
	bne _080AB4F2
_080AB4E2:
	movs r0, #0xd3
	lsls r0, r0, #2
	ldrh r1, [r7]
	adds r2, r6, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
_080AB4F2:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AB4F4: .4byte gRoomControls

	thumb_func_start sub_080AB4F8
sub_080AB4F8: @ 0x080AB4F8
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	lsls r0, r0, #5
	ldrb r1, [r1, #0xf]
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _080AB50C @ =gUnk_0812A4EC
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080AB50C: .4byte gUnk_0812A4EC

	thumb_func_start sub_080AB510
sub_080AB510: @ 0x080AB510
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AB528 @ =gUnk_0812A58C
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AB528: .4byte gUnk_0812A58C

	thumb_func_start sub_080AB52C
sub_080AB52C: @ 0x080AB52C
	push {lr}
	ldr r2, _080AB540 @ =gUnk_0812A5A0
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AB540: .4byte gUnk_0812A5A0

	thumb_func_start sub_080AB544
sub_080AB544: @ 0x080AB544
	push {lr}
	adds r2, r0, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080AB57C
	movs r1, #2
	movs r0, #2
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	strb r0, [r2, #0x15]
	ldrb r0, [r2, #0xa]
	eors r1, r0
	lsls r1, r1, #3
	ldrb r0, [r2, #0x15]
	subs r0, r0, r1
	adds r0, #1
	cmp r0, #2
	bhi _080AB576
	strb r1, [r2, #0x15]
_080AB576:
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2, #0x24]
_080AB57C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AB580
sub_080AB580: @ 0x080AB580
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	strb r1, [r0, #0x15]
	ldr r1, _080AB598 @ =0x0000FFFC
	strh r1, [r0, #0x36]
	ldrb r1, [r0, #0xa]
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
_080AB598: .4byte 0x0000FFFC

	thumb_func_start sub_080AB59C
sub_080AB59C: @ 0x080AB59C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	cmp r0, #0
	bne _080AB5BC
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080AB5BC:
	adds r0, r4, #0
	bl sub_080AB5F4
	pop {r4, pc}

	thumb_func_start sub_080AB5C4
sub_080AB5C4: @ 0x080AB5C4
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl sub_080AB634
	cmp r0, #0
	bne _080AB5F0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080AB5F0
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080AB5F0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB5F4
sub_080AB5F4: @ 0x080AB5F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080043E8
	cmp r0, #2
	beq _080AB61A
	cmp r0, #2
	bhi _080AB60A
	cmp r0, #1
	beq _080AB610
	b _080AB62E
_080AB60A:
	cmp r0, #3
	beq _080AB624
	b _080AB62E
_080AB610:
	adds r0, r4, #0
	bl sub_080043B4
	movs r0, #1
	b _080AB630
_080AB61A:
	adds r0, r4, #0
	bl sub_080043A8
	movs r0, #1
	b _080AB630
_080AB624:
	adds r0, r4, #0
	bl sub_080043AC
	movs r0, #1
	b _080AB630
_080AB62E:
	movs r0, #0
_080AB630:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB634
sub_080AB634: @ 0x080AB634
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x50]
	movs r5, #0
	adds r4, r0, #0
	adds r4, #0x20
_080AB640:
	ldr r1, [r4]
	cmp r1, #0
	beq _080AB684
	adds r0, r6, #0
	bl sub_080177A0
	cmp r0, #0
	beq _080AB684
	ldr r1, [r4]
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	bhi _080AB67A
	movs r0, #3
	strb r0, [r1, #0xc]
	ldr r1, [r4]
	movs r0, #0x1e
	strb r0, [r1, #0xe]
	ldr r2, [r4]
	ldrb r0, [r2, #0x18]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	ldr r0, [r4]
	movs r1, #0x45
	movs r2, #0
	bl CreateFx
_080AB67A:
	adds r0, r6, #0
	bl DeleteEntity
	movs r0, #1
	b _080AB68E
_080AB684:
	adds r4, #4
	adds r5, #1
	cmp r5, #3
	bls _080AB640
	movs r0, #0
_080AB68E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080AB690
sub_080AB690: @ 0x080AB690
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bne _080AB6A2
	bl DeleteThisEntity
_080AB6A2:
	ldr r0, _080AB6B4 @ =gUnk_0812A5E8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080AB6B4: .4byte gUnk_0812A5E8

	thumb_func_start sub_080AB6B8
sub_080AB6B8: @ 0x080AB6B8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	ldr r0, [r0, #0x2c]
	str r0, [r2, #0x74]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080AB6E8
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r0, _080AB6E4 @ =gUnk_0812A614
	str r0, [r2, #0x48]
	adds r0, r2, #0
	movs r1, #0
	bl InitializeAnimation
	b _080AB6F8
	.align 2, 0
_080AB6E4: .4byte gUnk_0812A614
_080AB6E8:
	movs r0, #2
	strb r0, [r2, #0xc]
	movs r0, #4
	strb r0, [r2, #0xf]
	ldrb r1, [r2, #0xe]
	adds r0, r2, #0
	bl InitializeAnimation
_080AB6F8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AB6FC
sub_080AB6FC: @ 0x080AB6FC
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080AB724
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080AB758
_080AB724:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB728
sub_080AB728: @ 0x080AB728
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldr r2, [r4, #0x50]
	ldr r1, [r2, #0x2c]
	ldr r0, [r4, #0x74]
	subs r1, r1, r0
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r0, [r2, #0x2c]
	str r0, [r4, #0x74]
	adds r0, r4, #0
	bl sub_080AB888
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	bne _080AB754
	bl DeleteThisEntity
_080AB754:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AB758
sub_080AB758: @ 0x080AB758
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #6
	movs r7, #0
	movs r4, #0
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	ldr r1, _080AB818 @ =gRoomControls
	ldrh r0, [r1, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r1
	cmp r2, r0
	bhi _080AB7B4
	movs r3, #7
_080AB77E:
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #7
	bne _080AB798
	adds r0, r5, #0
	movs r1, #4
	adds r2, r6, #0
	str r3, [sp]
	bl sub_080AB844
	adds r6, #0x3e
	adds r7, #0x3e
	ldr r3, [sp]
_080AB798:
	adds r4, #1
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r0, r0, r7
	lsls r1, r4, #3
	adds r2, r0, r1
	ldr r0, _080AB818 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _080AB77E
_080AB7B4:
	movs r4, #0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r2, r0, r7
	mov r1, r8
	ldrh r0, [r1, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bhi _080AB802
	movs r3, #3
_080AB7CC:
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #3
	bne _080AB7E6
	adds r0, r5, #0
	movs r1, #3
	adds r2, r6, #0
	str r3, [sp]
	bl sub_080AB844
	adds r6, #0x1e
	adds r7, #0x1e
	ldr r3, [sp]
_080AB7E6:
	adds r4, #1
	ands r4, r3
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	adds r0, r0, r7
	lsls r1, r4, #3
	adds r2, r0, r1
	ldr r0, _080AB818 @ =gRoomControls
	ldrh r0, [r0, #8]
	adds r0, #0xd4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _080AB7CC
_080AB802:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080AB81C
	adds r0, r5, #0
	movs r1, #2
	adds r2, r6, #0
	bl sub_080AB844
	adds r6, #0xe
	b _080AB830
	.align 2, 0
_080AB818: .4byte gRoomControls
_080AB81C:
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _080AB830
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl sub_080AB844
	adds r6, #6
_080AB830:
	adds r0, r5, #0
	movs r1, #6
	adds r2, r6, #0
	bl sub_080AB844
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_080AB844
sub_080AB844: @ 0x080AB844
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r0, #0x1c
	bl sub_080A7EE0
	adds r4, r0, #0
	cmp r4, #0
	beq _080AB880
	movs r0, #1
	strb r0, [r4, #0xa]
	strb r7, [r4, #0xe]
	ldr r0, [r5, #0x50]
	str r0, [r4, #0x50]
	lsls r3, r6, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	cmp r7, #1
	beq _080AB87C
	ldr r0, _080AB878 @ =gUnk_0812A61C
	b _080AB87E
	.align 2, 0
_080AB878: .4byte gUnk_0812A61C
_080AB87C:
	ldr r0, _080AB884 @ =gUnk_0812A614
_080AB87E:
	str r0, [r4, #0x48]
_080AB880:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AB884: .4byte gUnk_0812A614

	thumb_func_start sub_080AB888
sub_080AB888: @ 0x080AB888
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	movs r3, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #3
	beq _080AB8A4
	cmp r0, #3
	ble _080AB8B6
	cmp r0, #4
	beq _080AB8A6
	b _080AB8B6
_080AB8A4:
	movs r3, #1
_080AB8A6:
	ldr r0, _080AB8C4 @ =gUnk_0812A5F4
	ldrb r1, [r2, #0xf]
	lsls r1, r1, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2, #0x48]
_080AB8B6:
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	bne _080AB8C0
	movs r0, #4
	strb r0, [r2, #0xf]
_080AB8C0:
	pop {pc}
	.align 2, 0
_080AB8C4: .4byte gUnk_0812A5F4

	thumb_func_start sub_080AB8C8
sub_080AB8C8: @ 0x080AB8C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080AB8E4 @ =gUnk_0812A6B4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_080AB9DC
	pop {r4, pc}
	.align 2, 0
_080AB8E4: .4byte gUnk_0812A6B4

	thumb_func_start sub_080AB8E8
sub_080AB8E8: @ 0x080AB8E8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r4, #0xc]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	str r1, [r4, #0x34]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AB90E
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	str r4, [r4, #0x50]
_080AB90E:
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bhi _080AB936
	movs r0, #0x1d
	bl sub_080A7EE0
	adds r1, r0, #0
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	str r4, [r1, #0x54]
	adds r0, r4, #0
	bl CopyPosition
_080AB936:
	adds r1, r4, #0
	adds r1, #0x68
	movs r2, #7
_080AB93C:
	ldrh r0, [r4, #0x2e]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x32]
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _080AB93C
	pop {r4, pc}

	thumb_func_start sub_080AB950
sub_080AB950: @ 0x080AB950
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AB99C
	adds r0, r4, #0
	bl sub_080AEF88
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	ldr r1, _080AB994 @ =gUnk_0812A6C4
	lsls r5, r0, #1
	adds r1, r5, r1
	ldrh r1, [r1]
	ldrh r0, [r4, #0x2a]
	ands r0, r1
	cmp r0, #0
	bne _080AB980
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AB9FC
	cmp r0, #0
	beq _080AB9D4
_080AB980:
	bl Random
	ldr r2, _080AB998 @ =gUnk_0812A6BC
	movs r1, #1
	ands r1, r0
	adds r1, r1, r5
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0x15]
	b _080AB9D4
	.align 2, 0
_080AB994: .4byte gUnk_0812A6C4
_080AB998: .4byte gUnk_0812A6BC
_080AB99C:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _080AB9A6
	bl DeleteThisEntity
_080AB9A6:
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AB9B2
	bl DeleteThisEntity
_080AB9B2:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080AB9D0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _080AB9D0
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r1, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	b _080AB9D4
_080AB9D0:
	bl DeleteThisEntity
_080AB9D4:
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, r5, pc}

	thumb_func_start sub_080AB9DC
sub_080AB9DC: @ 0x080AB9DC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x6c
	adds r1, r4, #0
	adds r1, #0x68
	movs r2, #0x1c
	bl sub_0801D66C
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x84
	strh r1, [r0]
	ldrh r1, [r4, #0x32]
	adds r0, #2
	strh r1, [r0]
	pop {r4, pc}

	thumb_func_start sub_080AB9FC
sub_080AB9FC: @ 0x080AB9FC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl GetLayerByIndex
	movs r1, #0x2e
	ldrsh r3, [r5, r1]
	ldr r2, _080ABA4C @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r3, r3, r1
	asrs r3, r3, #4
	movs r6, #0x3f
	ands r3, r6
	movs r7, #0x32
	ldrsh r1, [r5, r7]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r6
	lsls r1, r1, #6
	orrs r3, r1
	ldr r1, _080ABA50 @ =gUnk_080B4488
	lsrs r4, r4, #3
	lsls r4, r4, #1
	adds r4, r4, r1
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r3, r3, r1
	ldr r7, _080ABA54 @ =0x00002004
	adds r0, r0, r7
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0x1f
	bls _080ABA58
	cmp r0, #0x3f
	bhi _080ABA58
	movs r0, #1
	b _080ABA5A
	.align 2, 0
_080ABA4C: .4byte gRoomControls
_080ABA50: .4byte gUnk_080B4488
_080ABA54: .4byte 0x00002004
_080ABA58:
	movs r0, #0
_080ABA5A:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080ABA5C
sub_080ABA5C: @ 0x080ABA5C
	push {lr}
	ldr r2, _080ABA70 @ =gUnk_0812A6CC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080ABA70: .4byte gUnk_0812A6CC

	thumb_func_start sub_080ABA74
sub_080ABA74: @ 0x080ABA74
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x86
	ldrh r0, [r0]
	strh r0, [r2, #0x24]
	ldrh r1, [r2, #0x2e]
	adds r0, r2, #0
	adds r0, #0x68
	strh r1, [r0]
	ldrh r0, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x84
	ldrh r1, [r0]
	subs r0, #0x18
	strh r1, [r0]
	ldrb r0, [r2, #0xa]
	cmp r0, #6
	bhi _080ABAAA
	movs r0, #0
	b _080ABAAC
_080ABAAA:
	movs r0, #1
_080ABAAC:
	strb r0, [r2, #0xb]
	ldr r0, _080ABAC8 @ =gUnk_0812A6D4
	ldrb r1, [r2, #0xa]
	adds r0, r1, r0
	ldrb r3, [r0]
	ldrb r0, [r2, #0xb]
	cmp r0, #0
	bne _080ABACC
	movs r0, #8
	strb r0, [r2, #0x15]
	ldrh r0, [r2, #0x32]
	adds r0, r0, r3
	strh r0, [r2, #0x32]
	b _080ABAD6
	.align 2, 0
_080ABAC8: .4byte gUnk_0812A6D4
_080ABACC:
	movs r0, #0x10
	strb r0, [r2, #0x15]
	ldrh r0, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
_080ABAD6:
	adds r0, r2, #0
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080ABAE0
sub_080ABAE0: @ 0x080ABAE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080AF090
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080ABAFE
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r1, r4, #0
	adds r1, #0x68
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r3, r0, r1
	b _080ABB0C
_080ABAFE:
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x6a
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r3, r1, r0
_080ABB0C:
	adds r0, r4, #0
	adds r0, #0x6c
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r6, r0, #0
	cmp r2, #0
	bge _080ABB1E
	rsbs r3, r3, #0
	rsbs r2, r2, #0
_080ABB1E:
	lsls r1, r3, #0x10
	lsls r0, r2, #0x10
	cmp r1, r0
	bls _080ABB84
	ldrb r0, [r4, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0xb]
	adds r5, r0, #0
	cmp r5, #0
	bne _080ABB4E
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #6
	subs r0, #0x42
	b _080ABB62
_080ABB4E:
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	ldrb r2, [r4, #0x18]
	lsrs r1, r2, #7
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #7
	movs r0, #0x7f
_080ABB62:
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	cmp r3, #0
	ble _080ABB84
	lsls r0, r5, #0x18
	cmp r0, #0
	bne _080ABB7C
	ldrh r0, [r6]
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	b _080ABB84
_080ABB7C:
	ldrh r0, [r6]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_080ABB84:
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080ABB8C
sub_080ABB8C: @ 0x080ABB8C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080ABBA4 @ =gUnk_0812A7D4
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080ABBA4: .4byte gUnk_0812A7D4

	thumb_func_start sub_080ABBA8
sub_080ABBA8: @ 0x080ABBA8
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #1
	beq _080ABBC4
	cmp r0, #1
	bgt _080ABBDC
	cmp r0, #0
	bne _080ABBDC
	ldr r0, _080ABBC0 @ =gUnk_0812A7EC
	b _080ABBC6
	.align 2, 0
_080ABBC0: .4byte gUnk_0812A7EC
_080ABBC4:
	ldr r0, _080ABBD8 @ =gUnk_0812A7F8
_080ABBC6:
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _080ABBEC
	.align 2, 0
_080ABBD8: .4byte gUnk_0812A7F8
_080ABBDC:
	ldr r0, _080ABBF0 @ =gUnk_0812A800
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_080ABBEC:
	pop {pc}
	.align 2, 0
_080ABBF0: .4byte gUnk_0812A800

	thumb_func_start sub_080ABBF4
sub_080ABBF4: @ 0x080ABBF4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080ABC52
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	blt _080ABC52
	cmp r0, #1
	ble _080ABC3E
	cmp r0, #2
	bne _080ABC52
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #3
	beq _080ABC32
	cmp r0, #3
	bgt _080ABC24
	cmp r0, #0
	beq _080ABC2A
	b _080ABC52
_080ABC24:
	cmp r0, #0x14
	beq _080ABC32
	b _080ABC52
_080ABC2A:
	movs r0, #4
	rsbs r0, r0, #0
	bl ModHealth
_080ABC32:
	adds r0, r4, #0
	bl sub_080A29BC
	bl DeleteThisEntity
	b _080ABC52
_080ABC3E:
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080ABC52
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	bl DeleteThisEntity
_080ABC52:
	pop {r4, pc}

	thumb_func_start sub_080ABC54
sub_080ABC54: @ 0x080ABC54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	bne _080ABC6E
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080ABC6E:
	ldr r0, _080ABC80 @ =gUnk_0812A808
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080ABC80: .4byte gUnk_0812A808

	thumb_func_start sub_080ABC84
sub_080ABC84: @ 0x080ABC84
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_542
nullsub_542: @ 0x080ABC8C
	bx lr
	.align 2, 0

	thumb_func_start sub_080ABC90
sub_080ABC90: @ 0x080ABC90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _080ABCBE
	movs r0, #2
	rsbs r0, r0, #0
	bl ModHealth
	ldr r0, _080ABCC0 @ =gLinkEntity
	movs r1, #0x7a
	bl sub_0800449C
	bl sub_08079D84
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080ABCBE:
	pop {r4, pc}
	.align 2, 0
_080ABCC0: .4byte gLinkEntity

	thumb_func_start sub_080ABCC4
sub_080ABCC4: @ 0x080ABCC4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x30
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5, #0x15]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _080ABD3C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrh r0, [r0]
	movs r1, #2
	bl GetTileType
	adds r1, r5, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _080ABD40 @ =0x0000014B
	bl PlaySFX
	pop {r4, r5, pc}
	.align 2, 0
_080ABD3C: .4byte gRoomControls
_080ABD40: .4byte 0x0000014B

	thumb_func_start sub_080ABD44
sub_080ABD44: @ 0x080ABD44
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080ABD60
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_080ABD60:
	adds r0, r4, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ABD70
sub_080ABD70: @ 0x080ABD70
	push {r4, r5, lr}
	adds r5, r0, #0
	bl GetNextFrame
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080ABDEE
	movs r0, #0xef
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	strh r1, [r5, #0x24]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r2, _080ABDDC @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r5, #0
	adds r4, #0x74
	strh r1, [r4]
	ldrh r0, [r4]
	movs r1, #2
	bl GetTileType
	adds r1, r5, #0
	adds r1, #0x76
	strh r0, [r1]
	ldrh r1, [r1]
	cmp r1, #0x13
	beq _080ABDE4
	ldr r0, _080ABDE0 @ =0x00000315
	cmp r1, r0
	bne _080ABDEE
	ldrh r1, [r4]
	movs r0, #0x6e
	movs r2, #2
	bl SetTileType
	b _080ABDEE
	.align 2, 0
_080ABDDC: .4byte gRoomControls
_080ABDE0: .4byte 0x00000315
_080ABDE4:
	ldrh r1, [r4]
	movs r0, #0x6d
	movs r2, #2
	bl SetTileType
_080ABDEE:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080ABE00
	bl DeleteThisEntity
_080ABE00:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080ABE04
sub_080ABE04: @ 0x080ABE04
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Random
	adds r5, r0, #0
	movs r0, #0xff
	ands r5, r0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080ABE48 @ =0xFFFF0000
	str r0, [r4, #0x20]
	ldrh r0, [r4, #0x36]
	subs r0, #0xa0
	strh r0, [r4, #0x36]
	ldr r3, _080ABE4C @ =gRoomControls
	ldrh r2, [r3, #6]
	ldr r1, _080ABE50 @ =0x00007FF0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strh r0, [r4, #0x2e]
	ldrh r0, [r3, #8]
	ands r1, r0
	orrs r1, r2
	strh r1, [r4, #0x32]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _080ABE54
	adds r1, #0x10
	b _080ABE56
	.align 2, 0
_080ABE48: .4byte 0xFFFF0000
_080ABE4C: .4byte gRoomControls
_080ABE50: .4byte 0x00007FF0
_080ABE54:
	adds r1, #0xc0
_080ABE56:
	movs r0, #0xe0
	ands r0, r5
	lsrs r0, r0, #1
	adds r0, r1, r0
	strh r0, [r4, #0x2e]
	movs r0, #0xf
	ands r5, r0
	lsls r0, r5, #4
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_08004168
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _080ABE84 @ =0x0000012D
	bl PlaySFX
	pop {r4, r5, pc}
	.align 2, 0
_080ABE84: .4byte 0x0000012D

	thumb_func_start sub_080ABE88
sub_080ABE88: @ 0x080ABE88
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xc0
	lsls r1, r1, #5
	bl sub_08003FC4
	cmp r0, #0
	bne _080ABEA6
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_080ABEA6:
	pop {r4, pc}

	thumb_func_start sub_080ABEA8
sub_080ABEA8: @ 0x080ABEA8
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	strb r2, [r4, #0xc]
	movs r0, #0x60
	strb r0, [r4, #0xe]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r1, [r3]
	subs r0, #0x68
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	strb r2, [r4, #0x1c]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080ABEDA
	bl Random
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	strb r0, [r4, #0x15]
	b _080ABEEC
_080ABEDA:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08049F84
	strb r0, [r4, #0x15]
	ldr r1, _080ABEFC @ =0x0000013F
	adds r0, r4, #0
	bl sub_0801D2B4
_080ABEEC:
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _080ABF00 @ =0x00000193
	bl PlaySFX
	pop {r4, pc}
	.align 2, 0
_080ABEFC: .4byte 0x0000013F
_080ABF00: .4byte 0x00000193

	thumb_func_start sub_080ABF04
sub_080ABF04: @ 0x080ABF04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080040A8
	cmp r0, #0
	bne _080ABF14
	bl DeleteThisEntity
_080ABF14:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ABF24
sub_080ABF24: @ 0x080ABF24
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080ABF3C @ =gUnk_0812A84C
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080ABF3C: .4byte gUnk_0812A84C

	thumb_func_start sub_080ABF40
sub_080ABF40: @ 0x080ABF40
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080ABF66
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r1, _080ABFA0 @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r0, _080ABFA4 @ =0x00000199
	bl PlaySFX
_080ABF66:
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080ABF78
	adds r0, r2, #2
	strh r0, [r4, #0x36]
_080ABF78:
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080ABF88
	bl DeleteThisEntity
_080ABF88:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080ABF9C
	bl DeleteThisEntity
_080ABF9C:
	pop {r4, pc}
	.align 2, 0
_080ABFA0: .4byte gLinkEntity
_080ABFA4: .4byte 0x00000199

	thumb_func_start sub_080ABFA8
sub_080ABFA8: @ 0x080ABFA8
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_080ABFB0
sub_080ABFB0: @ 0x080ABFB0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080ABFC8 @ =gUnk_0812A954
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080ABFC8: .4byte gUnk_0812A954

	thumb_func_start sub_080ABFCC
sub_080ABFCC: @ 0x080ABFCC
	push {lr}
	ldr r2, _080ABFE0 @ =gUnk_0812A968
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080ABFE0: .4byte gUnk_0812A968

	thumb_func_start sub_080ABFE4
sub_080ABFE4: @ 0x080ABFE4
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_080ABFEC
sub_080ABFEC: @ 0x080ABFEC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	adds r1, #1
	bl InitializeAnimation
	ldrb r1, [r4, #0xa]
	cmp r1, #0
	beq _080AC030
	cmp r1, #1
	beq _080AC048
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r4, #0xf]
	ldr r1, _080AC028 @ =gUnk_0812A97C
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0x88
	strb r0, [r1]
	ldr r0, _080AC02C @ =0x00000193
	b _080AC06A
	.align 2, 0
_080AC028: .4byte gUnk_0812A97C
_080AC02C: .4byte 0x00000193
_080AC030:
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	movs r0, #7
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x18
	strb r0, [r1]
	subs r1, #0x41
	movs r0, #0x88
	b _080AC058
_080AC048:
	strb r1, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0x18
_080AC058:
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPositionAndSpriteOffset
	ldrh r0, [r4, #0x36]
	subs r0, #0x14
	strh r0, [r4, #0x36]
	ldr r0, _080AC070 @ =0x00000149
_080AC06A:
	bl PlaySFX
	pop {r4, pc}
	.align 2, 0
_080AC070: .4byte 0x00000149

	thumb_func_start sub_080AC074
sub_080AC074: @ 0x080AC074
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AC084
	bl DeleteThisEntity
_080AC084:
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPositionAndSpriteOffset
	ldrh r0, [r4, #0x36]
	subs r0, #0x14
	strh r0, [r4, #0x36]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	beq _080AC0B2
	subs r0, #1
	strb r0, [r1]
	movs r1, #0xff
	ands r0, r1
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080AC0B2
	ldr r0, _080AC0E8 @ =0x00000149
	bl PlaySFX
_080AC0B2:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AC0FE
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AC0F0
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r1, _080AC0EC @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	strb r0, [r4, #0x15]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	adds r0, #0x13
	bl PlaySFX
	b _080AC0F8
	.align 2, 0
_080AC0E8: .4byte 0x00000149
_080AC0EC: .4byte gLinkEntity
_080AC0F0:
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
_080AC0F8:
	ldrh r0, [r4, #0x36]
	subs r0, #0x28
	strh r0, [r4, #0x36]
_080AC0FE:
	pop {r4, pc}

	thumb_func_start sub_080AC100
sub_080AC100: @ 0x080AC100
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #0x36]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080AC116
	adds r0, r2, #3
	strh r0, [r4, #0x36]
_080AC116:
	adds r0, r4, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080AC126
	bl DeleteThisEntity
_080AC126:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080AC13A
	bl DeleteThisEntity
_080AC13A:
	ldrb r0, [r4, #0xe]
	cmp r0, #0x1d
	bhi _080AC160
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0xff
	ands r0, r1
	ldrb r1, [r4, #0xf]
	ands r0, r1
	cmp r0, #0
	bne _080AC160
	ldr r1, _080AC164 @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_080AC160:
	pop {r4, pc}
	.align 2, 0
_080AC164: .4byte gLinkEntity

	thumb_func_start sub_080AC168
sub_080AC168: @ 0x080AC168
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldr r0, [r4, #0x34]
	ldr r1, _080AC1C0 @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080AC1F8
	movs r0, #4
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xe]
	bl Random
	adds r5, r0, #0
	movs r0, #7
	ands r5, r0
	ldr r0, _080AC1C4 @ =gUnk_0812A982
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r4, #0xf]
	ldr r1, _080AC1C8 @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	adds r1, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #3
	bne _080AC1D0
	ldr r0, _080AC1CC @ =gUnk_0812A98A
	adds r0, r5, r0
	ldrb r0, [r0]
	subs r1, r1, r0
	strb r6, [r4, #0xb]
	b _080AC1F2
	.align 2, 0
_080AC1C0: .4byte 0xFFFF8000
_080AC1C4: .4byte gUnk_0812A982
_080AC1C8: .4byte gLinkEntity
_080AC1CC: .4byte gUnk_0812A98A
_080AC1D0:
	cmp r0, #2
	bne _080AC1E4
	ldr r0, _080AC1E0 @ =gUnk_0812A98A
	adds r0, r5, r0
	ldrb r0, [r0]
	subs r1, r1, r0
	movs r0, #1
	b _080AC1F0
	.align 2, 0
_080AC1E0: .4byte gUnk_0812A98A
_080AC1E4:
	ldr r0, _080AC1FC @ =gUnk_0812A98A
	adds r0, r5, r0
	ldrb r0, [r0]
	lsrs r0, r0, #1
	subs r1, r1, r0
	movs r0, #2
_080AC1F0:
	strb r0, [r4, #0xb]
_080AC1F2:
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r4, #0x15]
_080AC1F8:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080AC1FC: .4byte gUnk_0812A98A

	thumb_func_start sub_080AC200
sub_080AC200: @ 0x080AC200
	push {r4, r5, lr}
	adds r4, r0, #0
	bl GetNextFrame
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC270
	movs r0, #0x10
	strb r0, [r4, #0xe]
	movs r0, #0x21
	bl sub_080A7EE0
	adds r1, r0, #0
	cmp r1, #0
	beq _080AC23C
	movs r0, #2
	strb r0, [r1, #0xa]
	ldrb r0, [r4, #0xb]
	strb r0, [r1, #0xb]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	adds r0, r4, #0
	bl CopyPosition
_080AC23C:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _080AC24C
	bl DeleteThisEntity
_080AC24C:
	ldr r0, [r4, #0x50]
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #3
	bne _080AC25C
	ldrb r0, [r4, #0x15]
	adds r0, #3
	b _080AC26A
_080AC25C:
	cmp r0, #2
	bne _080AC266
	ldrb r0, [r4, #0x15]
	adds r0, #3
	b _080AC26A
_080AC266:
	ldrb r0, [r4, #0x15]
	adds r0, #2
_080AC26A:
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_080AC270:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AC274
sub_080AC274: @ 0x080AC274
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AC284
	bl DeleteThisEntity
_080AC284:
	ldr r1, _080AC2BC @ =gUnk_0812A994
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AC2C0
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	b _080AC324
	.align 2, 0
_080AC2BC: .4byte gUnk_0812A994
_080AC2C0:
	ldr r5, [r4, #0x50]
	ldrb r2, [r5, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x19]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #2
	adds r3, r4, #0
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	cmp r0, #3
	bne _080AC31C
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AC31C
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	b _080AC322
_080AC31C:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
_080AC322:
	strb r0, [r4, #0x10]
_080AC324:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AC328
sub_080AC328: @ 0x080AC328
	push {lr}
	ldr r2, _080AC33C @ =gUnk_0812A9A8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AC33C: .4byte gUnk_0812A9A8

	thumb_func_start sub_080AC340
sub_080AC340: @ 0x080AC340
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080AC5E4
	cmp r0, #0
	beq _080AC380
	movs r2, #1
	movs r4, #1
	strb r4, [r5, #0xc]
	movs r0, #0xc
	strb r0, [r5, #0x1e]
	ldrb r1, [r5, #0x18]
	subs r0, #0x10
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	bl Random
	ldr r1, _080AC384 @ =gUnk_0812A9B4
	ands r0, r4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x7a
	strh r0, [r1]
	subs r1, #0x42
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080AC388
_080AC380:
	pop {r4, r5, pc}
	.align 2, 0
_080AC384: .4byte gUnk_0812A9B4

	thumb_func_start sub_080AC388
sub_080AC388: @ 0x080AC388
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r1, _080AC3E4 @ =gUnk_0812A9B8
	ldrb r0, [r5, #0xa]
	adds r0, r0, r1
	ldrb r3, [r0]
	ldr r0, [r5, #0x50]
	mov sl, r0
	ldrb r0, [r0, #0x14]
	movs r1, #0x80
	mov sb, r1
	mov r1, sb
	eors r1, r0
	adds r6, r5, #0
	adds r6, #0x7c
	ldrh r4, [r6]
	lsrs r0, r4, #8
	subs r1, r1, r0
	adds r2, r5, #0
	adds r2, #0x7a
	ldrh r7, [r2]
	mov ip, r7
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bge _080AC404
	subs r0, r1, r3
	movs r7, #0xff
	mov r8, r7
	ands r0, r7
	cmp r0, #0x7f
	bhi _080AC3E8
	movs r1, #0
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	strh r0, [r2]
	mov r2, sl
	ldrb r0, [r2, #0x14]
	mov r7, sb
	eors r0, r7
	subs r0, r0, r3
	b _080AC422
	.align 2, 0
_080AC3E4: .4byte gUnk_0812A9B8
_080AC3E8:
	mov r2, ip
	adds r0, r4, r2
	strh r0, [r6]
	adds r0, r1, r3
	mov r7, r8
	ands r0, r7
	cmp r0, #0x80
	bls _080AC45A
	mov r1, sl
	ldrb r0, [r1, #0x14]
	mov r2, sb
	eors r0, r2
	adds r0, r0, r3
	b _080AC44E
_080AC404:
	adds r0, r1, r3
	movs r7, #0xff
	mov r8, r7
	ands r0, r7
	cmp r0, #0x80
	bls _080AC432
	movs r1, #0
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	strh r0, [r2]
	mov r2, sl
	ldrb r0, [r2, #0x14]
	mov r7, sb
	eors r0, r7
	adds r0, r0, r3
_080AC422:
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	strh r0, [r6]
	adds r0, r5, #0
	bl sub_080AC884
	b _080AC45A
_080AC432:
	mov r2, ip
	adds r0, r4, r2
	strh r0, [r6]
	subs r0, r1, r3
	mov r7, r8
	ands r0, r7
	subs r0, #1
	cmp r0, #0x7e
	bhi _080AC45A
	mov r1, sl
	ldrb r0, [r1, #0x14]
	mov r2, sb
	eors r0, r2
	subs r0, r0, r3
_080AC44E:
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r6]
_080AC45A:
	adds r0, r5, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	lsrs r0, r0, #8
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_080AC6F0
	adds r0, r5, #0
	bl sub_080AC760
	adds r0, r5, #0
	bl sub_080AC7C4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AC480
sub_080AC480: @ 0x080AC480
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _080AC4BE
	ldr r0, [r4, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AC4A2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x1d
	strb r0, [r1]
	b _080AC50A
_080AC4A2:
	subs r0, r1, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC50A
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0x1c
	strb r1, [r0]
	movs r0, #0x8b
	lsls r0, r0, #1
	bl PlaySFX
	b _080AC50A
_080AC4BE:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC4D6
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x1d
	strb r0, [r1]
_080AC4D6:
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r2, [r1]
	adds r0, r4, #0
	adds r0, #0x7a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	ble _080AC4EE
	movs r3, #0xc0
	lsls r3, r3, #2
	b _080AC4F0
_080AC4EE:
	ldr r3, _080AC50C @ =0xFFFFFD00
_080AC4F0:
	adds r0, r2, r3
	strh r0, [r1]
	lsrs r0, r0, #8
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AC6F0
	adds r0, r4, #0
	bl sub_080AC760
	adds r0, r4, #0
	bl sub_080AC7C4
_080AC50A:
	pop {r4, pc}
	.align 2, 0
_080AC50C: .4byte 0xFFFFFD00

	thumb_func_start sub_080AC510
sub_080AC510: @ 0x080AC510
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080AC556
	movs r3, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r2, _080AC558 @ =gUnk_0812A9BA
	ldrb r1, [r4, #0xa]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r1, [r4, #0xb]
	adds r0, r0, r1
	subs r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldrh r1, [r4, #0xa]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bne _080AC556
	ldr r0, _080AC55C @ =gUnk_080FD458
	str r0, [r4, #0x48]
_080AC556:
	pop {r4, pc}
	.align 2, 0
_080AC558: .4byte gUnk_0812A9BA
_080AC55C: .4byte gUnk_080FD458

	thumb_func_start sub_080AC560
sub_080AC560: @ 0x080AC560
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _080AC570
	bl DeleteThisEntity
_080AC570:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080AC5A6
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AC590
	ldr r0, _080AC58C @ =gUnk_080FD168
	b _080AC592
	.align 2, 0
_080AC58C: .4byte gUnk_080FD168
_080AC590:
	ldr r0, _080AC5DC @ =gUnk_080FD448
_080AC592:
	str r0, [r4, #0x48]
	movs r0, #0xff
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_080AC5A6:
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	ldr r3, _080AC5E0 @ =gSineTable
	ldrb r0, [r5, #0x15]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldrb r0, [r5, #0x15]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r5, #0x30]
	subs r0, r0, r1
	str r0, [r4, #0x30]
	pop {r4, r5, pc}
	.align 2, 0
_080AC5DC: .4byte gUnk_080FD448
_080AC5E0: .4byte gSineTable

	thumb_func_start sub_080AC5E4
sub_080AC5E4: @ 0x080AC5E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldrb r4, [r5, #0xa]
	cmp r4, #0
	bne _080AC668
	ldr r0, _080AC664 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x43
	bhi _080AC670
	adds r1, r5, #0
	adds r1, #0x79
	movs r0, #0x11
	strb r0, [r1]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r6, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r6, #0xa]
	movs r0, #1
	strb r0, [r6, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r6, #0x50]
	adds r1, r6, #0
	adds r1, #0x79
	movs r0, #0x12
	strb r0, [r1]
	str r6, [r5, #0x54]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r7, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r7, #0xa]
	movs r0, #2
	strb r0, [r7, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r7, #0x50]
	adds r0, r7, #0
	adds r0, #0x79
	movs r1, #0x14
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	str r7, [r6, #0x54]
	movs r0, #0x22
	bl sub_080A7EE0
	ldrb r1, [r5, #0xa]
	strb r1, [r0, #0xa]
	movs r1, #3
	strb r1, [r0, #0xb]
	ldr r1, [r5, #0x50]
	str r1, [r0, #0x50]
	str r4, [r0, #0x54]
	adds r1, r0, #0
	adds r1, #0x79
	strb r4, [r1]
	str r0, [r7, #0x54]
	b _080AC6C8
	.align 2, 0
_080AC664: .4byte gUnk_03003DBC
_080AC668:
	ldr r0, _080AC674 @ =gUnk_03003DBC
	ldrb r0, [r0]
	cmp r0, #0x44
	bls _080AC678
_080AC670:
	movs r0, #0
	b _080AC6E8
	.align 2, 0
_080AC674: .4byte gUnk_03003DBC
_080AC678:
	adds r1, r5, #0
	adds r1, #0x79
	movs r0, #0
	mov sb, r0
	movs r0, #0xf
	strb r0, [r1]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r6, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r6, #0xa]
	movs r0, #1
	strb r0, [r6, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r6, #0x50]
	adds r0, r6, #0
	adds r0, #0x79
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	str r6, [r5, #0x54]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r7, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r7, #0xa]
	movs r0, #2
	strb r0, [r7, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r7, #0x50]
	mov r0, sb
	str r0, [r7, #0x54]
	adds r1, r7, #0
	adds r1, #0x79
	movs r0, #0x20
	strb r0, [r1]
	str r7, [r6, #0x54]
_080AC6C8:
	movs r0, #0x22
	bl sub_080A7EE0
	adds r6, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r6, #0xa]
	movs r0, #4
	strb r0, [r6, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r6, #0x50]
	str r5, [r6, #0x54]
	adds r0, r6, #0
	adds r0, #0x79
	mov r1, r8
	strb r1, [r0]
	movs r0, #1
_080AC6E8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080AC6F0
sub_080AC6F0: @ 0x080AC6F0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	movs r2, #0x1f
	ands r2, r0
	lsrs r0, r0, #5
	lsls r1, r0, #1
	adds r3, r1, r0
	ldr r1, _080AC724 @ =gUnk_0812A9C0
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, r0, r3
	adds r5, r1, #0
	cmp r0, #3
	bhi _080AC73A
	cmp r0, #1
	beq _080AC72E
	cmp r0, #1
	blo _080AC728
	cmp r0, #2
	beq _080AC732
	cmp r2, #0x19
	bhi _080AC75C
	b _080AC73A
	.align 2, 0
_080AC724: .4byte gUnk_0812A9C0
_080AC728:
	cmp r2, #6
	bls _080AC75C
	b _080AC73A
_080AC72E:
	subs r0, r2, #5
	b _080AC736
_080AC732:
	adds r0, r2, #0
	subs r0, #0xf
_080AC736:
	cmp r0, #0xc
	bls _080AC75C
_080AC73A:
	adds r0, r3, #3
	cmp r2, #0x1a
	bhi _080AC74E
	adds r0, r3, #2
	cmp r2, #0x10
	bhi _080AC74E
	adds r0, r3, #0
	cmp r2, #5
	bls _080AC74E
	adds r0, #1
_080AC74E:
	movs r1, #0x18
	bl __modsi3
	strb r0, [r4, #0x14]
	adds r0, r0, r5
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
_080AC75C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AC760
sub_080AC760: @ 0x080AC760
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, [r6, #0x54]
	ldrb r0, [r4, #0x15]
	ldrb r3, [r6, #0x15]
	subs r2, r0, r3
	movs r1, #0xff
	ands r2, r1
	adds r0, r2, #0
	adds r0, #8
	ands r0, r1
	cmp r0, #0x10
	ble _080AC78A
	cmp r2, #0x80
	ble _080AC784
	adds r0, r3, #0
	subs r0, #8
	b _080AC788
_080AC784:
	adds r0, r3, #0
	adds r0, #8
_080AC788:
	strb r0, [r4, #0x15]
_080AC78A:
	ldr r5, [r4, #0x54]
	ldr r0, [r5, #0x54]
	cmp r0, #0
	bne _080AC79C
	ldr r0, [r6, #0x50]
	ldrb r0, [r0, #0x14]
	movs r1, #0x80
	eors r0, r1
	b _080AC7BE
_080AC79C:
	ldrb r0, [r5, #0x15]
	ldrb r3, [r4, #0x15]
	subs r2, r0, r3
	movs r1, #0xff
	ands r2, r1
	adds r0, r2, #0
	adds r0, #8
	ands r0, r1
	cmp r0, #0x10
	ble _080AC7C0
	cmp r2, #0x80
	ble _080AC7BA
	adds r0, r3, #0
	subs r0, #8
	b _080AC7BE
_080AC7BA:
	adds r0, r3, #0
	adds r0, #8
_080AC7BE:
	strb r0, [r5, #0x15]
_080AC7C0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080AC7C4
sub_080AC7C4: @ 0x080AC7C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	mov r8, r0
	ldr r7, [r0, #0x54]
	ldr r5, [r7, #0x54]
	cmp r5, #0
	beq _080AC7E4
	ldr r0, [r4, #0x50]
	adds r1, r5, #0
	bl CopyPosition
	b _080AC7E6
_080AC7E4:
	ldr r5, [r4, #0x50]
_080AC7E6:
	adds r0, r7, #0
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	ldr r3, _080AC880 @ =gSineTable
	mov sb, r3
	ldrb r1, [r7, #0x15]
	lsls r0, r1, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r6, r0, #0
	muls r6, r2, r6
	adds r1, #0x40
	lsls r1, r1, #1
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	rsbs r3, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl PositionRelative
	mov r0, r8
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	mov r0, r8
	ldrb r1, [r0, #0x15]
	lsls r0, r1, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r6, r0, #0
	muls r6, r2, r6
	adds r1, #0x40
	lsls r1, r1, #1
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	rsbs r3, r0, #0
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl PositionRelative
	adds r0, r4, #0
	adds r0, #0x79
	ldrb r2, [r0]
	lsls r2, r2, #8
	ldrb r1, [r4, #0x15]
	lsls r0, r1, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r6, r0, #0
	muls r6, r2, r6
	adds r1, #0x40
	lsls r1, r1, #1
	add r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	rsbs r3, r0, #0
	mov r0, r8
	adds r1, r4, #0
	adds r2, r6, #0
	bl PositionRelative
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080AC880: .4byte gSineTable

	thumb_func_start sub_080AC884
sub_080AC884: @ 0x080AC884
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x50]
	adds r2, r0, #0
	adds r2, #0x72
	ldrh r0, [r2]
	cmp r0, #0
	beq _080AC8A4
	movs r0, #0
	strh r0, [r2]
	movs r0, #2
	strb r0, [r1, #0xc]
	movs r0, #0x3c
	strb r0, [r1, #0xe]
	movs r0, #0x56
	strb r0, [r1, #0xf]
_080AC8A4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080AC8A8
sub_080AC8A8: @ 0x080AC8A8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080AC8C0 @ =gUnk_0812A9D8
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080AC8C0: .4byte gUnk_0812A9D8

	thumb_func_start sub_080AC8C4
sub_080AC8C4: @ 0x080AC8C4
	push {lr}
	ldr r2, _080AC8D8 @ =gUnk_0812A9EC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080AC8D8: .4byte gUnk_0812A9EC

	thumb_func_start sub_080AC8DC
sub_080AC8DC: @ 0x080AC8DC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	blt _080AC8FE
	cmp r1, #3
	ble _080AC8F8
	cmp r1, #0x1f
	bgt _080AC8FE
	cmp r1, #0x1e
	blt _080AC8FE
_080AC8F8:
	bl DeleteThisEntity
	b _080AC920
_080AC8FE:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _080AC920
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_080AC920:
	adds r0, r4, #0
	bl sub_080AC8C4
	pop {r4, pc}

	thumb_func_start sub_080AC928
sub_080AC928: @ 0x080AC928
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_080AC954
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AC954
sub_080AC954: @ 0x080AC954
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AC964
	bl DeleteThisEntity
_080AC964:
	ldr r0, [r5, #0x50]
	ldrb r3, [r0, #0x14]
	ldr r4, _080AC9C4 @ =gSineTable
	lsls r1, r3, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #0xb
	adds r3, #0x40
	lsls r3, r3, #1
	adds r3, r3, r4
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r3, r1, #2
	adds r3, r3, r1
	lsls r3, r3, #0xb
	rsbs r3, r3, #0
	adds r1, r5, #0
	bl PositionRelative
	adds r0, r5, #0
	bl GetNextFrame
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC9C0
	movs r0, #2
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	ldr r1, _080AC9C8 @ =gLinkEntity
	adds r0, r5, #0
	bl GetFacingDirection
	strb r0, [r5, #0x15]
	movs r0, #0x97
	lsls r0, r0, #1
	bl PlaySFX
_080AC9C0:
	pop {r4, r5, pc}
	.align 2, 0
_080AC9C4: .4byte gSineTable
_080AC9C8: .4byte gLinkEntity

	thumb_func_start sub_080AC9CC
sub_080AC9CC: @ 0x080AC9CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080AC9E8
	bl DeleteThisEntity
_080AC9E8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080ACA10
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_080ACA10:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACA14
sub_080ACA14: @ 0x080ACA14
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl GetNextFrame
	adds r4, #0x5a
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080ACA32
	bl DeleteThisEntity
_080ACA32:
	pop {r4, pc}

	thumb_func_start sub_080ACA34
sub_080ACA34: @ 0x080ACA34
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080ACA4C @ =gUnk_0812AA5C
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5, pc}
	.align 2, 0
_080ACA4C: .4byte gUnk_0812AA5C

	thumb_func_start sub_080ACA50
sub_080ACA50: @ 0x080ACA50
	push {lr}
	ldr r2, _080ACA64 @ =gUnk_0812AA74
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080ACA64: .4byte gUnk_0812AA74

	thumb_func_start sub_080ACA68
sub_080ACA68: @ 0x080ACA68
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0xc
	bgt _080ACA82
	cmp r1, #0xa
	bge _080ACA86
	cmp r1, #6
	beq _080ACA86
	b _080ACAC0
_080ACA82:
	cmp r1, #0x1a
	bne _080ACAC0
_080ACA86:
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #0x24]
	adds r0, r0, r1
	strh r0, [r4, #0x24]
	ldr r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_080ACB40
	cmp r0, #0
	beq _080ACAB0
	movs r0, #0
	b _080ACAB6
_080ACAB0:
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
_080ACAB6:
	strb r0, [r4, #0x15]
	movs r0, #0xd8
	bl PlaySFX
	b _080ACAC4
_080ACAC0:
	bl DeleteThisEntity
_080ACAC4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACAC8
sub_080ACAC8: @ 0x080ACAC8
	push {lr}
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x10
	strb r1, [r0, #0x15]
	ldr r1, _080ACAE8 @ =0x0000FFFC
	strh r1, [r0, #0x36]
	str r2, [r0, #0x54]
	movs r1, #7
	bl InitializeAnimation
	ldr r0, _080ACAEC @ =0x00000199
	bl PlaySFX
	pop {pc}
	.align 2, 0
_080ACAE8: .4byte 0x0000FFFC
_080ACAEC: .4byte 0x00000199

	thumb_func_start sub_080ACAF0
sub_080ACAF0: @ 0x080ACAF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF090
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080ACB0C
	bl DeleteThisEntity
_080ACB0C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACB10
sub_080ACB10: @ 0x080ACB10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF090
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _080ACB22
	bl DeleteThisEntity
_080ACB22:
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	bl sub_080ACB90
	adds r0, r4, #0
	bl sub_080A7EB0
	cmp r0, #0
	beq _080ACB3C
	bl DeleteThisEntity
_080ACB3C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACB40
sub_080ACB40: @ 0x080ACB40
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	ldr r1, [r0, #0x50]
	ldr r3, [r2, #0x54]
	ldr r0, [r1, #0x64]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB5A
	ldr r0, [r0, #0x54]
	cmp r3, r0
	beq _080ACB86
_080ACB5A:
	ldr r1, [r1, #0x64]
	ldr r0, [r1, #0x20]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB6A
	ldr r0, [r0, #0x54]
	cmp r3, r0
	beq _080ACB86
_080ACB6A:
	ldr r0, [r1, #0x24]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB78
	ldr r0, [r0, #0x54]
	cmp r3, r0
	beq _080ACB86
_080ACB78:
	ldr r0, [r1, #0x28]
	ldr r0, [r0, #0x54]
	cmp r0, r2
	beq _080ACB8A
	ldr r0, [r0, #0x54]
	cmp r3, r0
	bne _080ACB8A
_080ACB86:
	movs r0, #0
	b _080ACB8C
_080ACB8A:
	movs r0, #1
_080ACB8C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080ACB90
sub_080ACB90: @ 0x080ACB90
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x50]
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r4, #0x2e
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bne _080ACBC6
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	cmp r1, r0
	bgt _080ACBC6
	movs r0, #1
	strb r0, [r3, #0xf]
	adds r0, r2, #0
	movs r1, #0x1f
	movs r2, #0x40
	bl CreateFx
	ldr r0, _080ACBC8 @ =0x00000119
	bl sub_08004488
	bl DeleteThisEntity
_080ACBC6:
	pop {r4, pc}
	.align 2, 0
_080ACBC8: .4byte 0x00000119

	thumb_func_start sub_080ACBCC
sub_080ACBCC: @ 0x080ACBCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080ACBFC @ =gLinkState
	ldrb r1, [r0, #0x1c]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #1
	beq _080ACBE0
	bl DeleteThisEntity
_080ACBE0:
	ldr r1, _080ACC00 @ =gUnk_0812AA80
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	pop {r4, pc}
	.align 2, 0
_080ACBFC: .4byte gLinkState
_080ACC00: .4byte gUnk_0812AA80

	thumb_func_start sub_080ACC04
sub_080ACC04: @ 0x080ACC04
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080ACC54 @ =gLinkEntity
	adds r0, #0x3b
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3b
	strb r0, [r1]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x10]
	movs r0, #0xa0
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #2
	strb r0, [r1]
	ldr r1, _080ACC58 @ =gUnk_0812AAD8
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	movs r0, #0x10
	str r0, [r4, #0x70]
	adds r0, r4, #0
	bl sub_080ACDB0
	adds r0, r4, #0
	bl sub_0801766C
	pop {r4, pc}
	.align 2, 0
_080ACC54: .4byte gLinkEntity
_080ACC58: .4byte gUnk_0812AAD8

	thumb_func_start sub_080ACC5C
sub_080ACC5C: @ 0x080ACC5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080ACDB0
	cmp r0, #0
	bne _080ACC74
	adds r0, r4, #0
	bl sub_080ACC78
	adds r0, r4, #0
	bl sub_080ACECC
_080ACC74:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080ACC78
sub_080ACC78: @ 0x080ACC78
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	ldr r0, _080ACD20 @ =gUnk_030010A0
	ldr r0, [r0]
	adds r0, r2, r0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ACCF8
	ldr r0, _080ACD24 @ =gUnk_0812AAAC
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r7, [r1]
	ldr r0, [r4, #0x74]
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080ACCA4
	str r0, [r4, #0x74]
_080ACCA4:
	ldr r0, [r4, #0x74]
	adds r0, r7, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_08008782
	adds r5, r0, #0
	cmp r5, #0
	beq _080ACCF2
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #2]
	movs r0, #0x11
	bl CreateObject
	adds r6, r0, #0
	cmp r6, #0
	beq _080ACCF2
	ldrb r0, [r5, #3]
	strb r0, [r6, #0xe]
	ldr r0, [r4, #0x74]
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r6, #0x2e]
	ldr r0, [r4, #0x74]
	adds r0, r0, r7
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r6, #0x32]
_080ACCF2:
	ldr r0, [r4, #0x74]
	adds r0, #2
	str r0, [r4, #0x74]
_080ACCF8:
	ldr r2, [r4, #0x54]
	cmp r2, #0
	bne _080ACD08
	ldr r0, [r4, #0x70]
	cmp r0, #2
	bls _080ACD08
	movs r0, #1
	str r0, [r4, #0x70]
_080ACD08:
	ldr r0, [r4, #0x70]
	subs r0, #1
	str r0, [r4, #0x70]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080ACDAE
	cmp r2, #0
	bne _080ACD28
	movs r0, #2
	b _080ACD32
	.align 2, 0
_080ACD20: .4byte gUnk_030010A0
_080ACD24: .4byte gUnk_0812AAAC
_080ACD28:
	ldr r0, _080ACD74 @ =gUnk_0812AABC
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
_080ACD32:
	str r0, [r4, #0x70]
	movs r0, #0x17
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r6, r0, #0
	cmp r6, #0
	beq _080ACDAE
	bl Random
	adds r2, r0, #0
	movs r0, #0xf
	ands r2, r0
	ldr r3, [r4, #0x48]
	ldrb r1, [r3, #6]
	cmp r1, r2
	bge _080ACD58
	adds r2, r1, #0
_080ACD58:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080ACD62
	rsbs r2, r2, #0
_080ACD62:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	cmp r0, #1
	beq _080ACD9C
	cmp r0, #1
	bgt _080ACD78
	cmp r0, #0
	beq _080ACD82
	b _080ACDAE
	.align 2, 0
_080ACD74: .4byte gUnk_0812AABC
_080ACD78:
	cmp r0, #2
	beq _080ACD8C
	cmp r0, #3
	beq _080ACDA2
	b _080ACDAE
_080ACD82:
	ldrb r0, [r3, #7]
	ldrh r1, [r4, #0x32]
	subs r1, r1, r0
	strh r1, [r6, #0x32]
	b _080ACD94
_080ACD8C:
	ldrh r0, [r4, #0x32]
	ldrb r3, [r3, #7]
	adds r0, r0, r3
	strh r0, [r6, #0x32]
_080ACD94:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r6, #0x2e]
	b _080ACDAE
_080ACD9C:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r1
	b _080ACDA6
_080ACDA2:
	ldrh r0, [r4, #0x2e]
	subs r0, r0, r1
_080ACDA6:
	strh r0, [r6, #0x2e]
	ldrh r0, [r4, #0x32]
	adds r0, r0, r2
	strh r0, [r6, #0x32]
_080ACDAE:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080ACDB0
sub_080ACDB0: @ 0x080ACDB0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080ACDE8
	ldr r2, _080ACDE0 @ =gLinkEntity
	ldr r1, _080ACDE4 @ =gUnk_08126EE4
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r2, #0x32]
	adds r0, r0, r2
	b _080ACEB4
	.align 2, 0
_080ACDE0: .4byte gLinkEntity
_080ACDE4: .4byte gUnk_08126EE4
_080ACDE8:
	ldrb r2, [r4, #0x14]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080ACE48
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0x32]
	subs r1, #3
	strh r1, [r4, #0x32]
	movs r1, #4
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	beq _080ACE20
	movs r0, #0x2e
	ldrsh r7, [r3, r0]
	movs r0, #0x2e
	ldrsh r6, [r4, r0]
	ldr r1, _080ACE1C @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r0, r2, r1
	ldrb r0, [r0]
	rsbs r5, r0, #0
	adds r0, r1, #0
	b _080ACE30
	.align 2, 0
_080ACE1C: .4byte gUnk_0812AAE8
_080ACE20:
	movs r0, #0x2e
	ldrsh r6, [r3, r0]
	movs r0, #0x2e
	ldrsh r7, [r4, r0]
	ldr r0, _080ACE44 @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r1, r2, r0
	ldrb r5, [r1]
_080ACE30:
	subs r1, r7, r6
	str r1, [r4, #0x78]
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r1
	bhi _080ACE90
	ldrh r0, [r3, #0x2e]
	adds r0, r0, r5
	strh r0, [r4, #0x2e]
	b _080ACEB6
	.align 2, 0
_080ACE44: .4byte gUnk_0812AAE8
_080ACE48:
	ldr r1, [r4, #0x50]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	movs r0, #4
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _080ACE70
	movs r0, #0x32
	ldrsh r6, [r3, r0]
	movs r0, #0x32
	ldrsh r7, [r4, r0]
	ldr r0, _080ACE6C @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r1, r2, r0
	ldrb r5, [r1]
	b _080ACE84
	.align 2, 0
_080ACE6C: .4byte gUnk_0812AAE8
_080ACE70:
	movs r0, #0x32
	ldrsh r7, [r3, r0]
	movs r0, #0x32
	ldrsh r6, [r4, r0]
	ldr r1, _080ACEAC @ =gUnk_0812AAE8
	ldrb r2, [r4, #0xa]
	adds r0, r2, r1
	ldrb r0, [r0]
	rsbs r5, r0, #0
	adds r0, r1, #0
_080ACE84:
	subs r1, r7, r6
	str r1, [r4, #0x78]
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r1
	bls _080ACEB0
_080ACE90:
	subs r0, r0, r1
	lsls r1, r0, #8
	strh r1, [r4, #0x24]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _080ACEA4
	strh r1, [r4, #0x24]
_080ACEA4:
	adds r0, r4, #0
	bl sub_080AEFB4
	b _080ACEB6
	.align 2, 0
_080ACEAC: .4byte gUnk_0812AAE8
_080ACEB0:
	ldrh r0, [r3, #0x32]
	adds r0, r0, r5
_080ACEB4:
	strh r0, [r4, #0x32]
_080ACEB6:
	ldr r0, _080ACEC8 @ =gLinkEntity
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080ACEC8: .4byte gLinkEntity

	thumb_func_start sub_080ACECC
sub_080ACECC: @ 0x080ACECC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bhi _080ACF0C
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080ACF0C
	ldr r2, [r4, #0x78]
	cmp r2, #0
	blt _080ACF0C
	ldr r0, _080ACF10 @ =gUnk_0812AAE8
	ldrb r1, [r4, #0xa]
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, r2
	bhi _080ACF0C
	adds r1, #1
	movs r0, #0x10
	movs r2, #0
	movs r3, #0
	bl CreatePlayerItem
	adds r1, r0, #0
	cmp r1, #0
	beq _080ACF0C
	str r4, [r1, #0x50]
	str r1, [r4, #0x54]
	ldrh r0, [r4, #0x2e]
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0x32]
_080ACF0C:
	pop {r4, pc}
	.align 2, 0
_080ACF10: .4byte gUnk_0812AAE8

	thumb_func_start sub_080ACF14
sub_080ACF14: @ 0x080ACF14
	push {lr}
	ldr r2, _080ACF28 @ =gUnk_081320A8
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080ACF28: .4byte gUnk_081320A8

	thumb_func_start sub_080ACF2C
sub_080ACF2C: @ 0x080ACF2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldr r0, _080ACF60 @ =gUnk_081320E4
	str r0, [r4, #0x48]
	ldr r5, [r4, #0x54]
	adds r6, r5, #0
	cmp r5, #0
	beq _080ACF64
	ldr r0, [r5, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	ldr r0, [r5, #0x34]
	str r0, [r4, #0x34]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrb r0, [r5, #0x16]
	strb r0, [r4, #0x16]
	b _080ACFB6
	.align 2, 0
_080ACF60: .4byte gUnk_081320E4
_080ACF64:
	adds r5, r4, #0
	str r4, [r4, #0x54]
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r3, _080ACFC8 @ =gUnk_081320B8
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #1]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r6, [r4, #0x16]
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #2]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
	bl sub_08078D60
_080ACFB6:
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0]
	ldrb r1, [r5, #9]
	adds r0, #2
	strh r1, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_080ACFC8: .4byte gUnk_081320B8

	thumb_func_start sub_080ACFCC
sub_080ACFCC: @ 0x080ACFCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x54]
	adds r0, #0x6c
	ldrh r0, [r0]
	ldrb r2, [r1, #8]
	cmp r0, r2
	beq _080ACFE8
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	ldrb r2, [r1, #9]
	cmp r0, r2
	bne _080AD034
_080ACFE8:
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	beq _080ACFF8
	bl sub_08079184
	bl DeleteThisEntity
	b _080AD03C
_080ACFF8:
	ldr r0, _080AD02C @ =gLinkState
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _080AD00E
	ldr r0, _080AD030 @ =gLinkEntity
	adds r0, #0x79
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080AD03C
_080AD00E:
	adds r0, r4, #0
	bl sub_080AD27C
	ldrb r0, [r4, #0xd]
	adds r0, #1
	movs r2, #0
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	str r2, [r4, #0x20]
	b _080AD03C
	.align 2, 0
_080AD02C: .4byte gLinkState
_080AD030: .4byte gLinkEntity
_080AD034:
	bl sub_08079184
	bl DeleteThisEntity
_080AD03C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080AD040
sub_080AD040: @ 0x080AD040
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x54]
	ldrb r0, [r5, #0xc]
	cmp r0, #2
	beq _080AD050
	bl DeleteThisEntity
_080AD050:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD064
	movs r0, #0
	str r0, [r4, #0x34]
_080AD064:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080AD06E
	b _080AD220
_080AD06E:
	adds r2, r4, #0
	adds r2, #0x42
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD088
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4, #0x15]
	strb r1, [r2]
_080AD088:
	ldr r2, _080AD0B0 @ =gUnk_081320C4
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #2
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	bl sub_080002B4
	cmp r0, #0x74
	bne _080AD0B4
	adds r0, r4, #0
	bl sub_0806F69C
	b _080AD0C8
	.align 2, 0
_080AD0B0: .4byte gUnk_081320C4
_080AD0B4:
	adds r0, r4, #0
	bl sub_080002D0
	cmp r0, #0x24
	beq _080AD0C8
	cmp r0, #0x26
	beq _080AD0C8
	adds r0, r4, #0
	bl sub_080AF00C
_080AD0C8:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _080AD0D8
	b _080AD202
_080AD0D8:
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x20]
	ldr r0, [r4, #0x2c]
	str r0, [r5, #0x2c]
	ldr r0, [r4, #0x30]
	str r0, [r5, #0x30]
	ldr r0, [r4, #0x34]
	str r0, [r5, #0x34]
	adds r0, r4, #0
	bl sub_080002B8
	cmp r0, #0x11
	bhi _080AD0FC
	cmp r0, #0x10
	bhs _080AD104
	cmp r0, #0xd
	beq _080AD104
	b _080AD14E
_080AD0FC:
	cmp r0, #0x13
	beq _080AD104
	cmp r0, #0x5a
	bne _080AD14E
_080AD104:
	cmp r5, r4
	bne _080AD146
	cmp r0, #0x11
	bhi _080AD116
	cmp r0, #0x10
	bhs _080AD12C
	cmp r0, #0xd
	beq _080AD120
	b _080AD142
_080AD116:
	cmp r0, #0x13
	beq _080AD138
	cmp r0, #0x5a
	beq _080AD126
	b _080AD142
_080AD120:
	adds r0, r4, #0
	movs r1, #0
	b _080AD130
_080AD126:
	adds r0, r4, #0
	movs r1, #0xc
	b _080AD130
_080AD12C:
	adds r0, r4, #0
	movs r1, #0xb
_080AD130:
	movs r2, #0
	bl CreateFx
	b _080AD142
_080AD138:
	adds r0, r4, #0
	movs r1, #0x52
	movs r2, #0
	bl CreateFx
_080AD142:
	movs r0, #4
	b _080AD148
_080AD146:
	movs r0, #3
_080AD148:
	strb r0, [r5, #0xd]
	bl DeleteThisEntity
_080AD14E:
	ldr r0, [r4, #0x54]
	cmp r0, r4
	bne _080AD178
	ldrb r0, [r4, #0xb]
	cmp r0, #0xff
	beq _080AD1DA
	cmp r0, #0xf
	bne _080AD16A
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	movs r2, #0x80
	bl CreateFx
	b _080AD1DA
_080AD16A:
	ldrb r1, [r4, #0xb]
	ldrb r2, [r4, #0xe]
	adds r0, r4, #0
	movs r3, #0
	bl CreateObjectWithParent
	b _080AD1DA
_080AD178:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080AD188
	adds r0, r5, #0
	bl sub_080AD32C
	cmp r0, #0
	beq _080AD1E0
_080AD188:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _080AD196
	movs r0, #0x82
	lsls r0, r0, #1
	bl PlaySFX
_080AD196:
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	movs r0, #3
	strb r0, [r5, #0xd]
	ldrb r2, [r4, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x19]
	ldrb r0, [r4, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x1b]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r3, r5, #0
	adds r3, #0x29
	lsrs r1, r1, #0x1d
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080AD1DA:
	bl DeleteThisEntity
	b _080AD26E
_080AD1E0:
	movs r0, #0x82
	lsls r0, r0, #1
	bl PlaySFX
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x24]
	b _080AD26E
_080AD202:
	adds r0, r4, #0
	bl sub_0800451C
	adds r0, r4, #0
	bl sub_0806F8DC
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x20]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0x15]
	b _080AD26E
_080AD220:
	ldr r1, _080AD240 @ =gLinkEntity
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r5, #1
	ands r5, r0
	cmp r5, #0
	beq _080AD244
	movs r0, #0x79
	bl PlaySFX
	adds r0, r4, #0
	bl sub_080AD27C
	b _080AD26E
	.align 2, 0
_080AD240: .4byte gLinkEntity
_080AD244:
	ldr r0, _080AD270 @ =gLinkState
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _080AD25A
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080AD26E
_080AD25A:
	adds r0, r4, #0
	bl sub_080AD27C
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r4, #0x15]
	str r5, [r4, #0x20]
_080AD26E:
	pop {r4, r5, pc}
	.align 2, 0
_080AD270: .4byte gLinkState

	thumb_func_start sub_080AD274
sub_080AD274: @ 0x080AD274
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_080AD27C
sub_080AD27C: @ 0x080AD27C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x54]
	ldr r1, _080AD2AC @ =gLinkEntity
	movs r0, #0
	str r0, [r1, #0x74]
	adds r0, r3, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	adds r5, r1, #0
	ldrb r1, [r4, #8]
	cmp r0, r1
	bne _080AD320
	adds r0, r3, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	ldrb r1, [r4, #9]
	cmp r0, r1
	bne _080AD320
	cmp r4, r3
	beq _080AD2B0
	movs r0, #2
	strb r0, [r4, #0xd]
	b _080AD2C2
	.align 2, 0
_080AD2AC: .4byte gLinkEntity
_080AD2B0:
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0x18
	orrs r1, r0
	strb r1, [r2]
_080AD2C2:
	ldr r0, [r4, #0x48]
	str r0, [r3, #0x48]
	ldrb r1, [r3, #0x16]
	lsrs r1, r1, #4
	ldr r2, _080AD318 @ =gUnk_081320CC
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3, #0x24]
	ldr r0, _080AD31C @ =gUnk_081320D4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r3, #0x20]
	ldrh r0, [r4, #0x36]
	adds r0, #8
	strh r0, [r4, #0x36]
	strh r0, [r3, #0x36]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrh r0, [r5, #0x32]
	strh r0, [r3, #0x32]
	ldrh r0, [r5, #0x2e]
	strh r0, [r3, #0x2e]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x3c
	strb r1, [r0]
	ldrb r1, [r3, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r3, #0x10]
	adds r0, r3, #0
	bl sub_0801766C
	b _080AD328
	.align 2, 0
_080AD318: .4byte gUnk_081320CC
_080AD31C: .4byte gUnk_081320D4
_080AD320:
	bl sub_08079184
	bl DeleteThisEntity
_080AD328:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080AD32C
sub_080AD32C: @ 0x080AD32C
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	ldrb r1, [r2, #0x16]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x10
	beq _080AD34C
	ldrb r0, [r2, #8]
	cmp r0, #6
	bne _080AD34E
	ldrb r0, [r2, #9]
	cmp r0, #5
	beq _080AD34C
	cmp r0, #0x7d
	bne _080AD34E
_080AD34C:
	movs r3, #1
_080AD34E:
	adds r0, r3, #0
	pop {pc}
	.align 2, 0
