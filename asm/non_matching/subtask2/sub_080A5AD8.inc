	.syntax unified
	push {lr}
	ldr r1, _080A5AEC @ =gUnk_08128D24
	ldr r0, _080A5AF0 @ =gMenu
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080A5AEC: .4byte gUnk_08128D24
_080A5AF0: .4byte gMenu
	.syntax divided
