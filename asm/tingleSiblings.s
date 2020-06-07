	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08064D58
sub_08064D58: @ 0x08064D58
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08064D6E
	adds r0, r2, #0
	bl sub_08064DE4
	b _08064D74
_08064D6E:
	adds r0, r2, #0
	bl sub_08064D78
_08064D74:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08064D78
sub_08064D78: @ 0x08064D78
	push {lr}
	ldr r2, _08064D8C @ =gUnk_0810FBFC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08064D8C: .4byte gUnk_0810FBFC

	thumb_func_start sub_08064D90
sub_08064D90: @ 0x08064D90
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl LoadAnimation
	movs r0, #1
	strb r0, [r4, #0xf]
	pop {r4, pc}

	thumb_func_start sub_08064DA0
sub_08064DA0: @ 0x08064DA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08064EE8
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08064DC8
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #6
	bl LoadAnimation
	movs r0, #0
	bl TextboxTryNoOverlap
_08064DC8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08064DCC
sub_08064DCC: @ 0x08064DCC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08064EE8
	adds r0, r4, #0
	movs r1, #2
	bl LoadAnimation
	movs r0, #1
	strb r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08064DE4
sub_08064DE4: @ 0x08064DE4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08064E1A
	cmp r0, #1
	bgt _08064DF8
	cmp r0, #0
	beq _08064DFE
	b _08064E6A
_08064DF8:
	cmp r0, #2
	beq _08064E56
	b _08064E6A
_08064DFE:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #4
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_0807DD50
	b _08064E6A
_08064E1A:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _08064E4C
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _08064E48 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_0806F118
	b _08064E6A
	.align 2, 0
_08064E48: .4byte gLinkEntity
_08064E4C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _08064E6A
_08064E56:
	adds r0, r4, #0
	bl sub_0806F148
	cmp r0, #0
	beq _08064E6A
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0801E99C
_08064E6A:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r5, #0xf
	ands r5, r1
	adds r0, r5, #0
	eors r0, r1
	strb r0, [r2]
	cmp r5, #0
	beq _08064EA0
	movs r1, #0x29
	cmp r5, #3
	bne _08064E86
	movs r1, #0x2a
_08064E86:
	adds r0, r4, #0
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _08064EA0
	cmp r5, #2
	bne _08064EA0
	ldrb r0, [r2, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x18]
_08064EA0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08064EA4
sub_08064EA4: @ 0x08064EA4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r5, r4, #0
	adds r5, #0x68
	strb r0, [r5]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _08064EBE
	cmp r0, #3
	beq _08064EC2
	b _08064ED8
_08064EBE:
	movs r0, #0x59
	b _08064EC4
_08064EC2:
	movs r0, #0x5a
_08064EC4:
	bl sub_0801E7F4
	cmp r0, #0
	beq _08064ED8
	movs r0, #0xc
	bl GetInventoryValue
	cmp r0, #0
	bne _08064ED8
	strb r0, [r5]
_08064ED8:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08064EE8
sub_08064EE8: @ 0x08064EE8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r5, #0xf
	ands r5, r1
	adds r0, r5, #0
	eors r0, r1
	strb r0, [r2]
	cmp r5, #0
	beq _08064F26
	movs r1, #0x2a
	cmp r5, #3
	beq _08064F0C
	movs r1, #0x29
_08064F0C:
	adds r0, r4, #0
	movs r2, #0
	bl CreateFX
	adds r2, r0, #0
	cmp r2, #0
	beq _08064F26
	cmp r5, #2
	bne _08064F26
	ldrb r0, [r2, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x18]
_08064F26:
	pop {r4, r5, pc}

	thumb_func_start sub_08064F28
sub_08064F28: @ 0x08064F28
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	movs r0, #0
	str r0, [r1, #0x14]
	ldr r1, _08064F60 @ =gUnk_0810FC50
	ldrb r0, [r6, #0xa]
	adds r0, r0, r1
	ldrb r7, [r0]
	adds r0, r7, #0
	bl sub_0807CC3C
	cmp r0, #0
	bne _08064F84
	ldr r4, _08064F64 @ =gUnk_02002A40
	adds r0, r6, #0
	bl sub_08002632
	ldr r1, _08064F68 @ =0x00000141
	adds r4, r4, r1
	adds r0, r0, r4
	ldrb r4, [r0]
	cmp r4, #1
	bls _08064F6C
	movs r5, #3
	b _08064F7E
	.align 2, 0
_08064F60: .4byte gUnk_0810FC50
_08064F64: .4byte gUnk_02002A40
_08064F68: .4byte 0x00000141
_08064F6C:
	movs r0, #0xc
	bl GetInventoryValue
	movs r5, #2
	cmp r0, #0
	bne _08064F7E
	rsbs r0, r4, #0
	orrs r0, r4
	lsrs r5, r0, #0x1f
_08064F7E:
	movs r4, #1
	rsbs r4, r4, #0
	b _08064FD2
_08064F84:
	movs r0, #0x3a
	bl GetProgressFlag
	cmp r0, #0
	bne _08064FCE
	ldr r0, _08064FB0 @ =gUnk_02002A40
	ldr r1, _08064FB4 @ =0x00000117
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x64
	subs r4, r0, r1
	cmp r4, #0
	bgt _08064FB8
	movs r5, #8
	movs r4, #0
	movs r0, #0x3a
	bl sub_0807CD04
	movs r0, #1
	mov r1, r8
	str r0, [r1, #0x14]
	b _08064FD2
	.align 2, 0
_08064FB0: .4byte gUnk_02002A40
_08064FB4: .4byte 0x00000117
_08064FB8:
	movs r5, #7
	cmp r4, #9
	ble _08064FC0
	movs r5, #6
_08064FC0:
	cmp r4, #0x27
	ble _08064FC6
	movs r5, #5
_08064FC6:
	cmp r4, #0x45
	ble _08064FD2
	movs r5, #4
	b _08064FD2
_08064FCE:
	movs r5, #8
	movs r4, #0
_08064FD2:
	ldr r2, _08065008 @ =gUnk_0810FC08
	ldrb r1, [r6, #0xa]
	lsls r0, r1, #3
	adds r0, r0, r1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r6, #0
	bl TextboxNoOverlap
	cmp r4, #0
	ble _08064FF4
	ldr r1, _0806500C @ =gTextBox
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1, #0x10]
_08064FF4:
	adds r0, r7, #0
	bl sub_0807CC3C
	cmp r0, #0
	bne _08065010
	adds r0, r7, #0
	bl sub_0807CD10
	b _08065016
	.align 2, 0
_08065008: .4byte gUnk_0810FC08
_0806500C: .4byte gTextBox
_08065010:
	adds r0, r7, #0
	bl sub_0807CD8C
_08065016:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0806501C
sub_0806501C: @ 0x0806501C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806504A
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r1, #6
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _08065042
	movs r1, #0xa
_08065042:
	adds r0, r2, #0
	bl LoadAnimation
	b _08065050
_0806504A:
	adds r0, r2, #0
	bl sub_08064EE8
_08065050:
	pop {pc}
	.align 2, 0
