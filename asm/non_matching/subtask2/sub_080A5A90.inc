	.syntax unified
	push {lr}
	ldr r2, _080A5AA4 @ =gMenu
	ldrh r0, [r2, #8]
	cmp r0, #0
	beq _080A5AA8
	cmp r0, #0xff
	beq _080A5AC0
	subs r0, #1
	strh r0, [r2, #8]
	b _080A5AD2
	.align 2, 0
_080A5AA4: .4byte gMenu
_080A5AA8:
	ldr r0, _080A5ABC @ =gInput
	ldrh r1, [r0, #2]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080A5AD2
	movs r0, #0xff
	strh r0, [r2, #8]
	b _080A5AD2
	.align 2, 0
_080A5ABC: .4byte gInput
_080A5AC0:
	ldr r0, _080A5AD4 @ =gUnk_02034490
	ldrb r0, [r0, #1]
	movs r1, #1
	cmp r0, #0xa
	bne _080A5ACC
	movs r1, #2
_080A5ACC:
	adds r0, r1, #0
	bl sub_080A4E84
_080A5AD2:
	pop {pc}
	.align 2, 0
_080A5AD4: .4byte gUnk_02034490
	.syntax divided
