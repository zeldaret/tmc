	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xc
	bl IsItemEquipped
	cmp r0, #1
	beq _0801B820
	cmp r0, #1
	blo _0801B81C
	cmp r0, #2
	beq _0801B824
	b _0801B826
_0801B81C:
	movs r4, #1
	b _0801B826
_0801B820:
	movs r4, #2
	b _0801B826
_0801B824:
	movs r4, #0
_0801B826:
	ldr r3, _0801B850 @ =gPlayerState
	adds r0, r3, #0
	adds r0, #0x90
	ldrh r0, [r0]
	ands r4, r0
	cmp r4, #0
	bne _0801B854
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	ldrb r2, [r3, #0xa]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	ands r1, r0
	strb r1, [r3, #0xb]
	b _0801B862
	.align 2, 0
_0801B850: .4byte gPlayerState
_0801B854:
	ldrb r1, [r3, #0xa]
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r3, #0xa]
	ldrb r1, [r3, #0xb]
	orrs r0, r1
	strb r0, [r3, #0xb]
_0801B862:
	pop {r4, r5, pc}
	.syntax divided
