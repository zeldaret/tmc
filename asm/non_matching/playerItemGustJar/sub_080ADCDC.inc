	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r0, #0x59
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	subs r0, r0, r1
	mov r1, ip
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080ADD2E
	ldr r1, [r3, #0x5c]
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _080ADD06
	adds r0, r1, #1
	str r0, [r3, #0x5c]
	ldrb r1, [r1, #1]
	subs r0, r0, r1
	str r0, [r3, #0x5c]
_080ADD06:
	ldr r1, [r3, #0x5c]
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0x58
	strb r0, [r2]
	adds r1, #1
	str r1, [r3, #0x5c]
	ldrb r0, [r1]
	mov r4, ip
	ldrb r4, [r4]
	adds r0, r0, r4
	mov r5, ip
	strb r0, [r5]
	adds r1, #1
	str r1, [r3, #0x5c]
	ldrb r1, [r2]
	ldrh r2, [r3, #0x12]
	adds r0, r3, #0
	bl sub_080042D0
_080ADD2E:
	pop {r4, r5, pc}
	.syntax divided
