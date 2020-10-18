
	.syntax unified

	.text

	push {r4, r5, lr}
	mov ip, r0
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _08022F12
	ldr r0, [r0, #0x50]
	adds r0, #0x79
	ldrb r0, [r0]
	movs r4, #7
	adds r3, r4, #0
	ands r3, r0
	adds r3, r3, r1
	adds r3, #0x7c
	mov r0, ip
	ldrh r1, [r0, #0x2e]
	adds r0, #0x74
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r1, #8
	movs r5, #0xf
	ands r1, r5
	mov r2, ip
	ldrh r0, [r2, #0x32]
	adds r2, #0x76
	ldrb r2, [r2]
	subs r0, r0, r2
	adds r0, #8
	ands r0, r5
	lsls r0, r0, #4
	adds r1, r1, r0
	strb r1, [r3]
	mov r1, ip
	ldr r0, [r1, #0x50]
	adds r0, #0x79
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #2
	mov r2, ip
	ldrb r1, [r2, #0x14]
	ands r4, r1
	lsls r4, r0
	movs r2, #0xf
	lsls r2, r0
	mov r0, ip
	ldr r1, [r0, #0x54]
	adds r1, #0x84
	ldr r0, [r1]
	bics r0, r2
	orrs r4, r0
	str r4, [r1]
_08022F12:
	pop {r4, r5, pc}

	.syntax divided
