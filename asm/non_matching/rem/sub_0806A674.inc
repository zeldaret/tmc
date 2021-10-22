	.syntax unified
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, _0806A694 @ =gUnk_08112294
	mov r0, sp
	movs r2, #8
	bl memcpy
	ldrb r3, [r4, #0xc]
	cmp r3, #1
	beq _0806A6BE
	cmp r3, #1
	bgt _0806A698
	cmp r3, #0
	beq _0806A6A0
	b _0806A82A
	.align 2, 0
_0806A694: .4byte gUnk_08112294
_0806A698:
	cmp r3, #2
	bne _0806A69E
	b _0806A824
_0806A69E:
	b _0806A82A
_0806A6A0:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	subs r0, #9
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x13
	bl InitializeAnimation
	b _0806A82A
_0806A6BE:
	ldr r0, _0806A6E0 @ =gActiveScriptInfo
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806A6E4
	movs r0, #0
	movs r1, #2
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	b _0806A82A
	.align 2, 0
_0806A6E0: .4byte gActiveScriptInfo
_0806A6E4:
	ldr r0, [r4, #0x50]
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #9
	bne _0806A7C8
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	orrs r1, r0
	strb r1, [r2]
	ldrb r2, [r4, #0xe]
	cmp r2, #0
	bne _0806A724
	bl Random
	adds r2, r0, #0
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0xe]
	lsrs r0, r2, #8
	movs r1, #7
	ands r0, r1
	add r0, sp
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	strb r1, [r0]
	b _0806A75A
_0806A724:
	ldr r0, _0806A780 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806A75A
	subs r0, r2, #1
	strb r0, [r4, #0xe]
	adds r2, r4, #0
	adds r2, #0x62
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r4, #0
	adds r1, #0x68
	cmp r0, #0
	bgt _0806A746
	strb r3, [r1]
_0806A746:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xf
	ble _0806A752
	movs r0, #0xff
	strb r0, [r1]
_0806A752:
	ldrb r0, [r1]
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r2]
_0806A75A:
	ldrb r2, [r4, #0xf]
	cmp r2, #0
	bne _0806A784
	bl Random
	adds r2, r0, #0
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0xf]
	lsrs r0, r2, #8
	movs r1, #7
	ands r0, r1
	add r0, sp
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x69
	strb r1, [r0]
	b _0806A82A
	.align 2, 0
_0806A780: .4byte gScreenTransition
_0806A784:
	ldr r0, _0806A7C4 @ =gScreenTransition
	ldr r0, [r0]
	lsrs r0, r0, #4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806A82A
	subs r0, r2, #1
	strb r0, [r4, #0xf]
	adds r3, r4, #0
	adds r3, #0x63
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r2, r4, #0
	adds r2, #0x69
	cmp r0, #0
	blt _0806A7AA
	movs r0, #0xff
	strb r0, [r2]
_0806A7AA:
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0806A7BA
	movs r0, #1
	strb r0, [r2]
_0806A7BA:
	ldrb r0, [r2]
	ldrb r1, [r3]
	adds r0, r0, r1
	strb r0, [r3]
	b _0806A82A
	.align 2, 0
_0806A7C4: .4byte gScreenTransition
_0806A7C8:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #6
	orrs r1, r0
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x62
	ldrb r0, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _0806A7FE
	cmp r2, #0
	ble _0806A7F0
	subs r0, #1
	strb r0, [r1]
_0806A7F0:
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0806A7FE
	adds r0, r2, #1
	strb r0, [r1]
_0806A7FE:
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	movs r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _0806A82A
	cmp r2, #0
	ble _0806A814
	subs r0, #1
	strb r0, [r1]
_0806A814:
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0806A82A
	adds r0, r2, #1
	strb r0, [r1]
	b _0806A82A
_0806A824:
	adds r0, r4, #0
	bl GetNextFrame
_0806A82A:
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	.syntax divided
