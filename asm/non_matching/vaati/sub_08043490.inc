    .syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x10]
	mov ip, r0
	ldrh r1, [r0, #0x36]
	movs r2, #0x36
	ldrsh r0, [r0, r2]
	movs r2, #4
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080434C4
	movs r0, #0xc0
	lsls r0, r0, #9
	mov r3, ip
	str r0, [r3, #0x20]
	movs r0, #0
	movs r1, #2
	strb r1, [r4, #0xd]
	adds r2, r4, #0
	adds r2, #0x7e
	strb r0, [r2]
	ldr r0, [r4, #0x64]
	ldr r0, [r0, #0x14]
	strb r1, [r0, #0xd]
	b _08043514
_080434C4:
	subs r0, r1, #2
	mov r1, ip
	strh r0, [r1, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08043514
	ldrb r0, [r1, #0x10]
	movs r3, #0x80
	orrs r0, r3
	strb r0, [r1, #0x10]
	ldrb r1, [r1, #0x18]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	mov r2, ip
	strb r0, [r2, #0x18]
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	mov r1, ip
	adds r1, #0x3f
	movs r0, #0x3a
	strb r0, [r1]
	ldr r0, _0804351C @ =gUnk_080FD450
	mov r1, ip
	str r0, [r1, #0x48]
	ldr r0, [r4, #0x64]
	ldr r1, [r0, #8]
	ldrb r0, [r1, #0x10]
	orrs r3, r0
	strb r3, [r1, #0x10]
	ldr r0, [r4, #0x64]
	ldr r2, [r0, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_08043514:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	pop {r4, pc}
	.align 2, 0
_0804351C: .4byte gUnk_080FD450
    .syntax divided
