	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08029A94
sub_08029A94: @ 0x08029A94
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0802A098
	pop {r4, pc}

	thumb_func_start sub_08029AA4
sub_08029AA4: @ 0x08029AA4
	push {lr}
	adds r1, r0, #0
	adds r0, #0x77
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029ADA
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #0x84
	lsls r0, r0, #1
	strh r0, [r1, #0x24]
	adds r2, r1, #0
	adds r2, #0x3f
	movs r0, #0x6a
	strb r0, [r2]
	adds r2, #0x3b
	adds r0, #0xfe
	strh r0, [r2]
	subs r2, #5
	movs r0, #4
	strb r0, [r2]
	adds r0, r1, #0
	bl sub_08029EEC
	ldr r0, _08029ADC @ =0x0000019D
	bl sub_08004488
_08029ADA:
	pop {pc}
	.align 2, 0
_08029ADC: .4byte 0x0000019D

	thumb_func_start sub_08029AE0
sub_08029AE0: @ 0x08029AE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0802A16C
	adds r0, r4, #0
	bl sub_0802A098
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08029B28
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xa0
	strh r0, [r4, #0x24]
	subs r1, #5
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08029EEC
	adds r0, r4, #0
	movs r1, #0x77
	bl sub_0801D2B4
	movs r0, #0xc1
	lsls r0, r0, #1
	bl sub_08004488
_08029B28:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029B2C
sub_08029B2C: @ 0x08029B2C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A14C
	cmp r0, #0
	beq _08029B7A
	adds r2, r4, #0
	adds r2, #0x86
	ldrb r0, [r2]
	cmp r0, #0
	beq _08029B60
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029B8A
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFX
	adds r0, r4, #0
	bl sub_0805E7BC
	b _08029B8A
_08029B60:
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xa]
	lsls r1, r0, #4
	subs r1, r1, r0
	movs r0, #0x5a
	subs r0, r0, r1
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r2]
	b _08029B8A
_08029B7A:
	ldr r0, _08029B8C @ =gUnk_080CCD88
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08029B8A:
	pop {r4, pc}
	.align 2, 0
_08029B8C: .4byte gUnk_080CCD88

	thumb_func_start sub_08029B90
sub_08029B90: @ 0x08029B90
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
	bl sub_0802A058
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bhi _08029BBA
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _08029BC2
_08029BBA:
	adds r0, r4, #0
	movs r1, #4
	bl sub_08004260
_08029BC2:
	pop {r4, pc}

	thumb_func_start sub_08029BC4
