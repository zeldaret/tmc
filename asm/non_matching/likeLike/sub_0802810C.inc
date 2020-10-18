
	.syntax unified

	.text

	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08028198 @ =gPlayerState
	movs r1, #0
	movs r0, #0x41
	strb r0, [r2, #2]
	strb r1, [r2, #0xa]
	ldr r0, [r2, #0x30]
	subs r1, #0x11
	ands r0, r1
	str r0, [r2, #0x30]
	ldr r0, _0802819C @ =gPlayerEntity
	mov ip, r0
	ldrb r0, [r0, #0x10]
	movs r1, #0x80
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r1, #0x20]
	adds r1, #0x3d
	movs r0, #0xc4
	strb r0, [r1]
	movs r3, #0
	mov r2, ip
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	strb r0, [r2, #0x15]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	mov r5, ip
	adds r5, #0x29
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r5]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	mov r1, ip
	adds r1, #0x63
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r2, ip
	strh r0, [r2, #0x36]
	strb r3, [r1]
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x50
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	adds r2, r4, #0
	adds r2, #0x3b
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08028196
	movs r0, #0xee
	strb r0, [r1]
_08028196:
	pop {r4, r5, pc}
	.align 2, 0
_08028198: .4byte gPlayerState
_0802819C: .4byte gPlayerEntity

    .syntax divided
