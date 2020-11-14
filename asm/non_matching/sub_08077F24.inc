	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {lr}
	ldr r2, _08077F34 @ =gStats
	ldrb r3, [r0, #1]
	ldrb r0, [r2, #0xc]
	cmp r0, r3
	bne _08077F38
	movs r2, #1
	b _08077F42
	.align 2, 0
_08077F34: .4byte gStats
_08077F38:
	ldrb r0, [r2, #0xd]
	movs r2, #0
	cmp r0, r3
	bne _08077F42
	movs r2, #2
_08077F42:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08077F4C
	movs r0, #1
_08077F4C:
	pop {pc}
	.align 2, 0
    .syntax divided
