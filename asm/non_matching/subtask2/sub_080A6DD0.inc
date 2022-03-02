	.syntax unified
	push {lr}
	bl sub_08056338
	cmp r0, #0
	beq _080A65CC
	cmp r0, #1
	beq _080A65D8
	b _080A65EA
_080A65CC:
	ldr r1, _080A65D4 @ =gMenu
	movs r0, #2
	b _080A65DC
	.align 2, 0
_080A65D4: .4byte gMenu
_080A65D8:
	ldr r1, _080A65ECEU @ =gMenu
	movs r0, #3
_080A65DC:
	strb r0, [r1]
	movs r0, #1
	cmp r0, #0
	beq _080A65EA
	movs r0, #3
	bl SetMenuType
_080A65EA:
	pop {pc}
	.align 2, 0
_080A65ECEU: .4byte gMenu
	.syntax divided
