
	.syntax unified

	.text


	push {r4, r5, lr}
	adds r3, r0, #0
	movs r4, #1
	cmp r1, #0
	beq _08024C60
	movs r0, #3
	bl sub_08049DF4
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	b _08024C78
_08024C60:
	ldr r2, [r3, #0x54]
	cmp r2, #0
	beq _08024C74
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _08024C74
	movs r5, #0x36
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08024C78
_08024C74:
	str r1, [r3, #0x54]
	movs r4, #0
_08024C78:
	adds r0, r4, #0
	pop {r4, r5, pc}

	.syntax divided
