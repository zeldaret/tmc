	.syntax unified
	push {lr}
	ldr r0, _080A5BE4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A5BE2
	bl sub_08050384
	ldr r1, _080A5BE8 @ =gMain
	ldrb r0, [r1, #1]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #6
	movs r1, #8
	bl SetFade
	movs r0, #2
	bl sub_080A4E84
	ldr r1, _080A5BEC @ =gUnk_02034490
	movs r0, #0x10
	strb r0, [r1, #0x16]
_080A5BE2:
	pop {pc}
	.align 2, 0
_080A5BE4: .4byte gFadeControl
_080A5BE8: .4byte gMain
_080A5BEC: .4byte gUnk_02034490
	.syntax divided