sub_08029BC4: @ 0x08029BC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0802A18C
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	movs r0, #0x32
	ldrsh r6, [r4, r0]
	adds r0, r4, #0
	bl sub_08029FE4
	cmp r0, #0
	beq _08029BF2
	ldrb r0, [r4, #0xa]
	movs r2, #4
	cmp r0, #1
	bhi _08029BE8
	movs r2, #0
_08029BE8:
	ldrb r1, [r4, #0x14]
	adds r1, r1, r2
	adds r0, r4, #0
	bl sub_08004260
_08029BF2:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	subs r1, r1, r5
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	subs r2, r2, r6
	adds r0, r4, #0
	bl sub_08029FB4
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08029C08
sub_08029C08: @ 0x08029C08
	movs r1, #3
	strb r1, [r0, #0xc]
	ldr r2, _08029C28 @ =gUnk_080CCDA0
	ldrb r1, [r0, #0xa]
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0, #0xe]
	adds r2, r0, #0
	adds r2, #0x3f
	movs r1, #0x6b
	strb r1, [r2]
	ldr r1, [r0, #0x54]
	movs r0, #2
	strb r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08029C28: .4byte gUnk_080CCDA0

	thumb_func_start sub_08029C2C
sub_08029C2C: @ 0x08029C2C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029C4E
	movs r0, #4
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	movs r1, #0x7f
	bl sub_0801D2B4
	movs r0, #0x6c
	bl sub_08004488
_08029C4E:
	pop {pc}

	thumb_func_start sub_08029C50
sub_08029C50: @ 0x08029C50
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x50]
	adds r0, #0x77
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029C68
	movs r0, #5
	strb r0, [r1, #0xc]
	adds r1, #0x3f
	movs r0, #0x6a
	strb r0, [r1]
_08029C68:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08029C6C
sub_08029C6C: @ 0x08029C6C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A18C
	adds r0, r4, #0
	bl sub_08029BC4
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	beq _08029C90
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x77
	bl sub_0801D2B4
	b _08029C96
_08029C90:
	adds r0, r4, #0
	bl sub_0802A16C
_08029C96:
	pop {r4, pc}

	thumb_func_start sub_08029C98
sub_08029C98: @ 0x08029C98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A14C
	cmp r0, #0
	beq _08029CB6
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFX
	adds r0, r4, #0
	bl sub_0805E7BC
	b _08029CC6
_08029CB6:
	ldr r0, _08029CC8 @ =gUnk_080CCDA8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08029CC6:
	pop {r4, pc}
	.align 2, 0
_08029CC8: .4byte gUnk_080CCDA8

	thumb_func_start sub_08029CCC
sub_08029CCC: @ 0x08029CCC
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
	bl sub_0802A058
	adds r0, r4, #0
	movs r1, #8
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08029CF0
sub_08029CF0: @ 0x08029CF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08029FE4
	cmp r0, #0
	beq _08029D06
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl sub_08004260
_08029D06:
	pop {r4, pc}

	thumb_func_start sub_08029D08
sub_08029D08: @ 0x08029D08
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #0x47
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_08029D14
sub_08029D14: @ 0x08029D14
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08029D42
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029D70
	ldrb r1, [r4, #0x14]
	adds r1, #0xc
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	movs r1, #0x7f
	bl sub_0801D2B4
	movs r0, #0x6c
	bl sub_08004488
	b _08029D70
_08029D42:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08029D70
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6c
	strb r0, [r1]
	ldr r0, _08029D74 @ =gUnk_080FD298
	str r0, [r4, #0x48]
	movs r0, #0x6b
	bl sub_08004488
_08029D70:
	pop {r4, pc}
	.align 2, 0
_08029D74: .4byte gUnk_080FD298

	thumb_func_start sub_08029D78
sub_08029D78: @ 0x08029D78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A0F8
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029DA6
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x6a
	strb r0, [r1]
	ldr r0, _08029DA8 @ =gUnk_080FD2A0
	str r0, [r4, #0x48]
	ldrb r1, [r4, #0x14]
	adds r1, #0x10
	adds r0, r4, #0
	bl sub_08004260
_08029DA6:
	pop {r4, pc}
	.align 2, 0
_08029DA8: .4byte gUnk_080FD2A0

	thumb_func_start sub_08029DAC
sub_08029DAC: @ 0x08029DAC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08029DD8
	movs r0, #6
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x50]
	adds r0, #0x77
	movs r1, #1
	strb r1, [r0]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl sub_08004260
_08029DD8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029DDC
sub_08029DDC: @ 0x08029DDC
	movs r1, #7
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08029DE4
sub_08029DE4: @ 0x08029DE4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08029CF0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	beq _08029E02
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0x77
	bl sub_0801D2B4
	b _08029E08
_08029E02:
	adds r0, r4, #0
	bl sub_0802A16C
_08029E08:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08029E0C
sub_08029E0C: @ 0x08029E0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #0x15]
	lsrs r0, r0, #3
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, _08029EE0 @ =gUnk_080CCDC8
	adds r1, r1, r0
	str r1, [sp]
	bl sub_08000E50
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	subs r1, #1
	mov sl, r1
	bl sub_08000E50
	adds r1, r0, #0
	movs r0, #0xf
	ands r0, r1
	movs r1, #3
	bl __modsi3
	mov sb, r0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r3, _08029EE4 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	mov r8, r0
	movs r2, #0x3f
	ands r0, r2
	mov r8, r0
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	movs r7, #0
_08029E72:
	ldr r0, [sp]
	add r0, sb
	ldrb r4, [r0]
	lsrs r0, r4, #3
	lsls r0, r0, #1
	ldr r1, _08029EE8 @ =gUnk_080B4488
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	add r0, r8
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_080002E0
	adds r6, r5, #0
	adds r6, #0x74
	cmp r0, #0
	bne _08029EA6
	str r4, [sp, #4]
	ldrb r1, [r5, #0x15]
	ldrb r0, [r6]
	subs r0, r1, r0
	subs r1, r4, r1
	cmp r0, r1
	bne _08029EBA
_08029EA6:
	mov r0, sb
	add r0, sl
	adds r0, #3
	movs r1, #3
	bl __modsi3
	mov sb, r0
	adds r7, #1
	cmp r7, #2
	bls _08029E72
_08029EBA:
	cmp r7, #3
	bne _08029EC0
	ldr r4, [sp, #4]
_08029EC0:
	ldrb r1, [r5, #0x15]
	ldrb r0, [r6]
	cmp r0, r1
	beq _08029ECA
	strb r1, [r6]
_08029ECA:
	strb r4, [r5, #0x15]
	adds r0, r5, #0
	bl sub_08029F0C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08029EE0: .4byte gUnk_080CCDC8
_08029EE4: .4byte gRoomControls
_08029EE8: .4byte gUnk_080B4488

	thumb_func_start sub_08029EEC
sub_08029EEC: @ 0x08029EEC
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x15]
	adds r2, r3, #0
	adds r2, #0x75
	lsrs r0, r0, #3
	ldrb r2, [r2]
	adds r1, r0, r2
	ldrb r0, [r3, #0x14]
	cmp r1, r0
	beq _08029F0A
	strb r1, [r3, #0x14]
	adds r0, r3, #0
	bl sub_080042AC
_08029F0A:
	pop {pc}

	thumb_func_start sub_08029F0C
sub_08029F0C: @ 0x08029F0C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x15]
	lsrs r0, r0, #3
	cmp r0, #1
	beq _08029F30
	cmp r0, #1
	bgt _08029F22
	cmp r0, #0
	beq _08029F2C
	b _08029F44
_08029F22:
	cmp r0, #2
	beq _08029F36
	cmp r0, #3
	beq _08029F3C
	b _08029F44
_08029F2C:
	ldrh r0, [r1, #0x32]
	b _08029F3E
_08029F30:
	ldrh r0, [r1, #0x2e]
	adds r0, #0x10
	b _08029F40
_08029F36:
	ldrh r0, [r1, #0x32]
	adds r0, #0x10
	b _08029F40
_08029F3C:
	ldrh r0, [r1, #0x2e]
_08029F3E:
	subs r0, #0x10
_08029F40:
	adds r1, #0x78
	strh r0, [r1]
_08029F44:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08029F48
sub_08029F48: @ 0x08029F48
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x15]
	lsrs r0, r0, #3
	cmp r0, #1
	beq _08029F78
	cmp r0, #1
	bgt _08029F5E
	cmp r0, #0
	beq _08029F68
	b _08029FB0
_08029F5E:
	cmp r0, #2
	beq _08029F88
	cmp r0, #3
	beq _08029F9C
	b _08029FB0
_08029F68:
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r1, r0
	bgt _08029FB0
	b _08029F96
_08029F78:
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r1, r0
	blt _08029FB0
	b _08029FAA
_08029F88:
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r1, r0
	blt _08029FB0
_08029F96:
	strh r0, [r2, #0x32]
	movs r0, #1
	b _08029FB2
_08029F9C:
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r1, r0
	bgt _08029FB0
_08029FAA:
	strh r0, [r2, #0x2e]
	movs r0, #1
	b _08029FB2
_08029FB0:
	movs r0, #0
_08029FB2:
	pop {pc}

	thumb_func_start sub_08029FB4
sub_08029FB4: @ 0x08029FB4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r6, [r0, #0x54]
	adds r6, #0x78
	ldr r0, [r0, #0x50]
	adds r0, #0x7e
	ldrb r0, [r0]
	movs r1, #0xe
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r6, r0
	adds r5, #8
	movs r0, #0xf
	ands r5, r0
	adds r4, #8
	ands r4, r0
	lsls r4, r4, #4
	orrs r5, r4
	strb r5, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08029FE4
sub_08029FE4: @ 0x08029FE4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x78
	ldr r0, [r5, #0x50]
	adds r0, #0x7e
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #0xe
	bl __modsi3
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	subs r0, #8
	lsrs r1, r1, #4
	subs r1, #8
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r4
	strh r0, [r5, #0x2e]
	lsrs r6, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r0, [r5, #0x32]
	adds r1, r1, r0
	strh r1, [r5, #0x32]
	adds r0, r5, #0
	bl sub_08004274
	movs r1, #0xff
	cmp r4, #0
	beq _0802A032
	movs r1, #3
	cmp r4, #0
	ble _0802A032
	movs r1, #1
_0802A032:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0802A042
	movs r1, #0
	cmp r0, #0
	ble _0802A042
	movs r1, #2
_0802A042:
	cmp r1, #0xff
	beq _0802A052
	ldrb r0, [r5, #0x14]
	cmp r1, r0
	beq _0802A052
	strb r1, [r5, #0x14]
	movs r0, #1
	b _0802A054
_0802A052:
	movs r0, #0
_0802A054:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802A058
sub_0802A058: @ 0x0802A058
	adds r2, r0, #0
	adds r0, #0x78
	movs r1, #0x88
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A098
sub_0802A098: @ 0x0802A098
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x7e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrb r0, [r5]
	movs r1, #0xe
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0802A0B8
	strb r0, [r5]
_0802A0B8:
	movs r0, #0x2e
	ldrsh r5, [r4, r0]
	movs r0, #0x32
	ldrsh r6, [r4, r0]
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08029F48
	cmp r0, #0
	beq _0802A0E4
	adds r0, r4, #0
	bl sub_08029E0C
	adds r0, r4, #0
	bl sub_08029EEC
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08004488
_0802A0E4:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	subs r1, r1, r5
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	subs r2, r2, r6
	adds r0, r4, #0
	bl sub_08029FB4
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0802A0F8
sub_0802A0F8: @ 0x0802A0F8
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x45
	ldrb r4, [r0]
	cmp r4, #0
	beq _0802A134
	subs r0, #4
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802A14A
	adds r1, r3, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0802A14A
	adds r2, r3, #0
	movs r3, #0
	adds r4, r1, #0
_0802A122:
	ldr r2, [r2, #0x54]
	ldrb r0, [r4]
	adds r1, r2, #0
	adds r1, #0x3d
	strb r0, [r1]
	adds r3, #1
	cmp r3, #5
	bls _0802A122
	b _0802A14A
_0802A134:
	ldr r2, [r3, #0x50]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r0, [r3, #0x50]
	adds r0, #0x45
	strb r4, [r0]
	ldr r1, [r3, #0x50]
	movs r0, #0x69
	strb r0, [r1, #0xf]
_0802A14A:
	pop {r4, pc}

	thumb_func_start sub_0802A14C
sub_0802A14C: @ 0x0802A14C
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #0x50]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A166
	adds r0, r1, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A168
_0802A166:
	movs r2, #1
_0802A168:
	adds r0, r2, #0
	pop {pc}

	thumb_func_start sub_0802A16C
sub_0802A16C: @ 0x0802A16C
	push {lr}
	ldr r3, _0802A188 @ =gUnk_080CCDD4
	ldr r1, [r0, #0x50]
	adds r1, #0x7a
	ldrh r1, [r1]
	lsrs r1, r1, #2
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	bl sub_0801D2B4
	pop {pc}
	.align 2, 0
_0802A188: .4byte gUnk_080CCDD4

	thumb_func_start sub_0802A18C
sub_0802A18C: @ 0x0802A18C
	push {lr}
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802A234
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x1e
	bhi _0802A22C
	lsls r0, r0, #2
	ldr r1, _0802A1AC @ =_0802A1B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802A1AC: .4byte _0802A1B0
_0802A1B0: @ jump table
	.4byte _0802A234 @ case 0
	.4byte _0802A234 @ case 1
	.4byte _0802A234 @ case 2
	.4byte _0802A234 @ case 3
	.4byte _0802A22C @ case 4
	.4byte _0802A22C @ case 5
	.4byte _0802A22C @ case 6
	.4byte _0802A22C @ case 7
	.4byte _0802A22C @ case 8
	.4byte _0802A22C @ case 9
	.4byte _0802A22C @ case 10
	.4byte _0802A22C @ case 11
	.4byte _0802A22C @ case 12
	.4byte _0802A22C @ case 13
	.4byte _0802A22C @ case 14
	.4byte _0802A234 @ case 15
	.4byte _0802A22C @ case 16
	.4byte _0802A22C @ case 17
	.4byte _0802A22C @ case 18
	.4byte _0802A234 @ case 19
	.4byte _0802A22C @ case 20
	.4byte _0802A22C @ case 21
	.4byte _0802A22C @ case 22
	.4byte _0802A22C @ case 23
	.4byte _0802A22C @ case 24
	.4byte _0802A22C @ case 25
	.4byte _0802A22C @ case 26
	.4byte _0802A234 @ case 27
	.4byte _0802A22C @ case 28
	.4byte _0802A22C @ case 29
	.4byte _0802A234 @ case 30
_0802A22C:
	movs r0, #0x97
	lsls r0, r0, #1
	bl sub_08004488
_0802A234:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802A238
sub_0802A238: @ 0x0802A238
	push {lr}
	ldr r2, _0802A24C @ =gUnk_080CD030
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802A24C: .4byte gUnk_080CD030

	thumb_func_start sub_0802A250
sub_0802A250: @ 0x0802A250
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r1, [r5, #0xe]
	ldr r0, _0802A2A8 @ =0xFFFD0000
	str r0, [r5, #0x20]
	bl sub_08000E50
	ldr r1, _0802A2AC @ =gUnk_080CD03C
	movs r4, #3
	ands r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r5, #0x24]
	bl sub_08000E50
	ldr r1, _0802A2B0 @ =gUnk_080CD040
	ands r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #0x18
	strb r0, [r5, #0x15]
	adds r1, r5, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r5, #0
	bl UpdateSpriteOrderAndFlip
	movs r0, #0x66
	movs r1, #0
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _0802A2A6
	str r5, [r0, #0x50]
_0802A2A6:
	pop {r4, r5, pc}
	.align 2, 0
_0802A2A8: .4byte 0xFFFD0000
_0802A2AC: .4byte gUnk_080CD03C
_0802A2B0: .4byte gUnk_080CD040

	thumb_func_start sub_0802A2B4
sub_0802A2B4: @ 0x0802A2B4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #6
	bl sub_08003FC4
	cmp r0, #0
	bne _0802A2DC
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x84
	bl sub_08004488
	b _0802A2E2
_0802A2DC:
	adds r0, r4, #0
	bl sub_0806F69C
_0802A2E2:
	adds r0, r4, #0
	bl sub_0802A39C
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0802A2FA
	adds r0, r4, #0
	bl sub_0802A334
_0802A2FA:
	pop {r4, pc}

	thumb_func_start sub_0802A2FC
sub_0802A2FC: @ 0x0802A2FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802A31A
	adds r0, r4, #0
	bl sub_0805E7BC
	b _0802A332
_0802A31A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802A32C
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	b _0802A332
_0802A32C:
	adds r0, r4, #0
	bl sub_0802A39C
_0802A332:
	pop {r4, pc}

	thumb_func_start sub_0802A334
sub_0802A334: @ 0x0802A334
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802A380 @ =gRoomControls
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	ldr r3, _0802A384 @ =gLCDControls
	subs r1, r1, r0
	ldrh r5, [r3, #0x16]
	adds r1, r1, r5
	asrs r1, r1, #3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	movs r5, #0xc
	ldrsh r2, [r2, r5]
	subs r0, r0, r2
	ldrh r3, [r3, #0x18]
	adds r0, r0, r3
	asrs r0, r0, #3
	ldr r3, _0802A388 @ =gUnk_02001A40
	movs r2, #0x1f
	ands r1, r2
	ands r0, r2
	lsls r0, r0, #5
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A38C
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	b _0802A392
	.align 2, 0
_0802A380: .4byte gRoomControls
_0802A384: .4byte gLCDControls
_0802A388: .4byte gUnk_02001A40
_0802A38C:
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
_0802A392:
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	pop {r4, r5, pc}

	thumb_func_start sub_0802A39C
sub_0802A39C: @ 0x0802A39C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0802A3EC @ =gLinkEntity
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802A3F0 @ =gRoomControls
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	ldr r3, _0802A3F4 @ =gLCDControls
	subs r1, r1, r0
	ldrh r6, [r3, #0x16]
	adds r1, r1, r6
	asrs r1, r1, #3
	movs r6, #0x32
	ldrsh r0, [r4, r6]
	movs r4, #0xc
	ldrsh r2, [r2, r4]
	subs r0, r0, r2
	ldrh r3, [r3, #0x18]
	adds r0, r0, r3
	subs r0, #0xa
	asrs r0, r0, #3
	ldr r3, _0802A3F8 @ =gUnk_02001A40
	movs r2, #0x1f
	ands r1, r2
	ands r0, r2
	lsls r0, r0, #5
	adds r1, r1, r0
	movs r6, #0x80
	lsls r6, r6, #3
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A3FC
	ldrb r1, [r5, #0x10]
	movs r0, #0x7f
	ands r0, r1
	b _0802A402
	.align 2, 0
_0802A3EC: .4byte gLinkEntity
_0802A3F0: .4byte gRoomControls
_0802A3F4: .4byte gLCDControls
_0802A3F8: .4byte gUnk_02001A40
_0802A3FC:
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
_0802A402:
	strb r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802A408
sub_0802A408: @ 0x0802A408
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802A430 @ =gUnk_080CD07C
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, r5, pc}
	.align 2, 0
_0802A430: .4byte gUnk_080CD07C

	thumb_func_start sub_0802A434
sub_0802A434: @ 0x0802A434
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A78C
	ldr r1, _0802A450 @ =gUnk_080CD094
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_0802A450: .4byte gUnk_080CD094

	thumb_func_start sub_0802A454
sub_0802A454: @ 0x0802A454
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x75
	beq _0802A4A8
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	movs r2, #0x7f
	adds r1, r2, #0
	ands r1, r0
	cmp r1, #0
	beq _0802A474
	cmp r1, #0x1e
	bne _0802A4A8
_0802A474:
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4, #0x10]
	ldr r1, _0802A4D8 @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	adds r2, r4, #0
	adds r2, #0x7e
	strh r0, [r2]
	ldrh r2, [r1, #0x32]
	adds r0, r4, #0
	adds r0, #0x80
	strh r2, [r0]
	ldrh r0, [r1, #0x36]
	adds r1, r4, #0
	adds r1, #0x82
	strh r0, [r1]
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	beq _0802A4A8
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_0802A4A8:
	adds r2, r4, #0
	adds r2, #0x42
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _0802A4BC
	cmp r1, #4
	bls _0802A4BC
	subs r0, #4
	strb r0, [r2]
_0802A4BC:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802A4CE
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802A4CE:
	ldr r1, _0802A4DC @ =gUnk_080CD07C
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, pc}
	.align 2, 0
_0802A4D8: .4byte gLinkEntity
_0802A4DC: .4byte gUnk_080CD07C

	thumb_func_start nullsub_142
nullsub_142: @ 0x0802A4E0
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A4E4
sub_0802A4E4: @ 0x0802A4E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	bl sub_08000E50
	adds r1, r4, #0
	adds r1, #0x7d
	strb r0, [r1]
	ldrb r1, [r4, #0xb]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x7c
	strb r1, [r0]
	ldrb r1, [r4, #0xe]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	adds r0, r4, #0
	bl sub_0802A7D0
	pop {r4, pc}

	thumb_func_start sub_0802A534
sub_0802A534: @ 0x0802A534
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A548
	subs r0, #1
	strh r0, [r1]
	b _0802A5B0
_0802A548:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802A5B0
	movs r0, #1
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _0802A5B0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrh r0, [r2, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r2, #0x32]
	strh r0, [r4, #0x32]
	ldr r0, _0802A5B4 @ =0x0000FF80
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0802A7D0
_0802A5B0:
	pop {r4, pc}
	.align 2, 0
_0802A5B4: .4byte 0x0000FF80

	thumb_func_start sub_0802A5B8
sub_0802A5B8: @ 0x0802A5B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A7D0
	ldrb r0, [r4, #0xe]
	adds r2, r0, #0
	cmp r2, #0
	beq _0802A5E8
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802A60E
	ldr r0, _0802A5E4 @ =0x0000012D
	bl sub_08004488
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	b _0802A60E
	.align 2, 0
_0802A5E4: .4byte 0x0000012D
_0802A5E8:
	ldrh r0, [r4, #0x36]
	adds r0, #3
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0802A60E
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #7
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strh r2, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
_0802A60E:
	pop {r4, pc}

	thumb_func_start sub_0802A610
sub_0802A610: @ 0x0802A610
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0802A7D0
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0802A63A
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _0802A64C
_0802A63A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802A64C
	strb r2, [r3]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x75
	strb r0, [r1]
_0802A64C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802A650
sub_0802A650: @ 0x0802A650
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A7D0
	ldrh r0, [r4, #0x36]
	subs r0, #2
	strh r0, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa0
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0802A69A
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x74
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
_0802A69A:
	pop {r4, pc}

	thumb_func_start sub_0802A69C
sub_0802A69C: @ 0x0802A69C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A7D0
	ldr r2, _0802A6E4 @ =gUnk_03003F80
	ldrb r1, [r2, #0xa]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r2, #0xa]
	ldrb r1, [r2, #0x1a]
	orrs r0, r1
	strb r0, [r2, #0x1a]
	ldr r1, _0802A6E8 @ =gLinkEntity
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	strh r0, [r1, #0x2e]
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r1, #0x32]
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r1, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x36]
	movs r3, #0x36
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _0802A6F0
	cmp r0, r1
	bge _0802A6EC
	subs r0, r2, #1
	b _0802A6EE
	.align 2, 0
_0802A6E4: .4byte gUnk_03003F80
_0802A6E8: .4byte gLinkEntity
_0802A6EC:
	adds r0, r2, #1
_0802A6EE:
	strh r0, [r4, #0x36]
_0802A6F0:
	adds r0, r4, #0
	bl sub_08004274
	adds r3, r4, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _0802A712
	movs r0, #6
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	b _0802A72E
_0802A712:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802A72E
	strb r2, [r3]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #3
	strb r0, [r1]
	ldr r2, _0802A730 @ =gLinkEntity
	ldrb r1, [r2, #0x18]
	subs r0, #7
	ands r0, r1
	strb r0, [r2, #0x18]
_0802A72E:
	pop {r4, pc}
	.align 2, 0
_0802A730: .4byte gLinkEntity

	thumb_func_start sub_0802A734
sub_0802A734: @ 0x0802A734
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A7D0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802A768
	bl sub_0805E5A8
	ldr r1, _0802A760 @ =gUnk_0813AB1C
	ldr r0, _0802A764 @ =gUnk_02033A90
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08080840
	b _0802A780
	.align 2, 0
_0802A760: .4byte gUnk_0813AB1C
_0802A764: .4byte gUnk_02033A90
_0802A768:
	ldr r0, [r4, #0x34]
	ldr r1, _0802A784 @ =0xFFFE0000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r1, _0802A788 @ =gUnk_03003F80
	ldrb r0, [r1, #0xa]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #0xa]
	ldrb r0, [r1, #0x1a]
	orrs r0, r2
	strb r0, [r1, #0x1a]
_0802A780:
	pop {r4, pc}
	.align 2, 0
_0802A784: .4byte 0xFFFE0000
_0802A788: .4byte gUnk_03003F80

	thumb_func_start sub_0802A78C
sub_0802A78C: @ 0x0802A78C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0802A7CC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _0802A7BC
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802A7CC
	adds r1, r4, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A7CC
	subs r0, #1
	strh r0, [r1]
	b _0802A7CC
_0802A7BC:
	ldrb r0, [r4, #0xb]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, #1
	adds r0, r4, #0
	adds r0, #0x7a
	strh r1, [r0]
_0802A7CC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802A7D0
sub_0802A7D0: @ 0x0802A7D0
	push {r4, lr}
	ldr r3, _0802A800 @ =gUnk_080CD0B0
	movs r1, #0x7d
	adds r1, r1, r0
	mov ip, r1
	ldrb r1, [r1]
	adds r2, r1, #1
	mov r4, ip
	strb r2, [r4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1b
	movs r2, #7
	ands r1, r2
	adds r1, r1, r3
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r2, r1
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_0802A800: .4byte gUnk_080CD0B0

	thumb_func_start sub_0802A804
sub_0802A804: @ 0x0802A804
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #2
	bne _0802A830
	adds r0, r5, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _0802A830
	ldr r0, _0802A82C @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _0802A844
	.align 2, 0
_0802A82C: .4byte gUnk_080012C8
_0802A830:
	ldr r4, _0802A848 @ =gUnk_080CD0F0
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_0802A844:
	pop {r4, r5, pc}
	.align 2, 0
_0802A848: .4byte gUnk_080CD0F0

	thumb_func_start sub_0802A84C
sub_0802A84C: @ 0x0802A84C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0802A878
	cmp r0, #3
	beq _0802A894
	ldr r0, _0802A874 @ =gUnk_080CD108
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0802AD54
	b _0802A8A4
	.align 2, 0
_0802A874: .4byte gUnk_080CD108
_0802A878:
	ldr r0, _0802A890 @ =gUnk_080CD120
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0802B048
	b _0802A8A4
	.align 2, 0
_0802A890: .4byte gUnk_080CD120
_0802A894:
	ldr r0, _0802A8A8 @ =gUnk_080CD134
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_0802A8A4:
	pop {r4, pc}
	.align 2, 0
_0802A8A8: .4byte gUnk_080CD134

	thumb_func_start sub_0802A8AC
sub_0802A8AC: @ 0x0802A8AC
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x81
	movs r0, #0
	strb r0, [r2]
	ldrb r0, [r1, #0xa]
	cmp r0, #1
	bhi _0802A8C6
	adds r0, r1, #0
	movs r1, #0
	bl sub_08004260
_0802A8C6:
	pop {pc}

	thumb_func_start sub_0802A8C8
sub_0802A8C8: @ 0x0802A8C8
	push {lr}
	ldr r2, _0802A8DC @ =gUnk_080CD140
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802A8DC: .4byte gUnk_080CD140

	thumb_func_start sub_0802A8E0
sub_0802A8E0: @ 0x0802A8E0
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A8EC
sub_0802A8EC: @ 0x0802A8EC
	push {lr}
	bl sub_0806F4E8
	pop {pc}

	thumb_func_start sub_0802A8F4
sub_0802A8F4: @ 0x0802A8F4
	push {lr}
	bl sub_0806F3E4
	pop {pc}

	thumb_func_start sub_0802A8FC
sub_0802A8FC: @ 0x0802A8FC
	push {lr}
	adds r2, r0, #0
	ldr r0, _0802A914 @ =gUnk_03003F80
	ldrb r0, [r0, #0x1c]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _0802A912
	adds r0, r2, #0
	adds r0, #0x45
	strb r1, [r0]
_0802A912:
	pop {pc}
	.align 2, 0
_0802A914: .4byte gUnk_03003F80

	thumb_func_start nullsub_143
nullsub_143: @ 0x0802A918
	bx lr
	.align 2, 0

	thumb_func_start sub_0802A91C
sub_0802A91C: @ 0x0802A91C
	adds r0, #0x45
	movs r1, #0
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0802A924
sub_0802A924: @ 0x0802A924
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
	movs r6, #1
	movs r0, #1
	strb r0, [r7, #0xc]
	strb r5, [r7, #0xd]
	strb r5, [r7, #0xe]
	strb r5, [r7, #0xf]
	ldr r0, _0802A9A0 @ =gUnk_080CD16C
	str r0, [r7, #0x48]
	movs r4, #0
	ldr r0, _0802A9A4 @ =0x0000FFD0
	strh r0, [r7, #0x36]
	bl sub_08000E50
	ands r0, r6
	adds r1, r7, #0
	adds r1, #0x80
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x82
	strh r5, [r0]
	subs r0, #7
	strb r4, [r0]
	adds r0, #6
	strb r4, [r0]
	subs r0, #7
	strb r4, [r0]
	subs r0, #2
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	subs r1, #0x48
	movs r0, #3
	strb r0, [r1]
	ldrb r2, [r7, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r7, #0x1b]
	ldrb r0, [r7, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r7, #0x19]
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
	ldrb r1, [r7, #0xa]
	adds r1, #1
	adds r0, r7, #0
	bl sub_08004260
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802A9A0: .4byte gUnk_080CD16C
_0802A9A4: .4byte 0x0000FFD0

	thumb_func_start sub_0802A9A8
sub_0802A9A8: @ 0x0802A9A8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0802A9B8
	subs r0, #1
	strb r0, [r4, #0xf]
	b _0802AA3E
_0802A9B8:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802A9DE
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802AA38
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x40
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0802ACDC
	b _0802AA38
_0802A9DE:
	ldr r0, _0802AA14 @ =gRoomControls
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _0802AA3E
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AA18
	ldrh r0, [r2, #0xa]
	subs r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #8
	b _0802AA26
	.align 2, 0
_0802AA14: .4byte gRoomControls
_0802AA18:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	movs r0, #0x18
_0802AA26:
	strb r0, [r4, #0x15]
	ldrh r0, [r2, #0xc]
	adds r0, #0x40
	strh r0, [r4, #0x32]
	movs r0, #0x80
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_0802ADDC
_0802AA38:
	adds r0, r4, #0
	bl sub_0802AC40
_0802AA3E:
	pop {r4, pc}

	thumb_func_start sub_0802AA40
sub_0802AA40: @ 0x0802AA40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802AC40
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AA66
	adds r0, r4, #0
	movs r1, #8
	bl sub_0802ACDC
	adds r1, r4, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802AA66:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802AA72
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0802AABE
_0802AA72:
	ldr r2, [r4, #0x54]
	cmp r2, #0
	beq _0802AABE
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _0802AA82
	str r0, [r4, #0x54]
	b _0802AABE
_0802AA82:
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r0, #0
	adds r1, #0x18
	movs r0, #0x18
	ands r1, r0
	adds r3, r4, #0
	adds r3, #0x7b
	ldrb r0, [r3]
	cmp r0, #0x20
	bls _0802AA9E
	strb r1, [r4, #0x15]
_0802AA9E:
	ldrb r0, [r4, #0x15]
	cmp r0, r1
	bne _0802AABE
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x24]
	strb r1, [r3]
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x96
	strb r0, [r2, #0xe]
_0802AABE:
	pop {r4, pc}

	thumb_func_start sub_0802AAC0
sub_0802AAC0: @ 0x0802AAC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0802AC40
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	movs r6, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AADE
	adds r0, r4, #0
	movs r1, #4
	bl sub_0802AD1C
_0802AADE:
	adds r2, r4, #0
	adds r2, #0x81
	ldrb r5, [r2]
	cmp r5, #0
	beq _0802AB0E
	ldr r1, [r4, #0x54]
	cmp r1, #0
	bne _0802AAF2
	strb r1, [r2]
	b _0802AB3C
_0802AAF2:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0802AAFE
	strb r0, [r2]
	str r0, [r4, #0x54]
	b _0802AB3C
_0802AAFE:
	ldrb r3, [r1, #0xe]
	cmp r3, #0
	bne _0802AB3C
	ldrb r0, [r1, #0xf]
	cmp r0, #0x50
	bhi _0802AB3C
	strb r3, [r2]
	b _0802AB3C
_0802AB0E:
	movs r3, #4
	strb r3, [r4, #0xc]
	movs r0, #0xc0
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x78
	strb r5, [r0]
	adds r0, #1
	strb r3, [r0]
	ldrb r0, [r4, #0x15]
	orrs r0, r6
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
_0802AB3C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802AB40
sub_0802AB40: @ 0x0802AB40
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802AC40
	adds r3, r4, #0
	adds r3, #0x78
	ldrb r0, [r3]
	cmp r0, #1
	beq _0802AB94
	cmp r0, #1
	bgt _0802AB5C
	cmp r0, #0
	beq _0802AB62
	b _0802AC04
_0802AB5C:
	cmp r0, #2
	beq _0802ABC2
	b _0802AC04
_0802AB62:
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0802AB86
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AC04
	movs r0, #4
	strb r0, [r1]
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	b _0802AC04
_0802AB86:
	movs r0, #1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x30
	strb r0, [r1]
	b _0802ABB6
_0802AB94:
	adds r2, r4, #0
	adds r2, #0x79
	ldrb r0, [r2]
	subs r1, r0, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0802ABAE
	movs r0, #2
	strb r0, [r3]
	movs r0, #4
	strb r0, [r2]
	b _0802AC04
_0802ABAE:
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0802AC04
_0802ABB6:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08049F84
	strb r0, [r4, #0x15]
	b _0802AC04
_0802ABC2:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x30
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0802ABF2
	adds r1, r4, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802AC04
	movs r0, #4
	strb r0, [r1]
	ldrh r0, [r4, #0x36]
	subs r0, #1
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	movs r1, #4
	bl sub_0802ACDC
	b _0802AC04
_0802ABF2:
	movs r1, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	strh r1, [r4, #0x24]
	ldrb r1, [r4, #0xa]
	adds r1, #1
	adds r0, r4, #0
	bl sub_08004260
_0802AC04:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802AC08
sub_0802AC08: @ 0x0802AC08
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802AC36
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
	movs r0, #0x40
	strb r0, [r4, #0xe]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #8
	bl sub_0802ACDC
	adds r0, r4, #0
	bl sub_0802ADDC
_0802AC36:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802AC40
sub_0802AC40: @ 0x0802AC40
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F69C
	adds r5, r4, #0
	adds r5, #0x7a
	ldrb r0, [r5]
	cmp r0, #0
	beq _0802ACA2
	adds r0, r4, #0
	bl sub_0802B234
	cmp r0, #0
	bne _0802AC72
	strb r0, [r5]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	b _0802ACD8
_0802AC72:
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0802AC92
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #8
	beq _0802ACDA
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	b _0802ACD6
_0802AC92:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	beq _0802ACDA
	b _0802ACCE
_0802ACA2:
	adds r0, r4, #0
	bl sub_0802B234
	cmp r0, #0
	beq _0802ACDA
	movs r0, #1
	strb r0, [r5]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0802ACC8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	b _0802ACD6
_0802ACC8:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
_0802ACCE:
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
_0802ACD6:
	orrs r0, r1
_0802ACD8:
	strb r0, [r2]
_0802ACDA:
	pop {r4, r5, pc}

	thumb_func_start sub_0802ACDC
sub_0802ACDC: @ 0x0802ACDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802ACF8
	ldr r0, _0802ACF4 @ =gRoomControls
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	adds r1, #0x20
	b _0802AD00
	.align 2, 0
_0802ACF4: .4byte gRoomControls
_0802ACF8:
	ldr r0, _0802AD18 @ =gRoomControls
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	adds r1, #0xd0
_0802AD00:
	movs r3, #0xc
	ldrsh r2, [r0, r3]
	adds r2, #0x60
	adds r0, r4, #0
	bl sub_080045B4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	strb r5, [r4, #0xf]
	pop {r4, r5, pc}
	.align 2, 0
_0802AD18: .4byte gRoomControls

	thumb_func_start sub_0802AD1C
sub_0802AD1C: @ 0x0802AD1C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _0802AD48
	movs r1, #0x32
	ldrsh r2, [r0, r1]
	subs r2, #0x18
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	adds r0, r4, #0
	bl sub_080045B4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
	strb r5, [r4, #0xf]
	b _0802AD50
_0802AD48:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0802ACDC
_0802AD50:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802AD54
sub_0802AD54: @ 0x0802AD54
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x82
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802ADAE
	ldr r4, _0802AD7C @ =gRoomControls
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802AD80
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	bl sub_0805E7BC
	b _0802ADD8
	.align 2, 0
_0802AD7C: .4byte gRoomControls
_0802AD80:
	ldrh r1, [r4, #8]
	movs r0, #0x32
	ldrsh r3, [r2, r0]
	cmp r1, r3
	bgt _0802AD94
	ldrh r0, [r4, #0x20]
	adds r0, r1, r0
	adds r0, #0x20
	cmp r0, r3
	bge _0802ADA0
_0802AD94:
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	b _0802ADAE
_0802ADA0:
	ldrb r0, [r2, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2, #0x18]
_0802ADAE:
	adds r0, r2, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802ADD8
	ldr r0, [r2, #0x54]
	cmp r0, #0
	beq _0802ADC4
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802ADD8
_0802ADC4:
	movs r1, #4
	strb r1, [r2, #0xc]
	movs r0, #0xc0
	strb r0, [r2, #0xe]
	strb r1, [r2, #0xf]
	adds r2, #0x80
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
_0802ADD8:
	pop {r4, pc}
	.align 2, 0
