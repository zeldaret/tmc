	.syntax unified

	.text
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r2, r0, #0
	adds r2, #0x3c
	adds r2, r2, r1
	ldr r3, [r2]
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	strb r0, [r3, #0x14]
	ldr r0, [r2]
	ldrb r0, [r0, #0x14]
	bx lr
	.syntax divided
