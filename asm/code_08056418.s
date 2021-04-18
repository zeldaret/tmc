	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08057044
sub_08057044: @ 0x08057044
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r4, r2, #0
	mov r1, sp
	bl sub_08056FEC
	ldr r2, [sp]
	movs r1, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	lsls r2, r1
	orrs r2, r4
	str r2, [r5]
	add sp, #8
	pop {r4, r5, pc}
