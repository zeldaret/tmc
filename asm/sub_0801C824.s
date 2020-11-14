	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801C824
sub_0801C824: @ 0x0801C824
	push {lr}
	ldr r1, _0801C850 @ =gUnk_0200AF00
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0801C84E
	movs r2, #0
	strb r2, [r1, #6]
	ldrb r0, [r1, #4]
	ldr r1, _0801C854 @ =gUnk_02034D30
	cmp r0, #0x28
	bls _0801C83C
	adds r1, #0x40
_0801C83C:
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	ldr r1, _0801C858 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_0801C84E:
	pop {pc}
	.align 2, 0
_0801C850: .4byte gUnk_0200AF00
_0801C854: .4byte gUnk_02034D30
_0801C858: .4byte gScreen
