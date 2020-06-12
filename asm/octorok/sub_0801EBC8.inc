	.include "asm/macros.inc"

	.include "constants/constants.inc"
	
	.text
	
	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804A720
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0801EBDE
	bl Random
	movs r1, #3
	ands r0, r1
_0801EBDE:
	strb r0, [r4, #0x14]
	movs r0, #0x12
	strb r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0801ECFC
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, pc}
	.syntax divided
	