
    .syntax unified

    .text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _080B0B74 @ =0x03007FF0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _080B0B78
	subs r0, #1
	ldr r1, [sp, #8]
	strb r0, [r1, #0xa]
	b _080B0B7E
	.align 2, 0
_080B0B74: .4byte 0x03007FF0
_080B0B78:
	movs r0, #0xe
	ldr r3, [sp, #8]
	strb r0, [r3, #0xa]
_080B0B7E:
	movs r6, #1
	ldr r0, [sp, #8]
	ldr r4, [r0, #0x1c]
	mov r1, sp
	str r1, [sp, #0x1c]
_080B0B88:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080B0B9E
	b _080B0FBA
_080B0B9E:
	cmp r6, #2
	beq _080B0BD4
	cmp r6, #2
	bgt _080B0BAC
	cmp r6, #1
	beq _080B0BB2
	b _080B0C1C
_080B0BAC:
	cmp r6, #3
	beq _080B0BF8
	b _080B0C1C
_080B0BB2:
	ldr r3, _080B0BC8 @ =0x04000060
	str r3, [sp, #0xc]
	adds r3, #2
	ldr r0, _080B0BCC @ =0x04000063
	str r0, [sp, #0x10]
	ldr r1, _080B0BD0 @ =0x04000064
	str r1, [sp, #0x14]
	adds r0, #2
	str r0, [sp, #0x18]
	movs r0, #0
	b _080B0C30
	.align 2, 0
_080B0BC8: .4byte 0x04000060
_080B0BCC: .4byte 0x04000063
_080B0BD0: .4byte 0x04000064
_080B0BD4:
	ldr r3, _080B0BEC @ =0x04000061
	str r3, [sp, #0xc]
	adds r3, #7
	ldr r0, _080B0BF0 @ =0x04000069
	str r0, [sp, #0x10]
	ldr r1, _080B0BF4 @ =0x0400006C
	str r1, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x18]
	movs r0, #1
	b _080B0C30
	.align 2, 0
_080B0BEC: .4byte 0x04000061
_080B0BF0: .4byte 0x04000069
_080B0BF4: .4byte 0x0400006C
_080B0BF8:
	ldr r3, _080B0C10 @ =0x04000070
	str r3, [sp, #0xc]
	adds r3, #2
	ldr r0, _080B0C14 @ =0x04000073
	str r0, [sp, #0x10]
	ldr r1, _080B0C18 @ =0x04000074
	str r1, [sp, #0x14]
	adds r0, #2
	str r0, [sp, #0x18]
	movs r0, #2
	b _080B0C30
	.align 2, 0
_080B0C10: .4byte 0x04000070
_080B0C14: .4byte 0x04000073
_080B0C18: .4byte 0x04000074
_080B0C1C:
	ldr r3, _080B0C84 @ =0x04000071
	str r3, [sp, #0xc]
	adds r3, #7
	ldr r0, _080B0C88 @ =0x04000079
	str r0, [sp, #0x10]
	ldr r1, _080B0C8C @ =0x0400007C
	str r1, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x18]
	movs r0, #3
_080B0C30:
	ldr r1, [sp, #0x1c]
	strb r0, [r1]
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0xa]
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	mov r8, r0
	ldrb r2, [r4]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080B0D2A
	movs r7, #0x40
	adds r0, r7, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	beq _080B0C64
	b _080B0D60
_080B0C64:
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x20]
	bl CgbModVol
	ldr r3, [sp, #0x20]
	cmp r6, #2
	beq _080B0C9C
	cmp r6, #2
	bgt _080B0C90
	cmp r6, #1
	beq _080B0C96
	b _080B0CF0
	.align 2, 0
_080B0C84: .4byte 0x04000071
_080B0C88: .4byte 0x04000079
_080B0C8C: .4byte 0x0400007C
_080B0C90:
	cmp r6, #3
	beq _080B0CA8
	b _080B0CF0
_080B0C96:
	ldrb r0, [r4, #0x1f]
	ldr r1, [sp, #0xc]
	strb r0, [r1]
_080B0C9C:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r0, r1
	strb r0, [r3]
	b _080B0CFC
_080B0CA8:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _080B0CD0
	ldr r0, [sp, #0xc]
	strb r7, [r0]
	ldr r1, _080B0CE4 @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_080B0CD0:
	ldr r1, [sp, #0xc]
	strb r5, [r1]
	ldrb r0, [r4, #0x1e]
	strb r0, [r3]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080B0CE8
	movs r0, #0xc0
	b _080B0D0A
	.align 2, 0
_080B0CE4: .4byte 0x04000090
_080B0CE8:
	movs r3, #0x80
	rsbs r3, r3, #0
	strb r3, [r4, #0x1a]
	b _080B0D0C
_080B0CF0:
	ldrb r0, [r4, #0x1e]
	strb r0, [r3]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080B0CFC:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080B0D0A
	movs r0, #0x40
_080B0D0A:
	strb r0, [r4, #0x1a]
_080B0D0C:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080B0D26
	b _080B0E7A
_080B0D26:
	strb r2, [r4, #9]
	b _080B0EA8
_080B0D2A:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080B0D44
	ldr r0, _080B0D70 @ =0x04000084
	ldrb r1, [r0]
	ldr r3, [sp, #0x1c]
	ldrb r0, [r3]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080B0D74
_080B0D44:
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	ble _080B0D60
	b _080B0EBA
_080B0D60:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _080B0FB6
	.align 2, 0
_080B0D70: .4byte 0x04000084
_080B0D74:
	movs r0, #0x40
	ands r0, r2
	adds r3, r6, #1
	mov sl, r3
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	beq _080B0DB4
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _080B0DB4
	movs r0, #0xfc
	ands r0, r2
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080B0DE6
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080B0EA8
	ldrb r3, [r4, #7]
	mov r8, r3
	b _080B0EA8
_080B0DB4:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080B0EA8
	cmp r6, #3
	bne _080B0DC6
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080B0DC6:
	adds r0, r4, #0
	bl CgbModVol
	ldrb r0, [r4]
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _080B0E18
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080B0E14
_080B0DE6:
	ldrb r1, [r4, #0xa]
	ldrb r0, [r4, #0xc]
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B0D60
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080B0EBA
	movs r3, #8
	mov r8, r3
	b _080B0EBA
_080B0E14:
	ldrb r0, [r4, #7]
	b _080B0EA6
_080B0E18:
	cmp r1, #1
	bne _080B0E24
_080B0E1C:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _080B0EA6
_080B0E24:
	cmp r1, #2
	bne _080B0E6A
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	cmp r0, r1
	bgt _080B0E66
_080B0E3E:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080B0E4E
	ldrb r1, [r4]
	movs r0, #0xfc
	ands r0, r1
	strb r0, [r4]
	b _080B0DE6
_080B0E4E:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080B0E1C
	movs r3, #8
	mov r8, r3
	b _080B0E1C
_080B0E66:
	ldrb r0, [r4, #5]
	b _080B0EA6
_080B0E6A:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r3, [r4, #0xa]
	cmp r0, r3
	blo _080B0EA4
_080B0E7A:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080B0E3E
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _080B0EA8
	ldrb r0, [r4, #5]
	mov r8, r0
	b _080B0EA8
_080B0EA4:
	ldrb r0, [r4, #4]
_080B0EA6:
	strb r0, [r4, #0xb]
_080B0EA8:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _080B0EBA
	subs r1, #1
	str r1, [sp, #4]
	b _080B0DB4
_080B0EBA:
	ldrb r1, [r4, #0x1d]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B0F34
	cmp r6, #3
	bgt _080B0EFA
	ldrb r1, [r4, #1]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080B0EFA
	ldr r0, _080B0EE4 @ =0x04000089
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r1, #0x3f
	bgt _080B0EEC
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _080B0EE8 @ =0x000007FC
	b _080B0EF6
	.align 2, 0
_080B0EE4: .4byte 0x04000089
_080B0EE8: .4byte 0x000007FC
_080B0EEC:
	cmp r1, #0x7f
	bgt _080B0EFA
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _080B0F04 @ =0x000007FE
_080B0EF6:
	ands r0, r1
	str r0, [r4, #0x20]
_080B0EFA:
	cmp r6, #4
	beq _080B0F08
	ldr r0, [r4, #0x20]
	b _080B0F14
	.align 2, 0
_080B0F04: .4byte 0x000007FE
_080B0F08:
	ldr r1, [sp, #0x14]
	ldrb r0, [r1]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
_080B0F14:
	ldr r3, [sp, #0x14]
	strb r0, [r3]
	ldrb r0, [r4, #0x1a]
	movs r1, #0xc0
	ands r1, r0
	ldr r0, [r4, #0x20]
	movs r2, #0xfc
	lsls r2, r2, #6
	ands r0, r2
	lsrs r0, r0, #8
	adds r1, r1, r0
	strb r1, [r4, #0x1a]
	movs r0, #0xff
	ands r1, r0
	ldr r3, [sp, #0x18]
	strb r1, [r3]
_080B0F34:
	ldrb r1, [r4, #0x1d]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B0FB6
	ldr r2, _080B0F7C @ =0x04000081
	ldrb r1, [r4, #0x1c]
	ldrb r0, [r2]
	bics r0, r1
	ldrb r1, [r4, #0x1b]
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #3
	bne _080B0F84
	ldr r1, _080B0F80 @ =gCgb3Vol
	ldrb r0, [r4, #9]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldrb r1, [r4, #0x1a]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B0FB6
	ldr r3, [sp, #0xc]
	strb r2, [r3]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	ldrb r1, [r4, #0x1a]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x1a]
	b _080B0FB6
	.align 2, 0
_080B0F7C: .4byte 0x04000081
_080B0F80: .4byte gCgb3Vol
_080B0F84:
	movs r0, #0xf
	mov r3, r8
	ands r3, r0
	mov r8, r3
	ldrb r0, [r4, #9]
	lsls r0, r0, #4
	add r0, r8
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldrb r0, [r4, #0x1a]
	movs r2, #0x80
	orrs r0, r2
	ldr r3, [sp, #0x18]
	strb r0, [r3]
	cmp r6, #1
	bne _080B0FB6
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080B0FB6
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	strb r0, [r3]
_080B0FB6:
	movs r0, #0
	strb r0, [r4, #0x1d]
_080B0FBA:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _080B0FC4
	b _080B0B88
_080B0FC4:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

    .syntax divided
