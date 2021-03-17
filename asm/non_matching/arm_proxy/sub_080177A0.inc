    .syntax unified
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r5, r1, #0
	adds r0, #0x38
	adds r1, #0x38
	ldrb r2, [r0]
	ldrb r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08017848
	mov r0, ip
	ldr r3, [r0, #0x48]
	ldr r4, [r5, #0x48]
	ldrb r1, [r3, #6]
	ldrb r0, [r4, #6]
	adds r2, r1, r0
	mov r1, ip
	movs r6, #0x2e
	ldrsh r0, [r1, r6]
	movs r6, #0x2e
	ldrsh r1, [r5, r6]
	subs r0, r0, r1
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r1, r2, #1
	cmp r0, r1
	bhi _08017848
	ldrb r1, [r3, #7]
	ldrb r0, [r4, #7]
	adds r2, r1, r0
	mov r1, ip
	movs r6, #0x32
	ldrsh r0, [r1, r6]
	movs r6, #0x32
	ldrsh r1, [r5, r6]
	subs r0, r0, r1
	movs r1, #1
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	movs r1, #1
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r1, r2, #1
	cmp r0, r1
	bhi _08017848
	mov r0, ip
	adds r0, #0x3c
	ldrb r1, [r0]
	movs r6, #0x10
	adds r0, r6, #0
	ands r0, r1
	movs r2, #5
	cmp r0, #0
	beq _0801781A
	ldrb r2, [r3, #8]
_0801781A:
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0801782E
	ldrb r0, [r4, #8]
	adds r2, r2, r0
	b _08017830
_0801782E:
	adds r2, #5
_08017830:
	mov r1, ip
	movs r3, #0x36
	ldrsh r0, [r1, r3]
	movs r6, #0x36
	ldrsh r1, [r5, r6]
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r1, r2, #1
	cmp r0, r1
	bhi _08017848
	movs r0, #1
	b _0801784A
_08017848:
	movs r0, #0
_0801784A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
    .syntax divided
