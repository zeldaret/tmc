	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08049CAC
sub_08049CAC: @ 0x08049CAC
	push {lr}
	adds r2, r0, #0
	ldr r1, _08049CC8 @ =gUnk_080D2ABC
	ldrb r0, [r2, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08049CCC
	adds r0, r2, #0
	bl _call_via_r1
	b _08049CD0
	.align 2, 0
_08049CC8: .4byte gUnk_080D2ABC
_08049CCC:
	bl DeleteThisEntity
_08049CD0:
	pop {pc}
	.align 2, 0
