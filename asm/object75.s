	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0808C934
sub_0808C934: @ 0x0808C934
	push {lr}
	ldr r2, _0808C948 @ =gUnk_08121670
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808C948: .4byte gUnk_08121670
