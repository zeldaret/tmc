	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0802B204
sub_0802B204: @ 0x0802B204
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #6
	bl sub_080044EC
	cmp r0, #1
	bne _0802B232
	movs r0, #0x22
	movs r1, #1
	bl CreateEnemy
	adds r4, r0, #0
	cmp r4, #0
	beq _0802B22E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA24
	ldr r0, [r5, #0x50]
	str r0, [r4, #0x50]
_0802B22E:
	bl sub_0805E780
_0802B232:
	pop {r4, r5, pc}