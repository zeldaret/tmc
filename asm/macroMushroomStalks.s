	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start MacroMushromStalks
MacroMushromStalks: @ 0x0808C91C
	push {lr}
	ldr r2, _0808C930 @ =gUnk_08121668
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808C930: .4byte gUnk_08121668
