	.syntax unified
	push {r4, lr}
	ldr r0, _080A65E4 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A6600
	ldr r4, _080A65E8 @ =gMenu
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _080A65EC
	cmp r0, #0x1e
	bne _080A65DA
	ldrh r0, [r4, #0x12]
	strh r0, [r4, #0x10]
	movs r0, #0x20
	strb r0, [r1]
	adds r0, #0xe3
	bl SoundReq
_080A65DA:
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	b _080A6600
	.align 2, 0
_080A65E4: .4byte gFadeControl
_080A65E8: .4byte gMenu
_080A65EC:
	ldr r0, _080A6604 @ =gInput
	ldrh r0, [r0, #2]
	cmp r0, #1
	blt _080A6600
	cmp r0, #2
	ble _080A65FC
	cmp r0, #8
	bne _080A6600
_080A65FC:
	bl Subtask_Exit
_080A6600:
	pop {r4, pc}
	.align 2, 0
_080A6604: .4byte gInput
	.syntax divided
