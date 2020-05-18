	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ReadKeyInput
ReadKeyInput: @ 0x0801D6C0
	push {lr}
	ldr r0, _0801D6D4 @ =0x04000130
	ldrh r0, [r0]
	ldr r1, _0801D6D8 @ =0x000003FF
	bics r1, r0
	ldr r0, _0801D6DC @ =gUnk_03000FF0
	bl sub_0801D6E0
	pop {pc}
	.align 2, 0
_0801D6D4: .4byte 0x04000130
_0801D6D8: .4byte 0x000003FF
_0801D6DC: .4byte gUnk_03000FF0
