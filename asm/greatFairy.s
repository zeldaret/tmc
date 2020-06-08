	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08086BA0
sub_08086BA0: @ 0x08086BA0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #7
	movs r2, #0
	bl sub_080873AC
	adds r1, r0, #0
	cmp r1, #0
	beq _08086BC2
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r4, #0
	movs r2, #0
	bl PositionRelative
	movs r0, #3
	strb r0, [r4, #0xc]
_08086BC2:
	pop {r4, pc}

	thumb_func_start sub_08086BC4
sub_08086BC4: @ 0x08086BC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08086C10 @ =gUnk_02034350
	ldr r0, [r0, #0x68]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08086C0C
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_080873AC
	adds r1, r0, #0
	cmp r1, #0
	beq _08086C0C
	adds r0, r4, #0
	bl CopyPosition
	movs r0, #6
	movs r1, #4
	bl DoFade
	ldr r0, _08086C14 @ =0x00000145
	bl PlaySFX
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x40
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_08086C0C:
	pop {r4, pc}
	.align 2, 0
_08086C10: .4byte gUnk_02034350
_08086C14: .4byte 0x00000145

	thumb_func_start sub_08086C18
sub_08086C18: @ 0x08086C18
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	adds r5, r0, #0
	cmp r5, #0
	beq _08086C2E
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08086C52
_08086C2E:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080873AC
	adds r1, r0, #0
	cmp r1, #0
	beq _08086C52
	ldr r3, _08086C54 @ =0xFFEC0000
	adds r0, r4, #0
	movs r2, #0
	bl PositionRelative
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
_08086C52:
	pop {r4, r5, pc}
	.align 2, 0
_08086C54: .4byte 0xFFEC0000

	thumb_func_start sub_08086C58
sub_08086C58: @ 0x08086C58
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08086C68
	subs r0, #1
	strb r0, [r4, #0xe]
	b _08086C90
_08086C68:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08086C90
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	bl sub_080873AC
	adds r5, r0, #0
	cmp r5, #0
	beq _08086C90
	ldr r3, _08086C98 @ =0xFFB40000
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl PositionRelative
	str r4, [r5, #0x50]
	movs r0, #1
	strb r0, [r4, #0xf]
_08086C90:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, r5, pc}
	.align 2, 0
_08086C98: .4byte 0xFFB40000

	thumb_func_start sub_08086C9C
sub_08086C9C: @ 0x08086C9C
	push {lr}
	ldr r2, _08086CB0 @ =gGreatFairyWings
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08086CB0: .4byte gGreatFairyWings

	thumb_func_start sub_08086CB4
sub_08086CB4: @ 0x08086CB4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08087380
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldr r1, _08086D10 @ =gLCDControls
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xf4
	lsls r0, r0, #4
	strh r0, [r2]
	adds r1, #0x68
	ldr r0, _08086D14 @ =0x00000809
	strh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r4, #0x24]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	pop {r4, pc}
	.align 2, 0
_08086D10: .4byte gLCDControls
_08086D14: .4byte 0x00000809

	thumb_func_start sub_08086D18
sub_08086D18: @ 0x08086D18
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #0x24]
	subs r0, #0x20
	strh r0, [r3, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bne _08086D58
	movs r0, #2
	strb r0, [r3, #0xc]
	adds r0, r3, #0
	bl sub_0805EC60
	ldr r2, _08086D50 @ =gUnk_02034350
	ldr r0, [r2, #0x68]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2, #0x68]
	ldr r2, _08086D54 @ =gUnk_02033280
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	b _08086D64
	.align 2, 0
_08086D50: .4byte gUnk_02034350
_08086D54: .4byte gUnk_02033280
_08086D58:
	movs r0, #0x24
	ldrsh r1, [r3, r0]
	adds r0, r3, #0
	movs r3, #0
	bl sub_0805EC9C
_08086D64:
	pop {pc}
	.align 2, 0

	thumb_func_start nullsub_116
nullsub_116: @ 0x08086D68
	bx lr
	.align 2, 0

	thumb_func_start sub_08086D6C
sub_08086D6C: @ 0x08086D6C
	push {lr}
	ldr r2, _08086D80 @ =gUnk_08120734
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08086D80: .4byte gUnk_08120734

	thumb_func_start sub_08086D84
sub_08086D84: @ 0x08086D84
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08087380
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_08086DAC
sub_08086DAC: @ 0x08086DAC
	push {lr}
	bl sub_08004274
	pop {pc}

	thumb_func_start sub_08086DB4
sub_08086DB4: @ 0x08086DB4
	push {lr}
	ldr r2, _08086DC8 @ =gGreatFairyWake
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08086DC8: .4byte gGreatFairyWake

	thumb_func_start sub_08086DCC
sub_08086DCC: @ 0x08086DCC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #4
	movs r2, #0
	bl sub_080873AC
	adds r4, r0, #0
	cmp r4, #0
	beq _08086E00
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	str r5, [r4, #0x50]
	adds r0, r5, #0
	bl sub_08087380
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	movs r0, #0
	strb r0, [r5, #0xf]
_08086E00:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08086E04
sub_08086E04: @ 0x08086E04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldr r0, [r4, #0x34]
	ldr r1, _08086E2C @ =0xFFFF8000
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08086E34
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r0, _08086E30 @ =0x00000141
	bl PlaySFX
	b _08086E62
	.align 2, 0
_08086E2C: .4byte 0xFFFF8000
_08086E30: .4byte 0x00000141
_08086E34:
	movs r0, #0xa
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08086E62
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08086E62
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl sub_080873AC
	adds r1, r0, #0
	cmp r1, #0
	beq _08086E62
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r0, r4, #0
	movs r2, #0
	bl PositionRelative
	movs r0, #1
	strb r0, [r4, #0xf]
_08086E62:
	pop {r4, pc}

	thumb_func_start sub_08086E64
sub_08086E64: @ 0x08086E64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_080873D0
	ldr r0, _08086E88 @ =gUnk_02034350
	ldr r0, [r0, #0x68]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08086E84
	adds r0, r4, #0
	bl sub_0805E7BC
_08086E84:
	pop {r4, pc}
	.align 2, 0
_08086E88: .4byte gUnk_02034350

	thumb_func_start sub_08086E8C
sub_08086E8C: @ 0x08086E8C
	push {lr}
	ldr r2, _08086EA0 @ =gGreatFairyMiniAnim
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08086EA0: .4byte gGreatFairyMiniAnim

	thumb_func_start sub_08086EA4
sub_08086EA4: @ 0x08086EA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08087380
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08086ED0
sub_08086ED0: @ 0x08086ED0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08086F0C
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x24]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
_08086F0C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08086F10
sub_08086F10: @ 0x08086F10
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08086F3C
	ldr r2, _08086F38 @ =gUnk_02034350
	ldr r0, [r2, #0x68]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x68]
	movs r0, #3
	strb r0, [r3, #0xc]
	adds r0, r3, #0
	bl sub_0805EC60
	b _08086F52
	.align 2, 0
_08086F38: .4byte gUnk_02034350
_08086F3C:
	ldrh r2, [r3, #0x24]
	subs r2, #0x18
	strh r2, [r3, #0x24]
	movs r1, #0x80
	lsls r1, r1, #1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	adds r0, r3, #0
	movs r3, #0
	bl sub_0805EC9C
_08086F52:
	pop {pc}

	thumb_func_start sub_08086F54
sub_08086F54: @ 0x08086F54
	push {lr}
	ldr r2, _08086F68 @ =gGreatFairyDrip
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08086F68: .4byte gGreatFairyDrip

	thumb_func_start sub_08086F6C
sub_08086F6C: @ 0x08086F6C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08087380
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0
	strh r0, [r4, #0x36]
	adds r4, #0x29
	ldrb r1, [r4]
	subs r0, #8
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0xa0
	lsls r0, r0, #1
	bl PlaySFX
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08086FA0
sub_08086FA0: @ 0x08086FA0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08086FBC
	adds r0, r4, #0
	bl sub_0805E7BC
_08086FBC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08086FC0
sub_08086FC0: @ 0x08086FC0
	push {lr}
	ldr r2, _08086FD4 @ =gGreatFairyRipple
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08086FD4: .4byte gGreatFairyRipple

	thumb_func_start sub_08086FD8
sub_08086FD8: @ 0x08086FD8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08087380
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_08087000
sub_08087000: @ 0x08087000
	push {lr}
	adds r2, r0, #0
	ldr r0, _08087018 @ =gUnk_02034350
	ldr r0, [r0, #0x68]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0808701C
	adds r0, r2, #0
	bl sub_0805E7BC
	b _08087022
	.align 2, 0
_08087018: .4byte gUnk_02034350
_0808701C:
	adds r0, r2, #0
	bl sub_08004274
_08087022:
	pop {pc}

	thumb_func_start sub_08087024
sub_08087024: @ 0x08087024
	push {lr}
	ldr r2, _08087038 @ =gGreatFairyBigRipple
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08087038: .4byte gGreatFairyBigRipple

	thumb_func_start sub_0808703C
sub_0808703C: @ 0x0808703C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08087380
	movs r0, #0x78
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x7c
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0xf9
	bl PlaySFX
	pop {r4, pc}

	thumb_func_start sub_0808706C
sub_0808706C: @ 0x0808706C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08087080
	subs r0, #1
	strb r0, [r4, #0xe]
	b _080870AA
_08087080:
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl sub_080873AC
	adds r1, r0, #0
	cmp r1, #0
	beq _080870AA
	ldr r3, _080870AC @ =0xFFF80000
	adds r0, r4, #0
	movs r2, #0
	bl PositionRelative
	ldr r2, _080870B0 @ =gUnk_02034350
	ldr r0, [r2, #0x68]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x68]
	adds r0, r4, #0
	bl sub_0805E7BC
_080870AA:
	pop {r4, pc}
	.align 2, 0
_080870AC: .4byte 0xFFF80000
_080870B0: .4byte gUnk_02034350

	thumb_func_start sub_080870B4
sub_080870B4: @ 0x080870B4
	push {lr}
	ldr r2, _080870C8 @ =gGreatFairyEnergy
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080870C8: .4byte gGreatFairyEnergy

	thumb_func_start sub_080870CC
sub_080870CC: @ 0x080870CC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08087380
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_080870F4
sub_080870F4: @ 0x080870F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08087110
	adds r0, r4, #0
	bl sub_0805E7BC
_08087110:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08087114
sub_08087114: @ 0x08087114
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08087134
	ldr r0, _08087130 @ =gGreatFairyInteract1
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _0808714A
	.align 2, 0
_08087130: .4byte gGreatFairyInteract1
_08087134:
	ldr r0, _0808714C @ =gGreatFairyInteract2
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_08004274
_0808714A:
	pop {r4, pc}
	.align 2, 0
_0808714C: .4byte gGreatFairyInteract2

	thumb_func_start sub_08087150
sub_08087150: @ 0x08087150
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08087380
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	strb r1, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	ldr r0, _080871A0 @ =gUnk_0812079C
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	lsls r0, r0, #4
	orrs r0, r1
	strb r0, [r4, #0x1a]
	pop {r4, pc}
	.align 2, 0
_080871A0: .4byte gUnk_0812079C

	thumb_func_start nullsub_516
nullsub_516: @ 0x080871A4
	bx lr
	.align 2, 0

	thumb_func_start sub_080871A8
sub_080871A8: @ 0x080871A8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080871CA
	movs r0, #3
	strb r0, [r1, #0xc]
	movs r0, #0x3c
	strb r0, [r1, #0xe]
	ldr r2, _080871CC @ =gUnk_02034350
	ldr r0, [r2, #0x68]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #0x68]
_080871CA:
	pop {pc}
	.align 2, 0
_080871CC: .4byte gUnk_02034350

	thumb_func_start sub_080871D0
sub_080871D0: @ 0x080871D0
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080871F0
	ldr r0, _080871F4 @ =gUnk_02034350
	ldr r1, [r0, #0x68]
	movs r2, #8
	orrs r1, r2
	str r1, [r0, #0x68]
	adds r0, r3, #0
	bl sub_0805E7BC
_080871F0:
	pop {pc}
	.align 2, 0
_080871F4: .4byte gUnk_02034350

	thumb_func_start sub_080871F8
sub_080871F8: @ 0x080871F8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x54]
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _0808721E
	movs r5, #0x32
	ldrsh r0, [r3, r5]
	subs r0, #0x20
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0808721E
	movs r0, #2
	strb r0, [r4, #0xc]
	b _0808723C
_0808721E:
	movs r5, #0x2e
	ldrsh r0, [r4, r5]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r5, #0x2e
	ldrsh r2, [r3, r5]
	movs r5, #0x32
	ldrsh r3, [r3, r5]
	subs r3, #0x20
	bl sub_080045D4
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F69C
_0808723C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08087240
sub_08087240: @ 0x08087240
	push {lr}
	adds r2, r0, #0
	ldr r0, _08087260 @ =gUnk_02034350
	ldr r0, [r0, #0x68]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0808725C
	movs r0, #3
	strb r0, [r2, #0xc]
	movs r0, #0x14
	strb r0, [r2, #0xe]
	movs r0, #0x10
	strb r0, [r2, #0x15]
_0808725C:
	pop {pc}
	.align 2, 0
_08087260: .4byte gUnk_02034350

	thumb_func_start sub_08087264
sub_08087264: @ 0x08087264
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _08087278
	subs r0, #1
	strb r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_0806F69C
_08087278:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808727C
sub_0808727C: @ 0x0808727C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08087292
	adds r0, r1, #0
	bl sub_0805E7BC
_08087292:
	pop {pc}

	thumb_func_start sub_08087294
sub_08087294: @ 0x08087294
	push {lr}
	ldr r2, _080872A8 @ =gUnk_081207A4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080872A8: .4byte gUnk_081207A4

	thumb_func_start sub_080872AC
sub_080872AC: @ 0x080872AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x1b]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r2, r0
	strb r2, [r4, #0x19]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x6a
	strh r0, [r1]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x20
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08087380
	pop {r4, pc}

	thumb_func_start sub_080872F8
sub_080872F8: @ 0x080872F8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	bl sub_08004274
	adds r2, r4, #0
	adds r2, #0x68
	ldrh r0, [r2]
	ldrh r1, [r4, #0x2e]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bhi _0808732A
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	ldrh r1, [r4, #0x32]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bls _0808735C
_0808732A:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	movs r5, #0
	ldrsh r2, [r2, r5]
	adds r3, r4, #0
	adds r3, #0x6a
	movs r5, #0
	ldrsh r3, [r3, r5]
	bl sub_080045D4
	strb r0, [r4, #0x15]
	bl Random
	ldr r2, _08087378 @ =gUnk_081207AC
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	ldrb r1, [r4, #0x15]
	adds r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4, #0x15]
_0808735C:
	ldr r1, _0808737C @ =gUnk_080C9160
	ldrb r0, [r4, #0xe]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	asrs r0, r0, #6
	subs r0, #8
	strh r0, [r4, #0x36]
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	pop {r4, r5, pc}
	.align 2, 0
_08087378: .4byte gUnk_081207AC
_0808737C: .4byte gUnk_080C9160

	thumb_func_start sub_08087380
sub_08087380: @ 0x08087380
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	movs r1, #0xb
	bl __modsi3
	strb r0, [r4, #0xb]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldrb r1, [r4, #0xb]
	adds r0, r4, #0
	bl UpdateSprite
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	pop {r4, pc}

	thumb_func_start sub_080873AC
sub_080873AC: @ 0x080873AC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	ldrb r0, [r0, #0xa]
	movs r4, #0xb
	movs r1, #0xb
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r5
	movs r0, #0x1b
	adds r2, r6, #0
	bl CreateObject
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080873D0
sub_080873D0: @ 0x080873D0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _080873DE
	subs r0, #1
	b _080873F6
_080873DE:
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl sub_080873AC
	adds r1, r0, #0
	cmp r1, #0
	beq _080873F8
	adds r0, r4, #0
	bl CopyPosition
	movs r0, #0x30
_080873F6:
	strb r0, [r4, #0xe]
_080873F8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080873FC
sub_080873FC: @ 0x080873FC
	push {lr}
	movs r0, #0xf7
	bl PlaySFX
	ldr r1, _0808740C @ =gRoomControls
	movs r0, #0
	str r0, [r1, #0x30]
	b _08087414
	.align 2, 0
_0808740C: .4byte gRoomControls
_08087410:
	bl sub_0805E7BC
_08087414:
	movs r0, #6
	movs r1, #0x1b
	movs r2, #6
	bl sub_0805EB00
	cmp r0, #0
	bne _08087410
	pop {pc}

	thumb_func_start sub_08087424
sub_08087424: @ 0x08087424
	push {r4, r5, lr}
	adds r5, r1, #0
	bl sub_080791D0
	movs r0, #0x64
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0808744E
	ldr r0, _0808745C @ =gLinkEntity
	str r0, [r4, #0x50]
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0808744E:
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _08087460
	cmp r1, #1
	beq _0808746C
	b _08087474
	.align 2, 0
_0808745C: .4byte gLinkEntity
_08087460:
	ldr r0, _08087468 @ =gUnk_02002A40
	adds r0, #0xad
	b _08087472
	.align 2, 0
_08087468: .4byte gUnk_02002A40
_0808746C:
	ldr r0, _08087478 @ =gUnk_02002A40
	adds r0, #0xac
	movs r1, #0
_08087472:
	strb r1, [r0]
_08087474:
	pop {r4, r5, pc}
	.align 2, 0
_08087478: .4byte gUnk_02002A40

	thumb_func_start sub_0808747C
sub_0808747C: @ 0x0808747C
	push {r4, lr}
	sub sp, #4
	adds r4, r1, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	movs r1, #0xf
	movs r2, #6
	movs r3, #0xb
	bl sub_0805EB2C
	cmp r0, #0
	beq _08087498
	movs r0, #1
_08087498:
	str r0, [r4, #0x14]
	add sp, #4
	pop {r4, pc}
	.align 2, 0