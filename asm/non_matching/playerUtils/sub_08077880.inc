	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	subs r0, r4, #1
	cmp r0, #0x1e
	bhi _080778C0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _080778C4 @ =gUnk_0811BE48
	adds r5, r0, r1
	ldr r1, _080778C8 @ =gPlayerState + 0x90
	ldrb r0, [r5]
	cmp r0, #0
	beq _080778A0
	adds r1, #2
_080778A0:
	ldrh r0, [r1]
	ands r0, r6
	cmp r0, #0
	bne _080778AC
	cmp r2, #0
	beq _080778C0
_080778AC:
	adds r0, r4, #0
	bl sub_0807794C
	adds r1, r0, #0
	cmp r1, #0
	beq _080778C0
	ldrb r0, [r5, #1]
	strb r0, [r1, #9]
	strb r4, [r1, #1]
	strb r6, [r1, #3]
_080778C0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080778C4: .4byte gUnk_0811BE48
_080778C8: .4byte gPlayerState + 0x90
	.syntax divided
