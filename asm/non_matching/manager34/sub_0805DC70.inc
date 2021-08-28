	.syntax unified
	push {lr}
	bl sub_0805E5A8
	ldr r0, _0805DC80 @ =gUnk_0813AC48
	bl DoExitTransition
	pop {pc}
	.align 2, 0
_0805DC80: .4byte gUnk_0813AC48
	.syntax divided
