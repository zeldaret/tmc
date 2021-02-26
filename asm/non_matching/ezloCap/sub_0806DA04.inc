    .syntax unified
	.text

	push {lr}
	ldr r3, [r1, #4]
	lsls r3, r3, #3
	ldr r1, _0806DA18 @ =gUnk_0811415C
	adds r3, r3, r1
	ldrb r2, [r3, #4]
	movs r1, #1
	bl sub_08078850
	pop {pc}
	.align 2, 0
_0806DA18: .4byte gUnk_0811415C
    .syntax divided