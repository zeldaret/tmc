	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x15]
	movs r2, #0x1f
	ands r2, r0
	lsrs r0, r0, #5
	lsls r1, r0, #1
	adds r3, r1, r0
	ldr r1, _080AC724 @ =gUnk_0812A9C0
	ldrb r0, [r4, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, r0, r3
	adds r5, r1, #0
	cmp r0, #3
	bhi _080AC73A
	cmp r0, #1
	beq _080AC72E
	cmp r0, #1
	blo _080AC728
	cmp r0, #2
	beq _080AC732
	cmp r2, #0x19
	bhi _080AC75C
	b _080AC73A
	.align 2, 0
_080AC724: .4byte gUnk_0812A9C0
_080AC728:
	cmp r2, #6
	bls _080AC75C
	b _080AC73A
_080AC72E:
	subs r0, r2, #5
	b _080AC736
_080AC732:
	adds r0, r2, #0
	subs r0, #0xf
_080AC736:
	cmp r0, #0xc
	bls _080AC75C
_080AC73A:
	adds r0, r3, #3
	cmp r2, #0x1a
	bhi _080AC74E
	adds r0, r3, #2
	cmp r2, #0x10
	bhi _080AC74E
	adds r0, r3, #0
	cmp r2, #5
	bls _080AC74E
	adds r0, #1
_080AC74E:
	movs r1, #0x18
	bl __modsi3
	strb r0, [r4, #0x14]
	adds r0, r0, r5
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
_080AC75C:
	pop {r4, r5, pc}
	.align 2, 0
	.syntax divided
