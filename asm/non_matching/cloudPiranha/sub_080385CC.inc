	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080387F0
	adds r0, r4, #0
	movs r1, #0x60
	bl sub_0803872C
	cmp r0, #0
	beq _08038604
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0xf]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0806FCAC
	strb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
	b _08038648
_08038604:
	ldrb r0, [r4, #0xf]
	subs r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038648
	movs r6, #0x10
	strb r6, [r4, #0xf]
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _08038622
	adds r0, r4, #0
	bl sub_0806FCAC
	b _08038638
_08038622:
	ldrb r5, [r4, #0x14]
	bl Random
	ands r0, r6
	cmp r0, #0
	beq _08038632
	adds r1, r5, #2
	b _08038634
_08038632:
	adds r1, r5, #6
_08038634:
	movs r0, #7
	ands r0, r1
_08038638:
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl InitializeAnimation
_08038648:
	pop {r4, r5, r6, pc}
	.align 2, 0
	.syntax divided
