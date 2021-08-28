	.syntax unified
	push {lr}
	movs r0, #9
	movs r1, #0xf
	movs r2, #6
	bl FindEntityByID
	cmp r0, #0
	beq _0805928C
	bl ManagerF_Main
_0805928C:
	pop {pc}
	.align 2, 0
	.syntax divided
