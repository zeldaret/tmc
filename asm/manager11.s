	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080599B8
sub_080599B8: @ 0x080599B8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080599D6
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _080599EA
	bl DeleteThisEntity
	b _080599EA
_080599D6:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _080599EA
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	bl DeleteThisEntity
_080599EA:
	pop {r4, pc}
