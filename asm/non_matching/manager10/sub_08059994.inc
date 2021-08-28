	.syntax unified
	push {lr}
	bl sub_0805986C
	cmp r0, #0
	beq _080599AE
	movs r0, #0x5b
	bl LoadPaletteGroup
	ldr r0, _080599B0 @ =gArea
	ldr r1, _080599B4 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x1e
	str r1, [r0]
_080599AE:
	pop {pc}
	.align 2, 0
_080599B0: .4byte gArea
_080599B4: .4byte 0x00000864
	.syntax divided
