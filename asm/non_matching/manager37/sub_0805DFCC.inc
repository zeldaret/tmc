	.syntax unified
	push {lr}
	ldr r0, _0805DFE4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805DFE0
	movs r0, #0x1c
	bl ClearGlobalFlag
	bl sub_0805E094
_0805DFE0:
	pop {pc}
	.align 2, 0
_0805DFE4: .4byte gFadeControl
	.syntax divided
