	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080A7110 @ =gUnk_0200AF34
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r4, #0
	bl MemClear
	adds r2, r4, #0
	subs r2, #0x34
	movs r0, #0x7f
	strb r0, [r2, #0x13]
	strb r0, [r2, #0x14]
	ldrb r0, [r5]
	strh r0, [r2, #0x16]
	movs r0, #1
	ldrsb r0, [r5, r0]
	strh r0, [r2, #0x1c]
	ldrb r1, [r5, #2]
	subs r0, r4, #4
	strb r1, [r0]
	ldrb r0, [r5, #3]
	strh r0, [r2, #0x18]
	movs r0, #4
	ldrsb r0, [r5, r0]
	strh r0, [r2, #0x1e]
	ldrb r1, [r5, #5]
	subs r0, r4, #3
	strb r1, [r0]
	ldrb r0, [r5, #6]
	strh r0, [r2, #0x1a]
	movs r0, #7
	ldrsb r0, [r5, r0]
	strh r0, [r2, #0x20]
	ldrb r0, [r5, #8]
	subs r4, #2
	strb r0, [r4]
	adds r5, #9
	movs r4, #1
	rsbs r4, r4, #0
_080A70FC:
	ldrb r0, [r5]
	ldrb r1, [r5, #1]
	bl sub_0801CA6C
	adds r5, #2
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, r4
	bne _080A70FC
	pop {r4, r5, pc}
	.align 2, 0
_080A7110: .4byte gUnk_0200AF34
	.syntax divided
