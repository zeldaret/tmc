	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08058E60
sub_08058E60: @ 0x08058E60
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08058E80
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08058E80
	adds r0, r4, #0
	bl sub_0805E900
	b _08058EC8
_08058E80:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _08058EC8
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08058E9E
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r0, #0xff
	bl sub_08078A90
	bl sub_08078B48
_08058E9E:
	ldrh r1, [r4, #0x3a]
	movs r2, #0x3a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08058EC4
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08058EB4
	bl PlaySFX
_08058EB4:
	ldrb r0, [r4, #0xa]
	bl GetCurrentRoomProperty
	bl LoadRoomEntityList
	bl DeleteThisEntity
	b _08058EC8
_08058EC4:
	subs r0, r1, #1
	strh r0, [r4, #0x3a]
_08058EC8:
	pop {r4, pc}
	.align 2, 0
