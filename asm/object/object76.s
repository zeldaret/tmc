	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object76
Object76: @ 0x0808C94C
	push {lr}
	ldr r2, _0808C960 @ =gUnk_08121678
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808C960: .4byte gUnk_08121678
