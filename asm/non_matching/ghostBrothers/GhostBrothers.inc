	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08065BBA
	adds r0, r4, #0
	bl sub_08065C0C
	b _08065BEA
_08065BBA:
	ldr r1, _08065BEC @ =gUnk_08110164
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bhi _08065BEA
	ldr r2, _08065BF0 @ =gUnk_0811015C
	ldrb r0, [r4, #0xf]
	adds r1, r0, #1
	strb r1, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x36]
_08065BEA:
	pop {r4, pc}
	.align 2, 0
_08065BEC: .4byte gUnk_08110164
_08065BF0: .4byte gUnk_0811015C
	.syntax divided
