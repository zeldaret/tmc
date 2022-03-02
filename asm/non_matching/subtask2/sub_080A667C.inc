	.syntax unified
	push {lr}
	ldr r2, _080A669C @ =gMenu
	ldr r0, _080A66A0 @ =gUnk_08128E80
	str r0, [r2, #0xc]
	ldrb r0, [r2, #3]
	lsls r0, r0, #3
	ldr r1, _080A66A4 @ =gUnk_08128E94
	adds r3, r0, r1
	ldrh r1, [r2, #0xa]
	ldr r0, _080A66A8 @ =gInput
	ldrh r0, [r0]
	cmp r0, #0x40
	beq _080A66AC
	cmp r0, #0x80
	beq _080A66B4
	b _080A66C2
	.align 2, 0
_080A669C: .4byte gMenu
_080A66A0: .4byte gUnk_08128E80
_080A66A4: .4byte gUnk_08128E94
_080A66A8: .4byte gInput
_080A66AC:
	cmp r1, #0
	beq _080A66C2
	subs r1, #2
	b _080A66C2
_080A66B4:
	ldrb r0, [r3, #2]
	cmp r0, r1
	bls _080A66BC
	adds r1, #2
_080A66BC:
	cmp r0, r1
	bhs _080A66C2
	adds r1, r0, #0
_080A66C2:
	strh r1, [r2, #0xa]
	ldrb r0, [r2, #3]
	movs r1, #0
	bl sub_080A6FB4
	pop {pc}
	.align 2, 0
	.syntax divided
