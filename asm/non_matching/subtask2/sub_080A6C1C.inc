	.syntax unified
	push {lr}
	ldr r0, _080A6C34 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A6C6A
	ldr r0, _080A6C38 @ =gMenu
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _080A6C3C
	cmp r0, #1
	beq _080A6C5C
	b _080A6C62
	.align 2, 0
_080A6C34: .4byte gFadeControl
_080A6C38: .4byte gMenu
_080A6C3C:
	bl sub_080A66D0
	ldr r0, _080A6C58 @ =gInput
	ldrh r0, [r0, #2]
	cmp r0, #1
	blt _080A6C6A
	cmp r0, #2
	ble _080A6C50
	cmp r0, #8
	bne _080A6C6A
_080A6C50:
	bl Subtask_Exit
	b _080A6C6A
	.align 2, 0
_080A6C58: .4byte gInput
_080A6C5C:
	ldr r0, _080A6C6C @ =0x00000103
	bl SoundReq
_080A6C62:
	ldr r1, _080A6C70 @ =gMenu
	ldrh r0, [r1, #8]
	subs r0, #1
	strh r0, [r1, #8]
_080A6C6A:
	pop {pc}
	.align 2, 0
_080A6C6C: .4byte 0x00000103
_080A6C70: .4byte gMenu
	.syntax divided
