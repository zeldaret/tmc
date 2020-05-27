	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080AD670
sub_080AD670: @ 0x080AD670
	push {lr}
	sub sp, #0x14
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r0, [sp]
	mov r1, sp
	movs r2, #0
	movs r0, #0x78
	strh r0, [r1, #8]
	movs r0, #0x48
	strh r0, [r1, #0xa]
	mov r0, sp
	strh r2, [r0, #0x10]
	mov r2, sp
	ldr r0, _080AD6A4 @ =gUnk_02000080
	ldr r0, [r0, #0x2c]
	strh r0, [r1, #0xc]
	strh r0, [r2, #0xe]
	ldr r1, _080AD6A8 @ =gBgControls
	mov r0, sp
	movs r2, #1
	bl BgAffineSet
	add sp, #0x14
	pop {pc}
	.align 2, 0
_080AD6A4: .4byte gUnk_02000080
_080AD6A8: .4byte gBgControls
