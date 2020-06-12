	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


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
	bl InitializeAnimation
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
	bl LoadAnimation
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
	bl UpdateFuseInteraction
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
	bl CreateFx
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
	bl CheckLocalFlag
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
	ldr r2, _08068EAC @ =gLinkState
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
_08068EAC: .4byte gLinkState
_08068EB0: .4byte gUnk_08111740

	thumb_func_start sub_08068EB4
sub_08068EB4: @ 0x08068EB4
	ldr r0, _08068EC0 @ =gLinkState
	adds r0, #0xab
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08068EC0: .4byte gLinkState

	thumb_func_start sub_08068EC4
sub_08068EC4: @ 0x08068EC4
	push {r4, lr}
	adds r3, r1, #0
	ldr r2, _08068EEC @ =gUnk_08111740
	ldrb r4, [r0, #0xe]
	lsls r1, r4, #2
	adds r1, r1, r2
	ldr r0, _08068EF0 @ =gLinkState
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
_08068EF0: .4byte gLinkState
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
	bl LoadAnimation
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
