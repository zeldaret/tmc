	.syntax unified
	push {lr}
	bl sub_0805E5A8
	ldr r0, _0805E0A4 @ =gUnk_0813AC34
	movs r1, #7
	bl sub_0808091C
	pop {pc}
	.align 2, 0
_0805E0A4: .4byte gUnk_0813AC34
	.syntax divided
