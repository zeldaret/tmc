
	.syntax unified

	.text

	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #6
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x81
	strb r0, [r1]
	ldr r0, [r4, #0x7c]
	ldrb r0, [r0, #8]
	cmp r0, #0x6c
	beq _08029252
	cmp r0, #0x6c
	bgt _08029252
	cmp r0, #0x1c
	bne _08029252
	movs r0, #0x5a
	bl SetGlobalFlag
_08029252:
	adds r0, r4, #0
	movs r1, #3
	bl sub_080290E0
	pop {r4, pc}

	.syntax divided
