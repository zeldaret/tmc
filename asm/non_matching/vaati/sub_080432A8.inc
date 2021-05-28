
    .syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r3, #3
	movs r2, #0
	ldr r0, [r4, #0x64]
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	bls _080432C2
	subs r0, #1
	strb r0, [r1, #0xc]
	movs r2, #1
_080432C2:
	subs r3, #1
	cmp r3, #0
	blt _080432E0
	lsls r0, r3, #4
	adds r0, #0x18
	ldr r1, [r4, #0x64]
	adds r1, r1, r0
	ldrb r0, [r1, #0xc]
	cmp r0, #2
	bls _080432C2
	subs r0, #1
	strb r0, [r1, #0xc]
	adds r2, #1
	cmp r2, #1
	ble _080432C2
_080432E0:
	ldr r0, [r4, #0x64]
	adds r1, r0, #0
	adds r1, #0x18
	ldrb r0, [r1, #5]
	subs r0, #2
	strb r0, [r1, #5]
	movs r3, #0
	movs r6, #0x80
	movs r7, #4
	rsbs r7, r7, #0
	movs r5, #1
_080432F6:
	ldr r0, [r4, #0x64]
	lsls r1, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r1, #0x36
	ldrsh r0, [r2, r1]
	cmp r0, #3
	bgt _08043316
	ldrb r0, [r2, #0x10]
	orrs r0, r6
	strb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2, #0x18]
_08043316:
	adds r3, #1
	cmp r3, #3
	ble _080432F6
	ldr r1, [r4, #0x64]
	ldr r0, [r1]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	lsrs r2, r0, #0x1e
	cmp r2, #1
	bne _08043348
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08043348
	strb r2, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #0x1c]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x10]
	bl sub_0804AA1C
_08043348:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
    .syntax divided
