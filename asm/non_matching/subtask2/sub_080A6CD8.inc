	.syntax unified
	push {r4, lr}
	ldr r0, _080A6D08 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A6D6E
	ldr r1, _080A6D0C @ =gMenu
	movs r0, #1
	strb r0, [r1]
	movs r4, #0
	ldr r0, _080A6D10 @ =gInput
	ldrh r0, [r0, #2]
	adds r2, r1, #0
	cmp r0, #0x10
	beq _080A6D34
	cmp r0, #0x10
	bgt _080A6D1A
	cmp r0, #2
	beq _080A6D4C
	cmp r0, #2
	bgt _080A6D14
	cmp r0, #1
	beq _080A6D38
	b _080A6D54
	.align 2, 0
_080A6D08: .4byte gFadeControl
_080A6D0C: .4byte gMenu
_080A6D10: .4byte gInput
_080A6D14:
	cmp r0, #8
	beq _080A6D38
	b _080A6D54
_080A6D1A:
	cmp r0, #0x40
	beq _080A6D2E
	cmp r0, #0x40
	bgt _080A6D28
	cmp r0, #0x20
	beq _080A6D2E
	b _080A6D54
_080A6D28:
	cmp r0, #0x80
	beq _080A6D34
	b _080A6D54
_080A6D2E:
	movs r4, #1
	rsbs r4, r4, #0
	b _080A6D58
_080A6D34:
	movs r4, #1
	b _080A6D58
_080A6D38:
	movs r0, #2
	strb r0, [r2]
	bl SetMenuType
	ldr r0, _080A6D48 @ =0x00000704
	bl MessageFromTarget
	b _080A6D54
	.align 2, 0
_080A6D48: .4byte 0x00000704
_080A6D4C:
	movs r0, #3
	strb r0, [r1]
	bl SetMenuType
_080A6D54:
	cmp r4, #0
	beq _080A6D6E
_080A6D58:
	adds r0, r4, #0
	bl sub_080A6D74
	ldr r1, _080A6D70 @ =gMenu
	ldrb r2, [r1, #3]
	cmp r0, r2
	beq _080A6D6E
	strb r0, [r1, #3]
	movs r0, #0x69
	bl SoundReq
_080A6D6E:
	pop {r4, pc}
	.align 2, 0
_080A6D70: .4byte gMenu
	.syntax divided
