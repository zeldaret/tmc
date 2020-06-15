	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

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
	bl InitAnimationForceUpdate
	b _08068F78
_08068F72:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
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
