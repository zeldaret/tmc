.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0804A720
	movs r4, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	bl Random
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r1, [r0]
	adds r0, #0x3b
	strb r1, [r0]
	adds r0, #2
	strb r4, [r0]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0801F484
	movs r0, #3
	strb r0, [r5, #0xc]
	movs r0, #0x1e
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #2
	bl InitializeAnimation
_0801F484:
	pop {r4, r5, pc}
	.align 2, 0
.syntax divided
