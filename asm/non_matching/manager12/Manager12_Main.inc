	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08059A20
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	ldr r1, _08059A28 @ =sub_08059A2C
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
_08059A20:
	adds r0, r4, #0
	bl sub_08059A58
	pop {r4, pc}
	.align 2, 0
_08059A28: .4byte sub_08059A2C
	.syntax divided
