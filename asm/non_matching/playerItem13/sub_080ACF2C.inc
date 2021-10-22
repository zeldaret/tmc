	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	ldr r0, _080ACF60 @ =gUnk_081320E4
	str r0, [r4, #0x48]
	ldr r5, [r4, #0x54]
	adds r6, r5, #0
	cmp r5, #0
	beq _080ACF64
	ldr r0, [r5, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	ldr r0, [r5, #0x34]
	str r0, [r4, #0x34]
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrb r0, [r5, #0x16]
	strb r0, [r4, #0x16]
	b _080ACFB6
	.align 2, 0
_080ACF60: .4byte gUnk_081320E4
_080ACF64:
	adds r5, r4, #0
	str r4, [r4, #0x54]
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r3, _080ACFC8 @ =gUnk_081320B8
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #1]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r6, [r4, #0x16]
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #2]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
	bl sub_08078D60
_080ACFB6:
	ldrb r1, [r5, #8]
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0]
	ldrb r1, [r5, #9]
	adds r0, #2
	strh r1, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_080ACFC8: .4byte gUnk_081320B8
	.syntax divided
