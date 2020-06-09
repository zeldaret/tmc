	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


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
	bl LoadAnimation
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
	bl UpdateFuseInteraction
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
	ldr r0, _08065CB8 @ =gScreen
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
_08065CB8: .4byte gScreen
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
	ldr r1, _08065CFC @ =gScreen
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
_08065CFC: .4byte gScreen

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
	bl LoadAnimation
	ldr r1, _08065D70 @ =gScreen
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
_08065D70: .4byte gScreen

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
	ldr r0, _08065DA4 @ =gScreen
	adds r0, #0x68
	strh r3, [r0]
	ldrh r0, [r2, #2]
	strb r0, [r1, #0xe]
	adds r0, r2, #4
	str r0, [r1, #0x6c]
	b _08065DB4
	.align 2, 0
_08065DA0: .4byte 0x0000FFFF
_08065DA4: .4byte gScreen
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
	bl LoadAnimation
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
	bl LoadAnimation
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
	ldr r0, _08065EA0 @ =gScreen
	adds r0, #0x68
	strh r2, [r0]
	ldrh r0, [r1, #2]
	strb r0, [r4, #0xe]
	adds r0, r1, #4
	str r0, [r4, #0x6c]
	b _08065EB0
	.align 2, 0
_08065E9C: .4byte 0x0000FFFF
_08065EA0: .4byte gScreen
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
	ldr r0, _08065F0C @ =gScreen
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
_08065F0C: .4byte gScreen
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
	bl LoadAnimation
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
	bl LoadAnimation
	b _08065FBC
_08065FB6:
	adds r0, r2, #0
	bl sub_080042B8
_08065FBC:
	pop {pc}
	.align 2, 0
