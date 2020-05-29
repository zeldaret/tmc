	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08067D20
sub_08067D20: @ 0x08067D20
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x75
	ldrb r0, [r1]
	cmp r0, #0
	beq _08067D34
	subs r0, #1
	strb r0, [r1]
	b _08067D70
_08067D34:
	movs r0, #2
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _08067D70
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	movs r3, #0x28
	cmp r0, #0
	bge _08067D4C
	movs r3, #0x10
_08067D4C:
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r5, #0x2e
	ldrsh r0, [r4, r5]
	subs r0, r0, r3
	subs r1, r1, r0
	cmp r1, #0x30
	bhi _08067D70
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	adds r0, #4
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0x38
	bhi _08067D70
	movs r0, #1
	b _08067D72
_08067D70:
	movs r0, #0
_08067D72:
	pop {r4, r5, pc}

	thumb_func_start sub_08067D74
sub_08067D74: @ 0x08067D74
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _08067DC8
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08067D88
	subs r0, #1
	strb r0, [r4, #0xe]
_08067D88:
	movs r0, #2
	bl sub_08049DF4
	adds r2, r0, #0
	cmp r2, #0
	beq _08067DC8
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	movs r3, #0x18
	cmp r0, #0
	bge _08067DA0
	movs r3, #8
_08067DA0:
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r5, #0x2e
	ldrsh r0, [r4, r5]
	subs r0, r0, r3
	subs r1, r1, r0
	cmp r1, #0x1e
	bhi _08067DC8
	movs r1, #0x32
	ldrsh r0, [r2, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #0x16
	bhi _08067DC8
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08067DC8
	movs r0, #1
	b _08067DCA
_08067DC8:
	movs r0, #0
_08067DCA:
	pop {r4, r5, pc}

	thumb_func_start sub_08067DCC
sub_08067DCC: @ 0x08067DCC
	push {lr}
	adds r2, r0, #0
	adds r2, #0x71
	strb r1, [r2]
	bl sub_080042AC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08067DDC
sub_08067DDC: @ 0x08067DDC
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	movs r1, #0
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	adds r0, #0x41
	strb r1, [r0]
	subs r0, #4
	strb r1, [r0]
	ldr r0, _08067DF8 @ =gUnk_08110EF0
	str r0, [r2, #0x48]
	bx lr
	.align 2, 0
_08067DF8: .4byte gUnk_08110EF0

	thumb_func_start sub_08067DFC
sub_08067DFC: @ 0x08067DFC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08067E22
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
	movs r1, #5
	bl sub_080042AC
	b _08067E28
_08067E22:
	adds r0, r2, #0
	bl sub_080042B8
_08067E28:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08067E2C
sub_08067E2C: @ 0x08067E2C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08067E58
	ldr r0, _08067E54 @ =gUnk_08111368
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	b _08067E5E
	.align 2, 0
_08067E54: .4byte gUnk_08111368
_08067E58:
	adds r0, r4, #0
	bl sub_08067EF0
_08067E5E:
	pop {r4, pc}

	thumb_func_start sub_08067E60
sub_08067E60: @ 0x08067E60
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08067E84 @ =gUnk_08111358
	bl sub_0806FDEC
	cmp r0, #0
	beq _08067E80
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_08078778
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
_08067E80:
	pop {r4, pc}
	.align 2, 0
_08067E84: .4byte gUnk_08111358

	thumb_func_start sub_08067E88
sub_08067E88: @ 0x08067E88
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	bge _08067E9E
	movs r1, #2
	b _08067EB4
_08067E9E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08067EAA
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08067EB4
_08067EAA:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
_08067EB4:
	adds r0, r4, #0
	bl sub_0806F078
	cmp r0, #0
	bne _08067EC4
	adds r0, r4, #0
	bl sub_08004274
_08067EC4:
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08067EE4
	movs r0, #0
	strb r0, [r1]
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	movs r1, #0x90
	lsls r1, r1, #5
	adds r0, r0, r1
	bl TextboxTryNoOverlap
_08067EE4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08067EE8
sub_08067EE8: @ 0x08067EE8
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08067EF0
sub_08067EF0: @ 0x08067EF0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #0xc]
	cmp r4, #1
	beq _08067F58
	cmp r4, #1
	bgt _08067F04
	cmp r4, #0
	beq _08067F10
	b _0806801A
_08067F04:
	cmp r4, #2
	beq _08067FDC
	cmp r4, #3
	bne _08067F0E
	b _08068000
_08067F0E:
	b _0806801A
_08067F10:
	ldr r1, _08067F50 @ =gUnk_08111358
	adds r0, r5, #0
	bl sub_0806FDEC
	cmp r0, #0
	bne _08067F1E
	b _080680F0
_08067F1E:
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0x69
	strb r4, [r0]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r5, #0
	bl sub_0807DD50
	ldr r1, _08067F54 @ =gUnk_08111304
	ldrb r0, [r5, #0xb]
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08067FF2
	.align 2, 0
_08067F50: .4byte gUnk_08111358
_08067F54: .4byte gUnk_08111304
_08067F58:
	adds r4, r5, #0
	adds r4, #0x39
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bne _08067F98
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0xc]
	strb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _08067F94 @ =gLinkEntity
	adds r0, r5, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08004260
	adds r0, r5, #0
	bl sub_0806F118
	b _0806801A
	.align 2, 0
_08067F94: .4byte gLinkEntity
_08067F98:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r5, #0
	bl sub_0807DDE4
	ldrb r0, [r5, #0xb]
	cmp r0, #3
	bne _0806801A
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0806801A
	movs r1, #0
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r1, [r4]
	ldr r1, _08067FD8 @ =gLinkEntity
	adds r0, r5, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08004260
	adds r0, r5, #0
	bl sub_08068190
	b _0806801A
	.align 2, 0
_08067FD8: .4byte gLinkEntity
_08067FDC:
	ldr r0, _08067FFC @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806801A
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x14]
	lsrs r1, r1, #1
	adds r1, #4
_08067FF2:
	adds r0, r5, #0
	bl sub_08004260
	b _0806801A
	.align 2, 0
_08067FFC: .4byte gTextBox
_08068000:
	adds r0, r5, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806801A
	movs r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08004260
_0806801A:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0xff
	beq _0806802C
	adds r0, r5, #0
	bl sub_08004274
_0806802C:
	adds r1, r5, #0
	adds r1, #0x5b
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	adds r6, r1, #0
	cmp r0, #0
	beq _0806807E
	movs r0, #0xfe
	ands r0, r2
	strb r0, [r6]
	adds r0, r5, #0
	bl sub_080040A8
	cmp r0, #0
	bne _08068068
	ldr r4, _08068064 @ =gUnk_0811137A
	bl sub_08000E50
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl PlaySFX
	b _0806807E
	.align 2, 0
_08068064: .4byte gUnk_0811137A
_08068068:
	ldr r4, _080680F4 @ =gUnk_08111374
	bl sub_08000E50
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl sub_08004488
_0806807E:
	ldrb r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080680A8
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _080680A8
	ldr r3, _080680F8 @ =0xFFE80000
	adds r0, r5, #0
	movs r2, #0
	bl PositionRelative
_080680A8:
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080680D2
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #0x3d
	movs r2, #0x20
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _080680D2
	ldr r2, _080680FC @ =0xFFEC0000
	ldr r3, _08068100 @ =0xFFF60000
	adds r0, r5, #0
	bl PositionRelative
_080680D2:
	ldrb r1, [r6]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080680F0
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r6]
	bl sub_08000E50
	movs r1, #0x1f
	ands r0, r1
	ldrb r1, [r7]
	adds r0, r0, r1
	strb r0, [r7]
_080680F0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080680F4: .4byte gUnk_08111374
_080680F8: .4byte 0xFFE80000
_080680FC: .4byte 0xFFEC0000
_08068100: .4byte 0xFFF60000

	thumb_func_start sub_08068104
sub_08068104: @ 0x08068104
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806811C
sub_0806811C: @ 0x0806811C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	adds r7, r0, #0
	cmp r7, #0
	beq _0806812E
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0806818A
_0806812E:
	movs r0, #2
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806EDD8
	adds r3, r0, #0
	cmp r3, #0
	bge _08068148
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0x14]
	lsls r3, r0, #2
_08068148:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	lsls r0, r0, #5
	asrs r1, r3, #1
	lsls r1, r1, #1
	ldr r2, _0806818C @ =gUnk_08111284
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r6, [r0]
	ldrb r5, [r0, #1]
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0806816C
	adds r0, r3, #0
	bl sub_0806F5B0
	strb r0, [r4, #0x14]
_0806816C:
	movs r0, #0x40
	orrs r6, r0
	adds r0, r4, #0
	adds r0, #0x5a
	strb r6, [r0]
	movs r0, #0x7f
	ands r5, r0
	strb r5, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x58
	strb r7, [r0]
	adds r1, r4, #0
	adds r1, #0x59
	movs r0, #0xff
	strb r0, [r1]
_0806818A:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806818C: .4byte gUnk_08111284

	thumb_func_start sub_08068190
sub_08068190: @ 0x08068190
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r5, [r6, #0xb]
	cmp r5, #8
	bls _0806819C
	movs r5, #8
_0806819C:
	movs r0, #0x7e
	bl sub_0807CBD0
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x41
	bl GetInventoryValue
	cmp r0, #0
	beq _080681B4
	movs r4, #2
_080681B4:
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	beq _080681C0
	movs r4, #3
_080681C0:
	ldr r2, _080681D4 @ =gUnk_0811130E
	lsls r0, r4, #1
	lsls r1, r5, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r6, #0
	bl TextboxNoOverlap
	pop {r4, r5, r6, pc}
	.align 2, 0
_080681D4: .4byte gUnk_0811130E

	thumb_func_start sub_080681D8
sub_080681D8: @ 0x080681D8
	ldr r1, [r1, #4]
	strb r1, [r0, #0xa]
	bx lr
	.align 2, 0

	thumb_func_start sub_080681E0
sub_080681E0: @ 0x080681E0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x5a
	ldrb r4, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r4, r0
	ldrb r2, [r5, #0x1e]
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806FF60
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08068226
	movs r0, #0xe1
	rsbs r0, r0, #0
	ands r4, r0
	adds r2, r4, #4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	b _08068268
_08068226:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08068254
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xff
	bl sub_0806FF60
	movs r0, #0xe1
	rsbs r0, r0, #0
	ands r4, r0
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl sub_0806FF88
	b _08068268
_08068254:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xff
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	bl sub_0806FF60
_08068268:
	adds r0, r5, #0
	bl sub_0807000C
	pop {r4, r5, pc}

	thumb_func_start sub_08068270
sub_08068270: @ 0x08068270
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080682A8
	ldr r1, _080682A4 @ =gUnk_08111358
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _080682AE
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _080682AE
	.align 2, 0
_080682A4: .4byte gUnk_08111358
_080682A8:
	adds r0, r4, #0
	bl sub_08004274
_080682AE:
	pop {r4, pc}

	thumb_func_start sub_080682B0
sub_080682B0: @ 0x080682B0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r2, r0, #0
	cmp r2, #0
	bne _080682F4
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #4
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x68
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #0
	bl sub_080042AC
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806854C
_080682F4:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806830A
	adds r0, r4, #0
	bl sub_08068318
	b _08068314
_0806830A:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_08068314:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08068318
sub_08068318: @ 0x08068318
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r4, _08068414 @ =gLinkEntity
	ldrh r1, [r4, #0x2e]
	ldr r3, _08068418 @ =0xFFFF0000
	adds r0, r3, #0
	ands r0, r6
	orrs r0, r1
	ldrh r1, [r4, #0x32]
	lsls r1, r1, #0x10
	ldr r2, _0806841C @ =0x0000FFFF
	ands r0, r2
	adds r6, r0, #0
	orrs r6, r1
	ldrh r0, [r4, #0x36]
	ands r3, r7
	orrs r3, r0
	adds r7, r3, #0
	ldr r0, _08068420 @ =gUnk_03003F80
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _08068424 @ =0xFF00FFFF
	ands r2, r3
	orrs r2, r0
	adds r7, r2, #0
	ldrb r1, [r4, #0x14]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #0x18
	ldr r0, _08068428 @ =0xC0FFFFFF
	ands r0, r2
	orrs r0, r1
	adds r7, r0, #0
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	ldr r2, _0806842C @ =0x3FFFFFFF
	ands r0, r2
	adds r7, r0, #0
	orrs r7, r1
	mov r0, r8
	ldr r5, [r0, #0x64]
	ldrb r1, [r5, #6]
	cmp r1, #0xa
	bne _08068386
	lsrs r0, r7, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _08068394
_08068386:
	cmp r1, #0x16
	bne _080683B4
	lsrs r0, r7, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x16
	beq _080683B4
_08068394:
	ldrh r0, [r4, #0x2e]
	mov r1, r8
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0x32]
	ldrb r1, [r1, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	mov r2, r8
	strb r0, [r2, #0x18]
	mov r0, r8
	bl sub_08068578
_080683B4:
	movs r3, #0
	mov sb, r3
	ldr r0, [r5]
	cmp r6, r0
	bne _080683D0
	ldr r0, [r5, #4]
	cmp r7, r0
	bne _080683D0
	lsls r1, r7, #8
	lsrs r0, r1, #0x18
	cmp r0, #0x16
	beq _080683D0
	cmp r0, #0xa
	bne _08068430
_080683D0:
	mov r0, r8
	ldr r5, [r0, #0x64]
	adds r5, #0x90
	mov r4, r8
	adds r4, #0x69
	mov r3, r8
	adds r3, #0x38
	movs r1, #0x58
	add r1, r8
	mov ip, r1
	movs r2, #0x12
_080683E6:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	subs r5, #8
	subs r2, #1
	cmp r2, #0
	bge _080683E6
	mov r2, r8
	ldr r5, [r2, #0x64]
	str r6, [r5]
	str r7, [r5, #4]
	movs r0, #4
	mov sb, r0
	ldrb r1, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _080684A8
	subs r0, r1, #1
	strb r0, [r4]
	b _080684A8
	.align 2, 0
_08068414: .4byte gLinkEntity
_08068418: .4byte 0xFFFF0000
_0806841C: .4byte 0x0000FFFF
_08068420: .4byte gUnk_03003F80
_08068424: .4byte 0xFF00FFFF
_08068428: .4byte 0xC0FFFFFF
_0806842C: .4byte 0x3FFFFFFF
_08068430:
	adds r5, #0x98
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08068466
	mov r2, r8
	ldr r5, [r2, #0x64]
	adds r5, #0x90
	mov r4, r8
	adds r4, #0x69
	mov r3, r8
	adds r3, #0x38
	movs r0, #0x58
	add r0, r8
	mov ip, r0
	movs r2, #0x12
_08068450:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	subs r5, #8
	subs r2, #1
	cmp r2, #0
	bge _08068450
	movs r1, #4
	mov sb, r1
	b _080684A8
_08068466:
	ldr r1, _0806851C @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	movs r3, #0x32
	ldrsh r1, [r1, r3]
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	bl sub_080041E8
	lsrs r0, r0, #4
	mov r4, r8
	adds r4, #0x69
	mov r3, r8
	adds r3, #0x38
	movs r1, #0x58
	add r1, r8
	mov ip, r1
	cmp r0, #0x18
	ble _080684A8
	mov r2, r8
	ldr r5, [r2, #0x64]
	adds r5, #0x90
	movs r2, #0x12
_08068494:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	subs r5, #8
	subs r2, #1
	cmp r2, #0
	bge _08068494
	movs r0, #4
	mov sb, r0
_080684A8:
	mov r1, r8
	ldr r5, [r1, #0x64]
	adds r5, #0x98
	ldrh r0, [r5]
	strh r0, [r1, #0x2e]
	ldrh r0, [r5, #2]
	strh r0, [r1, #0x32]
	ldrh r0, [r5, #4]
	strh r0, [r1, #0x36]
	ldrb r0, [r5, #7]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	strb r0, [r1, #0x14]
	ldrb r0, [r5, #7]
	lsrs r0, r0, #6
	strb r0, [r3]
	ldrb r0, [r5, #6]
	cmp r0, #0x16
	beq _080684D2
	cmp r0, #0xa
	bne _080684DE
_080684D2:
	mov r2, r8
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
_080684DE:
	adds r1, r4, #0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _080684EE
	subs r0, r2, #1
	strb r0, [r1]
_080684EE:
	mov r2, sb
	mov r3, r8
	ldrb r0, [r3, #0x14]
	lsrs r0, r0, #1
	add sb, r0
	mov r0, ip
	ldrb r0, [r0]
	cmp sb, r0
	beq _08068520
	cmp r2, #0
	bne _0806850C
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bgt _08068520
_0806850C:
	mov r0, r8
	mov r1, sb
	bl sub_080042AC
	movs r0, #0x1e
	strb r0, [r4]
	b _08068526
	.align 2, 0
_0806851C: .4byte gLinkEntity
_08068520:
	mov r0, r8
	bl sub_080042B8
_08068526:
	mov r0, r8
	bl sub_0800451C
	mov r1, r8
	movs r2, #0x36
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08068542
	movs r2, #0xc
	rsbs r2, r2, #0
	mov r0, r8
	movs r1, #0
	bl sub_0806F854
_08068542:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0806854C
sub_0806854C: @ 0x0806854C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa0
	bl sub_0801D8E0
	str r0, [r5, #0x64]
	cmp r0, #0
	beq _08068574
	adds r0, r5, #0
	adds r0, #0x68
	movs r4, #0
	movs r1, #1
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_080788E0
	str r4, [r5, #0x48]
	adds r0, r5, #0
	bl sub_08068578
_08068574:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08068578
sub_08068578: @ 0x08068578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r4, _08068664 @ =gLinkEntity
	ldrh r1, [r4, #0x2e]
	ldr r3, _08068668 @ =0xFFFF0000
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r1
	ldrh r1, [r4, #0x32]
	lsls r1, r1, #0x10
	ldr r2, _0806866C @ =0x0000FFFF
	ands r0, r2
	adds r5, r0, #0
	orrs r5, r1
	ldrh r0, [r4, #0x36]
	ands r3, r6
	orrs r3, r0
	ldr r0, _08068670 @ =gUnk_03003F80
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _08068674 @ =0xFF00FFFF
	ands r2, r3
	orrs r2, r0
	ldrb r1, [r4, #0x14]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #0x18
	ldr r0, _08068678 @ =0xC0FFFFFF
	ands r0, r2
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	ldr r2, _0806867C @ =0x3FFFFFFF
	ands r0, r2
	adds r6, r0, #0
	orrs r6, r1
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	mov sl, r1
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r2, #0x32
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	mov r8, r1
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x14
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x14
	bl sub_0806FA04
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [r7, #0x64]
	movs r0, #0
	mov sb, r0
	mov ip, r0
	movs r4, #0x13
_08068614:
	mov r1, ip
	asrs r0, r1, #8
	subs r0, r5, r0
	strh r0, [r3]
	lsrs r0, r5, #0x10
	mov r2, sb
	asrs r1, r2, #8
	subs r0, r0, r1
	strh r0, [r3, #2]
	strh r6, [r3, #4]
	lsrs r0, r6, #0x10
	strb r0, [r3, #6]
	ldrb r0, [r7, #0x14]
	movs r1, #0x3f
	ands r1, r0
	ldrb r2, [r3, #7]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #7]
	adds r1, r7, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #6
	movs r2, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #7]
	adds r3, #8
	add sb, r8
	add ip, sl
	subs r4, #1
	cmp r4, #0
	bge _08068614
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08068664: .4byte gLinkEntity
_08068668: .4byte 0xFFFF0000
_0806866C: .4byte 0x0000FFFF
_08068670: .4byte gUnk_03003F80
_08068674: .4byte 0xFF00FFFF
_08068678: .4byte 0xC0FFFFFF
_0806867C: .4byte 0x3FFFFFFF

	thumb_func_start sub_08068680
sub_08068680: @ 0x08068680
	adds r2, r1, #0
	adds r2, #0x68
	movs r0, #0
	strb r0, [r2]
	ldrb r2, [r1, #0x18]
	subs r0, #4
	ands r0, r2
	strb r0, [r1, #0x18]
	bx lr
	.align 2, 0

	thumb_func_start sub_08068694
sub_08068694: @ 0x08068694
	push {r4, lr}
	adds r4, r1, #0
	adds r2, r4, #0
	adds r2, #0x68
	movs r3, #1
	movs r1, #1
	strb r1, [r2]
	ldrb r2, [r4, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r4, #0x18]
	ldrb r0, [r0, #0x14]
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08068578
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080686C4
sub_080686C4: @ 0x080686C4
	push {lr}
	adds r0, r1, #0
	ldrh r1, [r0, #0x32]
	subs r1, #0x10
	strh r1, [r0, #0x32]
	bl sub_08068578
	pop {pc}

	thumb_func_start sub_080686D4
sub_080686D4: @ 0x080686D4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08068700
	ldr r0, _080686FC @ =gUnk_08111530
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	b _08068706
	.align 2, 0
_080686FC: .4byte gUnk_08111530
_08068700:
	adds r0, r4, #0
	bl sub_08068780
_08068706:
	pop {r4, pc}

	thumb_func_start sub_08068708
sub_08068708: @ 0x08068708
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806872C @ =gUnk_08111520
	bl sub_0806FDEC
	cmp r0, #0
	beq _08068728
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_08078778
_08068728:
	pop {r4, pc}
	.align 2, 0
_0806872C: .4byte gUnk_08111520

	thumb_func_start sub_08068730
sub_08068730: @ 0x08068730
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	blt _08068762
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0806875E
	movs r0, #0x10
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r1
	beq _08068762
	adds r0, r4, #0
	bl sub_08004260
	b _08068762
_0806875E:
	subs r0, #1
	strb r0, [r4, #0xf]
_08068762:
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0806877E
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4, #0xe]
	movs r1, #0x90
	lsls r1, r1, #5
	adds r0, r0, r1
	bl TextboxTryNoOverlap
_0806877E:
	pop {r4, pc}

	thumb_func_start sub_08068780
sub_08068780: @ 0x08068780
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	beq _080687D0
	cmp r0, #1
	bgt _08068794
	cmp r0, #0
	beq _0806879A
	b _0806880E
_08068794:
	cmp r0, #2
	beq _08068800
	b _0806880E
_0806879A:
	ldr r1, _080687CC @ =gUnk_08111520
	adds r0, r5, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806887A
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r5, #0
	bl sub_0807DD50
	b _0806880E
	.align 2, 0
_080687CC: .4byte gUnk_08111520
_080687D0:
	adds r2, r5, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _080687EA
	movs r0, #0
	strb r1, [r5, #0xc]
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_0806F118
	b _0806880E
_080687EA:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r5, #0
	bl sub_0807DDE4
	adds r0, r5, #0
	bl sub_08004274
	b _0806880E
_08068800:
	adds r0, r5, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806880E
	movs r0, #1
	strb r0, [r5, #0xc]
_0806880E:
	adds r2, r5, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806887A
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080040A8
	cmp r0, #0
	bne _08068848
	ldr r4, _08068844 @ =gUnk_0811153E
	bl sub_08000E50
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl PlaySFX
	b _0806885E
	.align 2, 0
_08068844: .4byte gUnk_0811153E
_08068848:
	ldr r4, _0806887C @ =gUnk_08111538
	bl sub_08000E50
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl sub_08004488
_0806885E:
	adds r0, r5, #0
	movs r1, #0x3d
	movs r2, #0x20
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _0806887A
	movs r2, #0xc0
	lsls r2, r2, #0xd
	ldr r3, _08068880 @ =0xFFF60000
	adds r0, r5, #0
	bl PositionRelative
_0806887A:
	pop {r4, r5, pc}
	.align 2, 0
_0806887C: .4byte gUnk_08111538
_08068880: .4byte 0xFFF60000

	thumb_func_start sub_08068884
sub_08068884: @ 0x08068884
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start sub_0806889C
sub_0806889C: @ 0x0806889C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x5a
	ldrb r4, [r0]
	movs r0, #0xc1
	rsbs r0, r0, #0
	ands r4, r0
	ldrb r2, [r5, #0x1e]
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806FF60
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _080688E2
	movs r0, #0xe1
	rsbs r0, r0, #0
	ands r4, r0
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	b _08068906
_080688E2:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xff
	bl sub_0806FF60
	movs r0, #0xe1
	rsbs r0, r0, #0
	ands r4, r0
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl sub_0806FFD8
_08068906:
	adds r0, r5, #0
	bl sub_0807000C
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08068910
sub_08068910: @ 0x08068910
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08068920
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08068960
_08068920:
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08068960
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #0x30
	bl sub_0806EDD8
	adds r2, r0, #0
	cmp r2, #0
	bge _08068944
	movs r2, #0x10
_08068944:
	adds r0, r2, #0
	bl sub_0806F5A4
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r1, r1, r2
	adds r0, r4, #0
	bl sub_08004260
_08068960:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08068964
sub_08068964: @ 0x08068964
	push {lr}
	movs r0, #0x35
	movs r1, #0
	movs r2, #3
	bl sub_080A7C18
	movs r0, #0x35
	movs r1, #2
	bl sub_0807CAA0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806897C
sub_0806897C: @ 0x0806897C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080689B4
	ldr r1, _080689B0 @ =gUnk_08111520
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _080689BA
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08004260
	b _080689BA
	.align 2, 0
_080689B0: .4byte gUnk_08111520
_080689B4:
	adds r0, r4, #0
	bl sub_08004274
_080689BA:
	pop {r4, pc}

	thumb_func_start nullsub_502
nullsub_502: @ 0x080689BC
	bx lr
	.align 2, 0

	thumb_func_start sub_080689C0
sub_080689C0: @ 0x080689C0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080689E4
	ldr r0, _080689E0 @ =gUnk_081115D0
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _080689FA
	.align 2, 0
_080689E0: .4byte gUnk_081115D0
_080689E4:
	ldr r0, _08068A18 @ =gUnk_081115C0
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
_080689FA:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08068A16
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08068BEC
_08068A16:
	pop {r4, pc}
	.align 2, 0
_08068A18: .4byte gUnk_081115C0

	thumb_func_start sub_08068A1C
sub_08068A1C: @ 0x08068A1C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _08068A34 @ =gUnk_030010A0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08068A38
	movs r1, #6
	movs r0, #3
	b _08068A42
	.align 2, 0
_08068A34: .4byte gUnk_030010A0
_08068A38:
	adds r0, r4, #0
	bl sub_08078778
	movs r1, #2
	movs r0, #1
_08068A42:
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_08004260
	pop {r4, pc}

	thumb_func_start sub_08068A4C
sub_08068A4C: @ 0x08068A4C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	bge _08068A62
	movs r1, #2
	b _08068A78
_08068A62:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08068A6E
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08068A78
_08068A6E:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
_08068A78:
	adds r0, r4, #0
	bl sub_0806F078
	cmp r0, #0
	bne _08068A88
	adds r0, r4, #0
	bl sub_08004274
_08068A88:
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08068AA2
	movs r0, #0
	strb r0, [r1]
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0
	bl TextboxTryNoOverlap
_08068AA2:
	pop {r4, pc}

	thumb_func_start sub_08068AA4
sub_08068AA4: @ 0x08068AA4
	push {lr}
	adds r2, r0, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _08068AD4
	ldrb r0, [r2, #0xb]
	adds r1, r0, #1
	movs r0, #7
	ands r1, r0
	strb r1, [r2, #0xb]
	cmp r1, #0
	bne _08068AC4
	adds r0, r1, #1
	strb r0, [r2, #0xb]
_08068AC4:
	ldr r0, _08068AD8 @ =gUnk_081115DC
	ldrb r1, [r2, #0xb]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	adds r0, r2, #0
	bl sub_0801D2B4
_08068AD4:
	pop {pc}
	.align 2, 0
_08068AD8: .4byte gUnk_081115DC

	thumb_func_start sub_08068ADC
sub_08068ADC: @ 0x08068ADC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08068AF8 @ =gUnk_030010A0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #2
	bne _08068AF0
	adds r0, r4, #0
	bl sub_08004274
_08068AF0:
	adds r0, r4, #0
	bl sub_0806FD3C
	pop {r4, pc}
	.align 2, 0
_08068AF8: .4byte gUnk_030010A0

	thumb_func_start sub_08068AFC
sub_08068AFC: @ 0x08068AFC
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
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	adds r0, r4, #0
	bl sub_0807DD50
	pop {r4, pc}

	thumb_func_start sub_08068B2C
sub_08068B2C: @ 0x08068B2C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _08068B64
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _08068B60 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_0806F118
	b _08068B6C
	.align 2, 0
_08068B60: .4byte gLinkEntity
_08068B64:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
_08068B6C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08068B70
sub_08068B70: @ 0x08068B70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F148
	cmp r0, #0
	beq _08068B80
	movs r0, #1
	strb r0, [r4, #0xc]
_08068B80:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08068B84
sub_08068B84: @ 0x08068B84
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08068BAC @ =gUnk_08111618
	ldrb r0, [r4, #0xe]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08068B9A
	movs r1, #0
	bl sub_08054414
_08068B9A:
	ldr r0, _08068BB0 @ =gUnk_081115EC
	ldrb r1, [r4, #0xe]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_0805ED14
	pop {r4, pc}
	.align 2, 0
_08068BAC: .4byte gUnk_08111618
_08068BB0: .4byte gUnk_081115EC

	thumb_func_start sub_08068BB4
sub_08068BB4: @ 0x08068BB4
	ldr r2, _08068BCC @ =gUnk_02002A40
	adds r1, r2, #0
	adds r1, #0xb4
	ldrb r1, [r1]
	adds r3, r0, #0
	adds r3, #0x69
	strb r1, [r3]
	adds r2, #0xb5
	ldrb r1, [r2]
	adds r0, #0x6a
	strb r1, [r0]
	bx lr
	.align 2, 0
_08068BCC: .4byte gUnk_02002A40

	thumb_func_start sub_08068BD0
sub_08068BD0: @ 0x08068BD0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x69
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08054414
	adds r4, #0x6a
	ldrb r0, [r4]
	movs r1, #1
	bl sub_08054414
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08068BEC
sub_08068BEC: @ 0x08068BEC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x44
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _08068C22
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	ldr r3, _08068C24 @ =0xFFF00000
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #0
	bl PositionRelative
	movs r0, #0xfa
	bl PlaySFX
_08068C22:
	pop {r4, pc}
	.align 2, 0
_08068C24: .4byte 0xFFF00000

	thumb_func_start sub_08068C28
sub_08068C28: @ 0x08068C28
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08068C54 @ =gUnk_08111623
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4, #0xe]
	ldrb r5, [r4, #0xa]
	cmp r5, #1
	bne _08068C6A
	movs r0, #0x48
	bl GetInventoryValue
	cmp r0, #0
	beq _08068C6A
	movs r0, #0x4b
	bl GetInventoryValue
	cmp r0, #0
	bne _08068C58
	strb r5, [r4, #0xe]
	b _08068C6A
	.align 2, 0
_08068C54: .4byte gUnk_08111623
_08068C58:
	movs r0, #0x4a
	bl GetInventoryValue
	cmp r0, #0
	bne _08068C66
	movs r0, #2
	b _08068C68
_08068C66:
	movs r0, #3
_08068C68:
	strb r0, [r4, #0xe]
_08068C6A:
	pop {r4, r5, pc}

	thumb_func_start sub_08068C6C
sub_08068C6C: @ 0x08068C6C
	push {lr}
	ldr r1, _08068C88 @ =gUnk_0811162B
	ldrb r0, [r0, #0xe]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0
	movs r2, #0
	bl sub_080A7C18
	pop {pc}
	.align 2, 0
_08068C88: .4byte gUnk_0811162B

	thumb_func_start sub_08068C8C
sub_08068C8C: @ 0x08068C8C
	ldr r2, _08068C9C @ =gUnk_08111638
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1, #0x14]
	bx lr
	.align 2, 0
_08068C9C: .4byte gUnk_08111638

	thumb_func_start sub_08068CA0
sub_08068CA0: @ 0x08068CA0
	push {r4, lr}
	adds r4, r1, #0
	ldrb r1, [r0, #0xa]
	cmp r1, #1
	bne _08068CDC
	str r1, [r4, #0x14]
	movs r0, #0x48
	bl GetInventoryValue
	cmp r0, #0
	bne _08068CB8
	str r0, [r4, #0x14]
_08068CB8:
	movs r0, #0x4b
	bl GetInventoryValue
	cmp r0, #0
	bne _08068CC4
	str r0, [r4, #0x14]
_08068CC4:
	movs r0, #0x4a
	bl GetInventoryValue
	cmp r0, #0
	bne _08068CD0
	str r0, [r4, #0x14]
_08068CD0:
	movs r0, #0x4e
	bl GetInventoryValue
	cmp r0, #0
	bne _08068CF6
	b _08068CF4
_08068CDC:
	ldr r1, _08068CF8 @ =gUnk_0811162B
	ldrb r0, [r0, #0xe]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	bl GetInventoryValue
	cmp r0, #0
	beq _08068CF4
	movs r0, #1
_08068CF4:
	str r0, [r4, #0x14]
_08068CF6:
	pop {r4, pc}
	.align 2, 0
_08068CF8: .4byte gUnk_0811162B

	thumb_func_start sub_08068CFC
sub_08068CFC: @ 0x08068CFC
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #0
	str r1, [r4, #0x14]
	ldrb r0, [r0, #0xe]
	cmp r0, #0xa
	bhi _08068DB6
	lsls r0, r0, #2
	ldr r1, _08068D14 @ =_08068D18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08068D14: .4byte _08068D18
_08068D18: @ jump table
	.4byte _08068DB2 @ case 0
	.4byte _08068D44 @ case 1
	.4byte _08068D48 @ case 2
	.4byte _08068D4C @ case 3
	.4byte _08068DB2 @ case 4
	.4byte _08068D50 @ case 5
	.4byte _08068D58 @ case 6
	.4byte _08068D68 @ case 7
	.4byte _08068DB2 @ case 8
	.4byte _08068DB2 @ case 9
	.4byte _08068DA8 @ case 10
_08068D44:
	movs r0, #2
	b _08068DAA
_08068D48:
	movs r0, #0x15
	b _08068DAA
_08068D4C:
	movs r0, #0x14
	b _08068DAA
_08068D50:
	movs r0, #3
	bl sub_0807CBD0
	b _08068DAE
_08068D58:
	ldr r0, _08068D64 @ =gUnk_02002A40
	adds r0, #0xab
	ldrb r0, [r0]
	cmp r0, #0x4f
	bls _08068DB6
	b _08068DB2
	.align 2, 0
_08068D64: .4byte gUnk_02002A40
_08068D68:
	movs r0, #0x48
	bl GetInventoryValue
	cmp r0, #0
	beq _08068DB6
	movs r0, #0x49
	bl GetInventoryValue
	cmp r0, #0
	beq _08068DB6
	movs r0, #0x4a
	bl GetInventoryValue
	cmp r0, #0
	beq _08068DB6
	movs r0, #0x4b
	bl GetInventoryValue
	cmp r0, #0
	beq _08068DB6
	movs r0, #0x4c
	bl GetInventoryValue
	cmp r0, #0
	beq _08068DB6
	movs r0, #0x4e
	bl GetInventoryValue
	cmp r0, #0
	beq _08068DB6
	movs r0, #0x4f
	b _08068DAA
_08068DA8:
	movs r0, #0x4d
_08068DAA:
	bl GetInventoryValue
_08068DAE:
	cmp r0, #0
	beq _08068DB6
_08068DB2:
	movs r0, #1
	str r0, [r4, #0x14]
_08068DB6:
	pop {r4, pc}

	thumb_func_start sub_08068DB8
sub_08068DB8: @ 0x08068DB8
	push {lr}
	adds r1, r0, #0
	ldr r2, _08068DCC @ =gUnk_08111664
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_08068DCC: .4byte gUnk_08111664

	thumb_func_start sub_08068DD0
sub_08068DD0: @ 0x08068DD0
	push {lr}
	adds r1, r0, #0
	ldr r2, _08068DE4 @ =gUnk_0811167A
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_08068DE4: .4byte gUnk_0811167A

	thumb_func_start sub_08068DE8
sub_08068DE8: @ 0x08068DE8
	push {lr}
	adds r1, r0, #0
	ldr r2, _08068DFC @ =gUnk_08111690
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_08068DFC: .4byte gUnk_08111690

	thumb_func_start sub_08068E00
sub_08068E00: @ 0x08068E00
	push {lr}
	adds r1, r0, #0
	ldr r2, _08068E14 @ =gUnk_081116A6
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_08068E14: .4byte gUnk_081116A6

	thumb_func_start sub_08068E18
sub_08068E18: @ 0x08068E18
	push {lr}
	adds r1, r0, #0
	ldr r2, _08068E2C @ =gUnk_081116BC
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_08068E2C: .4byte gUnk_081116BC

	thumb_func_start sub_08068E30
sub_08068E30: @ 0x08068E30
	push {lr}
	adds r1, r0, #0
	ldr r2, _08068E44 @ =gUnk_081116D2
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_08068E44: .4byte gUnk_081116D2

	thumb_func_start sub_08068E48
sub_08068E48: @ 0x08068E48
	push {lr}
	adds r1, r0, #0
	ldr r2, _08068E5C @ =gUnk_081116E8
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_08068E5C: .4byte gUnk_081116E8

	thumb_func_start sub_08068E60
sub_08068E60: @ 0x08068E60
	push {lr}
	adds r1, r0, #0
	ldr r2, _08068E74 @ =gUnk_081116FE
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_08068E74: .4byte gUnk_081116FE

	thumb_func_start sub_08068E78
sub_08068E78: @ 0x08068E78
	push {lr}
	adds r1, r0, #0
	ldr r2, _08068E8C @ =gUnk_08111714
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_08068E8C: .4byte gUnk_08111714

	thumb_func_start sub_08068E90
sub_08068E90: @ 0x08068E90
	ldr r2, _08068EAC @ =gUnk_03003F80
	adds r2, #0xac
	ldr r1, _08068EB0 @ =gUnk_08111740
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	subs r1, #1
	movs r0, #1
	lsls r0, r1
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_08068EAC: .4byte gUnk_03003F80
_08068EB0: .4byte gUnk_08111740

	thumb_func_start sub_08068EB4
sub_08068EB4: @ 0x08068EB4
	ldr r0, _08068EC0 @ =gUnk_03003F80
	adds r0, #0xab
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08068EC0: .4byte gUnk_03003F80

	thumb_func_start sub_08068EC4
sub_08068EC4: @ 0x08068EC4
	push {r4, lr}
	adds r3, r1, #0
	ldr r2, _08068EEC @ =gUnk_08111740
	ldrb r4, [r0, #0xe]
	lsls r1, r4, #2
	adds r1, r1, r2
	ldr r0, _08068EF0 @ =gUnk_03003F80
	adds r0, #0xab
	ldr r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08068EF8
	ldr r1, _08068EF4 @ =gUnk_0811172A
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x10]
	movs r0, #1
	b _08068EFA
	.align 2, 0
_08068EEC: .4byte gUnk_08111740
_08068EF0: .4byte gUnk_03003F80
_08068EF4: .4byte gUnk_0811172A
_08068EF8:
	movs r0, #0
_08068EFA:
	str r0, [r3, #0x14]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08068F00
sub_08068F00: @ 0x08068F00
	push {lr}
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _08068F0E
	ldr r0, _08068F10 @ =gUnk_080F3494
	bl LoadRoomEntityList
_08068F0E:
	pop {pc}
	.align 2, 0
_08068F10: .4byte gUnk_080F3494

	thumb_func_start sub_08068F14
sub_08068F14: @ 0x08068F14
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bne _08068F24
	movs r0, #0xa0
	bl ModHealth
_08068F24:
	ldrb r0, [r4, #0xe]
	cmp r0, #6
	bne _08068F38
	movs r0, #0xa0
	rsbs r0, r0, #0
	bl ModHealth
	movs r0, #2
	bl ModHealth
_08068F38:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08068F3C
sub_08068F3C: @ 0x08068F3C
	push {lr}
	ldrb r0, [r0, #0xe]
	cmp r0, #6
	bne _08068F4A
	movs r0, #0xa0
	bl ModHealth
_08068F4A:
	pop {pc}

	thumb_func_start sub_08068F4C
sub_08068F4C: @ 0x08068F4C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08068F72
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl sub_080042AC
	b _08068F78
_08068F72:
	adds r0, r4, #0
	bl sub_080042B8
_08068F78:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08068F94
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08068BEC
_08068F94:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08068F98
sub_08068F98: @ 0x08068F98
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08068FBC @ =gUnk_08111914
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	adds r0, r4, #0
	bl sub_0806920C
	pop {r4, pc}
	.align 2, 0
_08068FBC: .4byte gUnk_08111914

	thumb_func_start sub_08068FC0
sub_08068FC0: @ 0x08068FC0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	strb r0, [r4, #0x14]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x6d
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0805ACC0
	adds r2, r0, #0
	cmp r2, #0
	bne _08068FF4
	ldrh r0, [r4, #0x2e]
	adds r1, r4, #0
	adds r1, #0x68
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r1, #2
	strh r0, [r1]
	b _08069000
_08068FF4:
	lsrs r1, r2, #0x10
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
_08069000:
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x6c
	strb r0, [r1]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, pc}

	thumb_func_start sub_08069018
sub_08069018: @ 0x08069018
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0806903A
	adds r0, #1
	strb r0, [r4, #0xd]
	bl sub_08000E50
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x3c
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_080042AC
_0806903A:
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0806905E
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08069058
	movs r0, #2
	b _0806905A
_08069058:
	movs r0, #3
_0806905A:
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_0806905E:
	adds r0, r4, #0
	bl sub_0806924C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08069068
sub_08069068: @ 0x08069068
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _080690A4
	adds r0, #1
	strb r0, [r4, #0xd]
	bl sub_08000E50
	movs r1, #2
	ands r1, r0
	subs r1, #1
	ldrb r0, [r4, #0x14]
	adds r1, r1, r0
	movs r0, #3
	ands r1, r0
	strb r1, [r4, #0x14]
	lsls r1, r1, #3
	strb r1, [r4, #0x15]
	bl sub_08000E50
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x3c
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0x14]
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
_080690A4:
	adds r0, r4, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_080042B8
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	adds r2, r4, #0
	adds r2, #0x68
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	cmp r1, #0x10
	ble _080690CC
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #1
	strb r0, [r4, #0xf]
_080690CC:
	movs r3, #0x10
	rsbs r3, r3, #0
	cmp r1, r3
	bge _080690DE
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #1
	strb r0, [r4, #0xf]
_080690DE:
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	adds r2, r4, #0
	adds r2, #0x6a
	movs r5, #0
	ldrsh r0, [r2, r5]
	subs r1, r1, r0
	cmp r1, #0x10
	ble _080690FA
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	movs r0, #1
	strb r0, [r4, #0xf]
_080690FA:
	cmp r1, r3
	bge _08069108
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	movs r0, #1
	strb r0, [r4, #0xf]
_08069108:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0806911C
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_0806911C:
	adds r0, r4, #0
	bl sub_0806924C
	pop {r4, r5, pc}

	thumb_func_start sub_08069124
sub_08069124: @ 0x08069124
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldr r1, _08069144 @ =gUnk_08111928
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806924C
	pop {r4, pc}
	.align 2, 0
_08069144: .4byte gUnk_08111928

	thumb_func_start sub_08069148
sub_08069148: @ 0x08069148
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000E50
	movs r1, #3
	ands r0, r1
	adds r0, #3
	strb r0, [r4, #0xf]
	movs r0, #1
	strb r0, [r4, #0xd]
	ldrb r1, [r4, #0x14]
	adds r1, #8
	adds r0, r4, #0
	bl sub_080042AC
	pop {r4, pc}

	thumb_func_start sub_08069168
sub_08069168: @ 0x08069168
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08069186
	movs r0, #2
	strb r0, [r2, #0xd]
	ldrb r1, [r2, #0x14]
	adds r1, #0xc
	adds r0, r2, #0
	bl sub_080042AC
_08069186:
	pop {pc}

	thumb_func_start sub_08069188
sub_08069188: @ 0x08069188
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x5a
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080691B8
	movs r0, #0
	strb r0, [r3]
	ldrb r0, [r2, #0xf]
	subs r0, #1
	strb r0, [r2, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080691B8
	movs r0, #3
	strb r0, [r2, #0xd]
	ldrb r1, [r2, #0x14]
	adds r1, #0x10
	adds r0, r2, #0
	bl sub_080042AC
_080691B8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080691BC
sub_080691BC: @ 0x080691BC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080691DE
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xd]
	ldrb r1, [r2, #0x14]
	adds r1, #4
	adds r0, r2, #0
	bl sub_080042AC
_080691DE:
	pop {pc}

	thumb_func_start sub_080691E0
sub_080691E0: @ 0x080691E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F148
	cmp r0, #0
	beq _080691F4
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xd]
_080691F4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080691F8
sub_080691F8: @ 0x080691F8
	push {lr}
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	ldr r2, _08069208 @ =gUnk_08111938
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_08069208: .4byte gUnk_08111938

	thumb_func_start sub_0806920C
sub_0806920C: @ 0x0806920C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08069234 @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r5, r0
	beq _08069244
	cmp r5, #0
	bne _08069238
	adds r0, r4, #0
	bl sub_08078778
	b _08069244
	.align 2, 0
_08069234: .4byte gUnk_03003F80
_08069238:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080787A8
_08069244:
	adds r0, r4, #0
	adds r0, #0x6d
	strb r5, [r0]
	pop {r4, r5, pc}