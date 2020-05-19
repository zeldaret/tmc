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


	thumb_func_start sub_0801D6E0
sub_0801D6E0: @ 0x0801D6E0
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2]
	adds r3, r1, #0
	bics r3, r0
	strh r3, [r2, #2]
	cmp r1, r0
	bne _0801D70A
	ldrb r0, [r2, #7]
	subs r0, #1
	strb r0, [r2, #7]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D704
	movs r0, #4
	strb r0, [r2, #7]
	strh r1, [r2, #4]
	b _0801D710
_0801D704:
	movs r0, #0
	strh r0, [r2, #4]
	b _0801D710
_0801D70A:
	movs r0, #0x14
	strb r0, [r2, #7]
	strh r3, [r2, #4]
_0801D710:
	strh r1, [r2]
	pop {pc}
