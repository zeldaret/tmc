	.syntax unified
	push {lr}
	adds r3, r0, #0
	lsrs r3, r3, #4
	lsrs r1, r1, #4
	ldr r2, _080A6A8C @ =gUnk_08127F94
	b _080A6AAE
	.align 2, 0
_080A6A8C: .4byte gUnk_08127F94
_080A6A90:
	ldrb r0, [r2]
	cmp r0, r3
	bhi _080A6AAC
	ldrb r0, [r2, #2]
	cmp r0, r3
	blo _080A6AAC
	ldrb r0, [r2, #1]
	cmp r0, r1
	bhi _080A6AAC
	ldrb r0, [r2, #3]
	cmp r0, r1
	blo _080A6AAC
	adds r0, r2, #0
	b _080A6AB6
_080A6AAC:
	adds r2, #8
_080A6AAE:
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _080A6A90
	movs r0, #0
_080A6AB6:
	pop {pc}
	.syntax divided
