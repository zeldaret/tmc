	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x50]
	movs r2, #0
	movs r1, #2
	strb r1, [r5, #0xc]
	adds r3, r5, #0
	adds r3, #0x82
	movs r0, #1
	strb r0, [r3]
	strb r2, [r5, #0xf]
	strb r1, [r4, #0xc]
	movs r0, #0x30
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0x50
	strh r0, [r1]
	strh r2, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08049F84
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x1c
	ands r0, r1
	lsrs r1, r0, #2
	strb r1, [r5, #0x14]
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080AA3E0
	adds r0, r5, #0
	bl sub_080AA1D8
	pop {r4, r5, pc}
	.syntax divided
