	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08067790
sub_08067790: @ 0x08067790
	push {lr}
	ldrb r2, [r0, #0xa]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _080677AC @ =gSave
	ldrb r2, [r2, #8]
	lsls r2, r2, #3
	ldr r3, _080677B0 @ =gUnk_08110EF8
	adds r2, r2, r3
	adds r1, r1, r2
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_080677AC: .4byte gSave
_080677B0: .4byte gUnk_08110EF8
