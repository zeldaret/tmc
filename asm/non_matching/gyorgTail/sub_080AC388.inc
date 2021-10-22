	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r1, _080AC3E4 @ =gUnk_0812A9B8
	ldrb r0, [r5, #0xa]
	adds r0, r0, r1
	ldrb r3, [r0]
	ldr r0, [r5, #0x50]
	mov sl, r0
	ldrb r0, [r0, #0x14]
	movs r1, #0x80
	mov sb, r1
	mov r1, sb
	eors r1, r0
	adds r6, r5, #0
	adds r6, #0x7c
	ldrh r4, [r6]
	lsrs r0, r4, #8
	subs r1, r1, r0
	adds r2, r5, #0
	adds r2, #0x7a
	ldrh r7, [r2]
	mov ip, r7
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bge _080AC404
	subs r0, r1, r3
	movs r7, #0xff
	mov r8, r7
	ands r0, r7
	cmp r0, #0x7f
	bhi _080AC3E8
	movs r1, #0
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	strh r0, [r2]
	mov r2, sl
	ldrb r0, [r2, #0x14]
	mov r7, sb
	eors r0, r7
	subs r0, r0, r3
	b _080AC422
	.align 2, 0
_080AC3E4: .4byte gUnk_0812A9B8
_080AC3E8:
	mov r2, ip
	adds r0, r4, r2
	strh r0, [r6]
	adds r0, r1, r3
	mov r7, r8
	ands r0, r7
	cmp r0, #0x80
	bls _080AC45A
	mov r1, sl
	ldrb r0, [r1, #0x14]
	mov r2, sb
	eors r0, r2
	adds r0, r0, r3
	b _080AC44E
_080AC404:
	adds r0, r1, r3
	movs r7, #0xff
	mov r8, r7
	ands r0, r7
	cmp r0, #0x80
	bls _080AC432
	movs r1, #0
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	strh r0, [r2]
	mov r2, sl
	ldrb r0, [r2, #0x14]
	mov r7, sb
	eors r0, r7
	adds r0, r0, r3
_080AC422:
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	strh r0, [r6]
	adds r0, r5, #0
	bl sub_080AC884
	b _080AC45A
_080AC432:
	mov r2, ip
	adds r0, r4, r2
	strh r0, [r6]
	subs r0, r1, r3
	mov r7, r8
	ands r0, r7
	subs r0, #1
	cmp r0, #0x7e
	bhi _080AC45A
	mov r1, sl
	ldrb r0, [r1, #0x14]
	mov r2, sb
	eors r0, r2
	subs r0, r0, r3
_080AC44E:
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r6]
_080AC45A:
	adds r0, r5, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	lsrs r0, r0, #8
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_080AC6F0
	adds r0, r5, #0
	bl sub_080AC760
	adds r0, r5, #0
	bl sub_080AC7C4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.syntax divided
