	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldrb r4, [r5, #0xa]
	cmp r4, #0
	bne _080AC668
	ldr r0, _080AC664 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x43
	bhi _080AC670
	adds r1, r5, #0
	adds r1, #0x79
	movs r0, #0x11
	strb r0, [r1]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r6, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r6, #0xa]
	movs r0, #1
	strb r0, [r6, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r6, #0x50]
	adds r1, r6, #0
	adds r1, #0x79
	movs r0, #0x12
	strb r0, [r1]
	str r6, [r5, #0x54]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r7, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r7, #0xa]
	movs r0, #2
	strb r0, [r7, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r7, #0x50]
	adds r0, r7, #0
	adds r0, #0x79
	movs r1, #0x14
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	str r7, [r6, #0x54]
	movs r0, #0x22
	bl sub_080A7EE0
	ldrb r1, [r5, #0xa]
	strb r1, [r0, #0xa]
	movs r1, #3
	strb r1, [r0, #0xb]
	ldr r1, [r5, #0x50]
	str r1, [r0, #0x50]
	str r4, [r0, #0x54]
	adds r1, r0, #0
	adds r1, #0x79
	strb r4, [r1]
	str r0, [r7, #0x54]
	b _080AC6C8
	.align 2, 0
_080AC664: .4byte gEntCount
_080AC668:
	ldr r0, _080AC674 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x44
	bls _080AC678
_080AC670:
	movs r0, #0
	b _080AC6E8
	.align 2, 0
_080AC674: .4byte gEntCount
_080AC678:
	adds r1, r5, #0
	adds r1, #0x79
	movs r0, #0
	mov sb, r0
	movs r0, #0xf
	strb r0, [r1]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r6, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r6, #0xa]
	movs r0, #1
	strb r0, [r6, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r6, #0x50]
	adds r0, r6, #0
	adds r0, #0x79
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	str r6, [r5, #0x54]
	movs r0, #0x22
	bl sub_080A7EE0
	adds r7, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r7, #0xa]
	movs r0, #2
	strb r0, [r7, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r7, #0x50]
	mov r0, sb
	str r0, [r7, #0x54]
	adds r1, r7, #0
	adds r1, #0x79
	movs r0, #0x20
	strb r0, [r1]
	str r7, [r6, #0x54]
_080AC6C8:
	movs r0, #0x22
	bl sub_080A7EE0
	adds r6, r0, #0
	ldrb r0, [r5, #0xa]
	strb r0, [r6, #0xa]
	movs r0, #4
	strb r0, [r6, #0xb]
	ldr r0, [r5, #0x50]
	str r0, [r6, #0x50]
	str r5, [r6, #0x54]
	adds r0, r6, #0
	adds r0, #0x79
	mov r1, r8
	strb r1, [r0]
	movs r0, #1
_080AC6E8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.syntax divided
