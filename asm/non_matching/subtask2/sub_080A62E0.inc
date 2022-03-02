	.syntax unified
	push {r4, lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A6372
	ldr r0, _080A6310 @ =gMenu
	ldrb r3, [r0, #3]
	lsls r1, r3, #3
	ldr r0, _080A6314 @ =gUnk_08128DE8
	adds r1, r1, r0
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, _080A6318 @ =gInput
	ldrh r2, [r0, #2]
	cmp r2, #0x20
	beq _080A634E
	cmp r2, #0x20
	bgt _080A631C
	cmp r2, #1
	beq _080A6326
	cmp r2, #0x10
	beq _080A6354
	b _080A635A
	.align 2, 0
_080A6310: .4byte gMenu
_080A6314: .4byte gUnk_08128DE8
_080A6318: .4byte gInput
_080A631C:
	cmp r2, #0x40
	beq _080A6344
	cmp r2, #0x80
	beq _080A634A
	b _080A635A
_080A6326:
	ldr r0, _080A6340 @ =gSave
	lsls r2, r3
	ldr r0, [r0, #0x40]
	ands r0, r2
	cmp r0, #0
	beq _080A635A
	movs r0, #0x6a
	bl SoundReq
	movs r0, #6
	bl sub_080A4E84
	b _080A635A
	.align 2, 0
_080A6340: .4byte gSave
_080A6344:
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	b _080A6358
_080A634A:
	ldrh r0, [r1]
	b _080A6356
_080A634E:
	ldrb r0, [r1, #2]
	lsls r0, r0, #0x1b
	b _080A6358
_080A6354:
	ldrh r0, [r1, #2]
_080A6356:
	lsls r0, r0, #0x16
_080A6358:
	lsrs r4, r0, #0x1b
_080A635A:
	cmp r4, #0
	blt _080A6368
	ldr r0, _080A6374 @ =gMenu
	strb r4, [r0, #3]
	movs r0, #0x69
	bl SoundReq
_080A6368:
	ldr r0, _080A6374 @ =gMenu
	ldrb r0, [r0, #3]
	movs r1, #0
	bl sub_080A6FB4
_080A6372:
	pop {r4, pc}
	.align 2, 0
_080A6374: .4byte gMenu
	.syntax divided
