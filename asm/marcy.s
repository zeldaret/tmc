	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08062CF0
sub_08062CF0: @ 0x08062CF0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08062D0C
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD64
_08062D0C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08062D18
sub_08062D18: @ 0x08062D18
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	movs r0, #0x4f
	bl GetInventoryValue
	cmp r0, #0
	beq _08062D36
	movs r0, #0x26
	bl CheckLocalFlag
	cmp r0, #0
	bne _08062D36
	movs r4, #7
_08062D36:
	movs r0, #0x4e
	bl GetInventoryValue
	cmp r0, #0
	beq _08062D4C
	movs r0, #0x25
	bl CheckLocalFlag
	cmp r0, #0
	bne _08062D4C
	movs r4, #6
_08062D4C:
	movs r0, #0x4d
	bl GetInventoryValue
	cmp r0, #0
	beq _08062D62
	movs r0, #0x24
	bl CheckLocalFlag
	cmp r0, #0
	bne _08062D62
	movs r4, #5
_08062D62:
	movs r0, #0x4c
	bl GetInventoryValue
	cmp r0, #0
	beq _08062D78
	movs r0, #0x23
	bl CheckLocalFlag
	cmp r0, #0
	bne _08062D78
	movs r4, #4
_08062D78:
	movs r0, #0x4b
	bl GetInventoryValue
	cmp r0, #0
	beq _08062D8E
	movs r0, #0x22
	bl CheckLocalFlag
	cmp r0, #0
	bne _08062D8E
	movs r4, #3
_08062D8E:
	movs r0, #0x4a
	bl GetInventoryValue
	cmp r0, #0
	beq _08062DA4
	movs r0, #0x21
	bl CheckLocalFlag
	cmp r0, #0
	bne _08062DA4
	movs r4, #2
_08062DA4:
	movs r0, #0x49
	bl GetInventoryValue
	cmp r0, #0
	beq _08062DBA
	movs r0, #0x20
	bl CheckLocalFlag
	cmp r0, #0
	bne _08062DBA
	movs r4, #1
_08062DBA:
	strb r4, [r5, #0xb]
	movs r4, #0
	ldr r0, _08062DCC @ =0x00001C1F
	bl CheckFlags
	cmp r0, #0
	beq _08062DD0
	movs r4, #1
	b _08062DF0
	.align 2, 0
_08062DCC: .4byte 0x00001C1F
_08062DD0:
	movs r0, #0x8c
	bl CheckLocalFlag
	cmp r0, #0
	beq _08062DE4
	movs r4, #2
	movs r0, #0x8c
	bl ClearLocalFlag
	b _08062DF0
_08062DE4:
	movs r0, #0x8b
	bl CheckLocalFlag
	cmp r0, #0
	beq _08062DF0
	movs r4, #3
_08062DF0:
	ldr r0, _08062E08 @ =gUnk_0810C34C
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	cmp r4, #0
	bne _08062E0C
	movs r0, #1
	b _08062E0E
	.align 2, 0
_08062E08: .4byte gUnk_0810C34C
_08062E0C:
	movs r0, #0
_08062E0E:
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08062E14
sub_08062E14: @ 0x08062E14
	push {lr}
	movs r0, #0x8b
	bl SetLocalFlag
	pop {pc}
	.align 2, 0
