	.syntax unified
	push {lr}
	movs r1, #0
	ldr r0, _080A3B6C @ =gSave
	ldr r3, _080A3B70 @ =0x0000012B
	adds r2, r0, r3
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A3B66
_080A3B58:
	adds r1, #1
	cmp r1, #0x12
	bhi _080A3B66
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A3B58
_080A3B66:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0
_080A3B6C: .4byte gSave
_080A3B70: .4byte 0x0000012B
	.syntax divided
