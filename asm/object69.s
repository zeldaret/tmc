	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08094A0C
sub_08094A0C: @ 0x08094A0C
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08094A3E
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08094A34
	movs r0, #1
	strb r0, [r2, #0xc]
	ldr r0, _08094A30 @ =gUnk_080FD170
	str r0, [r2, #0x48]
	adds r0, r2, #0
	bl sub_0807DD50
	b _08094A42
	.align 2, 0
_08094A30: .4byte gUnk_080FD170
_08094A34:
	adds r0, r2, #0
	movs r1, #0
	bl sub_0807DD94
	b _08094A42
_08094A3E:
	movs r0, #1
	strb r0, [r2, #0xc]
_08094A42:
	pop {pc}
