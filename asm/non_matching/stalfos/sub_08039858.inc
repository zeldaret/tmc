	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_080398C0
	adds r6, r0, #0
	ldrb r0, [r5, #0x14]
	lsls r4, r0, #3
	adds r0, r6, #4
	movs r1, #0x18
	ands r0, r1
	cmp r0, r4
	bne _0803988C
	adds r1, r5, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	cmp r0, #3
	bne _080398B8
	movs r0, #0
	strb r0, [r1]
	bl Random
	movs r1, #2
	ands r1, r0
	subs r1, #1
	lsls r1, r1, #3
	adds r6, r6, r1
_0803988C:
	subs r0, r6, r4
	movs r1, #0x1f
	ands r0, r1
	lsrs r4, r0, #4
	movs r0, #1
	eors r4, r0
	ldr r1, _080398BC @ =gUnk_080CF8F8
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl InitAnimationForceUpdate
	lsls r0, r4, #1
	ldrb r1, [r5, #0x14]
	adds r0, r0, r1
	subs r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r5, #0x14]
_080398B8:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080398BC: .4byte gUnk_080CF8F8
	.syntax divided
