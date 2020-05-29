	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_080A3B84
sub_080A3B84: @ 0x080A3B84
	push {r4, r5, lr}
	ldr r4, _080A3BC4 @ =gUnk_030010A0
	adds r4, #0x2c
	movs r5, #0
	movs r0, #2
	strb r0, [r4]
	bl sub_080AD90C
	ldr r1, _080A3BC8 @ =gUnk_081280C4
	ldr r0, _080A3BCC @ =gUnk_02000080
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080A3B74
	bl sub_080A4054
	bl sub_0801C1D4
	bl sub_0801C208
	bl sub_0805E5C0
	bl sub_080AD9B0
	bl sub_080AD918
	strb r5, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_080A3BC4: .4byte gUnk_030010A0
_080A3BC8: .4byte gUnk_081280C4
_080A3BCC: .4byte gUnk_02000080