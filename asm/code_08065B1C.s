	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08065B1C
sub_08065B1C: @ 0x08065B1C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08065B42
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
	movs r1, #7
	bl sub_080042AC
	b _08065B48
_08065B42:
	adds r0, r2, #0
	bl sub_080042B8
_08065B48:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08065B4C
sub_08065B4C: @ 0x08065B4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08065B68 @ =gUnk_08110118
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_08065B68: .4byte gUnk_08110118

	thumb_func_start sub_08065B6C
sub_08065B6C: @ 0x08065B6C
	push {lr}
	ldrb r1, [r0, #0xc]
	adds r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	ldr r2, _08065B98 @ =0xFFFF8000
	adds r1, r2, #0
	ldrh r2, [r0, #0x30]
	adds r1, r1, r2
	strh r1, [r0, #0x30]
	movs r1, #6
	strb r1, [r0, #0x14]
	movs r1, #3
	bl sub_080042AC
	pop {pc}
	.align 2, 0
_08065B98: .4byte 0xFFFF8000

	thumb_func_start sub_08065B9C
sub_08065B9C: @ 0x08065B9C
	push {lr}
	bl sub_080042B8
	pop {pc}

	thumb_func_start sub_08065BA4
sub_08065BA4: @ 0x08065BA4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08065BBA
	adds r0, r4, #0
	bl sub_08065C0C
	b _08065BEA
_08065BBA:
	ldr r1, _08065BEC @ =gUnk_08110164
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bhi _08065BEA
	ldr r2, _08065BF0 @ =gUnk_0811015C
	ldrb r0, [r4, #0xf]
	adds r1, r0, #1
	strb r1, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x36]
_08065BEA:
	pop {r4, pc}
	.align 2, 0
_08065BEC: .4byte gUnk_08110164
_08065BF0: .4byte gUnk_0811015C

	thumb_func_start sub_08065BF4
sub_08065BF4: @ 0x08065BF4
	push {lr}
	ldr r2, _08065C08 @ =gUnk_0811017C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08065C08: .4byte gUnk_0811017C

	thumb_func_start sub_08065C0C
sub_08065C0C: @ 0x08065C0C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08065C42
	cmp r0, #1
	bgt _08065C20
	cmp r0, #0
	beq _08065C2A
	b _08065CCA
_08065C20:
	cmp r0, #2
	beq _08065C7E
	cmp r0, #3
	beq _08065C8A
	b _08065CCA
_08065C2A:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0807DD50
	b _08065CCA
_08065C42:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _08065C74
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _08065C70 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_0806F118
	b _08065CCA
	.align 2, 0
_08065C70: .4byte gLinkEntity
_08065C74:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _08065CCA
_08065C7E:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _08065CCA
	b _08065CC6
_08065C8A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065CCA
	ldr r1, [r4, #0x6c]
	ldrh r2, [r1]
	ldr r0, _08065CB4 @ =0x0000FFFF
	cmp r2, r0
	beq _08065CBC
	ldr r0, _08065CB8 @ =gLCDControls
	adds r0, #0x68
	strh r2, [r0]
	adds r1, #2
	ldrh r0, [r1]
	strb r0, [r4, #0xe]
	adds r1, #2
	str r1, [r4, #0x6c]
	b _08065CCA
	.align 2, 0
_08065CB4: .4byte 0x0000FFFF
_08065CB8: .4byte gLCDControls
_08065CBC:
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r4, #0x18]
_08065CC6:
	movs r0, #1
	strb r0, [r4, #0xc]
_08065CCA:
	pop {r4, pc}

	thumb_func_start sub_08065CCC
sub_08065CCC: @ 0x08065CCC
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #0x1e
	strb r1, [r0, #0xe]
	ldrb r2, [r0, #0x19]
	subs r1, #0x2b
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	strb r1, [r0, #0x19]
	ldr r1, _08065CF8 @ =gUnk_0811022E
	str r1, [r0, #0x6c]
	ldr r1, _08065CFC @ =gLCDControls
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xfd
	lsls r0, r0, #6
	strh r0, [r2]
	adds r1, #0x68
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_08065CF8: .4byte gUnk_0811022E
_08065CFC: .4byte gLCDControls

	thumb_func_start sub_08065D00
sub_08065D00: @ 0x08065D00
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

	thumb_func_start sub_08065D18
sub_08065D18: @ 0x08065D18
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldrb r1, [r4, #0x18]
	subs r0, #0x22
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldr r0, _08065D6C @ =gUnk_08110188
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042AC
	ldr r1, _08065D70 @ =gLCDControls
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xfd
	lsls r0, r0, #6
	strh r0, [r2]
	adds r1, #0x68
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_08065D6C: .4byte gUnk_08110188
_08065D70: .4byte gLCDControls

	thumb_func_start sub_08065D74
sub_08065D74: @ 0x08065D74
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065DB4
	ldr r2, [r1, #0x6c]
	ldrh r3, [r2]
	ldr r0, _08065DA0 @ =0x0000FFFF
	cmp r3, r0
	beq _08065DA8
	ldr r0, _08065DA4 @ =gLCDControls
	adds r0, #0x68
	strh r3, [r0]
	ldrh r0, [r2, #2]
	strb r0, [r1, #0xe]
	adds r0, r2, #4
	str r0, [r1, #0x6c]
	b _08065DB4
	.align 2, 0
_08065DA0: .4byte 0x0000FFFF
_08065DA4: .4byte gLCDControls
_08065DA8:
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
	movs r0, #0
	bl TextboxTryNoOverlap
_08065DB4:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08065DB8
sub_08065DB8: @ 0x08065DB8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bhi _08065E74
	lsls r0, r0, #2
	ldr r1, _08065DCC @ =_08065DD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08065DCC: .4byte _08065DD0
_08065DD0: @ jump table
	.4byte _08065DE4 @ case 0
	.4byte _08065E08 @ case 1
	.4byte _08065EB0 @ case 2
	.4byte _08065E34 @ case 3
	.4byte _08065E4E @ case 4
_08065DE4:
	ldr r0, _08065E04 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08065EB0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #4
	bl sub_080042AC
	b _08065EB0
	.align 2, 0
_08065E04: .4byte gTextBox
_08065E08:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065EB0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0xb4
	strb r0, [r4, #0xe]
	ldr r1, _08065E30 @ =gUnk_02018EB0
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042AC
	b _08065EB0
	.align 2, 0
_08065E30: .4byte gUnk_02018EB0
_08065E34:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065EB0
	movs r0, #0
	bl TextboxTryNoOverlap
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _08065EB0
_08065E4E:
	ldr r0, _08065E6C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08065EB0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldr r0, _08065E70 @ =gUnk_0811022E
	str r0, [r4, #0x6c]
	b _08065EB0
	.align 2, 0
_08065E6C: .4byte gTextBox
_08065E70: .4byte gUnk_0811022E
_08065E74:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065EB0
	ldr r1, [r4, #0x6c]
	ldrh r2, [r1]
	ldr r0, _08065E9C @ =0x0000FFFF
	cmp r2, r0
	beq _08065EA4
	ldr r0, _08065EA0 @ =gLCDControls
	adds r0, #0x68
	strh r2, [r0]
	ldrh r0, [r1, #2]
	strb r0, [r4, #0xe]
	adds r0, r1, #4
	str r0, [r4, #0x6c]
	b _08065EB0
	.align 2, 0
_08065E9C: .4byte 0x0000FFFF
_08065EA0: .4byte gLCDControls
_08065EA4:
	ldr r1, _08065EB8 @ =gUnk_02018EB0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_0805E780
_08065EB0:
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}
	.align 2, 0
_08065EB8: .4byte gUnk_02018EB0

	thumb_func_start sub_08065EBC
sub_08065EBC: @ 0x08065EBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08065ED8 @ =gUnk_08110274
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_08065ED8: .4byte gUnk_08110274

	thumb_func_start sub_08065EDC
sub_08065EDC: @ 0x08065EDC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08065F1C
	ldr r1, [r2, #0x6c]
	ldrh r3, [r1]
	ldr r0, _08065F08 @ =0x0000FFFF
	cmp r3, r0
	beq _08065F10
	ldr r0, _08065F0C @ =gLCDControls
	adds r0, #0x68
	strh r3, [r0]
	adds r1, #2
	ldrh r0, [r1]
	strb r0, [r2, #0xe]
	adds r1, #2
	str r1, [r2, #0x6c]
	b _08065F1C
	.align 2, 0
_08065F08: .4byte 0x0000FFFF
_08065F0C: .4byte gLCDControls
_08065F10:
	ldrb r0, [r2, #0xc]
	adds r0, #1
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	bl sub_08078778
_08065F1C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08065F20
sub_08065F20: @ 0x08065F20
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08065F5E
	movs r0, #0
	strb r0, [r1]
	bl TextboxTryNoOverlap
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r1, _08065F60 @ =gUnk_0811033C
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08065F56
	strb r0, [r2]
_08065F56:
	ldrb r1, [r2]
	adds r0, r4, #0
	bl sub_080042AC
_08065F5E:
	pop {r4, pc}
	.align 2, 0
_08065F60: .4byte gUnk_0811033C

	thumb_func_start sub_08065F64
sub_08065F64: @ 0x08065F64
	push {lr}
	adds r3, r0, #0
	ldr r0, _08065F88 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _08065F74
	movs r0, #0
_08065F74:
	ldrb r1, [r3, #0xa]
	lsls r1, r1, #6
	lsls r0, r0, #3
	ldr r2, _08065F8C @ =gUnk_08110280
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r3, #0
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_08065F88: .4byte gUnk_02002A40
_08065F8C: .4byte gUnk_08110280

	thumb_func_start sub_08065F90
sub_08065F90: @ 0x08065F90
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08065FB6
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
	bl sub_080042AC
	b _08065FBC
_08065FB6:
	adds r0, r2, #0
	bl sub_080042B8
_08065FBC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08065FC0
sub_08065FC0: @ 0x08065FC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08066028
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r6, r4, #0
	adds r6, #0x58
	cmp r0, #2
	bne _0806600C
	movs r0, #0
	movs r1, #4
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldrb r0, [r6]
	movs r5, #0
	cmp r0, #0xc
	bne _08065FF0
	movs r5, #8
_08065FF0:
	ldr r1, _08066020 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r5, r5, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_0806F118
_0806600C:
	ldr r0, _08066024 @ =gUnk_0811036C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _08066042
	.align 2, 0
_08066020: .4byte gLinkEntity
_08066024: .4byte gUnk_0811036C
_08066028:
	ldr r0, _08066058 @ =gUnk_08110360
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	adds r6, r4, #0
	adds r6, #0x58
_08066042:
	ldrb r0, [r6]
	cmp r0, #0xc
	bne _0806605C
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0806606E
	.align 2, 0
_08066058: .4byte gUnk_08110360
_0806605C:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strb r1, [r2]
_0806606E:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080660A0
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x3d
	movs r2, #0x20
	bl CreateFX
	ldr r4, _080660A4 @ =gUnk_08110380
	bl sub_08000E50
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl PlaySFX
_080660A0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080660A4: .4byte gUnk_08110380

	thumb_func_start sub_080660A8
sub_080660A8: @ 0x080660A8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x5a
	ldrb r4, [r0]
	ldrb r2, [r5, #0x1e]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806FF60
	movs r0, #0x40
	ands r4, r0
	cmp r4, #0
	beq _080660CE
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x16
	bl sub_0806FF60
	b _080660D8
_080660CE:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xff
	bl sub_0806FF60
_080660D8:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_0806FF88
	adds r0, r5, #0
	bl sub_0807000C
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_080660EC
sub_080660EC: @ 0x080660EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08066114 @ =gUnk_08110354
	bl sub_0806FDEC
	cmp r0, #0
	beq _08066112
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042AC
_08066112:
	pop {r4, pc}
	.align 2, 0
_08066114: .4byte gUnk_08110354

	thumb_func_start sub_08066118
sub_08066118: @ 0x08066118
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	bge _0806612E
	movs r1, #2
	b _08066144
_0806612E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0806613A
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08066144
_0806613A:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
_08066144:
	adds r0, r4, #0
	bl sub_0806F078
	cmp r0, #0
	bne _08066154
	adds r0, r4, #0
	bl sub_080042B8
_08066154:
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806616C
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0
	bl TextboxTryNoOverlap
_0806616C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066170
sub_08066170: @ 0x08066170
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08066178
sub_08066178: @ 0x08066178
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080661AC @ =gUnk_08110354
	bl sub_0806FDEC
	cmp r0, #0
	beq _080661A8
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
	adds r0, r4, #0
	bl sub_0807DD50
_080661A8:
	pop {r4, pc}
	.align 2, 0
_080661AC: .4byte gUnk_08110354

	thumb_func_start sub_080661B0
sub_080661B0: @ 0x080661B0
	push {lr}
	movs r1, #0
	bl sub_0807DD94
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080661BC
sub_080661BC: @ 0x080661BC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _080661F4
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080661FC
	adds r0, r4, #0
	bl sub_0806EDC4
	adds r0, #8
	adds r1, r4, #0
	adds r1, #0x80
	strh r0, [r1]
	ldrh r1, [r1]
	adds r0, r4, #0
	bl sub_080042AC
	b _080661FC
_080661F4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
_080661FC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066200
sub_08066200: @ 0x08066200
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_080042B8
	pop {r4, pc}

	thumb_func_start sub_08066218
sub_08066218: @ 0x08066218
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F148
	cmp r0, #0
	beq _08066228
	movs r0, #1
	strb r0, [r4, #0xc]
_08066228:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806622C
sub_0806622C: @ 0x0806622C
	push {lr}
	adds r2, r0, #0
	ldr r0, _0806624C @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _0806623C
	movs r0, #0
_0806623C:
	lsls r1, r0, #3
	ldr r0, _08066250 @ =gUnk_08110390
	adds r1, r1, r0
	adds r0, r2, #0
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806624C: .4byte gUnk_02002A40
_08066250: .4byte gUnk_08110390

	thumb_func_start nullsub_501
nullsub_501: @ 0x08066254
	bx lr
	.align 2, 0

	thumb_func_start sub_08066258
sub_08066258: @ 0x08066258
	push {r4, lr}
	ldr r4, _08066270 @ =gUnk_081103D0
	bl sub_08000E50
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl PlaySFX
	pop {r4, pc}
	.align 2, 0
_08066270: .4byte gUnk_081103D0

	thumb_func_start sub_08066274
sub_08066274: @ 0x08066274
	push {lr}
	ldr r3, _08066284 @ =gUnk_081103E0
	movs r1, #1
	movs r2, #0
	bl sub_08078850
	pop {pc}
	.align 2, 0
_08066284: .4byte gUnk_081103E0

	thumb_func_start sub_08066288
sub_08066288: @ 0x08066288
	push {lr}
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r1, [r1]
	bl sub_08078784
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08066298
sub_08066298: @ 0x08066298
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080662D0
	ldr r1, _080662CC @ =gUnk_08110354
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _080662D6
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
	bl sub_080042AC
	b _080662D6
	.align 2, 0
_080662CC: .4byte gUnk_08110354
_080662D0:
	adds r0, r4, #0
	bl sub_080042B8
_080662D6:
	pop {r4, pc}

	thumb_func_start sub_080662D8
sub_080662D8: @ 0x080662D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080662F4 @ =gUnk_081104C8
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_080662F4: .4byte gUnk_081104C8

	thumb_func_start sub_080662F8
sub_080662F8: @ 0x080662F8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r4, [r5, #0xd]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #1
	strb r0, [r5, #0x14]
	ldrb r1, [r5, #0xa]
	adds r0, r5, #0
	bl sub_08004260
	ldrh r0, [r5, #0x2e]
	adds r1, r5, #0
	adds r1, #0x7e
	strh r0, [r1]
	ldrh r1, [r5, #0x32]
	adds r0, r5, #0
	adds r0, #0x80
	strh r1, [r0]
	adds r0, #6
	strh r4, [r0]
	ldrb r0, [r5, #0xe]
	adds r1, r5, #0
	adds r1, #0x82
	strh r0, [r1]
	ldr r0, _08066354 @ =gLinkEntity
	str r0, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x84
	strh r4, [r0]
	ldr r1, [r5, #0x50]
	adds r0, r5, #0
	bl sub_08066490
	adds r0, r5, #0
	bl sub_08078778
	pop {r4, r5, pc}
	.align 2, 0
_08066354: .4byte gLinkEntity

	thumb_func_start sub_08066358
sub_08066358: @ 0x08066358
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _080663B8
	movs r5, #0
	strb r5, [r1]
	movs r0, #0
	bl TextboxTryNoOverlap
	ldrb r1, [r4, #0xb]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080663C0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xd]
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	cmp r0, #8
	ble _08066396
	movs r0, #8
	b _08066398
_08066396:
	movs r0, #0x18
_08066398:
	strb r0, [r4, #0x15]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x84
	movs r2, #1
	movs r0, #1
	strh r0, [r1]
	ldr r0, _080663B4 @ =gUnk_02034490
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_080788E0
	b _080663C0
	.align 2, 0
_080663B4: .4byte gUnk_02034490
_080663B8:
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08066490
_080663C0:
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08066570
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start nullsub_110
nullsub_110: @ 0x080663D0
	bx lr
	.align 2, 0

	thumb_func_start sub_080663D4
sub_080663D4: @ 0x080663D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	subs r0, #8
	cmp r1, r0
	bne _08066410
	ldr r0, _0806640C @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0xf
	beq _0806642E
	movs r0, #0
	movs r1, #4
	strb r1, [r4, #0xc]
	strb r0, [r4, #0x15]
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x84
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004260
	b _0806642E
	.align 2, 0
_0806640C: .4byte gLinkEntity
_08066410:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08066428
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r1, #4
	adds r0, r4, #0
	bl sub_08004260
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
_08066428:
	adds r0, r4, #0
	bl sub_080AEF88
_0806642E:
	bl sub_08078B48
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806643C
sub_0806643C: @ 0x0806643C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0806650C
	adds r4, r0, #0
	cmp r4, #0
	bne _08066462
	movs r0, #5
	strb r0, [r5, #0xc]
	ldr r0, _0806646C @ =gRoomControls
	str r4, [r0, #0x30]
	movs r0, #0x40
	movs r1, #0
	movs r2, #0
	bl sub_08078AC0
	ldr r0, _08066470 @ =gLinkEntity
	strb r4, [r0, #0x14]
	strb r4, [r0, #0x15]
_08066462:
	adds r0, r5, #0
	bl sub_08004274
	pop {r4, r5, pc}
	.align 2, 0
_0806646C: .4byte gRoomControls
_08066470: .4byte gLinkEntity

	thumb_func_start sub_08066474
sub_08066474: @ 0x08066474
	push {lr}
	ldr r0, _08066488 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0xf
	beq _08066484
	ldr r1, _0806648C @ =gUnk_02034490
	movs r0, #0
	strb r0, [r1]
_08066484:
	pop {pc}
	.align 2, 0
_08066488: .4byte gLinkEntity
_0806648C: .4byte gUnk_02034490

	thumb_func_start sub_08066490
sub_08066490: @ 0x08066490
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r5, r1, #0
	ldrb r1, [r0, #0xb]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806650A
	mov r1, ip
	ldrh r0, [r1, #0x2e]
	adds r1, #0x86
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x7e
	ldrh r2, [r0]
	adds r0, #4
	ldrh r0, [r0]
	adds r3, r2, r0
	subs r4, r2, r0
	movs r6, #0x2e
	ldrsh r0, [r5, r6]
	cmp r0, r3
	bge _080664C6
	cmp r0, r4
	ble _080664C6
	adds r2, r0, #0
	b _080664D2
_080664C6:
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	adds r2, r4, #0
	cmp r0, r3
	blt _080664D2
	adds r2, r3, #0
_080664D2:
	ldrh r0, [r1]
	cmp r0, r2
	bne _080664F0
	mov r1, ip
	adds r1, #0x84
	ldrh r0, [r1]
	cmp r0, #1
	bne _0806650A
	movs r0, #0
	strh r0, [r1]
	mov r0, ip
	movs r1, #2
	bl sub_08004260
	b _0806650A
_080664F0:
	mov r6, ip
	strh r2, [r6, #0x2e]
	mov r1, ip
	adds r1, #0x84
	ldrh r0, [r1]
	cmp r0, #0
	bne _0806650A
	movs r0, #1
	strh r0, [r1]
	mov r0, ip
	movs r1, #6
	bl sub_08004260
_0806650A:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0806650C
sub_0806650C: @ 0x0806650C
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	movs r4, #0
	ldr r1, _0806652C @ =gLinkEntity
	ldrh r5, [r1, #0x2e]
	adds r7, r5, #0
	ldrh r2, [r1, #0x32]
	adds r0, #0x80
	ldrh r0, [r0]
	adds r0, #0x10
	adds r6, r1, #0
	cmp r2, r0
	bge _08066530
	movs r4, #4
	b _0806654C
	.align 2, 0
_0806652C: .4byte gLinkEntity
_08066530:
	adds r0, r3, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	adds r0, r1, #2
	cmp r5, r0
	bge _0806653E
	movs r4, #2
_0806653E:
	adds r0, r1, #6
	cmp r7, r0
	ble _08066546
	movs r4, #6
_08066546:
	cmp r4, #0
	bne _0806654C
	strh r4, [r6, #0x24]
_0806654C:
	ldrb r0, [r6, #0xc]
	cmp r0, #0xf
	beq _0806656A
	cmp r4, #0
	bne _0806655A
	movs r0, #0
	b _0806656C
_0806655A:
	movs r0, #8
	movs r1, #0
	movs r2, #0
	bl sub_08078AC0
	strb r4, [r6, #0x14]
	lsls r0, r4, #2
	strb r0, [r6, #0x15]
_0806656A:
	movs r0, #1
_0806656C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08066570
sub_08066570: @ 0x08066570
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080665DE
	ldrb r0, [r5, #0xc]
	cmp r0, #3
	beq _080665DE
	ldr r4, _080665E0 @ =gLinkEntity
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x50
	bl sub_0806FC80
	cmp r0, #0
	beq _080665DE
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080045C4
	adds r3, r0, #0
	movs r6, #1
	movs r1, #0x18
	adds r4, r3, #0
	ands r4, r1
	ldrb r0, [r5, #0x15]
	adds r2, r1, #0
	ands r2, r0
	cmp r2, r4
	bne _080665C8
	adds r2, r3, #5
	movs r1, #7
	ands r2, r1
	ldrb r0, [r5, #0x15]
	adds r0, #5
	ands r0, r1
	cmp r0, #2
	bhi _080665C8
	cmp r2, #2
	bhi _080665C8
	movs r6, #0
_080665C8:
	cmp r6, #0
	beq _080665DE
	strb r3, [r5, #0x15]
	adds r3, #4
	movs r0, #0x18
	ands r3, r0
	lsrs r3, r3, #3
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_08004260
_080665DE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080665E0: .4byte gLinkEntity

	thumb_func_start sub_080665E4
sub_080665E4: @ 0x080665E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08066638
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _0806661E
	movs r0, #0
	strb r0, [r2]
	strb r1, [r4, #0xc]
	ldr r1, _08066630 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_0806F118
_0806661E:
	ldr r0, _08066634 @ =gUnk_081104EC
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0806664E
	.align 2, 0
_08066630: .4byte gLinkEntity
_08066634: .4byte gUnk_081104EC
_08066638:
	ldr r0, _08066650 @ =gUnk_081104E0
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
_0806664E:
	pop {r4, pc}
	.align 2, 0
_08066650: .4byte gUnk_081104E0

	thumb_func_start sub_08066654
sub_08066654: @ 0x08066654
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
	movs r1, #2
	bl sub_080042AC
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066688
sub_08066688: @ 0x08066688
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	bge _0806669E
	movs r1, #2
	b _080666B4
_0806669E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080666AA
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _080666B4
_080666AA:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
_080666B4:
	adds r0, r4, #0
	bl sub_0806F078
	cmp r0, #0
	bne _080666C4
	adds r0, r4, #0
	bl sub_080042B8
_080666C4:
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _080666D8
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r2]
_080666D8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080666DC
sub_080666DC: @ 0x080666DC
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_080666E4
sub_080666E4: @ 0x080666E4
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
	adds r0, r4, #0
	bl sub_0807DD50
	pop {r4, pc}

	thumb_func_start sub_0806670C
sub_0806670C: @ 0x0806670C
	push {lr}
	movs r1, #0
	bl sub_0807DD94
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08066718
sub_08066718: @ 0x08066718
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F148
	cmp r0, #0
	beq _08066728
	movs r0, #1
	strb r0, [r4, #0xc]
_08066728:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806672C
sub_0806672C: @ 0x0806672C
	push {lr}
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r1, [r1]
	bl sub_08078784
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806673C
sub_0806673C: @ 0x0806673C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	bl GetProgressFlag
	cmp r0, #0
	bne _0806674E
	movs r1, #0
	b _0806676A
_0806674E:
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	bne _0806675C
	movs r1, #1
	b _0806676A
_0806675C:
	movs r0, #3
	bl GetInventoryValue
	movs r1, #3
	cmp r0, #0
	bne _0806676A
	movs r1, #2
_0806676A:
	ldr r0, _0806677C @ =gUnk_081104F8
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_0806677C: .4byte gUnk_081104F8

	thumb_func_start sub_08066780
sub_08066780: @ 0x08066780
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _080667A6
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
	movs r1, #6
	bl sub_080042AC
	b _080667AC
_080667A6:
	adds r0, r2, #0
	bl sub_080042B8
_080667AC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080667B0
sub_080667B0: @ 0x080667B0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080667C6
	adds r0, r4, #0
	bl sub_08066864
	b _080667DC
_080667C6:
	ldr r0, _080667E0 @ =gUnk_08110644
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
_080667DC:
	pop {r4, pc}
	.align 2, 0
_080667E0: .4byte gUnk_08110644

	thumb_func_start sub_080667E4
sub_080667E4: @ 0x080667E4
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
	movs r1, #2
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_08078778
	pop {r4, pc}

	thumb_func_start sub_08066808
sub_08066808: @ 0x08066808
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	bge _0806681E
	movs r1, #2
	b _08066834
_0806681E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0806682A
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08066834
_0806682A:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
_08066834:
	adds r0, r4, #0
	bl sub_0806F078
	cmp r0, #0
	bne _08066844
	adds r0, r4, #0
	bl sub_080042B8
_08066844:
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08066858
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r2]
_08066858:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806685C
sub_0806685C: @ 0x0806685C
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08066864
sub_08066864: @ 0x08066864
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _080668A2
	cmp r0, #1
	bgt _08066878
	cmp r0, #0
	beq _0806687E
	b _080668EC
_08066878:
	cmp r0, #2
	beq _080668DE
	b _080668EC
_0806687E:
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
	adds r0, r4, #0
	bl sub_0807DD50
	b _080668EC
_080668A2:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _080668D4
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _080668D0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_0806F118
	b _080668EC
	.align 2, 0
_080668D0: .4byte gLinkEntity
_080668D4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _080668EC
_080668DE:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _080668EC
	movs r0, #1
	strb r0, [r4, #0xc]
_080668EC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080668F0
sub_080668F0: @ 0x080668F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066904
sub_08066904: @ 0x08066904
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	bl GetProgressFlag
	cmp r0, #0
	bne _08066916
	movs r1, #0
	b _08066932
_08066916:
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	bne _08066924
	movs r1, #1
	b _08066932
_08066924:
	movs r0, #3
	bl GetInventoryValue
	movs r1, #3
	cmp r0, #0
	bne _08066932
	movs r1, #2
_08066932:
	ldr r0, _08066944 @ =gUnk_08110650
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_08066944: .4byte gUnk_08110650

	thumb_func_start sub_08066948
sub_08066948: @ 0x08066948
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806696E
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
	movs r1, #6
	bl sub_080042AC
	b _08066974
_0806696E:
	adds r0, r2, #0
	bl sub_080042B8
_08066974:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08066978
sub_08066978: @ 0x08066978
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806699C
	ldr r0, _08066998 @ =gUnk_081106E0
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _080669B2
	.align 2, 0
_08066998: .4byte gUnk_081106E0
_0806699C:
	ldr r0, _080669B4 @ =gUnk_081106D4
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
_080669B2:
	pop {r4, pc}
	.align 2, 0
_080669B4: .4byte gUnk_081106D4

	thumb_func_start sub_080669B8
sub_080669B8: @ 0x080669B8
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
	movs r1, #2
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_08078778
	pop {r4, pc}

	thumb_func_start sub_080669DC
sub_080669DC: @ 0x080669DC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	bge _080669F2
	movs r1, #2
	b _08066A08
_080669F2:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _080669FE
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08066A08
_080669FE:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
_08066A08:
	adds r0, r4, #0
	bl sub_0806F078
	cmp r0, #0
	bne _08066A18
	adds r0, r4, #0
	bl sub_080042B8
_08066A18:
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08066A2C
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r2]
_08066A2C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066A30
sub_08066A30: @ 0x08066A30
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08066A38
sub_08066A38: @ 0x08066A38
	push {lr}
	movs r3, #1
	movs r1, #1
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #5
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x18]
	bl sub_0807DD50
	pop {pc}

	thumb_func_start sub_08066A50
sub_08066A50: @ 0x08066A50
	push {lr}
	movs r1, #0
	bl sub_0807DD94
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08066A5C
sub_08066A5C: @ 0x08066A5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08066A90 @ =gUnk_08110734
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r3, [r4, #0x1a]
	lsrs r1, r3, #4
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r2
	adds r1, r1, r0
	movs r0, #0xf
	ands r1, r0
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1a]
	pop {r4, pc}
	.align 2, 0
_08066A90: .4byte gUnk_08110734

	thumb_func_start sub_08066A94
sub_08066A94: @ 0x08066A94
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r3, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r2, [r4, #0xd]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x68
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	bl sub_08066ACC
	pop {r4, pc}

	thumb_func_start sub_08066ACC
sub_08066ACC: @ 0x08066ACC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08066B18 @ =sub_08066B74
	bl sub_0807DD94
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08066AF6
	ldr r0, _08066B1C @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08066AF6
	adds r0, r4, #0
	bl sub_08095CB0
_08066AF6:
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r2, [r1]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	adds r5, r1, #0
	cmp r2, #0
	beq _08066B6E
	cmp r2, #2
	beq _08066B34
	cmp r2, #2
	bhi _08066B20
	cmp r2, #1
	beq _08066B2A
	b _08066B66
	.align 2, 0
_08066B18: .4byte sub_08066B74
_08066B1C: .4byte gUnk_030010A0
_08066B20:
	cmp r2, #3
	beq _08066B40
	cmp r2, #4
	beq _08066B52
	b _08066B66
_08066B2A:
	movs r0, #0x87
	lsls r0, r0, #2
	bl sub_08004488
	b _08066B66
_08066B34:
	ldr r0, _08066B3C @ =0x0000021E
	bl sub_08004488
	b _08066B66
	.align 2, 0
_08066B3C: .4byte 0x0000021E
_08066B40:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	movs r0, #4
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_0805DDEC
	b _08066B66
_08066B52:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, [r0]
	str r2, [r1, #4]
	adds r0, r4, #0
	bl sub_0805DE18
	ldr r0, _08066B70 @ =0x0000021D
	bl sub_08004488
_08066B66:
	ldrb r1, [r5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5]
_08066B6E:
	pop {r4, r5, pc}
	.align 2, 0
_08066B70: .4byte 0x0000021D

	thumb_func_start sub_08066B74
sub_08066B74: @ 0x08066B74
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r1, #8]
	ldr r4, _08066BCC @ =0xFFF00000
	ands r4, r0
	ldr r2, _08066BD0 @ =0x000FFFFF
	ands r0, r2
	str r0, [r1, #8]
	cmp r4, #0
	bne _08066B8A
	b _08066C86
_08066B8A:
	mov r3, ip
	adds r3, #0x80
	mov r5, ip
	adds r5, #0x68
	movs r6, #1
_08066B94:
	mvns r0, r4
	adds r1, r0, #1
	ands r1, r4
	eors r4, r1
	mov r2, ip
	ldrb r0, [r2, #0x14]
	lsrs r2, r0, #1
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r1, r0
	beq _08066C4C
	cmp r1, r0
	bhi _08066BE6
	movs r0, #0x80
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _08066C34
	cmp r1, r0
	bhi _08066BD4
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r1, r0
	beq _08066C24
	movs r0, #0x80
	lsls r0, r0, #0xe
	cmp r1, r0
	beq _08066C2C
	b _08066C82
	.align 2, 0
_08066BCC: .4byte 0xFFF00000
_08066BD0: .4byte 0x000FFFFF
_08066BD4:
	movs r0, #0x80
	lsls r0, r0, #0x10
	cmp r1, r0
	beq _08066C3C
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r1, r0
	beq _08066C44
	b _08066C82
_08066BE6:
	movs r0, #0x80
	lsls r0, r0, #0x15
	cmp r1, r0
	beq _08066C64
	cmp r1, r0
	bhi _08066C04
	movs r0, #0x80
	lsls r0, r0, #0x13
	cmp r1, r0
	beq _08066C54
	movs r0, #0x80
	lsls r0, r0, #0x14
	cmp r1, r0
	beq _08066C5C
	b _08066C82
_08066C04:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _08066C70
	cmp r1, r0
	bhi _08066C1A
	movs r0, #0x80
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _08066C6C
	b _08066C82
_08066C1A:
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	beq _08066C76
	b _08066C82
_08066C24:
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r3]
	b _08066C82
_08066C2C:
	adds r0, r2, #0
	adds r0, #0x14
	strh r0, [r3]
	b _08066C82
_08066C34:
	adds r0, r2, #0
	adds r0, #0x18
	strh r0, [r3]
	b _08066C82
_08066C3C:
	adds r0, r2, #0
	adds r0, #0x1c
	strh r0, [r3]
	b _08066C82
_08066C44:
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r3]
	b _08066C82
_08066C4C:
	adds r0, r2, #0
	adds r0, #0x24
	strh r0, [r3]
	b _08066C82
_08066C54:
	adds r0, r2, #0
	adds r0, #0x28
	strh r0, [r3]
	b _08066C82
_08066C5C:
	adds r0, r2, #0
	adds r0, #0x2c
	strh r0, [r3]
	b _08066C82
_08066C64:
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r3]
	b _08066C82
_08066C6C:
	strb r6, [r5]
	b _08066C82
_08066C70:
	movs r0, #0xff
	strb r0, [r5]
	b _08066C82
_08066C76:
	mov r2, ip
	adds r2, #0x69
	ldrb r1, [r2]
	adds r0, r6, #0
	eors r0, r1
	strb r0, [r2]
_08066C82:
	cmp r4, #0
	bne _08066B94
_08066C86:
	mov r0, ip
	adds r0, #0x84
	ldr r1, [r0]
	mov r0, ip
	bl sub_0807DB98
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08066C94
sub_08066C94: @ 0x08066C94
	push {lr}
	movs r1, #0
	bl sub_0805DA90
	movs r0, #0xf7
	bl PlaySFX
	pop {pc}

	thumb_func_start sub_08066CA4
sub_08066CA4: @ 0x08066CA4
	push {lr}
	movs r1, #1
	bl sub_0805DA90
	movs r0, #0xf6
	bl PlaySFX
	pop {pc}

	thumb_func_start sub_08066CB4
sub_08066CB4: @ 0x08066CB4
	push {lr}
	ldr r2, _08066CC8 @ =gUnk_08110BD8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08066CC8: .4byte gUnk_08110BD8

	thumb_func_start sub_08066CCC
sub_08066CCC: @ 0x08066CCC
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
	movs r1, #7
	bl sub_0805EA78
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	pop {r4, pc}

	thumb_func_start sub_08066CF8
sub_08066CF8: @ 0x08066CF8
	push {lr}
	movs r1, #0
	bl sub_0807DD94
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08066D04
sub_08066D04: @ 0x08066D04
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	movs r1, #0x2e
	bl sub_0805EB9C
	str r0, [r4, #0x50]
	pop {r4, pc}

	thumb_func_start sub_08066D14
sub_08066D14: @ 0x08066D14
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, [r4, #0x50]
	cmp r2, #0
	beq _08066D48
	ldrb r0, [r2, #0x14]
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08068680
	movs r0, #1
	str r0, [r5, #0x14]
	b _08066D4A
_08066D48:
	str r2, [r5, #0x14]
_08066D4A:
	pop {r4, r5, pc}

	thumb_func_start sub_08066D4C
sub_08066D4C: @ 0x08066D4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x50]
	cmp r1, #0
	beq _08066D90
	bl sub_0806FA24
	ldr r3, [r4, #0x50]
	ldrb r1, [r3, #0x18]
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #0x18]
	ldr r1, [r4, #0x50]
	ldrb r0, [r4, #0x14]
	strb r0, [r1, #0x14]
	ldrb r0, [r4, #0x18]
	ands r2, r0
	strb r2, [r4, #0x18]
	ldrb r1, [r4, #0x17]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4, #0x17]
	ldr r1, [r4, #0x50]
	adds r0, r4, #0
	bl sub_08068694
	movs r0, #1
	str r0, [r5, #0x14]
	b _08066D92
_08066D90:
	str r1, [r5, #0x14]
_08066D92:
	pop {r4, r5, pc}

	thumb_func_start sub_08066D94
sub_08066D94: @ 0x08066D94
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x1c
	bl sub_0807CD04
	movs r0, #0x2e
	movs r1, #0
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _08066DD6
	ldr r0, _08066DDC @ =gLinkEntity
	ldrb r0, [r0, #0x14]
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r5, #0
	bl sub_0806EDC4
	strb r0, [r4, #0x14]
	ldr r0, _08066DE0 @ =gRoomControls
	ldrb r1, [r0, #5]
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
_08066DD6:
	bl sub_0805E780
	pop {r4, r5, pc}
	.align 2, 0
_08066DDC: .4byte gLinkEntity
_08066DE0: .4byte gRoomControls

	thumb_func_start sub_08066DE4
sub_08066DE4: @ 0x08066DE4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #7
	movs r1, #0x2e
	bl sub_0805EB9C
	adds r4, r0, #0
	cmp r4, #0
	beq _08066E06
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080686C4
_08066E06:
	pop {r4, r5, pc}

	thumb_func_start sub_08066E08
sub_08066E08: @ 0x08066E08
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x50
	bl sub_080042AC
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, #0x80
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066E20
sub_08066E20: @ 0x08066E20
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x44
	bl sub_080042AC
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, #0x80
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066E38
sub_08066E38: @ 0x08066E38
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x48
	bl sub_080042AC
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, #0x80
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066E50
sub_08066E50: @ 0x08066E50
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x4c
	bl sub_080042AC
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, #0x80
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066E68
sub_08066E68: @ 0x08066E68
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x54
	bl sub_080042AC
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, #0x80
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066E80
sub_08066E80: @ 0x08066E80
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x18]
	cmp r0, #4
	bhi _08066F7C
	lsls r0, r0, #2
	ldr r1, _08066E98 @ =_08066E9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08066E98: .4byte _08066E9C
_08066E9C: @ jump table
	.4byte _08066EB0 @ case 0
	.4byte _08066EC0 @ case 1
	.4byte _08066EF0 @ case 2
	.4byte _08066F28 @ case 3
	.4byte _08066F58 @ case 4
_08066EB0:
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
	adds r0, r4, #0
	movs r1, #0x16
	bl sub_080042AC
	b _08066F7C
_08066EC0:
	adds r0, r4, #0
	bl sub_080042B8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08066F7C
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x7c
	bl PlaySFX
	b _08066F7C
_08066EF0:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	movs r2, #0x80
	bl sub_0806F62C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08066F1A
	adds r0, r4, #0
	bl sub_080042B8
_08066F1A:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08066F7C
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
	b _08066F7C
_08066F28:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	movs r2, #0x80
	bl sub_0806F62C
	adds r0, r4, #0
	bl sub_080042B8
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _08066F7C
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
	adds r0, r4, #0
	movs r1, #0x1e
	bl sub_080042AC
	b _08066F7C
_08066F58:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08066F7C
	ldr r2, _08066F78 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _08066F8C
	.align 2, 0
_08066F78: .4byte gUnk_02033280
_08066F7C:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r0, #0x28
	movs r2, #0
	strh r1, [r0]
	ldr r0, _08066F90 @ =gUnk_02033280
	strb r2, [r0, #6]
_08066F8C:
	pop {r4, r5, pc}
	.align 2, 0
_08066F90: .4byte gUnk_02033280

	thumb_func_start sub_08066F94
sub_08066F94: @ 0x08066F94
	push {r4, lr}
	ldr r4, _08066F9C @ =gUnk_08110BE0
	b _08066FAC
	.align 2, 0
_08066F9C: .4byte gUnk_08110BE0
_08066FA0:
	ldrh r1, [r4]
	adds r4, #2
	ldr r0, _08066FB4 @ =0x00004072
	movs r2, #1
	bl sub_0807B314
_08066FAC:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08066FA0
	pop {r4, pc}
	.align 2, 0
_08066FB4: .4byte 0x00004072

	thumb_func_start sub_08066FB8
sub_08066FB8: @ 0x08066FB8
	push {r4, lr}
	ldr r4, _08066FC0 @ =gUnk_08110BE0
	b _08066FCE
	.align 2, 0
_08066FC0: .4byte gUnk_08110BE0
_08066FC4:
	ldrh r0, [r4]
	adds r4, #2
	movs r1, #1
	bl sub_0807BA8C
_08066FCE:
	ldrh r0, [r4]
	cmp r0, #0
	bne _08066FC4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066FD8
sub_08066FD8: @ 0x08066FD8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _08066FE8
	bl sub_0805E780
_08066FE8:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08067030
	cmp r0, #1
	bgt _08066FF8
	cmp r0, #0
	beq _08066FFE
	b _0806707C
_08066FF8:
	cmp r0, #2
	beq _0806706E
	b _0806707C
_08066FFE:
	ldr r1, _0806702C @ =gUnk_08110C00
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806707C
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	b _0806707C
	.align 2, 0
_0806702C: .4byte gUnk_08110C00
_08067030:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _08067064
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _08067060 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #4
	adds r0, r4, #0
	bl sub_080042AC
	adds r0, r4, #0
	bl sub_0806F118
	b _0806707C
	.align 2, 0
_08067060: .4byte gLinkEntity
_08067064:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _0806707C
_0806706E:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _0806707C
	movs r0, #1
	strb r0, [r4, #0xc]
_0806707C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08067080
sub_08067080: @ 0x08067080
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080670B4
sub_080670B4: @ 0x080670B4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0x11
	bl GetInventoryValue
	cmp r0, #0
	bne _080670D0
	movs r0, #0x15
	bl GetProgressFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_080670D0:
	ldr r0, _080670E0 @ =gUnk_08110C0C
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_080670E0: .4byte gUnk_08110C0C

	thumb_func_start sub_080670E4
sub_080670E4: @ 0x080670E4
	push {lr}
	ldr r1, _080670F8 @ =gUnk_02002A40
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	ldr r2, _080670FC @ =gUnk_08110C10
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_080670F8: .4byte gUnk_02002A40
_080670FC: .4byte gUnk_08110C10

	thumb_func_start sub_08067100
sub_08067100: @ 0x08067100
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

	thumb_func_start sub_08067118
sub_08067118: @ 0x08067118
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08067150
	ldr r1, _0806714C @ =gUnk_08110C00
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _08067156
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
	movs r1, #2
	bl sub_08004260
	b _08067156
	.align 2, 0
_0806714C: .4byte gUnk_08110C00
_08067150:
	adds r0, r4, #0
	bl sub_08004274
_08067156:
	pop {r4, pc}

	thumb_func_start sub_08067158
sub_08067158: @ 0x08067158
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _08067168
	bl sub_0805E780
_08067168:
	ldrb r5, [r4, #0xc]
	cmp r5, #1
	beq _080671A8
	cmp r5, #1
	bgt _08067178
	cmp r5, #0
	beq _0806717E
	b _08067224
_08067178:
	cmp r5, #2
	beq _0806720A
	b _08067224
_0806717E:
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _080671EC @ =gUnk_08110CA8
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _08067224
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	strb r5, [r0]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD64
_080671A8:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _080671F4
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _080671F0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08004260
	adds r0, r4, #0
	bl sub_0806F118
	b _08067224
	.align 2, 0
_080671EC: .4byte gUnk_08110CA8
_080671F0: .4byte gLinkEntity
_080671F4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_08004274
	b _08067224
_0806720A:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _08067224
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08004260
_08067224:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08067228
sub_08067228: @ 0x08067228
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bhi _0806727E
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r2, #0x3f
	ands r2, r0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl sub_0806FFD8
	adds r0, r4, #0
	bl sub_0807000C
	b _080672AC
_0806727E:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
_080672AC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080672B0
sub_080672B0: @ 0x080672B0
	push {lr}
	ldrb r2, [r0, #0x14]
	lsrs r2, r2, #1
	ldr r1, [r1, #4]
	adds r1, r1, r2
	ldrb r2, [r0, #0xa]
	lsls r2, r2, #3
	adds r1, r1, r2
	bl sub_08004260
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080672C8
sub_080672C8: @ 0x080672C8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0x11
	bl GetInventoryValue
	cmp r0, #0
	bne _080672E4
	movs r0, #0x15
	bl GetProgressFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
_080672E4:
	ldr r3, _08067300 @ =gUnk_08110CE8
	lsls r1, r4, #1
	ldrb r2, [r5, #0xa]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_08067300: .4byte gUnk_08110CE8

	thumb_func_start sub_08067304
sub_08067304: @ 0x08067304
	push {lr}
	ldr r1, _08067310 @ =gUnk_08110D00
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_08067310: .4byte gUnk_08110D00

	thumb_func_start sub_08067314
sub_08067314: @ 0x08067314
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

	thumb_func_start sub_0806732C
sub_0806732C: @ 0x0806732C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08067378
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #4
	ldr r0, _08067374 @ =gUnk_08110CA8
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806737E
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
	movs r1, #2
	bl sub_0805E3A0
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	adds r1, #2
	adds r0, r4, #0
	bl sub_08004260
	b _0806737E
	.align 2, 0
_08067374: .4byte gUnk_08110CA8
_08067378:
	adds r0, r4, #0
	bl sub_08004274
_0806737E:
	pop {r4, pc}

	thumb_func_start sub_08067380
sub_08067380: @ 0x08067380
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080673A4
	ldr r0, _080673A0 @ =gUnk_08110E5C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _080673BA
	.align 2, 0
_080673A0: .4byte gUnk_08110E5C
_080673A4:
	ldr r0, _080673BC @ =gUnk_08110E4C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
_080673BA:
	pop {r4, pc}
	.align 2, 0
_080673BC: .4byte gUnk_08110E4C

	thumb_func_start sub_080673C0
sub_080673C0: @ 0x080673C0
	push {lr}
	adds r2, r0, #0
	ldr r0, _080673D4 @ =gUnk_030010A0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _080673D8
	movs r0, #3
	b _080673DA
	.align 2, 0
_080673D4: .4byte gUnk_030010A0
_080673D8:
	movs r0, #1
_080673DA:
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0xa]
	movs r0, #1
	ands r0, r1
	strb r0, [r2, #0x1e]
	cmp r0, #0
	bne _080673EC
	ldr r0, _080673F0 @ =gUnk_08110E94
	str r0, [r2, #0x48]
_080673EC:
	pop {pc}
	.align 2, 0
_080673F0: .4byte gUnk_08110E94

	thumb_func_start sub_080673F4
sub_080673F4: @ 0x080673F4
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x39
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0806740C
	movs r1, #0
	movs r0, #2
	strb r0, [r2, #0xc]
	strb r1, [r3]
_0806740C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08067410
sub_08067410: @ 0x08067410
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08067418
sub_08067418: @ 0x08067418
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #1
	strb r0, [r6, #0xc]
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, _08067488 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r7, r6, #0
	adds r7, #0x74
	strh r1, [r7]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _08067494
	ldr r0, _0806748C @ =gUnk_08110E94
	str r0, [r6, #0x48]
	ldr r5, _08067490 @ =0x00004022
	ldrh r1, [r7]
	subs r1, #1
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0800015E
	ldrh r1, [r7]
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0800015E
	ldrh r1, [r7]
	adds r1, #0x3f
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0800015E
	ldrh r1, [r7]
	adds r1, #0x40
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0800015E
	b _080674F8
	.align 2, 0
_08067488: .4byte gRoomControls
_0806748C: .4byte gUnk_08110E94
_08067490: .4byte 0x00004022
_08067494:
	adds r1, r6, #0
	adds r1, #0x38
	movs r0, #3
	strb r0, [r1]
	ldrb r2, [r6, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r6, #0x1b]
	ldrb r0, [r6, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r6, #0x19]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x1d
	bl sub_0807CBD0
	cmp r0, #0
	bne _080674F8
	ldr r4, _08067500 @ =0x00004022
	ldr r1, _08067504 @ =0x00000E81
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	ldr r1, _08067508 @ =0x00000E82
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	ldr r1, _0806750C @ =0x00000E83
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
	ldr r1, _08067510 @ =0x00000EC3
	adds r0, r4, #0
	movs r2, #1
	bl sub_0800015E
_080674F8:
	adds r0, r6, #0
	bl sub_0807DD50
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08067500: .4byte 0x00004022
_08067504: .4byte 0x00000E81
_08067508: .4byte 0x00000E82
_0806750C: .4byte 0x00000E83
_08067510: .4byte 0x00000EC3

	thumb_func_start sub_08067514
sub_08067514: @ 0x08067514
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DD94
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0806752A
	adds r0, r4, #0
	bl sub_0806ED78
_0806752A:
	pop {r4, pc}

	thumb_func_start sub_0806752C
sub_0806752C: @ 0x0806752C
	push {lr}
	bl sub_0806FD3C
	pop {pc}

	thumb_func_start sub_08067534
sub_08067534: @ 0x08067534
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0806753A:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _08067560
	ldr r0, _08067578 @ =gUnk_08110E64
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r1, #0x2e]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	adds r0, #0x1c
	strh r0, [r1, #0x32]
_08067560:
	adds r4, #1
	cmp r4, #1
	ble _0806753A
	movs r0, #0xa6
	lsls r0, r0, #1
	bl sub_08004488
	movs r0, #0x28
	movs r1, #4
	bl sub_08080964
	pop {r4, r5, pc}
	.align 2, 0
_08067578: .4byte gUnk_08110E64

	thumb_func_start sub_0806757C
sub_0806757C: @ 0x0806757C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #0
	beq _080675CC
	cmp r0, #2
	bls _080675BC
	ldr r0, _080675AC @ =0x00000E81
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080675B0 @ =0x00000E82
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080675B4 @ =0x00000E83
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _080675B8 @ =0x00000EC3
	movs r1, #1
	bl sub_0807BA8C
	b _080675CC
	.align 2, 0
_080675AC: .4byte 0x00000E81
_080675B0: .4byte 0x00000E82
_080675B4: .4byte 0x00000E83
_080675B8: .4byte 0x00000EC3
_080675BC:
	ldr r0, _080675D0 @ =gUnk_08110E68
	ldrb r1, [r2, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl sub_080ADF80
_080675CC:
	pop {pc}
	.align 2, 0
_080675D0: .4byte gUnk_08110E68

	thumb_func_start sub_080675D4
sub_080675D4: @ 0x080675D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r5, _080676D0 @ =gUnk_08110E78
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r7, r0, #0
	subs r7, #0xc
	movs r0, #0x3f
	mov r8, r0
	movs r6, #8
_080675EC:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFX
	adds r3, r0, #0
	cmp r3, #0
	beq _08067646
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r1, [r3, #0x2e]
	adds r0, r0, r1
	strh r0, [r3, #0x2e]
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r1, [r3, #0x32]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
	strh r7, [r3, #0x36]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrb r1, [r4, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r3, #0x1b]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1b]
	ldrb r1, [r4, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r3, #0x19]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x19]
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0806FAB0
_08067646:
	subs r6, #1
	adds r5, #2
	cmp r6, #0
	bge _080675EC
	ldr r5, _080676D4 @ =gUnk_08110E8A
	movs r0, #0x3f
	mov r8, r0
	movs r6, #3
_08067656:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl CreateFX
	adds r3, r0, #0
	cmp r3, #0
	beq _080676B0
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r1, [r3, #0x2e]
	adds r0, r0, r1
	strh r0, [r3, #0x2e]
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r1, [r3, #0x32]
	adds r0, r0, r1
	strh r0, [r3, #0x32]
	strh r7, [r3, #0x36]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrb r1, [r4, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r3, #0x1b]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1b]
	ldrb r1, [r4, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r3, #0x19]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x19]
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0806FAB0
_080676B0:
	subs r6, #1
	adds r5, #2
	cmp r6, #0
	bge _08067656
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	bls _080676C8
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_080676C8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080676D0: .4byte gUnk_08110E78
_080676D4: .4byte gUnk_08110E8A

	thumb_func_start sub_080676D8
sub_080676D8: @ 0x080676D8
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	bx lr

	thumb_func_start sub_080676E0
sub_080676E0: @ 0x080676E0
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #1
	beq _08067706
	cmp r0, #1
	bgt _080676F6
	cmp r0, #0
	beq _080676FC
	b _08067734
_080676F6:
	cmp r0, #2
	beq _08067722
	b _08067734
_080676FC:
	movs r0, #1
	strb r0, [r2, #0x18]
	movs r0, #0x20
	strb r0, [r2, #0x19]
	b _08067742
_08067706:
	ldrb r1, [r2, #0x19]
	lsrs r0, r1, #1
	subs r0, #0x10
	strh r0, [r3, #0x36]
	subs r1, #1
	strb r1, [r2, #0x19]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _08067742
	movs r0, #2
	strb r0, [r2, #0x18]
	movs r0, #0x24
	strb r0, [r2, #0x19]
	b _08067742
_08067722:
	ldrb r0, [r2, #0x19]
	subs r0, #1
	strb r0, [r2, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08067742
	movs r0, #3
	strb r0, [r2, #0x18]
	b _08067742
_08067734:
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r3, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _08067748
_08067742:
	ldr r1, _0806774C @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_08067748:
	pop {pc}
	.align 2, 0
_0806774C: .4byte gUnk_02033280

	thumb_func_start sub_08067750
sub_08067750: @ 0x08067750
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08067788
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrh r0, [r4, #0x32]
	subs r0, #0x18
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004260
	ldr r1, _08067784 @ =0x0000017B
	adds r0, r4, #0
	bl sub_0801D2B4
	b _0806778E
	.align 2, 0
_08067784: .4byte 0x0000017B
_08067788:
	adds r0, r4, #0
	bl sub_08004274
_0806778E:
	pop {r4, pc}

	thumb_func_start sub_08067790
sub_08067790: @ 0x08067790
	push {lr}
	ldrb r2, [r0, #0xa]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _080677AC @ =gUnk_02002A40
	ldrb r2, [r2, #8]
	lsls r2, r2, #3
	ldr r3, _080677B0 @ =gUnk_08110EF8
	adds r2, r2, r3
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_080677AC: .4byte gUnk_02002A40
_080677B0: .4byte gUnk_08110EF8

	thumb_func_start sub_080677B4
sub_080677B4: @ 0x080677B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080677E8 @ =gUnk_081110D8
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08067C44
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080677E4
	ldrb r0, [r4, #0xa]
	cmp r0, #5
	beq _080677E4
	adds r0, r4, #0
	bl sub_0806ED78
_080677E4:
	pop {r4, pc}
	.align 2, 0
_080677E8: .4byte gUnk_081110D8

	thumb_func_start sub_080677EC
sub_080677EC: @ 0x080677EC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #8
	strb r0, [r4, #0x15]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #1
	movs r0, #0xa8
	strb r0, [r1]
	subs r1, #4
	movs r0, #1
	strb r0, [r1]
	adds r1, #0x2e
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806783C @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _08067840
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	b _08067848
	.align 2, 0
_0806783C: .4byte gLinkEntity
_08067840:
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_08067848:
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldr r0, _0806786C @ =gUnk_08110EF0
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0805ACC0
	adds r2, r0, #0
	cmp r2, #0
	bne _08067870
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	b _08067872
	.align 2, 0
_0806786C: .4byte gUnk_08110EF0
_08067870:
	lsrs r2, r2, #0x10
_08067872:
	adds r0, r4, #0
	adds r0, #0x6c
	movs r1, #0
	strh r2, [r0]
	ldrb r0, [r4, #0xe]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x6e
	strh r0, [r2]
	strb r1, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x75
	strb r1, [r0]
	bl sub_08000E50
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x74
	strb r0, [r1]
	subs r1, #0xb
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08067B08
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080678AC
sub_080678AC: @ 0x080678AC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08067D20
	cmp r0, #0
	beq _080678C2
	adds r0, r4, #0
	movs r1, #5
	bl sub_08067B80
	b _08067900
_080678C2:
	adds r2, r4, #0
	adds r2, #0x72
	ldrh r0, [r2]
	cmp r0, #0
	beq _080678D0
	subs r0, #1
	strh r0, [r2]
_080678D0:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #1
	bne _080678EA
	ldrh r0, [r2]
	cmp r0, #0
	bne _080678EA
	adds r0, r4, #0
	bl sub_08067AAC
	b _08067900
_080678EA:
	adds r0, r4, #0
	bl sub_080042B8
	ldrb r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08067900
	adds r0, r4, #0
	bl sub_08067B34
_08067900:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08067904
sub_08067904: @ 0x08067904
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08067D20
	cmp r0, #0
	beq _0806791A
	adds r0, r4, #0
	movs r1, #8
	bl sub_08067B80
	b _08067978
_0806791A:
	adds r1, r4, #0
	adds r1, #0x72
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08067932
	adds r0, r4, #0
	bl sub_08067B70
	b _08067978
_08067932:
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	bne _08067952
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r1, r4, #0
	adds r1, #0x6e
	ldrh r1, [r1]
	cmp r0, r1
	ble _0806796C
	movs r0, #0x18
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x18]
	subs r0, #0x59
	ands r0, r1
	b _0806796A
_08067952:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	cmp r1, r0
	bge _0806796C
	movs r0, #8
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
_0806796A:
	strb r0, [r4, #0x18]
_0806796C:
	adds r0, r4, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_080042B8
_08067978:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806797C
sub_0806797C: @ 0x0806797C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08067998
	adds r0, r4, #0
	bl sub_08067B08
_08067998:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806799C
sub_0806799C: @ 0x0806799C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	ldr r0, _080679C0 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080679BE
	adds r0, r4, #0
	bl sub_08067B08
	adds r0, r4, #0
	movs r1, #1
	bl sub_0805E3A0
_080679BE:
	pop {r4, pc}
	.align 2, 0
_080679C0: .4byte gTextBox

	thumb_func_start sub_080679C4
sub_080679C4: @ 0x080679C4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x74
	ldrb r0, [r1]
	cmp r0, #0
	beq _080679E6
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080679E6
	adds r0, r4, #0
	bl sub_08067D20
	cmp r0, #0
	bne _080679EE
_080679E6:
	adds r0, r4, #0
	bl sub_08067C24
	b _08067A0A
_080679EE:
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_08067BD4
	adds r0, r4, #0
	bl sub_08067D74
	cmp r0, #0
	beq _08067A0A
	adds r0, r4, #0
	bl sub_08067C18
_08067A0A:
	pop {r4, pc}

	thumb_func_start sub_08067A0C
sub_08067A0C: @ 0x08067A0C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08067A44
	adds r0, r4, #0
	bl sub_08067D20
	cmp r0, #0
	beq _08067A3C
	adds r0, r4, #0
	movs r1, #5
	bl sub_08067B80
	ldrb r0, [r4, #0xe]
	adds r0, #0x14
	strb r0, [r4, #0xe]
	b _08067A76
_08067A3C:
	adds r0, r4, #0
	bl sub_08067C24
	b _08067A76
_08067A44:
	movs r2, #7
	ands r2, r1
	cmp r2, #0
	beq _08067A70
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	ldr r1, _08067A6C @ =gUnk_08111154
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	lsls r0, r0, #2
	subs r0, #1
	adds r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	b _08067A76
	.align 2, 0
_08067A6C: .4byte gUnk_08111154
_08067A70:
	adds r0, r4, #0
	bl sub_08067DDC
_08067A76:
	pop {r4, pc}

	thumb_func_start sub_08067A78
sub_08067A78: @ 0x08067A78
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08067A94
	adds r0, r4, #0
	bl sub_08067AAC
_08067A94:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08067A98
sub_08067A98: @ 0x08067A98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F148
	cmp r0, #0
	beq _08067AAA
	adds r0, r4, #0
	bl sub_08067B08
_08067AAA:
	pop {r4, pc}

	thumb_func_start sub_08067AAC
sub_08067AAC: @ 0x08067AAC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _08067AFC @ =gUnk_081110FC
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08067DCC
	ldr r0, _08067B00 @ =gUnk_0811110C
	ldrb r2, [r0, #2]
	ldr r3, _08067B04 @ =gUnk_0811110F
	adds r0, r4, #0
	movs r1, #0
	bl sub_08078850
	pop {r4, pc}
	.align 2, 0
_08067AFC: .4byte gUnk_081110FC
_08067B00: .4byte gUnk_0811110C
_08067B04: .4byte gUnk_0811110F

	thumb_func_start sub_08067B08
sub_08067B08: @ 0x08067B08
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	bl sub_08000E50
	ldr r2, _08067B30 @ =gUnk_08111104
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08067B34
	pop {r4, pc}
	.align 2, 0
_08067B30: .4byte gUnk_08111104

	thumb_func_start sub_08067B34
sub_08067B34: @ 0x08067B34
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_08067DCC
	bl sub_08000E50
	movs r1, #0x30
	ands r0, r1
	adds r0, #0xb4
	adds r1, r4, #0
	adds r1, #0x59
	strb r0, [r1]
	ldr r1, _08067B68 @ =gUnk_0811110C
	ldrb r0, [r4, #0x18]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r3, _08067B6C @ =gUnk_0811110F
	adds r0, r4, #0
	movs r1, #0
	bl sub_08078850
	pop {r4, pc}
	.align 2, 0
_08067B68: .4byte gUnk_0811110C
_08067B6C: .4byte gUnk_0811110F

	thumb_func_start sub_08067B70
sub_08067B70: @ 0x08067B70
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #4
	bl sub_08067DCC
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08067B80
sub_08067B80: @ 0x08067B80
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #5
	strb r0, [r5, #0xc]
	movs r0, #0x14
	strb r0, [r5, #0xe]
	bl sub_08000E50
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r5, #0
	adds r1, #0x74
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080042AC
	adds r0, r5, #0
	bl sub_08067DDC
	ldr r0, _08067BC4 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _08067BC8
	ldrb r0, [r5, #0x18]
	movs r1, #0x40
	orrs r0, r1
	b _08067BD0
	.align 2, 0
_08067BC4: .4byte gLinkEntity
_08067BC8:
	ldrb r1, [r5, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_08067BD0:
	strb r0, [r5, #0x18]
	pop {r4, r5, pc}

	thumb_func_start sub_08067BD4
sub_08067BD4: @ 0x08067BD4
	push {r4, lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x18]
	lsls r0, r3, #0x19
	cmp r0, #0
	bge _08067BFC
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	subs r0, #4
	ldr r1, _08067BF8 @ =gLinkEntity
	movs r4, #0x2e
	ldrsh r1, [r1, r4]
	cmp r0, r1
	ble _08067C12
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r3
	b _08067C10
	.align 2, 0
_08067BF8: .4byte gLinkEntity
_08067BFC:
	movs r1, #0x2e
	ldrsh r0, [r2, r1]
	adds r0, #4
	ldr r1, _08067C14 @ =gLinkEntity
	movs r4, #0x2e
	ldrsh r1, [r1, r4]
	cmp r0, r1
	bge _08067C12
	movs r0, #0x40
	orrs r0, r3
_08067C10:
	strb r0, [r2, #0x18]
_08067C12:
	pop {r4, pc}
	.align 2, 0
_08067C14: .4byte gLinkEntity

	thumb_func_start sub_08067C18
sub_08067C18: @ 0x08067C18
	push {lr}
	movs r1, #6
	strb r1, [r0, #0xc]
	bl sub_080042AC
	pop {pc}

	thumb_func_start sub_08067C24
sub_08067C24: @ 0x08067C24
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x75
	movs r0, #0x14
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08067DDC
	adds r0, r4, #0
	movs r1, #7
	bl sub_080042AC
	pop {r4, pc}
	