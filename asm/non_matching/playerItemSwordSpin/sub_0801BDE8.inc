	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x1e]
	ldrb r1, [r4, #0xe]
	subs r0, r0, r1
	ldrb r1, [r4, #0xf]
	adds r0, r0, r1
	ldrb r1, [r4, #0x1e]
	cmp r0, r1
	beq _0801BE0A
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_0801BE0A:
	ldrb r1, [r5, #0x18]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ldrb r0, [r5, #0x14]
	lsrs r0, r0, #1
	movs r2, #1
	ands r0, r2
	eors r1, r0
	lsls r1, r1, #6
	ldrb r2, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r1, _0801BE34 @ =gPlayerEntity
	adds r0, r4, #0
	bl sub_08078E84
	pop {r4, r5, pc}
	.align 2, 0
_0801BE34: .4byte gPlayerEntity
	.syntax divided
