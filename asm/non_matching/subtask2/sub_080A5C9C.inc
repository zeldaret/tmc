	.syntax unified
	push {lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5CFA
	ldr r0, _080A5CC4 @ =gArea
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	ldr r1, _080A5CC8 @ =gUnk_080C9C6C
	adds r3, r0, r1
	ldr r1, _080A5CCC @ =gMenu
	ldrb r2, [r1, #3]
	ldr r0, _080A5CD0 @ =gInput
	ldrh r0, [r0, #2]
	cmp r0, #0x40
	beq _080A5CD4
	cmp r0, #0x80
	beq _080A5CDC
	b _080A5CE6
	.align 2, 0
_080A5CC4: .4byte gArea
_080A5CC8: .4byte gUnk_080C9C6C
_080A5CCC: .4byte gMenu
_080A5CD0: .4byte gInput
_080A5CD4:
	cmp r2, #0
	ble _080A5CE6
	subs r2, #1
	b _080A5CE6
_080A5CDC:
	ldrb r0, [r3]
	subs r0, #1
	cmp r0, r2
	ble _080A5CE6
	adds r2, #1
_080A5CE6:
	ldrb r0, [r1, #3]
	cmp r0, r2
	beq _080A5CFA
	strb r2, [r1, #3]
	adds r0, r2, #0
	bl sub_080A5CFC
	movs r0, #0x69
	bl SoundReq
_080A5CFA:
	pop {pc}
	.syntax divided
