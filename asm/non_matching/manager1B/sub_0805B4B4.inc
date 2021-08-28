	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	bl sub_0805B4D0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0805B4C8
	bl sub_0806D0F8
_0805B4C8:
	adds r0, r4, #0
	bl Manager1B_Main
	pop {r4, pc}
	.syntax divided
