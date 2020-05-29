	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806A080
sub_0806A080: @ 0x0806A080
	push {lr}
	ldrb r2, [r0, #0xb]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _0806A09C @ =gUnk_02002A40
	ldrb r2, [r2, #8]
	lsls r2, r2, #3
	ldr r3, _0806A0A0 @ =gUnk_08111E34
	adds r2, r2, r3
	adds r1, r1, r2
	bl sub_0806F1AC
	pop {pc}
	.align 2, 0
_0806A09C: .4byte gUnk_02002A40
_0806A0A0: .4byte gUnk_08111E34