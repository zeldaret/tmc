	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r6, r1, #0
	orrs r0, r6
	cmp r0, #0
	beq _080A6A06
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080A6A80
	adds r3, r0, #0
	cmp r3, #0
	beq _080A6A06
	ldr r0, _080A6A0C @ =gMenu
	ldrb r1, [r0, #3]
	ldrb r2, [r3, #4]
	cmp r1, r2
	beq _080A6A10
_080A6A06:
	movs r0, #1
	rsbs r0, r0, #0
	b _080A6A74
	.align 2, 0
_080A6A0C: .4byte gMenu
_080A6A10:
	ldrb r1, [r0, #3]
	cmp r1, #7
	beq _080A6A26
	cmp r1, #7
	bgt _080A6A20
	cmp r1, #4
	beq _080A6A26
	b _080A6A48
_080A6A20:
	cmp r1, #0xf
	beq _080A6A44
	b _080A6A48
_080A6A26:
	ldrb r0, [r0, #3]
	movs r2, #7
	cmp r0, #4
	bne _080A6A30
	movs r2, #9
_080A6A30:
	ldr r1, _080A6A40 @ =gAreaRoomHeaders
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	subs r6, r6, r0
	b _080A6A48
	.align 2, 0
_080A6A40: .4byte gAreaRoomHeaders
_080A6A44:
	ldr r0, _080A6A78 @ =0xFFFFFEF8
	adds r7, r7, r0
_080A6A48:
	ldrb r0, [r3]
	lsls r0, r0, #4
	subs r0, r7, r0
	movs r4, #0x64
	muls r0, r4, r0
	ldr r5, _080A6A7C @ =0x0000023A
	adds r1, r5, #0
	str r3, [sp]
	bl __divsi3
	adds r7, r0, #0
	ldr r3, [sp]
	ldrb r0, [r3, #1]
	lsls r0, r0, #4
	subs r0, r6, r0
	muls r0, r4, r0
	adds r1, r5, #0
	bl __divsi3
	adds r6, r0, #0
	lsls r0, r6, #0x10
	orrs r0, r7
_080A6A74:
	add sp, #4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A6A78: .4byte 0xFFFFFEF8
_080A6A7C: .4byte 0x0000023A
	.syntax divided
