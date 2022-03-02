	.syntax unified
	push {lr}
	ldr r0, _080A6670 @ =gUnk_08128E84
	bl sub_080A70AC
	ldr r0, _080A6674 @ =gUnk_02034490
	ldrb r0, [r0, #6]
	ldr r1, _080A6678 @ =gMenu
	strb r0, [r1, #3]
	bl sub_080A67C4
	bl sub_080A68D4
	movs r0, #1
	bl SetMenuType
	pop {pc}
	.align 2, 0
_080A6670: .4byte gUnk_08128E84
_080A6674: .4byte gUnk_02034490
_080A6678: .4byte gMenu
	.syntax divided
